---@meta _

AP_BOTTOM = 8 -- object/CheckButton
AP_BOTTOMLEFT = 2 -- object/CheckButton
AP_BOTTOMRIGHT = 3 -- object/CheckButton
AP_CENTER = 4 -- object/CheckButton
AP_LEFT = 6 -- object/CheckButton
AP_RIGHT = 7 -- object/CheckButton
AP_TOP = 5 -- object/CheckButton
AP_TOPLEFT = 0 -- object/CheckButton
AP_TOPRIGHT = 1 -- object/CheckButton
CT_ABILITY = 2 -- object/CheckButton
CT_EXPEDITION_NAME = 3 -- object/CheckButton
CT_NAME = 1 -- object/CheckButton
DC_ALWAYS = 0 -- object/CheckButton
DC_SHIFT_KEY_DOWN = 1 -- object/CheckButton
UI_BUTTON_DISABLED = 3 -- object/CheckButton
UI_BUTTON_HIGHLIGHTED = 1 -- object/CheckButton
UI_BUTTON_MAX = 4 -- object/CheckButton
UI_BUTTON_NORMAL = 0 -- object/CheckButton
UI_BUTTON_PUSHED = 2 -- object/CheckButton

---object/CheckButton
---@class Checkbutton: Button, Widget
---@field style TextStyle
---@field GetChecked fun(self: self)
---@field SetChecked fun(self: self, state: boolean)
---@field SetCheckedBackground fun(self: self, checkedTable)
---@field SetDisabledCheckedBackground fun(self: self, disabledCheckedTable: table)