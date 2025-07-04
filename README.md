# ArcheAge Addon Definitions
Provides documentation, definitions, and IntelliSense for ArcheAge Addons.

![Shows method documentation](img/documentation.png)

![Shows method IntelliSense](img/intellisense.png)

## How to use IntelliSense ([VSCode](https://code.visualstudio.com/))
1. Clone or [download this repo](https://github.com/Noviern/AAAD/archive/refs/heads/master.zip).
2. Extract and place in `C:\ArcheRage\Documents\Addon`
3. Install [Lua](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) extension.

![Shows Lua extension install page](img/install.png)

4. Open settings and search for [lua.workspace.library](vscode://settings/Lua.workspace.library)
5. Determine if you want definitions for all addons (User) or just one specific addon (Workspace).
6. Click **Add Item** and provide location of this folder (`C:\ArcheRage\Documents\Addon\AAD`)

![Shows lua.workspace.library settings](img/settings.png)

## How to use globals
In your addon's toc.g add at the top
```
..\AAD\globals.lua
```