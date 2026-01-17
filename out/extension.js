"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.activate = activate;
const vscode = require("vscode");
const path = require("path");
const contextLocalQuickFix_1 = require("./contextLocalQuickFix");
function uniq(arr) {
    return [...new Set(arr)];
}
async function activate(context) {
    const stubPath = path.join(context.extensionPath, "resources", "holdmyitems.lua");
    (0, contextLocalQuickFix_1.registerContextLocalQuickFix)(context, stubPath);
    async function getLib() {
        const luaCfg = vscode.workspace.getConfiguration("Lua");
        return luaCfg.get("workspace.library") ?? [];
    }
    async function setLib(next) {
        const luaCfg = vscode.workspace.getConfiguration("Lua");
        await luaCfg.update("workspace.library", uniq(next), vscode.ConfigurationTarget.Workspace);
    }
    async function enable() {
        const lib = await getLib();
        if (!lib.includes(stubPath)) {
            await setLib([...lib, stubPath]);
        }
        vscode.window.showInformationMessage("HMI typings enabled for LuaLS in this workspace.");
    }
    async function disable() {
        const lib = await getLib();
        const next = lib.filter(p => p !== stubPath);
        if (next.length !== lib.length) {
            await setLib(next);
        }
        vscode.window.showInformationMessage("HMI typings disabled for LuaLS in this workspace.");
    }
    async function toggle() {
        const lib = await getLib();
        if (lib.includes(stubPath))
            await disable();
        else
            await enable();
    }
    const autoEnabled = "hmiTypings.autoEnabled";
    if (!context.workspaceState.get(autoEnabled)) {
        await enable();
        await context.workspaceState.update(autoEnabled, true);
    }
    context.subscriptions.push(vscode.commands.registerCommand("hmiTypings.enable", enable), vscode.commands.registerCommand("hmiTypings.disable", disable), vscode.commands.registerCommand("hmiTypings.toggle", toggle));
}
//# sourceMappingURL=extension.js.map