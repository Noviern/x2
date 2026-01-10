---@meta _

---objects/IconDrawable
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
