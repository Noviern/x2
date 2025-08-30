---@meta _

AP_BOTTOM = 8          -- objects/Label
AP_BOTTOMLEFT = 2      -- objects/Label
AP_BOTTOMRIGHT = 3     -- objects/Label
AP_CENTER = 4          -- objects/Label
AP_LEFT = 6            -- objects/Label
AP_RIGHT = 7           -- objects/Label
AP_TOP = 5             -- objects/Label
AP_TOPLEFT = 0         -- objects/Label
AP_TOPRIGHT = 1        -- objects/Label
CT_ABILITY = 2         -- objects/Label
CT_EXPEDITION_NAME = 3 -- objects/Label
CT_NAME = 1            -- objects/Label
DC_ALWAYS = 0          -- objects/Label
DC_SHIFT_KEY_DOWN = 1  -- objects/Label

---objects/Label
---@class Label: Widget
---@field style TextStyle
---@class label: Label
local Label = {}

---Retrieves the inset of the Label.
---@return number left The left inset. (default: `0`)
---@return number top The top inset. (default: `0`)
---@return number right The right inset. (default: `0`)
---@return number bottom The bottom inset. (default: `0`)
---@nodiscard
---@usage
---```lua
---local left, top, right, bottom = widget:GetInset()
---```
function Label:GetInset() end

---Enables or disables automatic resizing of the Label.
---@param resize boolean `true` to enable auto resizing, `false` to disable. (default: `false`)
---@usage
---```lua
---widget:SetAutoResize(true)
---```
function Label:SetAutoResize(resize) end

---Sets the inset for the Label.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```lua
---widget:SetInset(10, 10, 10, 10)
---```
function Label:SetInset(left, top, right, bottom) end

---Enables or disables number formatting for the Label's text (must be set
---before `Label:SetText`).
---@param only boolean `true` to restrict to numbers only, `false` to allow any text. (default: `false`)
---@usage
---```lua
---widget:SetNumberOnly(true)
---widget:SetText("Hello123")
------He,llo,123
---```
function Label:SetNumberOnly(only) end
