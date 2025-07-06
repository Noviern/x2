---@meta _

AP_BOTTOM = 8 -- object/Slider
AP_BOTTOMLEFT = 2 -- object/Slider
AP_BOTTOMRIGHT = 3 -- object/Slider
AP_CENTER = 4 -- object/Slider
AP_LEFT = 6 -- object/Slider
AP_RIGHT = 7 -- object/Slider
AP_TOP = 5 -- object/Slider
AP_TOPLEFT = 0 -- object/Slider
AP_TOPRIGHT = 1 -- object/Slider
CT_ABILITY = 2 -- object/Slider
CT_EXPEDITION_NAME = 3 -- object/Slider
CT_NAME = 1 -- object/Slider
DC_ALWAYS = 0 -- object/Slider
DC_SHIFT_KEY_DOWN = 1 -- object/Slider

---object/Slider
---@class Slider: Widget
---@field Down fun(self: self, step)
---@field GetMinMaxValues fun(self: self)
---@field GetOrientation fun(self: self)
---@field GetThumbButtonWidget fun(self: self)
---@field GetThumbDrawable fun(self: self)
---@field GetValue fun(self: self)
---@field GetValueStep fun(self: self)
---@field SetFixedThumb fun(self: self, bool: boolean)
---@field SetInset fun(self: self, inset)
---@field SetMinMaxValues fun(self: self, min: number, max)
---@field SetMinThumbLength fun(self: self, length: number)
---@field SetOrientation fun(self: self, scrollType: number)
---@field SetPageStep fun(self: self, pageStep: number)
---@field SetThumbButtonWidget fun(self: self, buttonWidget)
---@field SetValue fun(self: self, value: number, triggerEvent)
---@field SetValueStep fun(self: self, value: number)
---@field Up fun(self: self, step)