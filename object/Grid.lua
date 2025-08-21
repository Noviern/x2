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
---@enum HEADER_TYPE
local HEADER_TYPE = {
  LEFT = "left",
  TOP  = "top",
}

---object/Grid
---@class Grid: Widget
---@class grid: Grid
local Grid = {}

---Clears the item from the Grid.
---@usage
---```
---widget:ClearItem()
---```
function Grid:ClearItem() end

---Retrieves the adjustment height for rows in the Grid.
---@return number adjustRowHeight The adjustment height. (default: `0`)
---@nodiscard
---@usage
---```
---widget:GetAdjustRowHeight()
---```
function Grid:GetAdjustRowHeight() end

---Retrieves the number of times the Grid can scroll left.
---@return number left The number of left scrolls. (default: `0`)
---@nodiscard
---@usage
---```
---local left = widget:GetLeft()
---```
function Grid:GetLeft() end

---Retrieves the minimum and maximum scroll positions from the top.
---@return number min The minimum scroll position.
---@return number max The maximum scroll position.
---@nodiscard
---@usage
---```
---local min, max = widget:GetMaxTop()
---```
function Grid:GetMaxTop() end

---Retrieves the number of rows in the Grid.
---@return number rowCount The number of rows. (default: `0`)
---@nodiscard
---@usage
---```
---local rowCount = widget:GetRowCount()
---```
function Grid:GetRowCount() end

---Retrieves the height of the specified row in the Grid. Crashes if
---`Grid:SetRowCount` has not been called.
---@param row number The row index. (min: `1`)
---@return number rowHeight The height of the row. (default: `0`)
---@nodiscard
---@usage
---```
---local rowHeight = widget:GetRowHeight(1)
---```
function Grid:GetRowHeight(row) end

---Retrieves the index of the selected column in the Grid.
---@return number selectedColIndex The selected column index. (min: `0`, default: `-1`)
---@nodiscard
---@usage
---```
---local selectedColIndex = widget:GetSelectedColIndex()
---```
function Grid:GetSelectedColIndex() end

---Retrieves the index of the selected row in the Grid.
---@return number selectedRowIndex The selected row index. (min: `1`, default: `-1`)
---@nodiscard
---@usage
---```
---local selectedRowIndex = widget:GetSelectedRowIndex()
---```
function Grid:GetSelectedRowIndex() end

---Retrieves the value of the selected item in the Grid.
---@return number selectedValue The selected value. (default: `-1`)
---@nodiscard
---@usage
---```
---local selectedValue = widget:GetSelectedValue()
---```
function Grid:GetSelectedValue() end

---Retrieves the current top scroll position of the Grid.
---@return number top The top scroll position. (default: `0`)
---@nodiscard
---@usage
---```
---local top = widget:GetTop()
---```
function Grid:GetTop() end

---Selects the specified row in the Grid.
---@param index number The row index to select. (min: `1`)
---@usage
---```
---widget:LineSelect(1)
---```
function Grid:LineSelect(index) end

---Releases the current selection in the Grid.
---@usage
---```
---widget:ReleaseSelect()
---```
function Grid:ReleaseSelect() end

---Removes all items from the Grid.
---@usage
---```
---widget:RemoveAllItems()
---```
function Grid:RemoveAllItems() end

---Removes the item at the specified row and column in the Grid.
---@param row number The row index. (min: `1`)
---@param col number The column index. (min: `1`)
---@usage
---```
---widget:RemoveItem(1, 2)
---```
function Grid:RemoveItem(row, col) end

---Scrolls the Grid down by one step.
---@usage
---```
---widget:ScrollDown()
---```
function Grid:ScrollDown() end

---Scrolls the Grid left by one step.
---@usage
---```
---widget:ScrollLeft()
---```
function Grid:ScrollLeft() end

---Scrolls the Grid right by one step.
---@usage
---```
---widget:ScrollRight()
---```
function Grid:ScrollRight() end

---Scrolls the Grid up by one step.
---@usage
---```
---widget:ScrollUp()
---```
function Grid:ScrollUp() end

---Sets the number of columns in the Grid.
---@param count number The number of columns.
---@usage
---```
---widget:SetColCount(2)
---```
function Grid:SetColCount(count) end

---Sets the texture coordinates for a column in the Grid.
---@param x number The x-coordinate.
---@param y number The y-coordinate.
---@param w number The width.
---@param h number The height.
---@usage
---```
---widget:SetColTexCoord(0, 0, 0, 0)
---```
function Grid:SetColTexCoord(x, y, w, h) end

---@TODO: Broken? SetRowTexture does this?
---Sets the texture for a column in the Grid.
---@param texture TEXTURE_PATH The texture path.
---@see TEXTURE_PATH
function Grid:SetColTexture(texture) end

---Sets the width of the specified column in the Grid.
---@param width number The width to set.
---@param col number The column index. (min: `1`)
---@usage
---```
---widget:SetColWidth(100, 1)
---```
function Grid:SetColWidth(width, col) end

---Sets the color for the current line in the Grid. Requires
---`Grid:SetCurrentLine(true)`.
---@param r number The red color component. (min: `0`, max: `1`, default: `1`)
---@param g number The green color component. (min: `0`, max: `1`, default: `1`)
---@param b number The blue color component. (min: `0`, max: `1`, default: `1`)
---@param a number The alpha component. (min: `0`, max: `1`, default: `1`)
---@usage
---```
---widget:SetCurrentColor(1, 0, 0, .1)
---```
function Grid:SetCurrentColor(r, g, b, a) end

---Enables or disables the current line in the Grid.
---@param current boolean `true` to enable the current line, `false` to disable. (default: `false`)
---@usage
---```
---widget:SetCurrentLine(true)
---```
function Grid:SetCurrentLine(current) end

---Sets the texture coordinates for the current line in the Grid. Requires
---`Grid:SetCurrentLine(true)`.
---@param x number The x-coordinate.
---@param y number The y-coordinate.
---@param w number The width.
---@param h number The height.
---@usage
---```
---widget:SetCurrentTexCoord(0, 0, 0, 0)
---```
function Grid:SetCurrentTexCoord(x, y, w, h) end

---Sets the texture for the current line in the Grid. Requires
---`Grid:SetCurrentLine(true)`.
---@param texture TEXTURE_PATH The texture path.
---@see TEXTURE_PATH
function Grid:SetCurrentTexture(texture) end

---Sets the default column width for the Grid. Should be called before
---`Grid:SetItem`.
---@param width number The default column width.
---@usage
---```
---widget:SetDefaultColWidth(100)
---```
function Grid:SetDefaultColWidth(width) end

---Sets the default row height for the Grid. Should be called before
---`Grid:SetItem`.
---@param height number The default row height.
---@usage
---```
---widget:SetDefaultRowHeight(100)
---```
function Grid:SetDefaultRowHeight(height) end

---@TODO: Clarify draw line type and valid values.
---Sets the draw line type for the Grid.
---@param type string The draw line type.
function Grid:SetDrawLineType(type) end

---@TODO: Clarify purpose of draw start number.
---Sets the draw start number for the Grid.
---@param number number The draw start number.
function Grid:SetDrawStartNumber(number) end

---Sets the header type for the Grid.
---@param type HEADER_TYPE The header type.
---@usage
---```
---widget:SetHeaderType("top")
---```
---@see HEADER_TYPE
function Grid:SetHeaderType(type) end

---Sets the inset for columns in the Grid.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```
---widget:SetInsetForCol(10, 10, 10, 10)
---```
function Grid:SetInsetForCol(left, top, right, bottom) end

---Sets the inset for the outline in the Grid.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```
---widget:SetInsetForOutLine(10, 10, 10, 10)
---```
function Grid:SetInsetForOutLine(left, top, right, bottom) end

---Sets the inset for rows in the Grid.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```
---widget:SetInsetForRow(10, 10, 10, 10)
---```
function Grid:SetInsetForRow(left, top, right, bottom) end

---@TODO: What does makeIfNotExist do?
---Sets an item in the Grid at the specified row and column.
---@param table Widget The widget to set as the item.
---@param row number The row index. (min: `1`)
---@param col number The column index. (min: `1`)
---@param makeIfNotExist boolean `true` to create the item if it doesn't exist.
---@param value number The value associated with the item.
---@param withoutExtent boolean `true` to ignore extent, `false` to use it.
---@usage
---```
---local label = widget:CreateChildWidget("label", "testbtn", 0, true)
---label:SetText("Archerage.to")
---label:SetExtent(50, 50)
---widget:SetItem(label, 1, 1, true, 10, false)
---```
---@see Widget
function Grid:SetItem(table, row, col, makeIfNotExist, value, withoutExtent) end

---Sets the inset for an item at the specified row and column.
---@param row number The row index. (min: `1`)
---@param col number The column index. (min: `1`)
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@return number rowCount The number of rows affected.
---@usage
---```
---widget:SetItemInset(1, 1, 10, 10, 10, 10)
---```
function Grid:SetItemInset(row, col, left, top, right, bottom) end

---Sets the left scroll position of the Grid. May crash if scrolling is not
---possible.
---@param left number The left scroll position.
---@usage
---```
---widget:SetLeft(1)
---```
function Grid:SetLeft(left) end

---Sets the width of the left header in the Grid.
---@param width number The width of the left header.
---@usage
---```
---widget:SetLeftHeaderWidth(100)
---```
function Grid:SetLeftHeaderWidth(width) end

---Enables or disables the line background for the Grid to show row textures.
---@param line boolean `true` to enable line background, `false` to disable. (default: `false`)
---@usage
---```
---widget:SetLineBackGround(true)
---```
function Grid:SetLineBackGround(line) end

---Sets the color for the lines in the Grid. Requires `Grid:SetLineBackGround(true)`.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
---@usage
---```
---widget:SetLineColor(1, 0, 0, 1)
---```
function Grid:SetLineColor(r, g, b, a) end

---Enables or disables row clipping in the Grid.
---@param use boolean `true` to enable row clipping, `false` to disable.
---@usage
---```
---widget:SetRowCliping(true)
---```
function Grid:SetRowCliping(use) end

---Sets the number of rows in the Grid.
---@param count number The number of rows.
---@usage
---```
---widget:SetRowCount(3)
---```
function Grid:SetRowCount(count) end

---Sets the height of the specified row in the Grid.
---@param height number The height to set. (default: `0`)
---@param row number The row index. (min: `1`)
---@usage
---```
---widget:SetRowHeight(100, 1)
---```
function Grid:SetRowHeight(height, row) end

---Sets the texture coordinates for a row in the Grid. Requires `Grid:SetLineBackGround(true)`.
---@param x number The x-coordinate.
---@param y number The y-coordinate.
---@param w number The width.
---@param h number The height.
---@usage
---```
---widget:SetRowTexCoord(0, 0, 0, 0)
---```
function Grid:SetRowTexCoord(x, y, w, h) end

---Sets the texture for a row in the Grid. Requires
---`Grid:SetLineBackGround(true)`.
---@param texture TEXTURE_PATH The texture path.
---@see TEXTURE_PATH
function Grid:SetRowTexture(texture) end

---Sets the color for the selected item in the Grid. Requires
---`Grid:SetSelectedLine(true)`.
---@param r number The red color component. (min: `0`, max: `1`, default: `129`)
---@param g number The green color component. (min: `0`, max: `1`, default: `129`)
---@param b number The blue color component. (min: `0`, max: `1`, default: `129`)
---@param a number The alpha component. (min: `0`, max: `1`, default: `129`)
---@usage
---```
---widget:SetSelectedColor(1, 0, 0, 1)
---```
function Grid:SetSelectedColor(r, g, b, a) end

---Enables or disables line selection in the Grid.
---@param select boolean `true` to enable line selection, `false` to disable. (default: `false`)
---@usage
---```
---widget:SetSelectedLine(true)
---```
function Grid:SetSelectedLine(select) end

---Sets the texture coordinates for the selected item in the Grid. Requires
---`Grid:SetSelectedLine(true)`.
---@param x number The x-coordinate.
---@param y number The y-coordinate.
---@param w number The width.
---@param h number The height.
---@usage
---```
---widget:SetSelectedTexCoord(0, 0, 0, 0)
---```
function Grid:SetSelectedTexCoord(x, y, w, h) end

---Sets the texture for the selected item in the Grid. Requires
---`Grid:SetSelectedLine(true)`.
---@param texture TEXTURE_PATH The texture path.
---@see TEXTURE_PATH
function Grid:SetSelectedTexture(texture) end

---Sets the texture inset for the Grid.
---@param left number The left inset. (default: `0`)
---@param top number The top inset. (default: `0`)
---@param right number The right inset. (default: `0`)
---@param bottom number The bottom inset. (default: `0`)
---@usage
---```
---widget:SetTexInset(0, 0, 0, 0)
---```
function Grid:SetTexInset(left, top, right, bottom) end

---Sets the top scroll position of the Grid.
---@param top number The top scroll position.
---@usage
---```
---widget:SetTop(15)
---```
function Grid:SetTop(top) end

---Sets the height of the top header in the Grid.
---@param height number The height of the top header.
---@usage
---```
---widget:SetTopHeaderHeight(50)
---```
function Grid:SetTopHeaderHeight(height) end
