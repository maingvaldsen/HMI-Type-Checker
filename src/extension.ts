import * as vscode from "vscode";
import * as path from "path";
import { registerContextLocalQuickFix } from "./contextLocalQuickFix";

function uniq(arr: string[]) {
    return [...new Set(arr)];
}

export async function activate(context: vscode.ExtensionContext) {
    const stubPath = path.join(context.extensionPath, "resources", "holdmyitems.lua");

    registerContextLocalQuickFix(context, stubPath);

    async function getLib(): Promise<string[]> {
        const luaCfg = vscode.workspace.getConfiguration("Lua");
        return luaCfg.get<string[]>("workspace.library") ?? [];
    }

    async function setLib(next: string[]) {
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
        vscode.window.showInformationMessage("HMI typings disabled for LuaLS in this workspace.")
    }

    async function toggle() {
        const lib = await getLib();
        if (lib.includes(stubPath)) await disable();
        else await enable();
    }

    const autoEnabled = "hmiTypings.autoEnabled";

    if (!context.workspaceState.get(autoEnabled)) {
        await enable();
        await context.workspaceState.update(autoEnabled, true);
    }

    context.subscriptions.push(
        vscode.commands.registerCommand("hmiTypings.enable", enable),
        vscode.commands.registerCommand("hmiTypings.disable", disable),
        vscode.commands.registerCommand("hmiTypings.toggle", toggle),
    );
}