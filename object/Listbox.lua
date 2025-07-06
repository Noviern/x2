---@meta _

AP_BOTTOM = 8 -- object/Listbox
AP_BOTTOMLEFT = 2 -- object/Listbox
AP_BOTTOMRIGHT = 3 -- object/Listbox
AP_CENTER = 4 -- object/Listbox
AP_LEFT = 6 -- object/Listbox
AP_RIGHT = 7 -- object/Listbox
AP_TOP = 5 -- object/Listbox
AP_TOPLEFT = 0 -- object/Listbox
AP_TOPRIGHT = 1 -- object/Listbox
CT_ABILITY = 2 -- object/Listbox
CT_EXPEDITION_NAME = 3 -- object/Listbox
CT_NAME = 1 -- object/Listbox
DC_ALWAYS = 0 -- object/Listbox
DC_SHIFT_KEY_DOWN = 1 -- object/Listbox

---object/Listbox
---@class Listbox: Widget
---@field itemStyle TextStyle
---@field itemStyleSub TextStyle
---@field AppendItem fun(self: self)
---@field AppendItemByTable fun(self: self, data: table)
---@field ClearAllSelected fun(self: self)
---@field ClearItem fun(self: self)
---@field CreateClosedImageDrawable fun(self: self, nameTex: string)
---@field CreateOpenedImageDrawable fun(self: self, nameTex)
---@field CreateSeparatorImageDrawable fun(self: self, nameTex: string)
---@field EnableSelectionToggle fun(self: self, enable: boolean)
---@field EnableSelectNoValue fun(self: self, enable)
---@field EnableSelectParent fun(self: self, enable)
---@field GetHeight fun(self: self)
---@field GetInset fun(self: self)
---@field GetMaxTop fun(self: self)
---@field GetOpenedItemCount fun(self: self)
---@field GetSelectedIndex fun(self: self)
---@field GetSelectedIndexWithDepth fun(self: self)
---@field GetSelectedText fun(self: self)
---@field GetSelectedValue fun(self: self)
---@field GetTop fun(self: self)
---@field GetViewItemCount fun(self: self)
---@field GetViewItemsInfo fun(self: self)
---@field InitializeSelect fun(self: self, index: number)
---@field IsItemOpened fun(self: self, index)
---@field ItemCount fun(self: self)
---@field ScrollDown fun(self: self)
---@field ScrollUp fun(self: self)
---@field Select fun(self: self, index)
---@field SelectWithText fun(self: self, text: string)
---@field SelectWithValue fun(self: self, value: number)
---@field SetBorder fun(self: self, line)
---@field SetDefaultItemColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetDefaultItemCoord fun(self: self, x, y, cx, cy)
---@field SetDefaultItemTextColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetDisableItemTextColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetFold fun(self: self, fold)
---@field SetHeight fun(self: self, height)
---@field SetInset fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetItem fun(self: self)
---@field SetItemDefaultTextureInfo fun(self: self, infoKey)
---@field SetItemOveredTextureInfo fun(self: self, infoKey: string)
---@field SetItemSelectedTextureInfo fun(self: self, infoKey: string)
---@field SetItemTrees fun(self: self, treeTable: table)
---@field SetLineColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetListItemStateTexture fun(self: self, texFile: string)
---@field SetListItemStateTextureInset fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetOveredItemColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetOveredItemCoord fun(self: self, x, y, cx, cy)
---@field SetOveredItemTextColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetSelectedItemColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetSelectedItemCoord fun(self: self, x, y, cx, cy)
---@field SetSelectedItemTextColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetSubTextOffset fun(self: self, x: number, y, child)
---@field SetTextLimit fun(self: self, limitTextLength: number)
---@field SetTop fun(self: self, value)
---@field SetTreeTypeIndent fun(self: self, use: boolean, indentLeft, indentRight)
---@field ShowAutoTooltip fun(self: self, show: boolean)
---@field ShowTooltip fun(self: self, show)
---@field TurnoffOverParent fun(self: self)
---@field UpdateItem fun(self: self, datas: table)
---@field UseChildStyle fun(self: self, use: boolean)