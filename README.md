# X2

Provides documentation, definitions, and IntelliSense for ArcheAge Addons through the use of the [Lua Language Server](https://luals.github.io/).

<video src="https://github.com/user-attachments/assets/a434d02e-e6fb-48fa-ba13-5d457b9fd525"></video>

## How To Use IntelliSense ([VSCode](https://code.visualstudio.com/))
1. Clone or download this repo.
2. Extract and place in `C:/ArcheRage/Documents/Addon`. (Rename folder to `x2` so that the full path looks like `C:/ArcheRage/Documents/Addon/x2/`)
3. Install VSCode Extension [Lua](https://marketplace.visualstudio.com/items?itemName=sumneko.lua).
4. Create a `.luarc.jsonc` in your project.

```jsonc
{
  "$schema": "https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json",
  "runtime.version": "Lua 5.1",
  "hover.expandAlias": false,
  "workspace.library": [
    "C:/ArcheRage/Documents/Addon/x2/src"
  ]
}
```
