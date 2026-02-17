---@meta _

UI_BUTTON_DISABLED = 3    -- objects/CheckButton UI_BUTTON_STATE
UI_BUTTON_HIGHLIGHTED = 1 -- objects/CheckButton UI_BUTTON_STATE
UI_BUTTON_MAX = 4         -- objects/CheckButton
UI_BUTTON_NORMAL = 0      -- objects/CheckButton UI_BUTTON_STATE
UI_BUTTON_PUSHED = 2      -- objects/CheckButton UI_BUTTON_STATE

---[CheckButton](lua://CheckButton)
---
---A `CheckButton` widget is a small clickable widget that represents a binary
---on/off or true/false setting or option. It inherits from Button and supports
---the same four visual states: normal, highlighted (hover), pushed (pressed),
---and disabled. Adds checked/unchecked state management with separate
---background drawables for checked and disabled-checked states. Can trigger
---the widget `"OnCheckChanged"` action.
---
---**Dependencies**:
--- - [TextStyle](lua://TextStyle) used for the `style` field.
---
---@class CheckButton: Button
local CheckButton = {}

---Returns a boolean indicating the state of the CheckButton.
---@return boolean checked `true` if the CheckButton is checked, `false` otherwise. (default: `false`)
---@nodiscard
function CheckButton:GetChecked() end

---Sets the state of the CheckButton.
---@param state boolean `true` to check the CheckButton, `false` to uncheck. (default: `false`)
---@param trigger boolean|nil `true` to trigger the `"OnCheckChanged"` action, `false` to do nothing. (default: `false`)
function CheckButton:SetChecked(state, trigger) end

---Sets the background for the checked state of the CheckButton.
---@param checkedTable DrawableDDS The table defining the checked state background.
---@see DrawableDDS
function CheckButton:SetCheckedBackground(checkedTable) end

---Sets the background for the disabled checked state of the CheckButton.
---@param disabledCheckedTable DrawableDDS The table defining the disabled checked state background.
---@see DrawableDDS
function CheckButton:SetDisabledCheckedBackground(disabledCheckedTable) end
