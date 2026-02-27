> **WARNING: Work In Progress**
> 
> This guide and reference is currently under active development.  
> Some sections may be incomplete, contain outdated information, placeholder content, or temporary examples.  
> APIs, objects, code snippets, and explanations are subject to change as the ArcheAge addon system evolves and as more accurate documentation becomes available.
> 
> Use this material as a starting point for learning and experimentation. 
 
# Introduction


Addons in **ArcheAge** enable developers to extend the game by creating new functionality and UI Widgets. Modifications to existing functionality and Widgets are possible but are **limited**.

Each addon operates in its own **sandboxed environment**, with access to predefined **global variables** and **APIs**.

Addons are **written in [Lua 5.1](https://www.lua.org/manual/5.1/)**.