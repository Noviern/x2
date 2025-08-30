---@meta _

AP_BOTTOM = 8          -- objects/EmptyWidget
AP_BOTTOMLEFT = 2      -- objects/EmptyWidget
AP_BOTTOMRIGHT = 3     -- objects/EmptyWidget
AP_CENTER = 4          -- objects/EmptyWidget
AP_LEFT = 6            -- objects/EmptyWidget
AP_RIGHT = 7           -- objects/EmptyWidget
AP_TOP = 5             -- objects/EmptyWidget
AP_TOPLEFT = 0         -- objects/EmptyWidget
AP_TOPRIGHT = 1        -- objects/EmptyWidget
CT_ABILITY = 2         -- objects/EmptyWidget
CT_EXPEDITION_NAME = 3 -- objects/EmptyWidget
CT_NAME = 1            -- objects/EmptyWidget
DC_ALWAYS = 0          -- objects/EmptyWidget
DC_SHIFT_KEY_DOWN = 1  -- objects/EmptyWidget

---@class EmptyWidget: Widget
---@class emptywidget: EmptyWidget
local EmptyWidget = {}

---@TODO: Not sure if this works.
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
