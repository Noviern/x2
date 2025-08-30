---@meta _

AP_BOTTOM = 8          -- objects/Line
AP_BOTTOMLEFT = 2      -- objects/Line
AP_BOTTOMRIGHT = 3     -- objects/Line
AP_CENTER = 4          -- objects/Line
AP_LEFT = 6            -- objects/Line
AP_RIGHT = 7           -- objects/Line
AP_TOP = 5             -- objects/Line
AP_TOPLEFT = 0         -- objects/Line
AP_TOPRIGHT = 1        -- objects/Line
CT_ABILITY = 2         -- objects/Line
CT_EXPEDITION_NAME = 3 -- objects/Line
CT_NAME = 1            -- objects/Line
DC_ALWAYS = 0          -- objects/Line
DC_SHIFT_KEY_DOWN = 1  -- objects/Line

---objects/Line
---@class Point
---@field beginX number
---@field beginY number
---@field endX number
---@field endY number

---objects/Line
---@class Line: Widget
---@class line: Line
local Line = {}

---Clears all points from the Line.
---@usage
---```lua
---widget:ClearPoints()
---```
function Line:ClearPoints() end

---Sets the color for the Line.
---@param r number The red color component. (min: `0`, max: `1`, default: `0`)
---@param g number The green color component. (min: `0`, max: `1`, default: `0`)
---@param b number The blue color component. (min: `0`, max: `1`, default: `0`)
---@param a number The alpha (opacity) component. (min: `0`, max: `1`, default: `1`)
---@usage
---```lua
---widget:SetLineColor(1, 0, 0, 1)
---```
function Line:SetLineColor(r, g, b, a) end

---Sets the line color using a color key for the Line.
---@param colorKey ETC_COLOR The color key to apply.
---@usage
---```lua
---widget:SetLineColorByKey("market_price_line_weekly")
---```
---@see ETC_COLOR
function Line:SetLineColorByKey(colorKey) end

---Sets the thickness for the Line.
---@param thickness number The thickness of the line.
---@usage
---```lua
---widget:SetLineThickness(5)
---```
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
