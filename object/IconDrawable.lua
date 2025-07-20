---@meta _

AP_BOTTOM = 8      -- object/IconDrawable
AP_BOTTOMLEFT = 2  -- object/IconDrawable
AP_BOTTOMRIGHT = 3 -- object/IconDrawable
AP_CENTER = 4      -- object/IconDrawable
AP_LEFT = 6        -- object/IconDrawable
AP_RIGHT = 7       -- object/IconDrawable
AP_TOP = 5         -- object/IconDrawable
AP_TOPLEFT = 0     -- object/IconDrawable
AP_TOPRIGHT = 1    -- object/IconDrawable

---object/IconDrawable
---@class IconDrawable: Drawablebase
local IconDrawable = {}

---Adds a texture `filename` for the IconDrawable.
---@param filename string
function IconDrawable:AddTexture(filename) end

---Adds a texture `filename` with the `coord` for the IconDrawable.
---@param filename string
---@param coord string
function IconDrawable:AddTextureWithInfo(filename, coord) end

---Clears all textures for the IconDrawable.
function IconDrawable:ClearAllTextures() end
