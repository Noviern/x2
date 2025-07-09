---@meta _

AP_BOTTOM = 8 -- object/DynamicList
AP_BOTTOMLEFT = 2 -- object/DynamicList
AP_BOTTOMRIGHT = 3 -- object/DynamicList
AP_CENTER = 4 -- object/DynamicList
AP_LEFT = 6 -- object/DynamicList
AP_RIGHT = 7 -- object/DynamicList
AP_TOP = 5 -- object/DynamicList
AP_TOPLEFT = 0 -- object/DynamicList
AP_TOPRIGHT = 1 -- object/DynamicList
CT_ABILITY = 2 -- object/DynamicList
CT_EXPEDITION_NAME = 3 -- object/DynamicList
CT_NAME = 1 -- object/DynamicList
DC_ALWAYS = 0 -- object/DynamicList
DC_SHIFT_KEY_DOWN = 1 -- object/DynamicList

---object/DynamicList
---@class DynamicList: Widget
---@field content EmptyWidget
---@field ClearData fun(self: self)
---@field CreateOveredImage fun(self: self, layerStr: string): table
---@field EnableChildTouch fun(self: self, isEnable: boolean)
---@field EraseData fun(self: self, index: number)
---@field EraseSubItemInfo fun(self: self, mainKey: number, depth, depthKey, key)
---@field GetCurrentHeight fun(self: self): number
---@field GetMainIndex fun(self: self, mainKey: number) TODO:
---@field GetMainList fun(self: self)
---@field GetScrollMaxValue fun(self: self)
---@field GetSelectedItemInfo fun(self: self)
---@field InitBgType fun(self: self, bgDrawType: UOT) TODO: bgDrawType type may not be correct.
---@field InitCreateWidgetPool fun(self: self)
---@field InitFunc fun(self: self, mainLayout: function, mainData: function, subLayout: function, subData: function)
---@field InitHeight fun(self: self, viewHeight: number, mainHeight: number, subHeight: number)
---@field InsertData fun(self: self, index: number, mainKey: number, subDatas: table)
---@field InsertSubItemInfo fun(self: self, mainKey: number, depth: number, depthKey: number, key: number)
---@field IsSelectedItem fun(self: self, key: number, depth: number)
---@field LoadItemList fun(self: self)
---@field MoveHeight fun(self: self, height: number)
---@field MoveIndex fun(self: self, index: number, anchorHeight: number, open: boolean)
---@field OpenBySubItemInfo fun(self: self, mainKey: number, depth: number, key: number)
---@field PushData fun(self: self, mainKey: number, subDatas: table)
---@field SaveItemList fun(self: self)
---@field SetGaps fun(self: self, mainGap: number, subListGap: number)
---@field SetSelectedItemInfo fun(self: self, key: number, depth: number)
---@field Toggle fun(self: self, index: number)
---@field ToggleByMainKey fun(self: self, mainKey: number)
---@field ToggleSubItem fun(self: self, mainKey: number, depth: number, depthKey: number)
---@field UpdateData fun(self: self, mainKey: number, subDatas: table)
---@field UpdateView fun(self: self)