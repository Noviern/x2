---@meta _

AP_BOTTOM = 8          -- object/Label
AP_BOTTOMLEFT = 2      -- object/Label
AP_BOTTOMRIGHT = 3     -- object/Label
AP_CENTER = 4          -- object/Label
AP_LEFT = 6            -- object/Label
AP_RIGHT = 7           -- object/Label
AP_TOP = 5             -- object/Label
AP_TOPLEFT = 0         -- object/Label
AP_TOPRIGHT = 1        -- object/Label
CT_ABILITY = 2         -- object/Label
CT_EXPEDITION_NAME = 3 -- object/Label
CT_NAME = 1            -- object/Label
DC_ALWAYS = 0          -- object/Label
DC_SHIFT_KEY_DOWN = 1  -- object/Label

---object/Label
---@class Label: Widget
---@field style TextStyle
local Label = {}


---Returns the inset of the Label.
---@return number left
---@return number top
---@return number right
---@return number bottom
---@nodiscard
function Label:GetInset() end

---Enables/Disables auto resizing of the Label.
---@param resize boolean
function Label:SetAutoResize(resize) end

---Sets the inset of the Label.
---@param left number
---@param top number
---@param right number
---@param bottom number
function Label:SetInset(left, top, right, bottom) end

---Enables/Disables number formatting for `SetText` on a Label if placed before.
---@param only boolean
function Label:SetNumberOnly(only) end
