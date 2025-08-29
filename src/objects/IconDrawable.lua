---@meta _

AP_BOTTOM = 8      -- objects/IconDrawable
AP_BOTTOMLEFT = 2  -- objects/IconDrawable
AP_BOTTOMRIGHT = 3 -- objects/IconDrawable
AP_CENTER = 4      -- objects/IconDrawable
AP_LEFT = 6        -- objects/IconDrawable
AP_RIGHT = 7       -- objects/IconDrawable
AP_TOP = 5         -- objects/IconDrawable
AP_TOPLEFT = 0     -- objects/IconDrawable
AP_TOPRIGHT = 1    -- objects/IconDrawable

---objects/IconDrawable
---@class IconDrawable: Drawablebase
local IconDrawable = {}

---@TODO: Can other file types be used other than dds?
---Adds a texture to the IconDrawable.
---@param filename string The path to the texture file. This can be `"ui/..."` or `"Addon/MyAddon/image.dds"`
---@usage
---```
---local info = X2Player:GetAppellationMyStamp()
---iconDrawable:AddTexture(info.path)
---```
function IconDrawable:AddTexture(filename) end

---@TODO: Can other file types be used other than dds?
---Adds a texture with a specific key to the IconDrawable.
---@param filename string The path to the texture file. This can be `"ui/..."` or `"Addon/MyAddon/image.dds"`
---@param key string The key information for the texture.
---@usage
---```
---iconDrawable:AddTextureWithInfo(TEXTURE_PATH.ITEM_GRADE, "mythic")
---```
function IconDrawable:AddTextureWithInfo(filename, key) end

---Clears all textures from the IconDrawable.
---@usage
---```
---iconDrawable:ClearAllTextures()
---```
function IconDrawable:ClearAllTextures() end
