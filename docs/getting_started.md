# Getting Started
## Creating Your First Addon
### 1. Addon Folder Structure
ArcheAge loads addons from the following directory:

`C:\ArcheRage\Documents\Addon`

Inside this directory, create a new folder for your addon. The folder name will become your addon’s identifier.

Example:

`C:\ArcheRage\Documents\Addon\MyFirstAddon\`


### 2. Create Your First Lua File

Inside your addon folder (`MyFirstAddon`), create at least one `.lua` file (e.g., `MyFirstAddon.lua`) and add some basic code to verify it loads.

**Minimal example (`MyFirstAddon.lua`):**

```lua
ADDON:ChatLog("My First Addon loaded successfully!")
```

### 3. Create the Table of Contents File (`toc.g`)

Every addon **must** contain a file named **`toc.g`** in its root folder. This file tells the game which Lua files to load and in which order.

**Example `toc.g` content:**
```
# My First Addon
MyFirstAddon.lua
```

After saving both `toc.g` and your Lua file(s):

1. Launch (or restart) ArcheAge.
2. At the **character selection screen**, open the **Addon setup** menu (usually accessible via a button near the top right of the screen).
3. Locate your addon in the list.
4. Enable it by checking the box.

![Enable addon at character select](https://i.imgur.com/5qFlZrP.png)

5. Log into the game world.
6. View the chat window and look for the message:
   `My First Addon loaded successfully!`

If the message appears, your addon has loaded correctly and is functioning as expected.

**Important note on addon detection and reloading:**
- For a **new** `toc.g` (brand new addon that didn't exist at launch), you must fully restart the client to detect it.
- For changes to an **existing** `toc.g` or Lua files, you can reload using [**Addon Manager**](./useful_tools.md#addon-manager).
- Alternatively, return to the **character selection screen** to reload, but Addon Manager is faster for development.

**WARNING: Reloading can crash the client**

Addon reloads are generally safe but **can cause crashes** in certain circumstances:
- Infinite loops
- UI memory leaks or texture loading issues
- Conflicts with other addons or existing UI objects

**Safe development workflow:**
1. Test new code on a **fresh character**
2. Start with minimal addons
3. **If a crash occurs:**
   Check these log files for error details:
   - `C:\ArcheRage\Documents\ArcheRage.log` (main game log)
   - `C:\ArcheRage\Documents\ArcheRage.crash` (crash dump)
 
   Look for lines mentioning your addon widget names, UI Logic Errors, Lua errors, or stack traces.

> **Pro tip:** Keep **Addon Manager** open during development — disable your addon instantly if something goes wrong, then reload safely.
