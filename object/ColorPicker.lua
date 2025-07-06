---@meta _

AP_BOTTOM = 8 -- object/ColorPicker
AP_BOTTOMLEFT = 2 -- object/ColorPicker
AP_BOTTOMRIGHT = 3 -- object/ColorPicker
AP_CENTER = 4 -- object/ColorPicker
AP_LEFT = 6 -- object/ColorPicker
AP_RIGHT = 7 -- object/ColorPicker
AP_TOP = 5 -- object/ColorPicker
AP_TOPLEFT = 0 -- object/ColorPicker
AP_TOPRIGHT = 1 -- object/ColorPicker
CT_ABILITY = 2 -- object/ColorPicker
CT_EXPEDITION_NAME = 3 -- object/ColorPicker
CT_NAME = 1 -- object/ColorPicker
DC_ALWAYS = 0 -- object/ColorPicker
DC_SHIFT_KEY_DOWN = 1 -- object/ColorPicker

---object/ColorPicker
---@class ColorPicker: Widget
---@field GetColor fun(self: self, xPos, yPos)
---@field GetPoint fun(self: self, colorR: number, colorG: number, colorB: number)
---@field SetPaletteImage fun(self: self, imageName: string)