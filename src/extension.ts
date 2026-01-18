import * as vscode from "vscode";
import * as path from "path";
import { registerContextLocalQuickFix } from "./contextLocalQuickFix";

const STUB_SUFFIX = path.join("resources", "holdmyitems.lua");
const norm = (pth: string) => path.normalize(pth).replace(/\\/g, "/");

function getFolderPrefixFromPath(extPath: string) {
    const folder = path.basename(extPath);
    return folder.replace(/-\d.*$/, "");
}

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
        if(!vscode.workspace.workspaceFolders?.length) {
            vscode.window.showWarningMessage("HMI typings: open a folder (workspace) to use this extension.", "Open Folder").then(choice => {
                if (choice === "Open Folder") {
                    vscode.commands.executeCommand("workbench.action.files.openFolder");
                }
            });
            throw new Error("No workspace folder open (cannot write workspace settings).");
        };

        const luaCfg = vscode.workspace.getConfiguration("Lua");
        await luaCfg.update("workspace.library", uniq(next), vscode.ConfigurationTarget.Workspace);
    }

    async function enable() {
        const lib = await getLib();
        if (!lib.includes(stubPath)) {
            await setLib([...lib, stubPath]);
            await vscode.commands.executeCommand("lua.startServer");
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
        if (lib.includes(stubPath)) await disable();
        else await enable();
    }

    async function cleanup(loud = true) {
        const lib = await getLib();

        const suffix = "/resources/holdmyitems.lua";

        const isStub = (pth: string) => norm(pth).endsWith(suffix);

        const removed = lib.filter(isStub);
        const next = lib.filter(p => !isStub(p));

        await context.workspaceState.update("hmiTypings.autoEnabledVersion", undefined);
        await context.workspaceState.update("hmiTypings.autoEnabled", undefined);

        if (removed.length === 0) {
            if (loud) vscode.window.showInformationMessage("HMI cleanup ran: nothing to remove.");
            return;
        }

        await setLib(next);
        if (loud) vscode.window.showInformationMessage(`HMI cleanup: removed ${removed.length} path(s).`);
    }

    context.subscriptions.push(
        vscode.commands.registerCommand("hmiTypings.enable", () => enable().catch(console.error)),
        vscode.commands.registerCommand("hmiTypings.disable", () => disable().catch(console.error)),
        vscode.commands.registerCommand("hmiTypings.toggle", () => toggle().catch(console.error)),
        vscode.commands.registerCommand("hmiTypings.cleanup", () => cleanup().catch(console.error)),
    );

    const currentVersion = String(context.extension.packageJSON.version);
    const autoKey = "hmiTypings.autoEnabledVersion";
    const lastVersion = context.workspaceState.get<string>(autoKey);

    if (lastVersion !== currentVersion) {
        (async () => {
            try {
                await cleanup(false);
                await enable();

                await context.workspaceState.update(autoKey, currentVersion);
            } catch (err) {
                console.error("HMI typings auto-enable failed:", err);
                vscode.window.showErrorMessage("HMI typings failed to auto-enable after update.", "Retry").then(choice => {
                    if (choice === "Retry") {vscode.commands.executeCommand("hmiTypings.enable")}
                });
            }
        })();
    }
}