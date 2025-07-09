---@meta _

AP_BOTTOM = 8 -- object/PaintColorPicker
AP_BOTTOMLEFT = 2 -- object/PaintColorPicker
AP_BOTTOMRIGHT = 3 -- object/PaintColorPicker
AP_CENTER = 4 -- object/PaintColorPicker
AP_LEFT = 6 -- object/PaintColorPicker
AP_RIGHT = 7 -- object/PaintColorPicker
AP_TOP = 5 -- object/PaintColorPicker
AP_TOPLEFT = 0 -- object/PaintColorPicker
AP_TOPRIGHT = 1 -- object/PaintColorPicker
CT_ABILITY = 2 -- object/PaintColorPicker
CT_EXPEDITION_NAME = 3 -- object/PaintColorPicker
CT_NAME = 1 -- object/PaintColorPicker
DC_ALWAYS = 0 -- object/PaintColorPicker
DC_SHIFT_KEY_DOWN = 1 -- object/PaintColorPicker

---object/PaintColorPicker
---@class PaintColorPicker: Widget
---@field luminanceWidget EmptyWidget
---@field spectrumWidget EmptyWidget
---@field GetHLSColor fun(self: self): hue: number, saturation: number, luminance: number
---@field GetHue fun(self: self): hue: number
---@field GetLum fun(self: self): luminance: number
---@field GetLuminanceWidget fun(self: self): table
---@field GetRGBColor fun(self: self): red: number, green: number, blue: number
---@field GetSat fun(self: self): staturation: number
---@field GetSpectrumWidget fun(self: self): table
---@field SetHLSColor fun(self: self, hue: number, lum: number, sat: number)
---@field SetHue fun(self: self, hue: number)
---@field SetLum fun(self: self, lum: number)
---@field SetLuminanceBg fun(self: self, bg: table)
---@field SetRGBColor fun(self: self, red: number, green: number, blue: number)
---@field SetSat fun(self: self, sat: number)
---@field SetSpectrumBg fun(self: self, bg: table)