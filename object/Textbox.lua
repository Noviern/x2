---@meta _

AP_BOTTOM = 8 -- object/Textbox
AP_BOTTOMLEFT = 2 -- object/Textbox
AP_BOTTOMRIGHT = 3 -- object/Textbox
AP_CENTER = 4 -- object/Textbox
AP_LEFT = 6 -- object/Textbox
AP_RIGHT = 7 -- object/Textbox
AP_TOP = 5 -- object/Textbox
AP_TOPLEFT = 0 -- object/Textbox
AP_TOPRIGHT = 1 -- object/Textbox
CT_ABILITY = 2 -- object/Textbox
CT_EXPEDITION_NAME = 3 -- object/Textbox
CT_NAME = 1 -- object/Textbox
DC_ALWAYS = 0 -- object/Textbox
DC_SHIFT_KEY_DOWN = 1 -- object/Textbox

---object/Textbox
---@class Textbox: Widget
---@field style TextStyle
---@field GetInset fun(self: self): left: number, top: number, right: number, bottom: number
---@field GetLineCount fun(self: self): number
---@field GetLineLength fun(self: self, lineNum: number): number
---@field GetLongestLineWidth fun(self: self): number
---@field GetTextHeight fun(self: self): number
---@field GetTextLength fun(self: self): number
---@field SetAutoResize fun(self: self, resize: boolean)
---@field SetAutoWordwrap fun(self: self, wrap)
---@field SetInset fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetLineColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetLineHeight fun(self: self, height: number)
---@field SetLineSpace fun(self: self, space: number)
---@field SetStrikeThrough fun(self: self, visible: boolean)
---@field SetText fun(self: self, text: string)
---@field SetTextAutoWidth fun(self: self, initWidth: number, text: string, offset: number)
---@field SetUnderLine fun(self: self, visible: boolean)