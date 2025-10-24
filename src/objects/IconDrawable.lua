---@meta _

---objects/IconDrawable
---@class IconDrawable: Drawablebase
local IconDrawable = {}

---Adds a texture to the IconDrawable.
---@param filename string The path to the texture file.
---@usage
---```lua
---local info = X2Player:GetAppellationMyStamp()
---iconDrawable:AddTexture(info.path)
---```
function IconDrawable:AddTexture(filename) end

---Adds a texture with a specific key to the IconDrawable.
---@param filename string The path to the texture file.
---@param key string The key information for the texture.
---@usage
---```lua
---iconDrawable:AddTextureWithInfo(TEXTURE_PATH.ITEM_GRADE, "mythic")
---```
function IconDrawable:AddTextureWithInfo(filename, key) end

---Clears all textures from the IconDrawable.
---@usage
---```lua
---iconDrawable:ClearAllTextures()
---```
function IconDrawable:ClearAllTextures() end
