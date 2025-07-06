---@meta _

AP_BOTTOM = 8 -- object/Folder
AP_BOTTOMLEFT = 2 -- object/Folder
AP_BOTTOMRIGHT = 3 -- object/Folder
AP_CENTER = 4 -- object/Folder
AP_LEFT = 6 -- object/Folder
AP_RIGHT = 7 -- object/Folder
AP_TOP = 5 -- object/Folder
AP_TOPLEFT = 0 -- object/Folder
AP_TOPRIGHT = 1 -- object/Folder
CT_ABILITY = 2 -- object/Folder
CT_EXPEDITION_NAME = 3 -- object/Folder
CT_NAME = 1 -- object/Folder
DC_ALWAYS = 0 -- object/Folder
DC_SHIFT_KEY_DOWN = 1 -- object/Folder

---object/Folder
---@class Folder: Widget
---@field style TextStyle
---@field CloseFolder fun(self: self)
---@field FixedCloseFolder fun(self: self)
---@field GetExtendLength fun(self: self)
---@field GetState fun(self: self)
---@field GetTitleText fun(self: self)
---@field OpenFolder fun(self: self)
---@field SetAnimateStep fun(self: self, height: number)
---@field SetChildWidget fun(self: self, childTable: table)
---@field SetCloseStateButton fun(self: self, closeTable: table)
---@field SetExtendLength fun(self: self, height)
---@field SetInset fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetOpenStateButton fun(self: self, openTable: table)
---@field SetTitleButtonWidget fun(self: self, titleTable: table)
---@field SetTitleHeight fun(self: self, height)
---@field SetTitleText fun(self: self, text)
---@field ToggleState fun(self: self)
---@field UseAnimation fun(self: self, useAnimation)