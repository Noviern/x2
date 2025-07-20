---@meta _

AP_BOTTOM = 8             -- object/CheckButton
AP_BOTTOMLEFT = 2         -- object/CheckButton
AP_BOTTOMRIGHT = 3        -- object/CheckButton
AP_CENTER = 4             -- object/CheckButton
AP_LEFT = 6               -- object/CheckButton
AP_RIGHT = 7              -- object/CheckButton
AP_TOP = 5                -- object/CheckButton
AP_TOPLEFT = 0            -- object/CheckButton
AP_TOPRIGHT = 1           -- object/CheckButton
CT_ABILITY = 2            -- object/CheckButton
CT_EXPEDITION_NAME = 3    -- object/CheckButton
CT_NAME = 1               -- object/CheckButton
DC_ALWAYS = 0             -- object/CheckButton
DC_SHIFT_KEY_DOWN = 1     -- object/CheckButton
UI_BUTTON_DISABLED = 3    -- object/CheckButton
UI_BUTTON_HIGHLIGHTED = 1 -- object/CheckButton
UI_BUTTON_MAX = 4         -- object/CheckButton
UI_BUTTON_NORMAL = 0      -- object/CheckButton
UI_BUTTON_PUSHED = 2      -- object/CheckButton

---object/CheckButton
---@class Checkbutton: Button
---@field style TextStyle
local Checkbutton = {}

---Returns a boolean `checked` indicating the state of the Checkbutton.
---@return boolean checked
---@nodiscard
function Checkbutton:GetChecked() end

---Sets the `state` of the CheckButton.
---@param state boolean
function Checkbutton:SetChecked(state) end

---TODO: What is checkedTable?
---Sets a `checkedTable` for the checked state of the Checkbutton.
---@param checkedTable table
function Checkbutton:SetCheckedBackground(checkedTable) end

---TODO: What is disabledCheckedTable? Not sure how you would disable a checkbutton when SetButtonState has no effect.
---Sets a `disabledCheckedTable` for the checked state of the Checkbutton.
---@param disabledCheckedTable table
function Checkbutton:SetDisabledCheckedBackground(disabledCheckedTable) end
