---@meta _

AP_BOTTOM = 8 -- object/Button
AP_BOTTOMLEFT = 2 -- object/Button
AP_BOTTOMRIGHT = 3 -- object/Button
AP_CENTER = 4 -- object/Button
AP_LEFT = 6 -- object/Button
AP_RIGHT = 7 -- object/Button
AP_TOP = 5 -- object/Button
AP_TOPLEFT = 0 -- object/Button
AP_TOPRIGHT = 1 -- object/Button
CT_ABILITY = 2 -- object/Button
CT_EXPEDITION_NAME = 3 -- object/Button
CT_NAME = 1 -- object/Button
DC_ALWAYS = 0 -- object/Button
DC_SHIFT_KEY_DOWN = 1 -- object/Button
UI_BUTTON_DISABLED = 3 -- object/Button
UI_BUTTON_HIGHLIGHTED = 1 -- object/Button
UI_BUTTON_MAX = 4 -- object/Button
UI_BUTTON_NORMAL = 0 -- object/Button
UI_BUTTON_PUSHED = 2 -- object/Button

---object/Button
---@class Button: Widget
---@field style TextStyle
---@field CreateStateDrawable fun(self: self, state: number, drawableType: number, path: string)
---@field DeregisterForClicks fun(self: self)
---@field GetButtonState fun(self: self)
---@field GetDisabledBackground fun(self: self)
---@field GetDisabledColor fun(self: self)
---@field GetHighlightBackground fun(self: self)
---@field GetHighlightColor fun(self: self)
---@field GetNormalBackground fun(self: self)
---@field GetNormalColor fun(self: self)
---@field GetPushedBackground fun(self: self)
---@field GetPushedColor fun(self: self)
---@field RegisterForClicks fun(self: self)
---@field SetAutoClipChar fun(self: self, resize: boolean)
---@field SetAutoResize fun(self: self, resize: boolean)
---@field SetButtonState fun(self: self, state: string)
---@field SetDisabledBackground fun(self: self, disabledTable: table)
---@field SetDisabledColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetDisabledTextColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetFocus fun(self: self)
---@field SetHighlightBackground fun(self: self, highlightTable: table)
---@field SetHighlightColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetHighlightTextColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetInset fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetNormalBackground fun(self: self, normalTable: table)
---@field SetNormalColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetPushedBackground fun(self: self, pushedTable: table)
---@field SetPushedColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetPushedTextColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetStyle fun(self: self, style: string)
---@field SetTextColor fun(self: self, r: number, g: number, b: number, a: number)