# ListCtrl
## Globals
**LCCIT_BUTTON**

`integer`

**LCCIT_STRING**

`integer`

**LCCIT_TEXTBOX**

`integer`

**LCCIT_WINDOW**

`integer`

## Aliases
**LIST_CTRL_COLUMN_ITEM_TYPE**

`LCCIT_BUTTON`|`LCCIT_STRING`|`LCCIT_TEXTBOX`|`LCCIT_WINDOW`

```lua
-- objects/ListCtrl
LIST_CTRL_COLUMN_ITEM_TYPE:
    | `LCCIT_BUTTON`
    | `LCCIT_STRING`
    | `LCCIT_TEXTBOX`
    | `LCCIT_WINDOW`
```

## Classes
### Class: ListCtrl
Extends [Widget](../types/Widget.md#class-widget)

> [ListCtrl](../types/ListCtrl.md#class-listctrl)
> 
> A `ListCtrl` widget is table-like that supports multiple columns and rows.
> Each column can have different item types (button, string, textbox, window),
> overed/selected images, and optional event windows. Supports selection,
> double-click handling, and dynamic resizing of columns and rows.
> 
> **Dependencies**:
>  - [Button](../types/Button.md#class-button) used for the `column` and `items` field.
>  - [Window](../types/Window.md#class-window) used for the `items` field.
>  - [Textbox](../types/Textbox.md#class-textbox) used for the `items` field.
> 
#### Field: items
```lua
ListCtrlItem[]|nil
```
> An array of row data. Each row can contain sub-items and optional event windows. Populated by `ListCtrl:InsertRows`.

#### Field: column
```lua
Button[]|nil
```
> An array of buttons representing columns. Automatically populated by `ListCtrl:InsertColumn`.

#### Method: SetSelectedImageOffset
```lua
(method) ListCtrl:SetSelectedImageOffset(x1: number, y1: number, x2: number, y2: number)
```
> Sets the offset for the selected image in the ListCtrl.
> 
> @*param* `x1` — The x-coordinate of the first point.
> 
> @*param* `y1` — The y-coordinate of the first point.
> 
> @*param* `x2` — The x-coordinate of the second point.
> 
> @*param* `y2` — The y-coordinate of the second point.

#### Method: Select
```lua
(method) ListCtrl:Select(itemIdx: number)
```
> Selects the item at the specified index in the ListCtrl.
> 
> @*param* `itemIdx` — The row index of the item to select. (min: `0`)

#### Method: SetUseDoubleClick
```lua
(method) ListCtrl:SetUseDoubleClick(use: boolean)
```
> Enables or disables double-click functionality for the ListCtrl and
> the `"OnSelChanged"` event.
> 
> @*param* `use` — `true` to enable double-click, `false` to disable. (default: `false`)

#### Method: SetColumnWidth
```lua
(method) ListCtrl:SetColumnWidth(idx: number, width: number)
```
> Sets the width of the column at the specified index. Index must be at least
> `1` to avoid crashing.
> 
> @*param* `idx` — The column index. (min: `1`)
> 
> @*param* `width` — The width to set for the column.

#### Method: SetOveredImageOffset
```lua
(method) ListCtrl:SetOveredImageOffset(x1: number, y1: number, x2: number, y2: number)
```
> Sets the offset for the overed image in the ListCtrl.
> 
> @*param* `x1` — The x-coordinate of the first point.
> 
> @*param* `y1` — The y-coordinate of the first point.
> 
> @*param* `x2` — The x-coordinate of the second point.
> 
> @*param* `y2` — The y-coordinate of the second point.

#### Method: InsertRows
```lua
(method) ListCtrl:InsertRows(count: number, withEventWindow: boolean)
```
> Creates a specified number of rows for the ListCtrl, with optional event
> window support. Also creates a `ListCtrl.items[rowCount].subItems[columnCount]` property.
> - **Must be set after `ListCtrl:InsertColumn`**
> - **Must be set before `ListCtrl:InsertData`.**
> 
> @*param* `count` — The number of rows to create.
> 
> @*param* `withEventWindow` — `true` to create `ListCtrl.items[rowCount].eventWindow`, `false` otherwise.

#### Method: SetHeaderColumnHeight
```lua
(method) ListCtrl:SetHeaderColumnHeight(height: number)
```
> Sets the height of the header column for the ListCtrl.
> 
> @*param* `height` — The height of the header column.

#### Method: InsertData
```lua
(method) ListCtrl:InsertData(key: number, colIdx: number, subItemData: string)
```
> Inserts data into the ListCtrl at the specified row anbd column index.
> - **Must be set after `ListCtrl:InsertColumn`**
> - **Must be set after `ListCtrl:InsertRows`.**
> 
> @*param* `key` — The key (row index) for the data. (min: `0` for header)
> 
> @*param* `colIdx` — The column index. (min: `1`)
> 
> @*param* `subItemData` — The data to insert.

#### Method: GetSelectedIdx
```lua
(method) ListCtrl:GetSelectedIdx()
  -> selectedIdx: number
```
> Retrieves the index of the currently selected item in the ListCtrl.
> 
> @*return* `selectedIdx` — The index of the selected item. (default: `0`)

#### Method: CreateSelectedImage
```lua
(method) ListCtrl:CreateSelectedImage()
  -> selectedImage: NinePartDrawable
```
> Creates the selected image for the ListCtrl. Only works on rows where data
> has been inserted with `ListCtrl:InsertData`.
> 
> @*return* `selectedImage` — The selected image drawable.
> 
> See: [NinePartDrawable](../objects/NinePartDrawable.md#class-ninepartdrawable)

#### Method: CreateOveredImage
```lua
(method) ListCtrl:CreateOveredImage()
  -> overedImage: NinePartDrawable
```
> Creates the overed image for the ListCtrl. Only works on rows where data has
> been inserted with `ListCtrl:InsertData`.
> 
> @*return* `overedImage` — The overed image drawable.
> 
> See: [NinePartDrawable](../objects/NinePartDrawable.md#class-ninepartdrawable)

#### Method: InsertColumn
```lua
(method) ListCtrl:InsertColumn(width: number, itemType: `LCCIT_BUTTON`|`LCCIT_STRING`|`LCCIT_TEXTBOX`|`LCCIT_WINDOW`)
  -> index: number
```
> Creates a column with specified width and item type, returning its index.
> Also creates a `ListCtrl.column[columnCount]` property.
> - **Must be set before `ListCtrl:InsertRows`**
> - **Must be set before `ListCtrl:InsertData`.**
> 
> @*param* `width` — The width of the column.
> 
> @*param* `itemType` — The item type for the column.
> 
> @*return* `index` — The index of the created column. (min: `0`)
> 
> ```lua
> -- objects/ListCtrl
> itemType:
>     | `LCCIT_BUTTON`
>     | `LCCIT_STRING`
>     | `LCCIT_TEXTBOX`
>     | `LCCIT_WINDOW`
> ```

#### Method: DeleteAllDatas
```lua
(method) ListCtrl:DeleteAllDatas()
```
> Deletes all data from the ListCtrl.

#### Method: DeleteDataByIndex
```lua
(method) ListCtrl:DeleteDataByIndex(index: number)
```
> Deletes data at the specified index from the ListCtrl.
> 
> @*param* `index` — The row index of the data to delete. (min: `0`)

#### Method: DeleteData
```lua
(method) ListCtrl:DeleteData(key: number)
```
> Deletes data associated with the specified key from the ListCtrl.
> 
> @*param* `key` — The key (row index) of the data to delete. (min: `1`)

#### Method: DeleteRows
```lua
(method) ListCtrl:DeleteRows()
```
> Deletes all rows from the ListCtrl, excluding the column header.

#### Method: ClearSelection
```lua
(method) ListCtrl:ClearSelection()
```
> Clears the current selection in the ListCtrl.

