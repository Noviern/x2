# Useful Tools

This chapter lists external tools that can help with ArcheAge addon development, debugging, texture work, database inspection, and game file analysis.

## X2
To develop ArcheAge addons effectively and with modern developer ergonomics, it is **strongly recommended** to use **X2**, a toolkit created specifically for ArcheAge addon developers.

**Repository:**
[https://github.com/Noviern/x2](https://github.com/Noviern/x2)

**Key features:**

- Detailed documentation of ArcheAge’s Lua API
- Type annotations and definitions for most game objects and functions
- Full **IntelliSense** support (auto-completion, signatures, hover documentation)
- Seamless integration with the [**Lua Language Server** (LuaLS)](https://luals.github.io/)

**Next steps:**

1. Download the latest version from the repository (or clone it).
2. Follow the setup instructions in the project’s **README**.

Properly setting up X2 dramatically improves code navigation, reduces errors, and accelerates learning of the addon API.

## Addon Manager
In addition to development tools like **X2**, it is **strongly recommended** to install **Addon Manager** — a lightweight **in-game utility addon**.

![Addon Manager](https://i.imgur.com/C4DWrRA.png)

**Repository:**
[https://github.com/Noviern/manager](https://github.com/Noviern/manager)

**Key features:**

- Centralized list of all installed addons with enable/disable toggles
- One-click **Reload Addon** button
- Quick access to addon settings windows (fires the `UI_ADDON` event)

**Installation:**

1. Download the latest version from the repository (or clone it).
2. Place the folder in `C:\ArcheRage\Documents\Addon\`.
3. Enable it at the character selection screen.

Addon Manager saves significant time during development and testing.

## Game File Dumps & References

These tools are optional for basic addon writing but become extremely valuable when working with textures, locale, or deeper game file analysis.

### Last ArcheAge Patch Dump (Kakao)

Dump of game files from the last official Kakao patch, including UI scripts and a unencrypted database.

**Repository:** [https://github.com/Noviern/aagamedump](https://github.com/Noviern/aagamedump)

### ArcheRage scriptsbin Dump
Contents of ArcheRage's `scriptsbin`.

**Repository:** [https://github.com/Noviern/scriptsbin](https://github.com/Noviern/scriptsbin)

## Image and Texture Viewing/Editing

**XnView**
Fast, free image viewer and batch processor that supports game texture formats (.tga, .dds, .blp, etc.). Ideal for inspecting UI atlases and texture regions.

**Download:** [https://www.xnview.com/en/xnview/](https://www.xnview.com/en/xnview/)

**VS Code extension: Magick Image Reader**
Enables preview of .dds and other game texture formats directly in Visual Studio Code. Very helpful when browsing UI files.

**Marketplace:** [https://marketplace.visualstudio.com/items?itemName=elypia.magick-image-reader](https://marketplace.visualstudio.com/items?itemName=elypia.magick-image-reader)

## Database Tools

**DBeaver**
Universal database tool (free community edition) supporting SQLite, MySQL, PostgreSQL, and more. Useful for inspecting any database files related to addons or game dumps.

**Download:** [https://dbeaver.io/](https://dbeaver.io/)

**DB Browser for SQLite**
Free graphical tool (or use sqlite3 CLI) for opening, querying, and editing SQLite database files.

**Download:** [https://sqlitebrowser.org/](https://sqlitebrowser.org/)
