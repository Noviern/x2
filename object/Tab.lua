---@meta _

AP_BOTTOM = 8 -- object/Tab
AP_BOTTOMLEFT = 2 -- object/Tab
AP_BOTTOMRIGHT = 3 -- object/Tab
AP_CENTER = 4 -- object/Tab
AP_LEFT = 6 -- object/Tab
AP_RIGHT = 7 -- object/Tab
AP_TOP = 5 -- object/Tab
AP_TOPLEFT = 0 -- object/Tab
AP_TOPRIGHT = 1 -- object/Tab
CT_ABILITY = 2 -- object/Tab
CT_EXPEDITION_NAME = 3 -- object/Tab
CT_NAME = 1 -- object/Tab
DC_ALWAYS = 0 -- object/Tab
DC_SHIFT_KEY_DOWN = 1 -- object/Tab

---object/Tab
---@class Tab: Widget, Tabbase 
---@field AddNewTab fun(self: self, tabName: string, selectedButtonWidget, unselectedButtonWidget, windowWidget)
---@field AddSimpleTab fun(self: self, tabName: string)
---@field AlignTabButtons fun(self: self)
---@field GetActivateTabCount fun(self: self)
---@field GetTabCount fun(self: self)
---@field HideTab fun(self: self, idx)
---@field IsHideTab fun(self: self, index: number)
---@field SetActivateTabCount fun(self: self, activateTabCount: number)
---@field SetCorner fun(self: self, corner)
---@field SetVertical fun(self: self, vertical: boolean)
---@field ShowTab fun(self: self, idx)