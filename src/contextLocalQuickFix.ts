import * as vscode from "vscode";

function escapeRegExp(s: string) {
  return s.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
}

type FieldSets = { context: Set<string>; data: Set<string> };

let cached: { from: string; sets: FieldSets } | null = null;

async function loadFieldSetsFromStub(stubUri: vscode.Uri): Promise<FieldSets> {
  if (cached && cached.from === stubUri.fsPath) return cached.sets;

  let text = "";
  try {
    const doc = await vscode.workspace.openTextDocument(stubUri);
    text = doc.getText();
  } catch {
    const empty = { context: new Set<string>(), data: new Set<string>() };
    cached = { from: stubUri.fsPath, sets: empty };
    return empty;
  }

  const lines = text.split(/\r?\n/);

  function parseClassFields(className: "context" | "data") {
    const out = new Set<string>();
    let inBlock = false;

    for (const line of lines) {
      const classMatch = line.match(/^\s*---@class\s+(\w+)\b/);
      if (classMatch) {
        inBlock = classMatch[1] === className;
        continue;
      }
      if (!inBlock) continue;

      if (/^\s*---@class\s+\w+/.test(line)) break;

      const fieldMatch = line.match(/^\s*---@field\s+([A-Za-z_]\w*)\b/);
      if (fieldMatch) out.add(fieldMatch[1]);
    }

    return out;
  }

  const sets: FieldSets = {
    context: parseClassFields("context"),
    data: parseClassFields("data"),
  };

  cached = { from: stubUri.fsPath, sets };
  return sets;
}

function extractUnknownName(diag: vscode.Diagnostic): string | null {
  const msg = diag.message;

  const m =
    msg.match(/Undefined global\s+[`'"]?([A-Za-z_]\w*)[`'"]?/i) ??
    msg.match(/undefined-global[:\s]+([A-Za-z_]\w*)/i);

  return m ? m[1] : null;
}

function alreadyHasLocal(documentText: string, name: string): boolean {
  const rLocal = new RegExp(`\\blocal\\s+${escapeRegExp(name)}\\b`);
  return rLocal.test(documentText);
}

function computeInsertPosition(doc: vscode.TextDocument): vscode.Position {
  let line = 0;

  while (line < doc.lineCount) {
    const t = doc.lineAt(line).text.trim();

    if (t === "" || t.startsWith("--") || t.startsWith("---@")) {
      line++;
      continue;
    }

    break;
  }

  if (line > 0) {
    const prev = doc.lineAt(line - 1).text.trim();
    if (prev !== "") {
      return new vscode.Position(line, 0);
    }
  }

  return new vscode.Position(line, 0);
}

function preferDataContainer(documentText: string): boolean {
  const dataHits = (documentText.match(/\bdata\./g) ?? []).length;
  const ctxHits = (documentText.match(/\bcontext\./g) ?? []).length;
  return dataHits > ctxHits;
}

function containerAllows(
  sets: FieldSets,
  container: "context" | "data",
  name: string
): boolean {
  const s = sets[container];
  if (s.size === 0) return true;
  return s.has(name);
}

function findAccessAtRange(
  document: vscode.TextDocument,
  range: vscode.Range
): { container: "context" | "data"; name: string; accessRange: vscode.Range } | null {
  const line = document.lineAt(range.start.line);
  const text = line.text;

  const re = /\b(context|data)\.([A-Za-z_]\w*)\b/g;
  let m: RegExpExecArray | null;

  const cursorChar = range.start.character;

  while ((m = re.exec(text))) {
    const full = m[0];
    const container = m[1] as "context" | "data";
    const name = m[2];

    const start = m.index;
    const end = start + full.length;

    const intersects =
      (cursorChar >= start && cursorChar <= end) ||
      (range.start.character < end && range.end.character > start);

    if (!intersects) continue;

    const accessRange = new vscode.Range(
      new vscode.Position(range.start.line, start),
      new vscode.Position(range.start.line, end)
    );

    return { container, name, accessRange };
  }

  return null;
}

class ContextLocalQuickFixProvider implements vscode.CodeActionProvider {
  static readonly kindQuickFix = vscode.CodeActionKind.QuickFix;
  static readonly kindRefactor = vscode.CodeActionKind.Refactor;

  constructor(private readonly stubUri: vscode.Uri) {}

  async provideCodeActions(
    document: vscode.TextDocument,
    range: vscode.Range,
    ctx: vscode.CodeActionContext
  ): Promise<vscode.CodeAction[]> {
    const docText = document.getText();
    const sets = await loadFieldSetsFromStub(this.stubUri);
    const wantDataPreferred = preferDataContainer(docText);

    const actions: vscode.CodeAction[] = [];

    const access = findAccessAtRange(document, range);
    if (access) {
      const { container, name, accessRange } = access;

      if (!alreadyHasLocal(docText, name) && containerAllows(sets, container, name)) {
        const title = `Introduce local '${name}' from ${container}.${name}`;
        const action = new vscode.CodeAction(title, ContextLocalQuickFixProvider.kindRefactor);

        action.isPreferred = true;

        const edit = new vscode.WorkspaceEdit();
        const insertPos = computeInsertPosition(document);

        edit.insert(document.uri, insertPos, `local ${name} = ${container}.${name}\n`);
        edit.replace(document.uri, accessRange, name);

        action.edit = edit;
        actions.push(action);
      }
    }

    for (const diag of ctx.diagnostics) {
      const name = extractUnknownName(diag);
      if (!name) continue;

      if (alreadyHasLocal(docText, name)) continue;

      const canContext = containerAllows(sets, "context", name);
      const canData = containerAllows(sets, "data", name);

      if (!canContext && !canData) continue;

      const insertPos = computeInsertPosition(document);

      const makeAction = (container: "context" | "data") => {
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

      if (canContext) actions.push(makeAction("context"));
      if (canData) actions.push(makeAction("data"));
    }

    return actions;
  }
}

export function registerContextLocalQuickFix(
  extContext: vscode.ExtensionContext,
  stubPath: string
) {
  const stubUri = vscode.Uri.file(stubPath);

  extContext.subscriptions.push(
    vscode.languages.registerCodeActionsProvider(
      { language: "lua" },
      new ContextLocalQuickFixProvider(stubUri),
      {
        providedCodeActionKinds: [
          vscode.CodeActionKind.QuickFix,
          vscode.CodeActionKind.Refactor,
        ],
      }
    )
  );
}