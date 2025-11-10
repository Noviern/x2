---@meta _

---objects/Line
---@class Line: Widget
local Line = {}
---@class line: Line

---Clears all points from the Line.
function Line:ClearPoints() end

---Sets the color for the Line.
---@param r number The red color component. (min: `0`, max: `1`, default: `0`)
---@param g number The green color component. (min: `0`, max: `1`, default: `0`)
---@param b number The blue color component. (min: `0`, max: `1`, default: `0`)
---@param a number The alpha (opacity) component. (min: `0`, max: `1`, default: `1`)
function Line:SetLineColor(r, g, b, a) end

---Sets the line color using a color key for the Line.
---@param colorKey ETC_COLOR The color key to apply.
---@see ETC_COLOR
function Line:SetLineColorByKey(colorKey) end

---Sets the thickness for the Line.
---@param thickness number The thickness of the line.
function Line:SetLineThickness(thickness) end

---Sets the points for the Line. Starts at bottom left of the widget.
---@param points Point[] An array of points defining the line.
---@usage
---```lua
---widget:SetPoints({
---  { beginX = 0,   beginY = 0,   endX = 200, endY = 0, },
---  { beginX = 200, beginY = 0,   endX = 100, endY = 200, },
---  { beginX = 100, beginY = 200, endX = 0,   endY = 0, },
---})
---```
function Line:SetPoints(points) end
