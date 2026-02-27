# Grid
## Classes
### Class: Grid
Extends [Widget](../types/Widget.md#class-widget)

> [Grid](../types/Grid.md#class-grid)
> 
> **Warning:** Grid will always only show one less column than it should.
> ```lua
> grid:SetWidth(400)
> grid:SetDefaultColWidth(100)
> grid:SetColCount(8)
> -- 400 grid width / 100 column width = should show 4 columns but instead shows 3 
> ```
> 
> A `Grid` widget is table-like for displaying items in rows and columns.
> Supports row and column selection, item insertion, row/column height and
> width configuration, insets, textures, top/left headers, and colors. Provides
> scrolling, clipping, and line background customization.
> 
#### Method: ClearItem
```lua
(method) Grid:ClearItem()
```
> Clears the item from the Grid.

#### Method: SetItem
```lua
(method) Grid:SetItem(table: Widget, row: number, col: number, makeIfNotExist: boolean, value: number, withoutExtent: boolean)
```
> Sets an item in the Grid at the specified row and column.
> 
> @*param* `table` — The widget to set as the item.
> 
> @*param* `row` — The row index. (min: `1`)
> 
> @*param* `col` — The column index. (min: `1`)
> 
> @*param* `makeIfNotExist` — `true` to create row/column if absent, `false` otherwise. (If `false` and row doesn't exist, it crashes.)
> 
> @*param* `value` — The value associated with the item.
> 
> @*param* `withoutExtent` — `true` to ignore auto extent, `false` to use auto extent.
> 
> ```lua
> local label = widget:CreateChildWidget("label", "testbtn", 0, true)
> label:SetText("Archerage.to")
> label:SetExtent(50, 50)
> widget:SetItem(label, 1, 1, true, 10, false)
> ```
> See: [Widget](../types/Widget.md#class-widget)

#### Method: SetInsetForRow
```lua
(method) Grid:SetInsetForRow(left: number, top: number, right: number, bottom: number)
```
> Sets the inset for rows in the Grid.
> 
> @*param* `left` — The left inset.
> 
> @*param* `top` — The top inset.
> 
> @*param* `right` — The right inset.
> 
> @*param* `bottom` — The bottom inset.

#### Method: SetItemInset
```lua
(method) Grid:SetItemInset(row: number, col: number, left: number, top: number, right: number, bottom: number)
  -> rowCount: number
```
> Sets the inset for an item at the specified row and column.
> 
> @*param* `row` — The row index. (min: `1`)
> 
> @*param* `col` — The column index. (min: `1`)
> 
> @*param* `left` — The left inset.
> 
> @*param* `top` — The top inset.
> 
> @*param* `right` — The right inset.
> 
> @*param* `bottom` — The bottom inset.
> 
> @*return* `rowCount` — The number of rows affected.

#### Method: SetLeft
```lua
(method) Grid:SetLeft(left: number)
```
> Sets the left scroll position of the Grid. May crash if scrolling is not
> possible.
> 
> @*param* `left` — The left scroll position.

#### Method: SetLeftHeaderWidth
```lua
(method) Grid:SetLeftHeaderWidth(width: number)
```
> Sets the width of the left header in the Grid.
> 
> @*param* `width` — The width of the left header.

#### Method: SetInsetForOutLine
```lua
(method) Grid:SetInsetForOutLine(left: number, top: number, right: number, bottom: number)
```
> Sets the inset for the outline in the Grid.
> 
> @*param* `left` — The left inset.
> 
> @*param* `top` — The top inset.
> 
> @*param* `right` — The right inset.
> 
> @*param* `bottom` — The bottom inset.

#### Method: SetHeaderType
```lua
(method) Grid:SetHeaderType(type: "left"|"top")
```
> Sets the header type for the Grid.
> 
> @*param* `type` — The header type.
> 
> ```lua
> type:
>     | "left"
>     | "top"
> ```

#### Method: SetDefaultRowHeight
```lua
(method) Grid:SetDefaultRowHeight(height: number)
```
> Sets the default row height for the Grid. Should be called before
> `Grid:SetItem` and `Grid:SetRowCount`.
> 
> @*param* `height` — The default row height.

#### Method: SetInsetForCol
```lua
(method) Grid:SetInsetForCol(left: number, top: number, right: number, bottom: number)
```
> Sets the inset for columns in the Grid.
> 
> @*param* `left` — The left inset.
> 
> @*param* `top` — The top inset.
> 
> @*param* `right` — The right inset.
> 
> @*param* `bottom` — The bottom inset.

#### Method: SetDrawLineType
```lua
(method) Grid:SetDrawLineType(type: string)
```
> Sets the draw line type for the Grid.
> 
> @*param* `type` — The draw line type.

#### Method: SetDrawStartNumber
```lua
(method) Grid:SetDrawStartNumber(number: number)
```
> Sets the draw start number for the Grid.
> 
> @*param* `number` — The draw start number.

#### Method: SetDefaultColWidth
```lua
(method) Grid:SetDefaultColWidth(width: number)
```
> Sets the default column width for the Grid. Should be called before
> `Grid:SetItem` and `Grid:SetColCount`.
> 
> @*param* `width` — The default column width.

#### Method: SetLineBackGround
```lua
(method) Grid:SetLineBackGround(line: boolean)
```
> Enables or disables the line background for the Grid to show row textures.
> 
> @*param* `line` — `true` to enable line background, `false` to disable. (default: `false`)

#### Method: SetRowCliping
```lua
(method) Grid:SetRowCliping(use: boolean)
```
> Enables or disables row clipping in the Grid.
> 
> @*param* `use` — `true` to enable row clipping, `false` to disable.

#### Method: SetSelectedTexCoord
```lua
(method) Grid:SetSelectedTexCoord(x: number, y: number, w: number, h: number)
```
> Sets the texture coordinates for the selected item in the Grid. Requires
> `Grid:SetSelectedLine(true)`.
> 
> @*param* `x` — The x-coordinate.
> 
> @*param* `y` — The y-coordinate.
> 
> @*param* `w` — The width.
> 
> @*param* `h` — The height.

#### Method: SetSelectedLine
```lua
(method) Grid:SetSelectedLine(select: boolean)
```
> Enables or disables line selection in the Grid.
> 
> @*param* `select` — `true` to enable line selection, `false` to disable. (default: `false`)

#### Method: SetSelectedTexture
```lua
(method) Grid:SetSelectedTexture(texture: string)
```
> Sets the texture for the selected item in the Grid. Requires
> `Grid:SetSelectedLine(true)`.
> 
> @*param* `texture` — The texture path.

#### Method: SetTexInset
```lua
(method) Grid:SetTexInset(left: number, top: number, right: number, bottom: number)
```
> Sets the texture inset for the Grid.
> 
> @*param* `left` — The left inset. (default: `0`)
> 
> @*param* `top` — The top inset. (default: `0`)
> 
> @*param* `right` — The right inset. (default: `0`)
> 
> @*param* `bottom` — The bottom inset. (default: `0`)

#### Method: SetLineColor
```lua
(method) Grid:SetLineColor(r: number, g: number, b: number, a: number)
```
> Sets the color for the lines in the Grid. Requires
> `Grid:SetLineBackGround(true)`.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`)
> 
> @*param* `a` — The alpha component. (min: `0`, max: `1`)

#### Method: SetSelectedColor
```lua
(method) Grid:SetSelectedColor(r: number, g: number, b: number, a: number)
```
> Sets the color for the selected item in the Grid. Requires
> `Grid:SetSelectedLine(true)`.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`, default: `0.78`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`, default: `0.78`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`, default: `0.78`)
> 
> @*param* `a` — The alpha component. (min: `0`, max: `1`, default: `1`)

#### Method: SetRowTexCoord
```lua
(method) Grid:SetRowTexCoord(x: number, y: number, w: number, h: number)
```
> Sets the texture coordinates for a row in the Grid. Requires
> `Grid:SetLineBackGround(true)`.
> 
> @*param* `x` — The x-coordinate.
> 
> @*param* `y` — The y-coordinate.
> 
> @*param* `w` — The width.
> 
> @*param* `h` — The height.

#### Method: SetRowTexture
```lua
(method) Grid:SetRowTexture(texture: string)
```
> Sets the texture for a row in the Grid. Requires
> `Grid:SetLineBackGround(true)`.
> 
> @*param* `texture` — The texture path.

#### Method: SetRowCount
```lua
(method) Grid:SetRowCount(count: number)
```
> Sets the number of rows in the Grid.
> 
> @*param* `count` — The number of rows.

#### Method: SetRowHeight
```lua
(method) Grid:SetRowHeight(height: number, row: number)
```
> Sets the height of the specified row in the Grid.
> 
> @*param* `height` — The height to set. (default: `0`)
> 
> @*param* `row` — The row index. (min: `1`)

#### Method: SetTop
```lua
(method) Grid:SetTop(top: number)
```
> Sets the top scroll position of the Grid.
> 
> @*param* `top` — The top scroll position.

#### Method: SetCurrentTexture
```lua
(method) Grid:SetCurrentTexture(texture: string)
```
> Sets the texture for the current line in the Grid. Requires
> `Grid:SetCurrentLine(true)`.
> 
> @*param* `texture` — The texture path.

#### Method: SetCurrentLine
```lua
(method) Grid:SetCurrentLine(current: boolean)
```
> Enables or disables the current line in the Grid.
> 
> @*param* `current` — `true` to enable the current line, `false` to disable. (default: `false`)

#### Method: GetSelectedRowIndex
```lua
(method) Grid:GetSelectedRowIndex()
  -> selectedRowIndex: number
```
> Retrieves the index of the selected row in the Grid.
> 
> @*return* `selectedRowIndex` — The selected row index. (min: `1`, default: `-1`)

#### Method: GetSelectedColIndex
```lua
(method) Grid:GetSelectedColIndex()
  -> selectedColIndex: number
```
> Retrieves the index of the selected column in the Grid.
> 
> @*return* `selectedColIndex` — The selected column index. (min: `0`, default: `-1`)

#### Method: GetSelectedValue
```lua
(method) Grid:GetSelectedValue()
  -> selectedValue: number
```
> Retrieves the value of the selected item in the Grid.
> 
> @*return* `selectedValue` — The selected value. (default: `-1`)

#### Method: GetTop
```lua
(method) Grid:GetTop()
  -> top: number
```
> Retrieves the current top scroll position of the Grid.
> 
> @*return* `top` — The top scroll position. (default: `0`)

#### Method: LineSelect
```lua
(method) Grid:LineSelect(index: number)
```
> Selects the specified row in the Grid.
> 
> @*param* `index` — The row index to select. (min: `1`)

#### Method: GetRowHeight
```lua
(method) Grid:GetRowHeight(row: number)
  -> rowHeight: number
```
> Retrieves the height of the specified row in the Grid.
> 
> **Crashes if `Grid:SetRowCount` has not been called.**
> 
> @*param* `row` — The row index. (min: `1`)
> 
> @*return* `rowHeight` — The height of the row. (default: `0`)

#### Method: GetMaxTop
```lua
(method) Grid:GetMaxTop()
  -> min: number
  2. max: number
```
> Retrieves the minimum and maximum scroll positions from the top.
> 
> @*return* `min` — The minimum scroll position.
> 
> @*return* `max` — The maximum scroll position.

#### Method: GetRowCount
```lua
(method) Grid:GetRowCount()
  -> rowCount: number
```
> Retrieves the number of rows in the Grid.
> 
> @*return* `rowCount` — The number of rows. (default: `0`)

#### Method: GetAdjustRowHeight
```lua
(method) Grid:GetAdjustRowHeight()
  -> adjustRowHeight: number
```
> Retrieves the adjustment height for rows in the Grid.
> 
> @*return* `adjustRowHeight` — The adjustment height. (default: `0`)

#### Method: GetLeft
```lua
(method) Grid:GetLeft()
  -> left: number
```
> Retrieves the number of times the Grid can scroll left.
> 
> @*return* `left` — The number of left scrolls. (default: `0`)

#### Method: SetCurrentTexCoord
```lua
(method) Grid:SetCurrentTexCoord(x: number, y: number, w: number, h: number)
```
> Sets the texture coordinates for the current line in the Grid. Requires
> `Grid:SetCurrentLine(true)`.
> 
> @*param* `x` — The x-coordinate.
> 
> @*param* `y` — The y-coordinate.
> 
> @*param* `w` — The width.
> 
> @*param* `h` — The height.

#### Method: ReleaseSelect
```lua
(method) Grid:ReleaseSelect()
```
> Releases the current selection in the Grid.

#### Method: RemoveItem
```lua
(method) Grid:RemoveItem(row: number, col: number)
```
> Removes the item at the specified row and column in the Grid.
> 
> @*param* `row` — The row index. (min: `1`)
> 
> @*param* `col` — The column index. (min: `1`)

#### Method: SetColTexture
```lua
(method) Grid:SetColTexture(texture: string)
```
> Sets the texture for a column in the Grid.
> 
> @*param* `texture` — The texture path.

#### Method: SetColTexCoord
```lua
(method) Grid:SetColTexCoord(x: number, y: number, w: number, h: number)
```
> Sets the texture coordinates for a column in the Grid.
> 
> @*param* `x` — The x-coordinate.
> 
> @*param* `y` — The y-coordinate.
> 
> @*param* `w` — The width.
> 
> @*param* `h` — The height.

#### Method: SetColWidth
```lua
(method) Grid:SetColWidth(width: number, col: number)
```
> Sets the width of the specified column in the Grid.
> 
> @*param* `width` — The width to set.
> 
> @*param* `col` — The column index. (min: `1`)

#### Method: SetCurrentColor
```lua
(method) Grid:SetCurrentColor(r: number, g: number, b: number, a: number)
```
> Sets the color for the current line in the Grid. Requires
> `Grid:SetCurrentLine(true)`.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`, default: `1`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`, default: `1`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`, default: `1`)
> 
> @*param* `a` — The alpha component. (min: `0`, max: `1`, default: `1`)

#### Method: RemoveAllItems
```lua
(method) Grid:RemoveAllItems()
```
> Removes all items from the Grid.

#### Method: SetColCount
```lua
(method) Grid:SetColCount(count: number)
```
> Sets the number of columns in the Grid.
> 
> @*param* `count` — The number of columns.

#### Method: ScrollRight
```lua
(method) Grid:ScrollRight()
```
> Scrolls the Grid right by one step.

#### Method: ScrollUp
```lua
(method) Grid:ScrollUp()
```
> Scrolls the Grid up by one step.

#### Method: ScrollDown
```lua
(method) Grid:ScrollDown()
```
> Scrolls the Grid down by one step.

#### Method: ScrollLeft
```lua
(method) Grid:ScrollLeft()
```
> Scrolls the Grid left by one step.

#### Method: SetTopHeaderHeight
```lua
(method) Grid:SetTopHeaderHeight(height: number)
```
> Sets the height of the top header in the Grid.
> 
> @*param* `height` — The height of the top header.

