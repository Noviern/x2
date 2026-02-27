# Reference

The following chapters provide examples of object usage as well as complete reference for all available **APIs** and **Objects** in the ArcheAge addon system.

- **[Examples](./examples/index.md)**
- **[APIs](./api/index.md)** — Game data access, utility functions, event handling, inventory, chat, quests, and more.
- **[Objects](./objects/index.md)** — Widgets (UI objects like buttons, windows, sliders) and Drawables (textures, backgrounds).

All content in these sections are **auto-generated** from the **[X2](https://github.com/Noviern/x2)** repository using the **[Lua Language Server](https://luals.github.io/)** (LuaLS) type definitions and annotations, then its converted into a **[mdBook](https://rust-lang.github.io/mdBook/)**.

**Important note on aliases:**
Aliases (such as shortened or alternative names for functions/objects) do **not** actually exist in the game runtime. They are provided solely in the X2 documentation and IntelliSense to make the API easier to read, remember, and use. Always use the **official, full function/object names** in your actual Lua code.