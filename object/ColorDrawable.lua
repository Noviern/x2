---@meta _

AP_BOTTOM = 8      -- object/ColorDrawable
AP_BOTTOMLEFT = 2  -- object/ColorDrawable
AP_BOTTOMRIGHT = 3 -- object/ColorDrawable
AP_CENTER = 4      -- object/ColorDrawable
AP_LEFT = 6        -- object/ColorDrawable
AP_RIGHT = 7       -- object/ColorDrawable
AP_TOP = 5         -- object/ColorDrawable
AP_TOPLEFT = 0     -- object/ColorDrawable
AP_TOPRIGHT = 1    -- object/ColorDrawable


---object/ColorDrawable
---@class ColorDrawable: Drawablebase
local ColorDrawable = {}

---Returns `color` for the ColorDrawable.
---@return RGBA color
---@nodiscard
function ColorDrawable:GetColor() end

---TODO: Find where the texture colorKeys are stored and make a enum.
---Sets the texture color by `colorKey` for the ColorDrawable.
---@param colorKey string
function ColorDrawable:SetTextureColor(colorKey) end
