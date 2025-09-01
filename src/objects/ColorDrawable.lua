---@meta _

AP_BOTTOM = 8      -- objects/ColorDrawable
AP_BOTTOMLEFT = 2  -- objects/ColorDrawable
AP_BOTTOMRIGHT = 3 -- objects/ColorDrawable
AP_CENTER = 4      -- objects/ColorDrawable
AP_LEFT = 6        -- objects/ColorDrawable
AP_RIGHT = 7       -- objects/ColorDrawable
AP_TOP = 5         -- objects/ColorDrawable
AP_TOPLEFT = 0     -- objects/ColorDrawable
AP_TOPRIGHT = 1    -- objects/ColorDrawable

---objects/ColorDrawable
---@class ColorDrawable: Drawablebase
local ColorDrawable = {}

---Returns `color` for the ColorDrawable.
---@return RGBA color
---@nodiscard
---@usage
---```lua
---local color = drawable:GetColor()
---```
---@see RGBA
function ColorDrawable:GetColor() end

---Sets the texture color by `colorKey` for the ColorDrawable.
---@param colorKey ETC_COLOR
---@usage
---```lua
---drawable:SetTextureColor("icon_button_overlay_yellow")
---```
---@see ETC_COLOR
function ColorDrawable:SetTextureColor(colorKey) end
