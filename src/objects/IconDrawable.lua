---@meta _

---[IconDrawable](lua://IconDrawable)
---
---A `IconDrawable` is a drawable that can display one or multiple textures.
---Textures can be added, assigned a key, or cleared entirely.
---
---@class IconDrawable: Drawablebase
local IconDrawable = {}

---Adds a texture to the IconDrawable.
---@param filename string The path to the texture file.
function IconDrawable:AddTexture(filename) end

---Adds a texture with a specific key to the IconDrawable.
---@param filename string The path to the texture file.
---@param key string The key information for the texture.
function IconDrawable:AddTextureWithInfo(filename, key) end

---Clears all textures from the IconDrawable.
function IconDrawable:ClearAllTextures() end
