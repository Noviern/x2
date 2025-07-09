---@meta _

AP_BOTTOM = 8 -- object/Pageable
AP_BOTTOMLEFT = 2 -- object/Pageable
AP_BOTTOMRIGHT = 3 -- object/Pageable
AP_CENTER = 4 -- object/Pageable
AP_LEFT = 6 -- object/Pageable
AP_RIGHT = 7 -- object/Pageable
AP_TOP = 5 -- object/Pageable
AP_TOPLEFT = 0 -- object/Pageable
AP_TOPRIGHT = 1 -- object/Pageable
CT_ABILITY = 2 -- object/Pageable
CT_EXPEDITION_NAME = 3 -- object/Pageable
CT_NAME = 1 -- object/Pageable
DC_ALWAYS = 0 -- object/Pageable
DC_SHIFT_KEY_DOWN = 1 -- object/Pageable

---object/Pageable
---@class Pageable: Widget
---@field AddWidgetToPage fun(self: self, widget: table, pageIndex: number)
---@field ChangePage fun(self: self, index: number)
---@field GetCurrentPageIndex fun(self: self): number
---@field GetTotalPage fun(self: self): number
---@field NextPage fun(self: self)
---@field PrevPage fun(self: self)
---@field SetCurrentPageIndex fun(self: self, num: number)
---@field SetPageCount fun(self: self, num: number)