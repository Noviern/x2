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

---Returns a boolean indicating the state of the Checkbutton.
---@return boolean checked `true` if the Checkbutton is checked, `false` otherwise.
---@nodiscard
---@usage
---```
---local checked = checkbutton:GetChecked()
---```
function Checkbutton:GetChecked() end

---Sets the state of the Checkbutton.
---@param state boolean `true` to check the Checkbutton, `false` to uncheck.
---@usage
---```
---checkbutton:SetChecked(true)
---```
function Checkbutton:SetChecked(state) end

---Sets the background for the checked state of the Checkbutton.
---@param checkedTable DrawableDDS The table defining the checked state background.
---@usage
---```
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
---```
---local disabledCheckedTable = widget:CreateDrawable(TEXTURE_PATH.BOOKMARK, "bookmark_dis", "overlay")
---disabledCheckedTable:AddAnchor("CENTER", widget, 0, 0)
---widget:SetDisabledCheckedBackground(disabledCheckedTable)
---```
---@see DrawableDDS
function Checkbutton:SetDisabledCheckedBackground(disabledCheckedTable) end
