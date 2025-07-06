---@meta _

AP_BOTTOM = 8 -- object/RadioGroup
AP_BOTTOMLEFT = 2 -- object/RadioGroup
AP_BOTTOMRIGHT = 3 -- object/RadioGroup
AP_CENTER = 4 -- object/RadioGroup
AP_LEFT = 6 -- object/RadioGroup
AP_RIGHT = 7 -- object/RadioGroup
AP_TOP = 5 -- object/RadioGroup
AP_TOPLEFT = 0 -- object/RadioGroup
AP_TOPRIGHT = 1 -- object/RadioGroup
CT_ABILITY = 2 -- object/RadioGroup
CT_EXPEDITION_NAME = 3 -- object/RadioGroup
CT_NAME = 1 -- object/RadioGroup
DC_ALWAYS = 0 -- object/RadioGroup
DC_SHIFT_KEY_DOWN = 1 -- object/RadioGroup

---object/RadioGroup
---@class RadioGroup: Widget
---@field Check fun(self: self, index)
---@field Clear fun(self: self)
---@field CreateRadioItem fun(self: self, dataValue)
---@field EnableIndex fun(self: self, index: number, enable)
---@field GetChecked fun(self: self)
---@field GetCheckedData fun(self: self)
---@field GetDataValue fun(self: self, index)
---@field GetIndexByValue fun(self: self, dataValue: number)
---@field GetSize fun(self: self)
---@field IsInRange fun(self: self, index: number)
---@field ReleaseCheck fun(self: self)
---@field ShowIndex fun(self: self, index: number, show)
---@field UpdateValue fun(self: self, index, data)