---@meta _

AP_BOTTOM = 8 -- object/Editbox
AP_BOTTOMLEFT = 2 -- object/Editbox
AP_BOTTOMRIGHT = 3 -- object/Editbox
AP_CENTER = 4 -- object/Editbox
AP_LEFT = 6 -- object/Editbox
AP_RIGHT = 7 -- object/Editbox
AP_TOP = 5 -- object/Editbox
AP_TOPLEFT = 0 -- object/Editbox
AP_TOPRIGHT = 1 -- object/Editbox
CT_ABILITY = 2 -- object/Editbox
CT_EXPEDITION_NAME = 3 -- object/Editbox
CT_NAME = 1 -- object/Editbox
DC_ALWAYS = 0 -- object/Editbox
DC_SHIFT_KEY_DOWN = 1 -- object/Editbox

---object/Editbox
---@class Editbox: Widget, Editboxbase
---@field guideTextstyle TextStyle
---@field prefixStyle TextStyle
---@field style TextStyle
---@field AddHistoryLine fun(self: self, text: string)
---@field CheckNamePolicy fun(self: self, nameType: number) TODO: Check NRT_CHARACTER
---@field ClearFocus fun(self: self)
---@field ClearString fun(self: self)
---@field GetText fun(self: self)
---@field IsDigit fun(self: self)
---@field IsNowComposition fun(self: self)
---@field IsPassword fun(self: self)
---@field SetDigit fun(self: self, digit: boolean)
---@field SetDigitEmpty fun(self: self, empty: boolean)
---@field SetDigitMax fun(self: self, max: number)
---@field SetEnglish fun(self: self, english: number)
---@field SetFocus fun(self: self)
---@field SetHistoryLines fun(self: self, count: number)
---@field SetInitVal fun(self: self, val: number)
---@field SetInset fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetPassword fun(self: self, password: boolean)
---@field SetPossibleFirstZero fun(self: self, possibleFirstZero: boolean)
---@field SetPrefixInset fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetPrefixText fun(self: self, prefixText: string)
---@field SetReClickable fun(self: self, click: boolean)
---@field SetText fun(self: self, text: string)
---@field UseSelectAllWhenFocused fun(self: self, use: boolean)