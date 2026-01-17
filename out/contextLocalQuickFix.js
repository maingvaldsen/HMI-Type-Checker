"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.registerContextLocalQuickFix = registerContextLocalQuickFix;
const vscode = require("vscode");
function escapeRegExp(s) {
    return s.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
}
let cached = null;
async function loadFieldSetsFromStub(stubUri) {
    if (cached && cached.from === stubUri.fsPath)
        return cached.sets;
    let text = "";
    try {
        const doc = await vscode.workspace.openTextDocument(stubUri);
        text = doc.getText();
    }
    catch {
        const empty = { context: new Set(), data: new Set() };
        cached = { from: stubUri.fsPath, sets: empty };
        return empty;
    }
    const lines = text.split(/\r?\n/);
    function parseClassFields(className) {
        const out = new Set();
        let inBlock = false;
        for (const line of lines) {
            const classMatch = line.match(/^\s*---@class\s+(\w+)\b/);
            if (classMatch) {
                inBlock = classMatch[1] === className;
                continue;
            }
            if (!inBlock)
                continue;
            // stop if we hit another class
            if (/^\s*---@class\s+\w+/.test(line))
                break;
            const fieldMatch = line.match(/^\s*---@field\s+([A-Za-z_]\w*)\b/);
            if (fieldMatch)
                out.add(fieldMatch[1]);
        }
        return out;
    }
    const sets = {
        context: parseClassFields("context"),
        data: parseClassFields("data"),
    };
    cached = { from: stubUri.fsPath, sets };
    return sets;
}
function extractUnknownName(diag) {
    const msg = diag.message;
    const m = msg.match(/Undefined global\s+[`'"]?([A-Za-z_]\w*)[`'"]?/i) ??
        msg.match(/undefined-global[:\s]+([A-Za-z_]\w*)/i);
    return m ? m[1] : null;
}
function alreadyHasLocal(documentText, name) {
    const rLocal = new RegExp(`\\blocal\\s+${escapeRegExp(name)}\\b`);
    return rLocal.test(documentText);
}
function computeInsertPosition(doc) {
    let line = 0;
    while (line < doc.lineCount) {
        const t = doc.lineAt(line).text.trim();
        // Skip header comments & annotations
        if (t === "" || t.startsWith("--") || t.startsWith("---@")) {
            line++;
            continue;
        }
        break;
    }
    // Ensure one blank line after header block
    if (line > 0) {
        const prev = doc.lineAt(line - 1).text.trim();
        if (prev !== "") {
            return new vscode.Position(line, 0);
        }
    }
    return new vscode.Position(line, 0);
}
function preferDataContainer(documentText) {
    const dataHits = (documentText.match(/\bdata\./g) ?? []).length;
    const ctxHits = (documentText.match(/\bcontext\./g) ?? []).length;
    return dataHits > ctxHits;
}
function containerAllows(sets, container, name) {
    const s = sets[container];
    // If we failed to parse stub (empty set), allow anyway (still useful).
    if (s.size === 0)
        return true;
    return s.has(name);
}
/**
 * If the cursor/range is within `context.foo` or `data.foo`, return that access + exact range.
 */
function findAccessAtRange(document, range) {
    const line = document.lineAt(range.start.line);
    const text = line.text;
    // Scan all occurrences on the line; choose the one that overlaps the selection/cursor.
    const re = /\b(context|data)\.([A-Za-z_]\w*)\b/g;
    let m;
    const cursorChar = range.start.character;
    while ((m = re.exec(text))) {
        const full = m[0];
        const container = m[1];
        const name = m[2];
        const start = m.index;
        const end = start + full.length;
        // Consider it "selected" if cursor is inside it, or selection intersects it.
        const intersects = (cursorChar >= start && cursorChar <= end) ||
            (range.start.character < end && range.end.character > start);
        if (!intersects)
            continue;
        const accessRange = new vscode.Range(new vscode.Position(range.start.line, start), new vscode.Position(range.start.line, end));
        return { container, name, accessRange };
    }
    return null;
}
class ContextLocalQuickFixProvider {
    constructor(stubUri) {
        this.stubUri = stubUri;
    }
    async provideCodeActions(document, range, ctx) {
        const docText = document.getText();
        const sets = await loadFieldSetsFromStub(this.stubUri);
        const wantDataPreferred = preferDataContainer(docText);
        const actions = [];
        // 1) Cursor-based: introduce local from context.foo / data.foo
        const access = findAccessAtRange(document, range);
        if (access) {
            const { container, name, accessRange } = access;
            if (!alreadyHasLocal(docText, name) && containerAllows(sets, container, name)) {
                const title = `Introduce local '${name}' from ${container}.${name}`;
                const action = new vscode.CodeAction(title, ContextLocalQuickFixProvider.kindRefactor);
                // Make it show under lightbulb as well by attaching it to the selection
                // (doesn't need diagnostics).
                action.isPreferred = true;
                const edit = new vscode.WorkspaceEdit();
                const insertPos = computeInsertPosition(document);
                edit.insert(document.uri, insertPos, `local ${name} = ${container}.${name}\n`);
                edit.replace(document.uri, accessRange, name);
                action.edit = edit;
                actions.push(action);
            }
        }
        // 2) Diagnostic-based: undefined global -> create local from context/data
        for (const diag of ctx.diagnostics) {
            const name = extractUnknownName(diag);
            if (!name)
                continue;
            if (alreadyHasLocal(docText, name))
                continue;
            const canContext = containerAllows(sets, "context", name);
            const canData = containerAllows(sets, "data", name);
            if (!canContext && !canData)
                continue;
            const insertPos = computeInsertPosition(document);
            const makeAction = (container) => {
                const title = `Create local from ${container}: local ${name} = ${container}.${name}`;
                const action = new vscode.CodeAction(title, ContextLocalQuickFixProvider.kindQuickFix);
                action.diagnostics = [diag];
                action.isPreferred =
                    (container === "data" && wantDataPreferred) ||
                        (container === "context" && !wantDataPreferred);
                const edit = new vscode.WorkspaceEdit();
                edit.insert(document.uri, insertPos, `local ${name} = ${container}.${name}\n`);
                action.edit = edit;
                return action;
            };
            if (canContext)
                actions.push(makeAction("context"));
            if (canData)
                actions.push(makeAction("data"));
        }
        return actions;
    }
}
ContextLocalQuickFixProvider.kindQuickFix = vscode.CodeActionKind.QuickFix;
ContextLocalQuickFixProvider.kindRefactor = vscode.CodeActionKind.Refactor;
function registerContextLocalQuickFix(extContext, stubPath) {
    const stubUri = vscode.Uri.file(stubPath);
    extContext.subscriptions.push(vscode.languages.registerCodeActionsProvider({ language: "lua" }, new ContextLocalQuickFixProvider(stubUri), {
        providedCodeActionKinds: [
            vscode.CodeActionKind.QuickFix,
            vscode.CodeActionKind.Refactor,
        ],
    }));
}
//# sourceMappingURL=contextLocalQuickFix.js.map