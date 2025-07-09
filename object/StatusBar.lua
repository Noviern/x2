---@meta _

AP_BOTTOM = 8 -- object/StatusBar
AP_BOTTOMLEFT = 2 -- object/StatusBar
AP_BOTTOMRIGHT = 3 -- object/StatusBar
AP_CENTER = 4 -- object/StatusBar
AP_LEFT = 6 -- object/StatusBar
AP_RIGHT = 7 -- object/StatusBar
AP_TOP = 5 -- object/StatusBar
AP_TOPLEFT = 0 -- object/StatusBar
AP_TOPRIGHT = 1 -- object/StatusBar
CT_ABILITY = 2 -- object/StatusBar
CT_EXPEDITION_NAME = 3 -- object/StatusBar
CT_NAME = 1 -- object/StatusBar
DC_ALWAYS = 0 -- object/StatusBar
DC_SHIFT_KEY_DOWN = 1 -- object/StatusBar

---object/StatusBar
---@class StatusBar: Widget
---@field AddAnchorChildToBar fun(self: self, anchorChild: table, childAnchorPoint: stringlib)
---@field GetBarColor fun(self: self): r: number, g: number, b: number, a: number
---@field GetLeftWidth fun(self: self, value): number
---@field GetMinMaxValues fun(self: self): number, number
---@field GetOrientation fun(self: self): string
---@field GetValue fun(self: self): string
---@field IsChangeAfterImageColor fun(self: self, value: string): boolean
---@field SetBarColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetBarColorByKey fun(self: self, colorKey: string)
---@field SetBarTexture fun(self: self, nameTex: string, nameLayer) TODO: Can crash if not provided with the correct values.
---@field SetBarTextureByKey fun(self: self, key: string)
---@field SetBarTextureCoords fun(self: self, coordX, coordY, coordW, coordH)
---@field SetMinMaxValues fun(self: self, min: number, max: number)
---@field SetMinMaxValuesForString fun(self: self, min: string, max: string)
---@field SetOrientation fun(self: self, orientation: string)
---@field SetValue fun(self: self, value: number)
---@field SetValueForString fun(self: self, value: string)