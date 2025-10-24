---@meta _

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
