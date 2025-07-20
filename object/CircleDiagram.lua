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

---Adds at point at `(offX, offY)` for the CircleDiagram.
---@param offX number
---@param offY number
function CircleDiagram:AddPoint(offX, offY) end

---TODO: Is this by degrees or radians?
---Adds a point by angle `pointNum` for CircleDiagram.
---@param pointNum number
function CircleDiagram:AddPointsByAngle(pointNum) end

---Clears all points for the CircleDiagram.
function CircleDiagram:ClearPoints() end

---Returns the offset `offX` and `offY` for the center of the CircleDiagram.
---@return number offX
---@return number offY
---@nodiscard
function CircleDiagram:GetCenterOffset() end

---Returns the offset `(offX, offY)` for the `index` point of the CircleDiagram.
---@param index number
---@return number offX
---@return number offY
---@nodiscard
function CircleDiagram:GetPointOffset(index) end

---TODO:
---Sets the color for the CircleDiagram.
---@param r number
---@param g number
---@param b number
---@param a number
function CircleDiagram:SetDiagramColor(r, g, b, a) end

---Sets line `thickness` for the CircleDiagram.
---@param thickness number
function CircleDiagram:SetLineThickness(thickness) end

---Sets the `maxValue` for the CircleDiagram.
---@param maxValue number
function CircleDiagram:SetMaxValue(maxValue) end

---Sets `value` for `index` of the CircleDiagram.
---@param index number
---@param value number
function CircleDiagram:SetPointValue(index, value) end
