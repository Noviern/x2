---@meta _

AP_BOTTOM = 8          -- object/Grid
AP_BOTTOMLEFT = 2      -- object/Grid
AP_BOTTOMRIGHT = 3     -- object/Grid
AP_CENTER = 4          -- object/Grid
AP_LEFT = 6            -- object/Grid
AP_RIGHT = 7           -- object/Grid
AP_TOP = 5             -- object/Grid
AP_TOPLEFT = 0         -- object/Grid
AP_TOPRIGHT = 1        -- object/Grid
CT_ABILITY = 2         -- object/Grid
CT_EXPEDITION_NAME = 3 -- object/Grid
CT_NAME = 1            -- object/Grid
DC_ALWAYS = 0          -- object/Grid
DC_SHIFT_KEY_DOWN = 1  -- object/Grid

---object/Grid
---@class Grid: Widget
local Grid = {}

---TODO:
function Grid:ClearItem() end

---TODO:
---@return number
---@nodiscard
function Grid:GetAdjustRowHeight() end

---TODO:
---@return number
---@nodiscard
function Grid:GetLeft() end

---TODO:
---@return number
---@return number
---@nodiscard
function Grid:GetMaxTop() end

---TODO:
---@return number
---@nodiscard
function Grid:GetRowCount() end

---TODO: Crashes the game.
---@param row number
---@return number
---@nodiscard
function Grid:GetRowHeight(row) end

---TODO:
---@return number
---@nodiscard
function Grid:GetSelectedColIndex() end

---TODO:
---@return number
---@nodiscard
function Grid:GetSelectedRowIndex() end

---TODO:
---@return number
---@nodiscard
function Grid:GetSelectedValue() end

---TODO:
---@return number
---@nodiscard
function Grid:GetTop() end

---TODO:
---@param index number
function Grid:LineSelect(index) end

---TODO:
function Grid:ReleaseSelect() end

---TODO:
function Grid:RemoveAllItems() end

---TODO:
---@param row number
---@param col number
function Grid:RemoveItem(row, col) end

---TODO:
function Grid:ScrollDown() end

---TODO:
function Grid:ScrollLeft() end

---TODO:
function Grid:ScrollRight() end

---TODO:
function Grid:ScrollUp() end

---TODO:
---@param count number
function Grid:SetColCount(count) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param a number
function Grid:SetColTexCoord(r, g, b, a) end

---TODO:
---@param texture string
function Grid:SetColTexture(texture) end

---TODO:
---@param width number
---@param col number
function Grid:SetColWidth(width, col) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param a number
function Grid:SetCurrentColor(r, g, b, a) end

---TODO:
---@param current boolean
function Grid:SetCurrentLine(current) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param a number
function Grid:SetCurrentTexCoord(r, g, b, a) end

---TODO:
---@param texture string
function Grid:SetCurrentTexture(texture) end

---TODO:
---@param width number
function Grid:SetDefaultColWidth(width) end

---TODO:
---@param height number
function Grid:SetDefaultRowHeight(height) end

---TODO:
---@param type string
function Grid:SetDrawLineType(type) end

---TODO:
---@param number number
function Grid:SetDrawStartNumber(number) end

---TODO:
---@param type string
function Grid:SetHeaderType(type) end

---TODO:
---@param left number
---@param top number
---@param right number
---@param bottom number
function Grid:SetInsetForCol(left, top, right, bottom) end

---TODO:
---@param left number
---@param top number
---@param right number
---@param bottom number
function Grid:SetInsetForOutLine(left, top, right, bottom) end

---TODO:
---@param left number
---@param top number
---@param right number
---@param bottom number
function Grid:SetInsetForRow(left, top, right, bottom) end

---TODO:
---@param table table
---@param row number
---@param col number
---@param makeIfNotExist boolean
---@param value number
---@param withoutExtent boolean
function Grid:SetItem(table, row, col, makeIfNotExist, value, withoutExtent) end

---TODO:
---@param row number
---@param col number
---@param left number
---@param top number
---@param right number
---@param bottom number
---@return number
---@nodiscard
function Grid:SetItemInset(row, col, left, top, right, bottom) end

---TODO:
---@param left number
function Grid:SetLeft(left) end

---TODO:
---@param width number
function Grid:SetLeftHeaderWidth(width) end

---TODO:
---@param line boolean
function Grid:SetLineBackGround(line) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param a number
function Grid:SetLineColor(r, g, b, a) end

---TODO:
---@param use boolean
function Grid:SetRowCliping(use) end

---TODO:
---@param count number
function Grid:SetRowCount(count) end

---TODO:
---@param height number
---@param row number
function Grid:SetRowHeight(height, row) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param a number
function Grid:SetRowTexCoord(r, g, b, a) end

---TODO:
---@param texture string
function Grid:SetRowTexture(texture) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param a number
function Grid:SetSelectedColor(r, g, b, a) end

---TODO:
---@param select boolean
function Grid:SetSelectedLine(select) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param a number
function Grid:SetSelectedTexCoord(r, g, b, a) end

---TODO:
---@param texture string
function Grid:SetSelectedTexture(texture) end

---TODO:
---@param left number
---@param top number
---@param right number
---@param bottom number
function Grid:SetTexInset(left, top, right, bottom) end

---TODO:
---@param top number
function Grid:SetTop(top) end

---TODO:
---@param height number
function Grid:SetTopHeaderHeight(height) end
