---@meta _

UI_BUTTON_DISABLED = 3    -- objects/CheckButton UI_BUTTON_STATE
UI_BUTTON_HIGHLIGHTED = 1 -- objects/CheckButton UI_BUTTON_STATE
UI_BUTTON_MAX = 4         -- objects/CheckButton
UI_BUTTON_NORMAL = 0      -- objects/CheckButton UI_BUTTON_STATE
UI_BUTTON_PUSHED = 2      -- objects/CheckButton UI_BUTTON_STATE

---objects/CheckButton
---@class Checkbutton: Button
---@field style TextStyle
local Checkbutton = {}

---objects/CheckButton
---@class checkbutton: Checkbutton

---Returns a boolean indicating the state of the Checkbutton.
---@return boolean checked `true` if the Checkbutton is checked, `false` otherwise. (default: `false`)
---@nodiscard
function Checkbutton:GetChecked() end

---Sets the state of the Checkbutton.
---@param state boolean `true` to check the Checkbutton, `false` to uncheck. (default: `false`)
function Checkbutton:SetChecked(state) end

---Sets the background for the checked state of the Checkbutton.
---@param checkedTable DrawableDDS The table defining the checked state background.
---@see DrawableDDS
function Checkbutton:SetCheckedBackground(checkedTable) end

---Sets the background for the disabled (`Widget:Enable(false)`) checked state
---of the Checkbutton.
---@param disabledCheckedTable DrawableDDS The table defining the disabled checked state background.
---@see DrawableDDS
function Checkbutton:SetDisabledCheckedBackground(disabledCheckedTable) end
