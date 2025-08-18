---@meta _

AP_BOTTOM = 8          -- object/CircleDiagram
AP_BOTTOMLEFT = 2      -- object/CircleDiagram
AP_BOTTOMRIGHT = 3     -- object/CircleDiagram
AP_CENTER = 4          -- object/CircleDiagram
AP_LEFT = 6            -- object/CircleDiagram
AP_RIGHT = 7           -- object/CircleDiagram
AP_TOP = 5             -- object/CircleDiagram
AP_TOPLEFT = 0         -- object/CircleDiagram
AP_TOPRIGHT = 1        -- object/CircleDiagram
CT_ABILITY = 2         -- object/CircleDiagram
CT_EXPEDITION_NAME = 3 -- object/CircleDiagram
CT_NAME = 1            -- object/CircleDiagram
DC_ALWAYS = 0          -- object/CircleDiagram
DC_SHIFT_KEY_DOWN = 1  -- object/CircleDiagram

---object/CircleDiagram
---@class CircleDiagram: Widget
local CircleDiagram = {}

---Adds a point at the specified offset coordinates for the CircleDiagram.
---@param offX number The x-coordinate offset.
---@param offY number The y-coordinate offset.
---@usage
---```
---circleDiagram:AddPoint(10, 10)
---```
function CircleDiagram:AddPoint(offX, offY) end

---@TODO: Clarify if pointNum is in degrees or radians.
---Adds a point by angle for the CircleDiagram.
---@param pointNum number The angle value for the point.
function CircleDiagram:AddPointsByAngle(pointNum) end

---Clears all points from the CircleDiagram.
---@usage
---```
---circleDiagram:ClearPoints()
---```
function CircleDiagram:ClearPoints() end

---Retrieves the offset coordinates of the CircleDiagram's center.
---@return number offX The x-coordinate offset of the center.
---@return number offY The y-coordinate offset of the center.
---@nodiscard
---@usage
---```
---local offX, offY = circleDiagram:GetCenterOffset()
---```
function CircleDiagram:GetCenterOffset() end

---Retrieves the offset coordinates for the specified point index of the CircleDiagram.
---@param index number The index of the point.
---@return number offX The x-coordinate offset of the point.
---@return number offY The y-coordinate offset of the point.
---@nodiscard
---@usage
---```
---local offX, offY = circleDiagram:GetPointOffset(1)
---```
function CircleDiagram:GetPointOffset(index) end

---Sets the color for the CircleDiagram.
---@param r number The red color component (min: `0`, max: `1`).
---@param g number The green color component (min: `0`, max: `1`).
---@param b number The blue color component (min: `0`, max: `1`).
---@param a number The alpha (opacity) component (min: `0`, max: `1`).
---@usage
---```
---circleDiagram:SetDiagramColor(1, 0, 0, 1)
---```
function CircleDiagram:SetDiagramColor(r, g, b, a) end

---Sets the line thickness for the CircleDiagram.
---@param thickness number The thickness of the diagram's lines.
---@usage
---```
---circleDiagram:SetLineThickness(4)
---```
function CircleDiagram:SetLineThickness(thickness) end

---Sets the maximum value for the CircleDiagram.
---@param maxValue number The maximum value for the diagram.
---@usage
---```
---circleDiagram:SetMaxValue(15)
---```
function CircleDiagram:SetMaxValue(maxValue) end

---Sets the value for a specific point index of the CircleDiagram.
---@param index number The index of the point.
---@param value number The value to set for the point.
---@usage
---```
---circleDiagram:SetPointValue(1, 10)
---```
function CircleDiagram:SetPointValue(index, value) end
