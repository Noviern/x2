---@meta _

AP_BOTTOM = 8 -- object/ListCtrl
AP_BOTTOMLEFT = 2 -- object/ListCtrl
AP_BOTTOMRIGHT = 3 -- object/ListCtrl
AP_CENTER = 4 -- object/ListCtrl
AP_LEFT = 6 -- object/ListCtrl
AP_RIGHT = 7 -- object/ListCtrl
AP_TOP = 5 -- object/ListCtrl
AP_TOPLEFT = 0 -- object/ListCtrl
AP_TOPRIGHT = 1 -- object/ListCtrl
CT_ABILITY = 2 -- object/ListCtrl
CT_EXPEDITION_NAME = 3 -- object/ListCtrl
CT_NAME = 1 -- object/ListCtrl
DC_ALWAYS = 0 -- object/ListCtrl
DC_SHIFT_KEY_DOWN = 1 -- object/ListCtrl
LCCIT_BUTTON = 1 -- object/ListCtrl
LCCIT_STRING = 0 -- object/ListCtrl
LCCIT_TEXTBOX = 3 -- object/ListCtrl
LCCIT_WINDOW = 2 -- object/ListCtrl

---object/ListCtrl
---@class ListCtrl: Widget
---@field ClearSelection fun(self: self)
---@field CreateOveredImage fun(self: self)
---@field CreateSelectedImage fun(self: self)
---@field DeleteAllDatas fun(self: self)
---@field DeleteData fun(self: self, key)
---@field DeleteDataByIndex fun(self: self, index: number)
---@field DeleteRows fun(self: self)
---@field GetSelectedIdx fun(self: self)
---@field InsertColumn fun(self: self, width: number, itemType)
---@field InsertData fun(self: self, key: number, colIdx, subItemData)
---@field InsertRows fun(self: self, count: number, withEventWindow)
---@field Select fun(self: self, itemIdx)
---@field SetColumnWidth fun(self: self, idx: number, width: number)
---@field SetHeaderColumnHeight fun(self: self, height: number)
---@field SetOveredImageOffset fun(self: self, x1: number, y1: number, x2: number, y2: number)
---@field SetSelectedImageOffset fun(self: self, x1: number, y1: number, x2: number, y2: number)
---@field SetUseDoubleClick fun(self: self, use: boolean)