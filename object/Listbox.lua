---@meta _

AP_BOTTOM = 8          -- object/Listbox
AP_BOTTOMLEFT = 2      -- object/Listbox
AP_BOTTOMRIGHT = 3     -- object/Listbox
AP_CENTER = 4          -- object/Listbox
AP_LEFT = 6            -- object/Listbox
AP_RIGHT = 7           -- object/Listbox
AP_TOP = 5             -- object/Listbox
AP_TOPLEFT = 0         -- object/Listbox
AP_TOPRIGHT = 1        -- object/Listbox
CT_ABILITY = 2         -- object/Listbox
CT_EXPEDITION_NAME = 3 -- object/Listbox
CT_NAME = 1            -- object/Listbox
DC_ALWAYS = 0          -- object/Listbox
DC_SHIFT_KEY_DOWN = 1  -- object/Listbox

---object/Listbox
---@class Listbox: Widget
---@field itemStyle TextStyle
---@field itemStyleSub TextStyle
local Listbox = {}

---TODO:
function Listbox:AppendItem() end

---TODO:
---@param data table
function Listbox:AppendItemByTable(data) end

---TODO:
function Listbox:ClearAllSelected() end

---TODO:
function Listbox:ClearItem() end

---TODO:
---@param nameTex string
function Listbox:CreateClosedImageDrawable(nameTex) end

---TODO:
---@param nameTex string
function Listbox:CreateOpenedImageDrawable(nameTex) end

---TODO:
---@param nameTex string
function Listbox:CreateSeparatorImageDrawable(nameTex) end

---TODO:
---@param enable boolean
function Listbox:EnableSelectionToggle(enable) end

---TODO:
---@param enable boolean
function Listbox:EnableSelectNoValue(enable) end

---TODO:
---@param enable boolean
function Listbox:EnableSelectParent(enable) end

---TODO:
---@return number left
---@return number top
---@return number right
---@return number bottom
---@nodiscard
function Listbox:GetInset() end

---TODO:
---@return number maxTop
---@nodiscard
function Listbox:GetMaxTop() end

---TODO:
---@return number openedItemCount
---@nodiscard
function Listbox:GetOpenedItemCount() end

---TODO:
---@return number selectedIndex
---@nodiscard
function Listbox:GetSelectedIndex() end

---TODO:
---@return table selectedIndexWithDepth
---@nodiscard
function Listbox:GetSelectedIndexWithDepth() end

---TODO:
---@return nil
---@nodiscard
function Listbox:GetSelectedText() end

---TODO:
---@return nil
---@nodiscard
function Listbox:GetSelectedValue() end

---TODO:
---@return number top
---@nodiscard
function Listbox:GetTop() end

---TODO:
---@return number viewItemCount
---@nodiscard
function Listbox:GetViewItemCount() end

---TODO:
---@return table viewItemsInfo
---@nodiscard
function Listbox:GetViewItemsInfo() end

---TODO:
---@param index number
function Listbox:InitializeSelect(index) end

---TODO:
---@param index number
---@return boolean
---@nodiscard
function Listbox:IsItemOpened(index) end

---TODO:
function Listbox:ItemCount() end

---TODO:
function Listbox:ScrollDown() end

---TODO:
function Listbox:ScrollUp() end

---TODO:
---@param index any
function Listbox:Select(index) end

---TODO:
---@param text string
function Listbox:SelectWithText(text) end

---TODO:
---@param value number
function Listbox:SelectWithValue(value) end

---TODO:
---@param line number
function Listbox:SetBorder(line) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param a number
function Listbox:SetDefaultItemColor(r, g, b, a) end

---TODO:
---@param x any
---@param y any
---@param cx any
---@param cy any
function Listbox:SetDefaultItemCoord(x, y, cx, cy) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param a number
function Listbox:SetDefaultItemTextColor(r, g, b, a) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param a number
function Listbox:SetDisableItemTextColor(r, g, b, a) end

---TODO:
---@param fold boolean
function Listbox:SetFold(fold) end

---TODO:
---@param left number
---@param top number
---@param right number
---@param bottom number
function Listbox:SetInset(left, top, right, bottom) end

---TODO:
function Listbox:SetItem() end

---TODO:
---@param infoKey any
function Listbox:SetItemDefaultTextureInfo(infoKey) end

---TODO:
---@param infoKey string
function Listbox:SetItemOveredTextureInfo(infoKey) end

---TODO:
---@param infoKey string
function Listbox:SetItemSelectedTextureInfo(infoKey) end

---TODO:
---@param treeTable table
---@return table
---@nodiscard
function Listbox:SetItemTrees(treeTable) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param a number
function Listbox:SetLineColor(r, g, b, a) end

---TODO:
---@param texFile string
function Listbox:SetListItemStateTexture(texFile) end

---TODO:
---@param left number
---@param top number
---@param right number
---@param bottom number
function Listbox:SetListItemStateTextureInset(left, top, right, bottom) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param a number
function Listbox:SetOveredItemColor(r, g, b, a) end

---TODO:
---@param x number
---@param y number
---@param cx number
---@param cy number
function Listbox:SetOveredItemCoord(x, y, cx, cy) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param a number
function Listbox:SetOveredItemTextColor(r, g, b, a) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param a number
function Listbox:SetSelectedItemColor(r, g, b, a) end

---TODO:
---@param x number
---@param y number
---@param cx number
---@param cy number
function Listbox:SetSelectedItemCoord(x, y, cx, cy) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param a number
function Listbox:SetSelectedItemTextColor(r, g, b, a) end

---TODO:
---@param x number
---@param y any
---@param child true
function Listbox:SetSubTextOffset(x, y, child) end

---TODO:
---@param limitTextLength number
function Listbox:SetTextLimit(limitTextLength) end

---TODO:
---@param value number
function Listbox:SetTop(value) end

---TODO:
---@param use boolean
---@param indentLeft number
---@param indentRight number
function Listbox:SetTreeTypeIndent(use, indentLeft, indentRight) end

---TODO:
---@param show boolean
function Listbox:ShowAutoTooltip(show) end

---TODO:
---@param show boolean
function Listbox:ShowTooltip(show) end

---TODO:
function Listbox:TurnoffOverParent() end

---TODO:
---@param datas table
function Listbox:UpdateItem(datas) end

---TODO:
---@param use boolean
function Listbox:UseChildStyle(use) end
