---@meta _

AP_BOTTOM = 8 -- object/Combobox
AP_BOTTOMLEFT = 2 -- object/Combobox
AP_BOTTOMRIGHT = 3 -- object/Combobox
AP_CENTER = 4 -- object/Combobox
AP_LEFT = 6 -- object/Combobox
AP_RIGHT = 7 -- object/Combobox
AP_TOP = 5 -- object/Combobox
AP_TOPLEFT = 0 -- object/Combobox
AP_TOPRIGHT = 1 -- object/Combobox
CT_ABILITY = 2 -- object/Combobox
CT_EXPEDITION_NAME = 3 -- object/Combobox
CT_NAME = 1 -- object/Combobox
DC_ALWAYS = 0 -- object/Combobox
DC_SHIFT_KEY_DOWN = 1 -- object/Combobox

---object/Combobox
---@class Combobox: Widget
---@field dropdown ComboboxDropDown
---@field selector X2EditBox
---@field selectorBtn Button
---@field toggle Button
---@field Insert fun(self: self, datas)
---@field PauseAutocomplete fun(self: self, pause: boolean)
---@field SetAutocomplete fun(self: self, type: string, filter: string)
---@field SetDropdownVisibleLimit fun(self: self, limit: number)
---@field SetEditable fun(self: self, editable: boolean)

---object/Combobox
---@class ComboboxDropDown: Listbox
---@field downBtn Button
---@field upBtn Button
---@field vslider Vslider

---object/Combobox
---@class Vslider: Slider
---@field thumb Button