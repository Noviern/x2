---@meta _

AP_BOTTOM = 8             -- objects/CheckButton
AP_BOTTOMLEFT = 2         -- objects/CheckButton
AP_BOTTOMRIGHT = 3        -- objects/CheckButton
AP_CENTER = 4             -- objects/CheckButton
AP_LEFT = 6               -- objects/CheckButton
AP_RIGHT = 7              -- objects/CheckButton
AP_TOP = 5                -- objects/CheckButton
AP_TOPLEFT = 0            -- objects/CheckButton
AP_TOPRIGHT = 1           -- objects/CheckButton
CT_ABILITY = 2            -- objects/CheckButton
CT_EXPEDITION_NAME = 3    -- objects/CheckButton
CT_NAME = 1               -- objects/CheckButton
DC_ALWAYS = 0             -- objects/CheckButton
DC_SHIFT_KEY_DOWN = 1     -- objects/CheckButton
UI_BUTTON_DISABLED = 3    -- objects/CheckButton
UI_BUTTON_HIGHLIGHTED = 1 -- objects/CheckButton
UI_BUTTON_MAX = 4         -- objects/CheckButton
UI_BUTTON_NORMAL = 0      -- objects/CheckButton
UI_BUTTON_PUSHED = 2      -- objects/CheckButton

---objects/CheckButton
---@class Checkbutton: Button
---@class checkbutton: Checkbutton
---@field style TextStyle
local Checkbutton = {}

---Returns a boolean indicating the state of the Checkbutton.
---@return boolean checked `true` if the Checkbutton is checked, `false` otherwise.
---@nodiscard
---@usage
---```lua
---local checked = checkbutton:GetChecked()
---```
function Checkbutton:GetChecked() end

---Sets the state of the Checkbutton.
---@param state boolean `true` to check the Checkbutton, `false` to uncheck.
---@usage
---```lua
---checkbutton:SetChecked(true)
---```
function Checkbutton:SetChecked(state) end

---Sets the background for the checked state of the Checkbutton.
---@param checkedTable DrawableDDS The table defining the checked state background.
---@usage
---```lua
---local checkedTable = widget:CreateDrawable(TEXTURE_PATH.BOOKMARK, "bookmark_sel", "overlay")
---checkedTable:AddAnchor("CENTER", widget, 0, 0)
---widget:SetCheckedBackground(checkedTable)
---```
---@see DrawableDDS
function Checkbutton:SetCheckedBackground(checkedTable) end

---@TODO: Not sure how to see the disabled state as SetButtonState doesnt work.
---Sets the background for the disabled checked state of the Checkbutton.
---@param disabledCheckedTable DrawableDDS The table defining the disabled checked state background.
---@usage
---```lua
---local disabledCheckedTable = widget:CreateDrawable(TEXTURE_PATH.BOOKMARK, "bookmark_dis", "overlay")
---disabledCheckedTable:AddAnchor("CENTER", widget, 0, 0)
---widget:SetDisabledCheckedBackground(disabledCheckedTable)
---```
---@see DrawableDDS
function Checkbutton:SetDisabledCheckedBackground(disabledCheckedTable) end
