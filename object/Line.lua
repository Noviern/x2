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

---object/Line
---@class Point
---@field beginX number
---@field beginY number
---@field endX number
---@field endY number

---object/Line
---@class Line: Widget
local Line = {}

---Clears all points from the Line.
---@usage
---```
---widget:ClearPoints()
---```
function Line:ClearPoints() end

---Sets the color for the Line.
---@param r number The red color component. (min: `0`, max: `1`, default: `0`)
---@param g number The green color component. (min: `0`, max: `1`, default: `0`)
---@param b number The blue color component. (min: `0`, max: `1`, default: `0`)
---@param a number The alpha (opacity) component. (min: `0`, max: `1`, default: `1`)
---@usage
---```
---widget:SetLineColor(1, 0, 0, 1)
---```
function Line:SetLineColor(r, g, b, a) end

---Sets the line color using a color key for the Line.
---@param colorKey ETC_COLOR The color key to apply.
---@usage
---```
---widget:SetLineColorByKey("market_price_line_weekly")
---```
---@see ETC_COLOR
function Line:SetLineColorByKey(colorKey) end

---Sets the thickness for the Line.
---@param thickness number The thickness of the line.
---@usage
---```
---widget:SetLineThickness(5)
---```
function Line:SetLineThickness(thickness) end

---Sets the points for the Line. Starts at bottom left of the widget.
---@param points Point[] An array of points defining the line.
---@usage
---```
---widget:SetPoints({
---  { beginX = 0,   beginY = 0,   endX = 200, endY = 0, },
---  { beginX = 200, beginY = 0,   endX = 100, endY = 200, },
---  { beginX = 100, beginY = 200, endX = 0,   endY = 0, },
---})
---```
function Line:SetPoints(points) end
