---@meta _

---[EmptyWidget](lua://EmptyWidget)
---
---**Warning:** `SetDrawBorder` is currently broken.
---
---A `EmptyWidget` widget is generic and minimal, primarily used as a container
---or placeholder. Supports optional border drawing with configurable color
---and opacity. Intended for layouts, anchors, or as a base for other composite
---widgets.
---
---@class EmptyWidget: Widget
local EmptyWidget = {}

---@FIXME: Not sure if this works.
---Sets whether to draw the border for the EmptyWidget and specifies its color.
---@param draw boolean `true` to draw the border, `false` to hide it.
---@param r number The red color component (min: `0`, max: `1`).
---@param g number The green color component (min: `0`, max: `1`).
---@param b number The blue color component (min: `0`, max: `1`).
---@param a number The alpha (opacity) component (min: `0`, max: `1`).
function EmptyWidget:SetDrawBorder(draw, r, g, b, a) end
