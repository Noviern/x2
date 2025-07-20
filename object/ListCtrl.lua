---@meta _

AP_BOTTOM = 8          -- object/ListCtrl
AP_BOTTOMLEFT = 2      -- object/ListCtrl
AP_BOTTOMRIGHT = 3     -- object/ListCtrl
AP_CENTER = 4          -- object/ListCtrl
AP_LEFT = 6            -- object/ListCtrl
AP_RIGHT = 7           -- object/ListCtrl
AP_TOP = 5             -- object/ListCtrl
AP_TOPLEFT = 0         -- object/ListCtrl
AP_TOPRIGHT = 1        -- object/ListCtrl
CT_ABILITY = 2         -- object/ListCtrl
CT_EXPEDITION_NAME = 3 -- object/ListCtrl
CT_NAME = 1            -- object/ListCtrl
DC_ALWAYS = 0          -- object/ListCtrl
DC_SHIFT_KEY_DOWN = 1  -- object/ListCtrl
LCCIT_BUTTON = 1       -- object/ListCtrl
LCCIT_STRING = 0       -- object/ListCtrl
LCCIT_TEXTBOX = 3      -- object/ListCtrl
LCCIT_WINDOW = 2       -- object/ListCtrl

---ListCtrl Column Item Type
---object/ListCtrl
---@alias LCCIT
---| `LCCIT_BUTTON`
---| `LCCIT_STRING`
---| `LCCIT_TEXTBOX`
---| `LCCIT_WINDOW`

---object/ListCtrl
---@class ListCtrlItem: Window
---@field subItems Label[]

---object/ListCtrl
---@class ListCtrl: Widget
---@field column? Button[]
---@field items? ListCtrlItem[] 
local ListCtrl = {}

---TODO:
function ListCtrl:ClearSelection() end

---Returns `overedImage` for the ListCtrl.
---@return Drawable overedImage
---@nodiscard
function ListCtrl:CreateOveredImage() end

---Returns `selectedImage` for the ListCtrl.
---@return Drawable selectedImage
---@nodiscard
function ListCtrl:CreateSelectedImage() end

---TODO:
function ListCtrl:DeleteAllDatas() end

---TODO:
---@param key number
function ListCtrl:DeleteData(key) end

---TODO:
---@param index number
function ListCtrl:DeleteDataByIndex(index) end

---Deletes all rows exluding the column header for the ListCtrl.
function ListCtrl:DeleteRows() end

---Returns `selectedIdx` for the ListCtrl.
---@return number selectedIdx
---@nodiscard
function ListCtrl:GetSelectedIdx() end

---Creates a column with a `width` and `itemType` for the ListCtrl and returns
---the array index `idx` starting at `0`. Also creates a `property
---`ListCtrl.column: Button[]`
---@param width number
---@param itemType LCCIT
---@return number idx
---@nodiscard
function ListCtrl:InsertColumn(width, itemType) end

---TODO:
---@param key number
---@param colIdx number
---@param subItemData string
function ListCtrl:InsertData(key, colIdx, subItemData) end

---Creates `count` rows `withEventWindow` for the ListCtrl. Also creates a
---property `ListCtrl.items: ListCtrlItem[]`
---@param count number
---@param withEventWindow boolean
function ListCtrl:InsertRows(count, withEventWindow) end

---TODO:
---@param itemIdx number
function ListCtrl:Select(itemIdx) end

---Sets the `width` of the column `idx` for the ListCtrl.
---@param idx number minimum of 1 or will crash the game
---@param width number
function ListCtrl:SetColumnWidth(idx, width) end

---Sets the header column `height` for the ListCtrl.
---@param height number
function ListCtrl:SetHeaderColumnHeight(height) end

---TODO:
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
function ListCtrl:SetOveredImageOffset(x1, y1, x2, y2) end

---TODO:
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
function ListCtrl:SetSelectedImageOffset(x1, y1, x2, y2) end

---TODO:
---@param use boolean
function ListCtrl:SetUseDoubleClick(use) end
