---@meta _

AP_BOTTOM = 8          -- objects/CircleDiagram
AP_BOTTOMLEFT = 2      -- objects/CircleDiagram
AP_BOTTOMRIGHT = 3     -- objects/CircleDiagram
AP_CENTER = 4          -- objects/CircleDiagram
AP_LEFT = 6            -- objects/CircleDiagram
AP_RIGHT = 7           -- objects/CircleDiagram
AP_TOP = 5             -- objects/CircleDiagram
AP_TOPLEFT = 0         -- objects/CircleDiagram
AP_TOPRIGHT = 1        -- objects/CircleDiagram
CT_ABILITY = 2         -- objects/CircleDiagram
CT_EXPEDITION_NAME = 3 -- objects/CircleDiagram
CT_NAME = 1            -- objects/CircleDiagram
DC_ALWAYS = 0          -- objects/CircleDiagram DRAG_CONDITION
DC_SHIFT_KEY_DOWN = 1  -- objects/CircleDiagram DRAG_CONDITION

---objects/CircleDiagram
---@class CircleDiagram: Widget
local CircleDiagram = {}
---@class circlediagram: CircleDiagram

---Adds a point at the specified offset coordinates for the CircleDiagram.
---@param offX number The x-coordinate offset.
---@param offY number The y-coordinate offset.
---@usage
---```lua
---widget:AddPoint(10, 10)
---```
function CircleDiagram:AddPoint(offX, offY) end

---@TODO: Clarify if pointNum is in degrees or radians.
---Adds a point by angle for the CircleDiagram.
---@param pointNum number The angle value for the point.
function CircleDiagram:AddPointsByAngle(pointNum) end

---Clears all points from the CircleDiagram.
---@usage
---```lua
---widget:ClearPoints()
---```
function CircleDiagram:ClearPoints() end

---Retrieves the offset coordinates of the CircleDiagram's center.
---@return number offX The x-coordinate offset of the center.
---@return number offY The y-coordinate offset of the center.
---@nodiscard
---@usage
---```lua
---local offX, offY = widget:GetCenterOffset()
---```
function CircleDiagram:GetCenterOffset() end

---Retrieves the offset coordinates for the specified point index of the CircleDiagram.
---@param index number The index of the point.
---@return number offX The x-coordinate offset of the point.
---@return number offY The y-coordinate offset of the point.
---@nodiscard
---@usage
---```lua
---local offX, offY = widget:GetPointOffset(1)
---```
function CircleDiagram:GetPointOffset(index) end

---Sets the color for the CircleDiagram.
---@param r number The red color component (min: `0`, max: `1`).
---@param g number The green color component (min: `0`, max: `1`).
---@param b number The blue color component (min: `0`, max: `1`).
---@param a number The alpha (opacity) component (min: `0`, max: `1`).
---@usage
---```lua
---widget:SetDiagramColor(1, 0, 0, 1)
---```
function CircleDiagram:SetDiagramColor(r, g, b, a) end

---Sets the line thickness for the CircleDiagram.
---@param thickness number The thickness of the diagram's lines.
---@usage
---```lua
---widget:SetLineThickness(4)
---```
function CircleDiagram:SetLineThickness(thickness) end

---Sets the maximum value for the CircleDiagram.
---@param maxValue number The maximum value for the diagram.
---@usage
---```lua
---widget:SetMaxValue(15)
---```
function CircleDiagram:SetMaxValue(maxValue) end

---Sets the value for a specific point index of the CircleDiagram.
---@param index number The index of the point.
---@param value number The value to set for the point.
---@usage
---```lua
---widget:SetPointValue(1, 10)
---```
function CircleDiagram:SetPointValue(index, value) end
