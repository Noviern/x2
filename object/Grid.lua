---@meta _

AP_BOTTOM = 8 -- object/Grid
AP_BOTTOMLEFT = 2 -- object/Grid
AP_BOTTOMRIGHT = 3 -- object/Grid
AP_CENTER = 4 -- object/Grid
AP_LEFT = 6 -- object/Grid
AP_RIGHT = 7 -- object/Grid
AP_TOP = 5 -- object/Grid
AP_TOPLEFT = 0 -- object/Grid
AP_TOPRIGHT = 1 -- object/Grid
CT_ABILITY = 2 -- object/Grid
CT_EXPEDITION_NAME = 3 -- object/Grid
CT_NAME = 1 -- object/Grid
DC_ALWAYS = 0 -- object/Grid
DC_SHIFT_KEY_DOWN = 1 -- object/Grid

---object/Grid
---@class Grid: Widget
---@field ClearItem fun(self: self)
---@field GetAdjustRowHeight fun(self: self): number
---@field GetLeft fun(self: self): number
---@field GetMaxTop fun(self: self): number, number
---@field GetRowCount fun(self: self): number
---@field GetRowHeight fun(self: self, row: number) TODO: Crashes the game.
---@field GetSelectedColIndex fun(self: self): number
---@field GetSelectedRowIndex fun(self: self): number
---@field GetSelectedValue fun(self: self): number
---@field GetTop fun(self: self): number
---@field LineSelect fun(self: self, index: number)
---@field ReleaseSelect fun(self: self)
---@field RemoveAllItems fun(self: self)
---@field RemoveItem fun(self: self, row: number, col: number)
---@field ScrollDown fun(self: self)
---@field ScrollLeft fun(self: self)
---@field ScrollRight fun(self: self)
---@field ScrollUp fun(self: self)
---@field SetColCount fun(self: self, count: number)
---@field SetColTexCoord fun(self: self, r: number, g: number, b: number, a: number)
---@field SetColTexture fun(self: self, texture: string)
---@field SetColWidth fun(self: self, width, col: number)
---@field SetCurrentColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetCurrentLine fun(self: self, current: boolean)
---@field SetCurrentTexCoord fun(self: self, r: number, g: number, b: number, a: number)
---@field SetCurrentTexture fun(self: self, texture: string)
---@field SetDefaultColWidth fun(self: self, width: number)
---@field SetDefaultRowHeight fun(self: self, height: number)
---@field SetDrawLineType fun(self: self, type: string)
---@field SetDrawStartNumber fun(self: self, number: number)
---@field SetHeaderType fun(self: self, type: string)
---@field SetInsetForCol fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetInsetForOutLine fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetInsetForRow fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetItem fun(self: self, table: table, row: number, col: number, makeIfNotExist: boolean, value: number, withoutExtent: number)
---@field SetItemInset fun(self: self, row: number, col, left: number, top: number, right: number, bottom: number): number
---@field SetLeft fun(self: self, left: number)
---@field SetLeftHeaderWidth fun(self: self, width: number)
---@field SetLineBackGround fun(self: self, line: boolean)
---@field SetLineColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetRowCliping fun(self: self, use: boolean)
---@field SetRowCount fun(self: self, count: number)
---@field SetRowHeight fun(self: self, height: number, row: number)
---@field SetRowTexCoord fun(self: self, r: number, g: number, b: number, a: number)
---@field SetRowTexture fun(self: self, texture: string)
---@field SetSelectedColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetSelectedLine fun(self: self, select: boolean)
---@field SetSelectedTexCoord fun(self: self, r: number, g: number, b: number, a: number)
---@field SetSelectedTexture fun(self: self, texture: string)
---@field SetTexInset fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetTop fun(self: self, top: number)
---@field SetTopHeaderHeight fun(self: self, height: number)