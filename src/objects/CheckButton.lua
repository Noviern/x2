---@meta _

UI_BUTTON_DISABLED = 3    -- objects/CheckButton UI_BUTTON_STATE
UI_BUTTON_HIGHLIGHTED = 1 -- objects/CheckButton UI_BUTTON_STATE
UI_BUTTON_MAX = 4         -- objects/CheckButton
UI_BUTTON_NORMAL = 0      -- objects/CheckButton UI_BUTTON_STATE
UI_BUTTON_PUSHED = 2      -- objects/CheckButton UI_BUTTON_STATE

---[Checkbutton](lua://Checkbutton)
---
---A `Checkbutton` widget is a small clickable widget that represents a binary
---on/off or true/false setting or option. It inherits from Button and supports
---the same four visual states: normal, highlighted (hover), pushed (pressed),
---and disabled. Adds checked/unchecked state management with separate
---background drawables for checked and disabled-checked states. Can trigger
---the widget `"OnCheckChanged"` action.
---
---**Dependencies**:
--- - [TextStyle](lua://TextStyle) used for the `style` field.
---
---@class Checkbutton: Button
local Checkbutton = {}

---Returns a boolean indicating the state of the Checkbutton.
---@return boolean checked `true` if the Checkbutton is checked, `false` otherwise. (default: `false`)
---@nodiscard
function Checkbutton:GetChecked() end

---Sets the state of the Checkbutton.
---@param state boolean `true` to check the Checkbutton, `false` to uncheck. (default: `false`)
---@param trigger boolean|nil `true` to trigger the `"OnCheckChanged"` action, `false` to do nothing. (default: `false`)
function Checkbutton:SetChecked(state, trigger) end

---Sets the background for the checked state of the Checkbutton.
---@param checkedTable DrawableDDS The table defining the checked state background.
---@see DrawableDDS
function Checkbutton:SetCheckedBackground(checkedTable) end

---Sets the background for the disabled checked state of the Checkbutton.
---@param disabledCheckedTable DrawableDDS The table defining the disabled checked state background.
---@see DrawableDDS
function Checkbutton:SetDisabledCheckedBackground(disabledCheckedTable) end
