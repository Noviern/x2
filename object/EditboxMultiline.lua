---@meta _

AP_BOTTOM = 8 -- object/EditboxMultiline
AP_BOTTOMLEFT = 2 -- object/EditboxMultiline
AP_BOTTOMRIGHT = 3 -- object/EditboxMultiline
AP_CENTER = 4 -- object/EditboxMultiline
AP_LEFT = 6 -- object/EditboxMultiline
AP_RIGHT = 7 -- object/EditboxMultiline
AP_TOP = 5 -- object/EditboxMultiline
AP_TOPLEFT = 0 -- object/EditboxMultiline
AP_TOPRIGHT = 1 -- object/EditboxMultiline
CT_ABILITY = 2 -- object/EditboxMultiline
CT_EXPEDITION_NAME = 3 -- object/EditboxMultiline
CT_NAME = 1 -- object/EditboxMultiline
DC_ALWAYS = 0 -- object/EditboxMultiline
DC_SHIFT_KEY_DOWN = 1 -- object/EditboxMultiline

---object/EditboxMultiline
---@class EditboxMultiline: Widget, Editboxbase
---@field style TextStyle
---@field Clear fun(self: self)
---@field GetCursorPosX fun(self: self): posX: number
---@field GetCursorPosY fun(self: self): posY: number
---@field GetLineCount fun(self: self): lineCount: number
---@field GetLineHeight fun(self: self): lineHeight: number
---@field GetText fun(self: self): text: string
---@field GetTextHeight fun(self: self): textHeight: number
---@field GetTextLength fun(self: self): textLength: number
---@field SetInset fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetLineSpace fun(self: self, space: number)