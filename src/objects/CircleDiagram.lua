---@meta _

---objects/CircleDiagram
---@class CircleDiagram: Widget
local CircleDiagram = {}
---@class circlediagram: CircleDiagram

---Adds a point at the specified offset coordinates for the CircleDiagram.
---@param offX number The x-coordinate offset.
---@param offY number The y-coordinate offset.
function CircleDiagram:AddPoint(offX, offY) end

---Adds a point by angle for the CircleDiagram.
---@param pointNum number The angle value (in radians) for the point.
function CircleDiagram:AddPointsByAngle(pointNum) end

---Clears all points from the CircleDiagram.
function CircleDiagram:ClearPoints() end

---Retrieves the offset coordinates of the CircleDiagram's center.
---@return number offX The x-coordinate offset of the center.
---@return number offY The y-coordinate offset of the center.
---@nodiscard
function CircleDiagram:GetCenterOffset() end

---Retrieves the offset coordinates for the specified point index of the
---CircleDiagram.
---@param index number The index of the point.
---@return number offX The x-coordinate offset of the point.
---@return number offY The y-coordinate offset of the point.
---@nodiscard
function CircleDiagram:GetPointOffset(index) end

---Sets the color for the CircleDiagram.
---@param r number The red color component (min: `0`, max: `1`).
---@param g number The green color component (min: `0`, max: `1`).
---@param b number The blue color component (min: `0`, max: `1`).
---@param a number The alpha (opacity) component (min: `0`, max: `1`).
function CircleDiagram:SetDiagramColor(r, g, b, a) end

---Sets the line thickness for the CircleDiagram.
---@param thickness number The thickness of the diagram's lines.
function CircleDiagram:SetLineThickness(thickness) end

---Sets the maximum value for the CircleDiagram.
---@param maxValue number The maximum value for the diagram.
function CircleDiagram:SetMaxValue(maxValue) end

---Sets the value for a specific point index of the CircleDiagram.
---@param index number The index of the point.
---@param value number The value to set for the point.
function CircleDiagram:SetPointValue(index, value) end
