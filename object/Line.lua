---@meta _

AP_BOTTOM = 8          -- object/Line
AP_BOTTOMLEFT = 2      -- object/Line
AP_BOTTOMRIGHT = 3     -- object/Line
AP_CENTER = 4          -- object/Line
AP_LEFT = 6            -- object/Line
AP_RIGHT = 7           -- object/Line
AP_TOP = 5             -- object/Line
AP_TOPLEFT = 0         -- object/Line
AP_TOPRIGHT = 1        -- object/Line
CT_ABILITY = 2         -- object/Line
CT_EXPEDITION_NAME = 3 -- object/Line
CT_NAME = 1            -- object/Line
DC_ALWAYS = 0          -- object/Line
DC_SHIFT_KEY_DOWN = 1  -- object/Line

---@class Point
---@field beginX number
---@field beginY number
---@field endX number
---@field endY number

---object/Line
---@class Line: Widget
local Line = {}

---Clears points for the Line
function Line:ClearPoints() end

---Sets the line color for the Line.
---@param r number
---@param b number
---@param g number
---@param a number
function Line:SetLineColor(r, b, g, a) end

---Sets the line color `colorKey` for the Line.
---@param colorKey string
function Line:SetLineColorByKey(colorKey) end

---Sets the line `thickness` for the Line.
---@param thickness number
function Line:SetLineThickness(thickness) end

---Sets the `points` for the Line.
---@param points Point[]
function Line:SetPoints(points) end
