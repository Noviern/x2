---@meta _

---@class EmptyWidget: Widget
local EmptyWidget = {}
---@class emptywidget: EmptyWidget

---@FIXME: Not sure if this works.
---Sets whether to draw the border for the EmptyWidget and specifies its color.
---@param draw boolean `true` to draw the border, `false` to hide it.
---@param r number The red color component (min: `0`, max: `1`).
---@param g number The green color component (min: `0`, max: `1`).
---@param b number The blue color component (min: `0`, max: `1`).
---@param a number The alpha (opacity) component (min: `0`, max: `1`).
---@usage
---```lua
---widget:SetDrawBorder(true, 1, 0, 0, 1)
---```
function EmptyWidget:SetDrawBorder(draw, r, g, b, a) end
