---@meta _

AP_BOTTOM = 8          -- objects/ListCtrl
AP_BOTTOMLEFT = 2      -- objects/ListCtrl
AP_BOTTOMRIGHT = 3     -- objects/ListCtrl
AP_CENTER = 4          -- objects/ListCtrl
AP_LEFT = 6            -- objects/ListCtrl
AP_RIGHT = 7           -- objects/ListCtrl
AP_TOP = 5             -- objects/ListCtrl
AP_TOPLEFT = 0         -- objects/ListCtrl
AP_TOPRIGHT = 1        -- objects/ListCtrl
CT_ABILITY = 2         -- objects/ListCtrl
CT_EXPEDITION_NAME = 3 -- objects/ListCtrl
CT_NAME = 1            -- objects/ListCtrl
DC_ALWAYS = 0          -- objects/ListCtrl DRAG_CONDITION
DC_SHIFT_KEY_DOWN = 1  -- objects/ListCtrl DRAG_CONDITION
LCCIT_BUTTON = 1       -- objects/ListCtrl LCCIT
LCCIT_STRING = 0       -- objects/ListCtrl LCCIT
LCCIT_TEXTBOX = 3      -- objects/ListCtrl LCCIT
LCCIT_WINDOW = 2       -- objects/ListCtrl LCCIT

---objects/ListCtrl
---ListCtrl Column Item Type
---@alias LCCIT
---| `LCCIT_BUTTON`
---| `LCCIT_STRING`
---| `LCCIT_TEXTBOX`
---| `LCCIT_WINDOW`

---objects/ListCtrl
---@class ListCtrl: Widget
---@field column? Button[]
---@field items? ListCtrlItem[]
local ListCtrl = {}
---@class listctrl: ListCtrl

---Clears the current selection in the ListCtrl.
---@usage
---```lua
---widget:ClearSelection()
---```
function ListCtrl:ClearSelection() end

---Creates the overed image for the ListCtrl.
---@return NinePartDrawable overedImage The overed image drawable.
---@nodiscard
---@usage
---```lua
---local overedImage = widget:CreateOveredImage()
---```
---@see NinePartDrawable
function ListCtrl:CreateOveredImage() end

---Creates the selected image for the ListCtrl.
---@return NinePartDrawable selectedImage The selected image drawable.
---@nodiscard
---@usage
---```lua
---local selectedImage = widget:CreateSelectedImage()
---```
---@see NinePartDrawable
function ListCtrl:CreateSelectedImage() end

---Deletes all data from the ListCtrl.
---@usage
---```lua
---widget:DeleteAllDatas()
---```
function ListCtrl:DeleteAllDatas() end

---Deletes data associated with the specified key from the ListCtrl.
---@param key number The key of the data to delete. (the row index, starting at `1`)
---@usage
---```lua
---widget:DeleteData(1)
---```
function ListCtrl:DeleteData(key) end

---Deletes data at the specified index from the ListCtrl.
---@param index number The index of the data to delete. (the row index, starting at `0`)
---@usage
---```lua
---widget:DeleteDataByIndex(0)
---```
function ListCtrl:DeleteDataByIndex(index) end

---Deletes all rows from the ListCtrl, excluding the column header.
---@usage
---```lua
---widget:DeleteRows()
---```
function ListCtrl:DeleteRows() end

---Retrieves the index of the currently selected item in the ListCtrl.
---@return number selectedIdx The index of the selected item. (default: `0`)
---@nodiscard
---@usage
---```lua
---local selectedIdx = widget:GetSelectedIdx()
---```
function ListCtrl:GetSelectedIdx() end

---Creates a column with specified width and item type, returning its index.
---Also creates a `ListCtrl.column: Button[]` property.
---@param width number The width of the column.
---@param itemType LCCIT The item type for the column.
---@return number index The index of the created column. (min: `0`)
---@nodiscard
---@usage
---```lua
---local index = widget:InsertColumn(100, LCCIT_TEXTBOX)
---```
---@see LCCIT
function ListCtrl:InsertColumn(width, itemType) end

---Inserts data into the ListCtrl at the specified column index.
---@param key number The key for the data. (the row index, starting at `1`)
---@param colIdx number The column index. (starting at `1`)
---@param subItemData string The data to insert.
---@usage
---```lua
---widget:InsertData(2, 1, "This item is in row 2 column 1")
---```
function ListCtrl:InsertData(key, colIdx, subItemData) end

---@TODO: Document true withEventWindow
---Creates a specified number of rows for the ListCtrl, with optional event
---window support. Also creates a `ListCtrl.items: ListCtrlItem[]` property.
---Must be set before `ListCtrlInsertData`.
---@param count number The number of rows to create.
---@param withEventWindow boolean `true` to include an event window, `false` otherwise.
---@usage
---```lua
---widget:InsertRows(2 , false)
---```
function ListCtrl:InsertRows(count, withEventWindow) end

---Selects the item at the specified index in the ListCtrl.
---@param itemIdx number The index of the item to select. (the row index, starting at `0`)
---@usage
---```lua
---widget:Select(0)
---```
function ListCtrl:Select(itemIdx) end

---Sets the width of the column at the specified index. Index must be at least `1` to avoid crashing.
---@param idx number The column index. (starting at `1`)
---@param width number The width to set for the column.
---@usage
---```lua
---widget:SetColumnWidth(1, 200)
---```
function ListCtrl:SetColumnWidth(idx, width) end

---Sets the height of the header column for the ListCtrl.
---@param height number The height of the header column.
---@usage
---```lua
---widget:SetHeaderColumnHeight(200)
---```
function ListCtrl:SetHeaderColumnHeight(height) end

---Sets the offset for the overed image in the ListCtrl.
---@param x1 number The x-coordinate of the first point.
---@param y1 number The y-coordinate of the first point.
---@param x2 number The x-coordinate of the second point.
---@param y2 number The y-coordinate of the second point.
---@usage
---```lua
---widget:SetOveredImageOffset(0, 0, 0, 0)
---```
function ListCtrl:SetOveredImageOffset(x1, y1, x2, y2) end

---Sets the offset for the selected image in the ListCtrl.
---@param x1 number The x-coordinate of the first point.
---@param y1 number The y-coordinate of the first point.
---@param x2 number The x-coordinate of the second point.
---@param y2 number The y-coordinate of the second point.
---@usage
---```lua
---widget:SetSelectedImageOffset(0, 0, 0, 0)
---```
function ListCtrl:SetSelectedImageOffset(x1, y1, x2, y2) end

---Enables or disables double-click functionality for the ListCtrl and
---the `"OnSelChanged"` event.
---@param use boolean `true` to enable double-click, `false` to disable. (default: `false`)
---@usage
---```lua
---widget:SetUseDoubleClick(true)
---```
function ListCtrl:SetUseDoubleClick(use) end
