---@meta _

AP_BOTTOM = 8 -- object/Window
AP_BOTTOMLEFT = 2 -- object/Window
AP_BOTTOMRIGHT = 3 -- object/Window
AP_CENTER = 4 -- object/Window
AP_LEFT = 6 -- object/Window
AP_RIGHT = 7 -- object/Window
AP_TOP = 5 -- object/Window
AP_TOPLEFT = 0 -- object/Window
AP_TOPRIGHT = 1 -- object/Window
CT_ABILITY = 2 -- object/Window
CT_EXPEDITION_NAME = 3 -- object/Window
CT_NAME = 1 -- object/Window
DC_ALWAYS = 0 -- object/Window
DC_SHIFT_KEY_DOWN = 1 -- object/Window

---object/Window
---@class Window: Widget
---@field modalBackgroundWindow EmptyWidget
---@field titleStyle TextStyle
---@field SetCloseOnEscape fun(self: self, escape: boolean)
---@field SetTitleInset fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetTitleText fun(self: self, title)
---@field SetUILayer fun(self: self, layerName)
---@field SetWindowModal fun(self: self, enable: boolean)