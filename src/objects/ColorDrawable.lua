---@meta _

---[ColorDrawable](lua://ColorDrawable)
---
---A `ColorDrawable` is a drawable that displays a solid color. It can be queried
---for its current color and have its texture color set via a color key.
---
---@class ColorDrawable: Drawablebase
local ColorDrawable = {}

---Returns `color` for the ColorDrawable.
---@return RGBA color
---@nodiscard
function ColorDrawable:GetColor() end

---Sets the texture color by `colorKey` for the ColorDrawable.
---@param colorKey ETC_COLOR
function ColorDrawable:SetTextureColor(colorKey) end
