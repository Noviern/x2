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
---@field CreateOveredImage fun(self: self, layerStr: string)
---@field EnableChildTouch fun(self: self, isEnable)
---@field EraseData fun(self: self, index)
---@field EraseSubItemInfo fun(self: self, mainKey: number, depth, depthKey, key)
---@field GetCurrentHeight fun(self: self)
---@field GetMainIndex fun(self: self, mainKey: number)
---@field GetMainList fun(self: self)
---@field GetScrollMaxValue fun(self: self)
---@field GetSelectedItemInfo fun(self: self)
---@field InitBgType fun(self: self, bgDrawType: number)
---@field InitCreateWidgetPool fun(self: self)
---@field InitFunc fun(self: self, mainLayout: function, mainData, subLayout, subData)
---@field InitHeight fun(self: self, viewHeight: number, mainHeight, subHeight)
---@field InsertData fun(self: self, index: number, mainKey, subDatas)
---@field InsertSubItemInfo fun(self: self, mainKey: number, depth, depthKey, key)
---@field IsSelectedItem fun(self: self, key: number, depth)
---@field LoadItemList fun(self: self)
---@field MoveHeight fun(self: self, height: number)
---@field MoveIndex fun(self: self, index: number, anchorHeight, open)
---@field OpenBySubItemInfo fun(self: self, mainKey: number, depth, key)
---@field PushData fun(self: self, mainKey: number, subDatas)
---@field SaveItemList fun(self: self)
---@field SetGaps fun(self: self, mainGap: number, subListGap)
---@field SetSelectedItemInfo fun(self: self, key: number, depth)
---@field Toggle fun(self: self, index)
---@field ToggleByMainKey fun(self: self, mainKey: number)
---@field ToggleSubItem fun(self: self, mainKey: number, depth, depthKey)
---@field UpdateData fun(self: self, mainKey, subDatas)
---@field UpdateView fun(self: self)