---@meta _

LCCIT_BUTTON = 1  -- objects/ListCtrl LIST_CTRL_COLUMN_ITEM_TYPE
LCCIT_STRING = 0  -- objects/ListCtrl LIST_CTRL_COLUMN_ITEM_TYPE
LCCIT_TEXTBOX = 3 -- objects/ListCtrl LIST_CTRL_COLUMN_ITEM_TYPE
LCCIT_WINDOW = 2  -- objects/ListCtrl LIST_CTRL_COLUMN_ITEM_TYPE

---objects/ListCtrl
---@alias LIST_CTRL_COLUMN_ITEM_TYPE
---| `LCCIT_BUTTON`
---| `LCCIT_STRING`
---| `LCCIT_TEXTBOX`
---| `LCCIT_WINDOW`

---[ListCtrl](lua://ListCtrl)
---
---A `ListCtrl` widget is table-like that supports multiple columns and rows.
---Each column can have different item types (button, string, textbox, window),
---overed/selected images, and optional event windows. Supports selection,
---double-click handling, and dynamic resizing of columns and rows.
---
---**Dependencies**:
--- - [Button](lua://Button) used for the `column` and `items` field.
--- - [Window](lua://Window) used for the `items` field.
--- - [Textbox](lua://Textbox) used for the `items` field.
---
---@class ListCtrl: Widget
---@field column Button[]|nil An array of buttons representing columns. Automatically populated by `ListCtrl:InsertColumn`.
---@field items ListCtrlItem[]|nil An array of row data. Each row can contain sub-items and optional event windows. Populated by `ListCtrl:InsertRows`.
local ListCtrl = {}

---Clears the current selection in the ListCtrl.
function ListCtrl:ClearSelection() end

---Creates the overed image for the ListCtrl. Only works on rows where data has
---been inserted with `ListCtrl:InsertData`.
---@return NinePartDrawable overedImage The overed image drawable.
---@nodiscard
---@see NinePartDrawable
function ListCtrl:CreateOveredImage() end

---Creates the selected image for the ListCtrl. Only works on rows where data
---has been inserted with `ListCtrl:InsertData`.
---@return NinePartDrawable selectedImage The selected image drawable.
---@nodiscard
---@see NinePartDrawable
function ListCtrl:CreateSelectedImage() end

---Deletes all data from the ListCtrl.
function ListCtrl:DeleteAllDatas() end

---Deletes data associated with the specified key from the ListCtrl.
---@param key number The key (row index) of the data to delete. (min: `1`)
function ListCtrl:DeleteData(key) end

---Deletes data at the specified index from the ListCtrl.
---@param index number The row index of the data to delete. (min: `0`)
function ListCtrl:DeleteDataByIndex(index) end

---Deletes all rows from the ListCtrl, excluding the column header.
function ListCtrl:DeleteRows() end

---Retrieves the index of the currently selected item in the ListCtrl.
---@return number selectedIdx The index of the selected item. (default: `0`)
---@nodiscard
function ListCtrl:GetSelectedIdx() end

---Creates a column with specified width and item type, returning its index.
---Also creates a `ListCtrl.column[columnCount]` property.
---- **Must be set before `ListCtrl:InsertRows`**
---- **Must be set before `ListCtrl:InsertData`.**
---@param width number The width of the column.
---@param itemType LIST_CTRL_COLUMN_ITEM_TYPE The item type for the column.
---@return number index The index of the created column. (min: `0`)
function ListCtrl:InsertColumn(width, itemType) end

---Inserts data into the ListCtrl at the specified row anbd column index.
---- **Must be set after `ListCtrl:InsertColumn`**
---- **Must be set after `ListCtrl:InsertRows`.**
---@param key number The key (row index) for the data. (min: `0` for header)
---@param colIdx number The column index. (min: `1`)
---@param subItemData string The data to insert.
function ListCtrl:InsertData(key, colIdx, subItemData) end

---Creates a specified number of rows for the ListCtrl, with optional event
---window support. Also creates a `ListCtrl.items[rowCount].subItems[columnCount]` property.
---- **Must be set after `ListCtrl:InsertColumn`**
---- **Must be set before `ListCtrl:InsertData`.**
---@param count number The number of rows to create.
---@param withEventWindow boolean `true` to create `ListCtrl.items[rowCount].eventWindow`, `false` otherwise.
function ListCtrl:InsertRows(count, withEventWindow) end

---Selects the item at the specified index in the ListCtrl.
---@param itemIdx number The row index of the item to select. (min: `0`)
function ListCtrl:Select(itemIdx) end

---Sets the width of the column at the specified index. Index must be at least
---`1` to avoid crashing.
---@param idx number The column index. (min: `1`)
---@param width number The width to set for the column.
function ListCtrl:SetColumnWidth(idx, width) end

---Sets the height of the header column for the ListCtrl.
---@param height number The height of the header column.
function ListCtrl:SetHeaderColumnHeight(height) end

---Sets the offset for the overed image in the ListCtrl.
---@param x1 number The x-coordinate of the first point.
---@param y1 number The y-coordinate of the first point.
---@param x2 number The x-coordinate of the second point.
---@param y2 number The y-coordinate of the second point.
function ListCtrl:SetOveredImageOffset(x1, y1, x2, y2) end

---Sets the offset for the selected image in the ListCtrl.
---@param x1 number The x-coordinate of the first point.
---@param y1 number The y-coordinate of the first point.
---@param x2 number The x-coordinate of the second point.
---@param y2 number The y-coordinate of the second point.
function ListCtrl:SetSelectedImageOffset(x1, y1, x2, y2) end

---Enables or disables double-click functionality for the ListCtrl and
---the `"OnSelChanged"` event.
---@param use boolean `true` to enable double-click, `false` to disable. (default: `false`)
function ListCtrl:SetUseDoubleClick(use) end
