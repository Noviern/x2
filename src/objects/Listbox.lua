---@meta _

AP_BOTTOM = 8          -- objects/Listbox
AP_BOTTOMLEFT = 2      -- objects/Listbox
AP_BOTTOMRIGHT = 3     -- objects/Listbox
AP_CENTER = 4          -- objects/Listbox
AP_LEFT = 6            -- objects/Listbox
AP_RIGHT = 7           -- objects/Listbox
AP_TOP = 5             -- objects/Listbox
AP_TOPLEFT = 0         -- objects/Listbox
AP_TOPRIGHT = 1        -- objects/Listbox
CT_ABILITY = 2         -- objects/Listbox
CT_EXPEDITION_NAME = 3 -- objects/Listbox
CT_NAME = 1            -- objects/Listbox
DC_ALWAYS = 0          -- objects/Listbox
DC_SHIFT_KEY_DOWN = 1  -- objects/Listbox

---objects/Listbox
---@class ItemsInfo
---@field childCount number
---@field indexing number[]
---@field opened boolean
---@field text string
---@field value number

---objects/Listbox
---@TODO: this may not be complete
---@class ItemTree
---@field enable? boolean
---@field text string
---@field value? number
---@field subtext? string
---@field subColor? RGBAColor
---@field defaultColor? RGBAColor Requires `useColor = true`.
---@field selectColor? RGBAColor Requires `useColor = true`.
---@field overColor? RGBAColor Requires `useColor = true`.
---@field disableColor? RGBAColor @TODO: Unsure if this exists. Couldnt get it to work but its in the scriptsbin.
---@field color? RGBAColor @TODO: Unsure if this exists. Couldnt get it to work but its in the scriptsbin.
---@field useColor? boolean
---@field iconPath? TEXTURE_PATH
---@field infoKey? string
---@field child? ItemTree
---@field tailIconPath? TEXTURE_PATH
---@field tailIconCoord? string

---objects/Listbox
---@class ItemTreeValue
---@field value number

---objects/Listbox
---@class ItemTreeInfos
---@field itemInfos ItemTreeValue[]

---objects/Listbox
---@class Listbox: Widget
---@field itemStyle TextStyle
---@field itemStyleSub TextStyle
---@class listbox: Listbox
local Listbox = {}

---Appends an item to the Listbox with the specified key, value, and optional
---color.
---@param key string The key for the item.
---@param value number The value for the item.
---@param r? number The red color component. (min: `0`, max: `1`)
---@param g? number The green color component. (min: `0`, max: `1`)
---@param b? number The blue color component. (min: `0`, max: `1`)
---@param a? number The alpha component. (min: `0`, max: `1`)
---@usage
---```
---widget:AppendItem("Item", 1, 1, 0, 0, 1)
---```
function Listbox:AppendItem(key, value, r, g, b, a) end

---@TODO: Identify which ItemTree fields are supported.
---Appends an item to the Listbox using a table of item data.
---@param data ItemTree The item data table.
---@usage
---```
---widget:AppendItemByTable({
---  text = "test",
---  value = 1,
---})
---```
---@see ItemTree
function Listbox:AppendItemByTable(data) end

---@TODO: Confirm if this clears or unselects items.
---Clears or unselects all items in the Listbox.
---@usage
---```
---widget:ClearAllSelected()
---```
function Listbox:ClearAllSelected() end

---Clears all items from the Listbox.
---@usage
---```
---widget:ClearItem()
---```
function Listbox:ClearItem() end

---Creates a closed image drawable for the Listbox.
---@param nameTex TEXTURE_PATH The texture path for the closed image.
---@return ImageDrawable|EmptyTable|nil closedImageDrawable The closed image drawable, or `nil` if not created.
---@nodiscard
---@usage
---```
---local closedImageDrawable = widget:CreateClosedImageDrawable("ui/button/grid.dds")
---```
---@see TEXTURE_PATH
---@see ImageDrawable
function Listbox:CreateClosedImageDrawable(nameTex) end

---Creates an opened image drawable for the Listbox.
---@param nameTex TEXTURE_PATH The texture path for the opened image.
---@return ImageDrawable|EmptyTable|nil openedImageDrawable The opened image drawable, or `nil` if not created.
---@nodiscard
---@usage
---```
---local openedImageDrawable = widget:CreateOpenedImageDrawable("ui/button/grid.dds")
---```
---@see TEXTURE_PATH
---@see ImageDrawable
function Listbox:CreateOpenedImageDrawable(nameTex) end

---Creates a separator image drawable for the Listbox.
---@param nameTex TEXTURE_PATH The texture path for the separator image.
---@return ImageDrawable|EmptyTable|nil separatorImageDrawable The separator image drawable, or `nil` if not created.
---@nodiscard
---@usage
---```
---local separatorImageDrawable = widget:CreateSeparatorImageDrawable(TEXTURE_PATH.DEFAULT)
---```
---@see TEXTURE_PATH
---@see ImageDrawable
function Listbox:CreateSeparatorImageDrawable(nameTex) end

---Enables or disables toggling of item selection in the Listbox.
---@param enable boolean `true` to enable selection toggling, `false` to disable. (default: `false`)
---@usage
---```
---widget:EnableSelectionToggle(true)
---```
function Listbox:EnableSelectionToggle(enable) end

---Enables or disables selecting items with no value in the Listbox.
---@param enable boolean `true` to enable selecting no-value items, `false` to disable. (default: `true`)
---@usage
---```
---widget:EnableSelectNoValue(false)
---```
function Listbox:EnableSelectNoValue(enable) end

---@TODO: Confirm default value for parent selection.
---Enables or disables selecting parent items in the Listbox.
---@param enable boolean `true` to enable parent selection, `false` to disable.
---@usage
---```
---widget:EnableSelectParent(false)
---```
function Listbox:EnableSelectParent(enable) end

---Retrieves the inset values for the Listbox.
---@return number left The left inset. (default: `0`)
---@return number top The top inset. (default: `0`)
---@return number right The right inset. (default: `0`)
---@return number bottom The bottom inset. (default: `0`)
---@nodiscard
---@usage
---```
---local left, top, right, bottom = widget:GetInset()
---```
function Listbox:GetInset() end

---Retrieves the maximum scroll position from the top of the Listbox.
---@return number maxTop The maximum top scroll position. (default: `0`)
---@nodiscard
---@usage
---```
---local maxTop = widget:GetMaxTop()
---```
function Listbox:GetMaxTop() end

---Retrieves the number of opened items in the Listbox.
---@return number openedItemCount The number of opened items. (default: `0`)
---@nodiscard
---@usage
---```
---local openedItemCount = widget:GetOpenedItemCount()
---```
function Listbox:GetOpenedItemCount() end

---Retrieves the index of the currently selected item in the Listbox.
---@return number selectedIndex The selected item index. (min: `0`, default: `-1`)
---@nodiscard
---@usage
---```
---local selectedIndex = widget:GetSelectedIndex()
---```
function Listbox:GetSelectedIndex() end

---Retrieves the selected item index along with its depth in the Listbox.
---@return number[] selectedIndexWithDepth The selected index with depth information.
---@nodiscard
---@usage
---```
---local selectedIndexWithDepth = widget:GetSelectedIndexWithDepth()
---```
function Listbox:GetSelectedIndexWithDepth() end

---Retrieves the text of the selected item in the Listbox.
---@return string|nil selectedText The selected item's text, or `nil` if none selected.
---@nodiscard
---@usage
---```
---local selectedText = widget:GetSelectedText()
---```
function Listbox:GetSelectedText() end

---Retrieves the value of the selected item in the Listbox.
---@return number|nil selectedValue The selected item's value, or `nil` if none selected.
---@nodiscard
---@usage
---```
---local selectedValue = widget:GetSelectedValue()
---```
function Listbox:GetSelectedValue() end

---Retrieves the current top scroll position of the Listbox.
---@return number top The top scroll position. (default: `0`)
---@nodiscard
---@usage
---```
---local top = widget:GetTop()
---```
function Listbox:GetTop() end

---Retrieves the number of currently visible items in the Listbox.
---@return number viewItemCount The number of visible items. (default: `50`)
---@nodiscard
---@usage
---```
---widget:GetViewItemCount()
---```
function Listbox:GetViewItemCount() end

---Retrieves information about currently viewable items in the Listbox.
---@return ItemsInfo[]|EmptyTable viewItemsInfo The viewable items' information.
---@nodiscard
---@usage
---```
---local viewItemsInfo = widget:GetViewItemsInfo()
---```
---@see ItemsInfo
function Listbox:GetViewItemsInfo() end

---Initializes the selection to the specified index in the Listbox.
---@param index number The index to select. (min: `0`)
---@usage
---```
---widget:InitializeSelect(0)
---```
function Listbox:InitializeSelect(index) end

---Checks if the item at the specified index is opened in the Listbox.
---@param index number The item index. (min: `1`)
---@return boolean itemOpened `true` if the item is opened, `false` otherwise.
---@nodiscard
---@usage
---```
---local itemOpened = widget:IsItemOpened(1)
---```
function Listbox:IsItemOpened(index) end

---Retrieves the total number of items in the Listbox.
---@return number itemCount The total item count. (default: `0`)
---@nodiscard
---@usage
---```
---local itemCount = widget:ItemCount()
---```
function Listbox:ItemCount() end

---Scrolls the Listbox down by one step.
---@usage
---```
---widget:ScrollDown()
---```
function Listbox:ScrollDown() end

---Scrolls the Listbox up by one step.
---@usage
---```
---widget:ScrollUp()
---```
function Listbox:ScrollUp() end

---Selects the item at the specified index in the Listbox.
---@param index number The index to select. (min: `0`)
---@usage
---```
---widget:Select(0)
---```
function Listbox:Select(index) end

---Selects an item by its text in the Listbox.
---@param text string The text of the item to select.
---@usage
---```
---widget:SelectWithText("1000 Credits")
---```
function Listbox:SelectWithText(text) end

---Selects an item by its value in the Listbox.
---@param value number The value of the item to select.
---@usage
---```
---widget:SelectWithValue(5)
---```
function Listbox:SelectWithValue(value) end

---Sets the border line width for the Listbox. Requires `SetLineColor` to be set.
---@param line number The border line width.
---@usage
---```
---widget:SetBorder(5)
---```
function Listbox:SetBorder(line) end

---Sets the default color for items in the Listbox.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
---@usage
---```
---widget:SetDefaultItemColor(0, 0, 0, 1)
---```
function Listbox:SetDefaultItemColor(r, g, b, a) end

---Sets the texture coordinates for default items in the Listbox. Requires
---`Listbox:SetListItemStateTexture`.
---@param x number The x-coordinate.
---@param y number The y-coordinate.
---@param cx number The width.
---@param cy number The height.
---@usage
---```
---widget:SetDefaultItemCoord(477, 235, 200, 21)
---```
function Listbox:SetDefaultItemCoord(x, y, cx, cy) end

---Sets the default text color for items in the Listbox.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
---@usage
---```
---widget:SetDefaultItemTextColor(1, 0, 0, 1)
---```
function Listbox:SetDefaultItemTextColor(r, g, b, a) end

---Sets the text color for disabled items in the Listbox.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
---@usage
---```
---widget:SetDisableItemTextColor(100, 100, 100, 1)
---```
function Listbox:SetDisableItemTextColor(r, g, b, a) end

---@TODO: Confirm if fold sets initial state (e.g., collapsed/expanded).
---Sets the fold state of the Listbox.
---@param fold boolean `true` to fold, `false` to unfold.
---@usage
---```
---widget:SetFold(true)
---```
function Listbox:SetFold(fold) end

---Sets the inset for the Listbox.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```
---widget:SetInset(10, 10, 10, 10)
---```
function Listbox:SetInset(left, top, right, bottom) end

---Sets an item at the specified index in the Listbox.
---@param idx number The item index. (min: `0`)
---@param name string The item name.
---@param value number The item value.
---@param r? number The red color component. (min: `0`, max: `1`)
---@param g? number The green color component. (min: `0`, max: `1`)
---@param b? number The blue color component. (min: `0`, max: `1`)
---@param a? number The alpha component. (min: `0`, max: `1`)
---@usage
---```
---widget:SetItem(0, "test", 1, 1, 0, 0, 1)
---```
function Listbox:SetItem(idx, name, value, r, g, b, a) end

---Sets the default texture info for items in the Listbox. Requires
---`Listbox:SetListItemStateTexture`.
---@param infoKey string The texture info key.
---@param colorKey? string The color key for the texture.
---@usage
---```
---widget:SetItemDefaultTextureInfo("sub_tab_df", "default")
---```
function Listbox:SetItemDefaultTextureInfo(infoKey, colorKey) end

---Sets the texture info for overed items in the Listbox. Requires
---`Listbox:SetListItemStateTexture`.
---@param infoKey string The texture info key.
---@param colorKey? string The color key for the texture.
---@usage
---```
---widget:SetItemOveredTextureInfo("sub_tab_ov", "default")
---```
function Listbox:SetItemOveredTextureInfo(infoKey, colorKey) end

---Sets the texture info for selected items in the Listbox. Requires
---`Listbox:SetListItemStateTexture`.
---@param infoKey string The texture info key.
---@param colorKey? string The color key for the texture.
---@usage
---```
---widget:SetItemSelectedTextureInfo("sub_tab_se", "default")
---```
function Listbox:SetItemSelectedTextureInfo(infoKey, colorKey) end

---Sets a collection of item trees for the Listbox.
---@param treeTable ItemTree[] The array of item tree data.
---@return ItemTreeInfos itemInfos The item tree information.
---@usage
---```
---local itemInfos = widget:SetItemTrees({
---  { text = "Item 1" },
---  { text = "Item 2" },
---})
---```
---@see ItemTree
function Listbox:SetItemTrees(treeTable) end

---Sets the color for the lines in the Listbox.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
---@usage
---```
---widget:SetLineColor(1, 0, 0, 1)
---```
function Listbox:SetLineColor(r, g, b, a) end

---Sets the texture file for item states in the Listbox.
---@param texFile TEXTURE_PATH The texture file path.
---@usage
---```
---widget:SetListItemStateTexture(TEXTURE_PATH.DEFAULT)
---```
---@see TEXTURE_PATH
function Listbox:SetListItemStateTexture(texFile) end

---Sets the texture inset for item states in the Listbox.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```
---widget:SetListItemStateTextureInset(0, 0, 0, 0)
---```
function Listbox:SetListItemStateTextureInset(left, top, right, bottom) end

---Sets the color for overed items in the Listbox.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
---@usage
---```
---widget:SetOveredItemColor(0, 0, 1, 1)
---```
function Listbox:SetOveredItemColor(r, g, b, a) end

---Sets the texture coordinates for overed items in the Listbox. Requires
---`Listbox:SetListItemStateTexture`.
---@param x number The x-coordinate.
---@param y number The y-coordinate.
---@param cx number The width.
---@param cy number The height.
---@usage
---```
---widget:SetOveredItemCoord(477, 235, 200, 21)
---```
function Listbox:SetOveredItemCoord(x, y, cx, cy) end

---Sets the text color for overed items in the Listbox.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
---@usage
---```
---widget:SetOveredItemTextColor(1, 1, 1, 1)
---```
function Listbox:SetOveredItemTextColor(r, g, b, a) end

---Sets the color for selected items in the Listbox.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
---@usage
---```
---widget:SetSelectedItemColor(1, 1, 1, 1)
---```
function Listbox:SetSelectedItemColor(r, g, b, a) end

---Sets the texture coordinates for selected items in the Listbox. Requires
---`Listbox:SetListItemStateTexture`.
---@param x number The x-coordinate.
---@param y number The y-coordinate.
---@param cx number The width.
---@param cy number The height.
---@usage
---```
---widget:SetSelectedItemCoord(477, 235, 200, 21)
---```
function Listbox:SetSelectedItemCoord(x, y, cx, cy) end

---Sets the text color for selected items in the Listbox.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
---@usage
---```
---widget:SetSelectedItemTextColor(0, 0, 0, 1)
---```
function Listbox:SetSelectedItemTextColor(r, g, b, a) end

---@TODO: Clarify purpose of child parameter.
---Sets the offset for sub-text in the Listbox.
---@param x number The x-offset.
---@param y number The y-offset.
---@param child boolean Whether to apply to child items.
---@usage
---```
---widget:SetSubTextOffset(0, 0, true)
---```
function Listbox:SetSubTextOffset(x, y, child) end

---Sets the text length limit for items in the Listbox.
---@param limitTextLength number The maximum text length.
---@usage
---```
---widget:SetTextLimit(10)
---```
function Listbox:SetTextLimit(limitTextLength) end

---Sets the top scroll position of the Listbox.
---@param value number The top scroll position.
---@usage
---```
---widget:SetTop(1)
---```
function Listbox:SetTop(value) end

---Sets the indentation for tree-type items in the Listbox.
---@param use boolean `true` to enable indentation, `false` to disable.
---@param indentLeft number The left indentation.
---@param indentRight number The right indentation.
---@usage
---```
---widget:SetTreeTypeIndent(true, 20, 20)
---```
function Listbox:SetTreeTypeIndent(use, indentLeft, indentRight) end

---@TODO: Clarify tooltip behavior and usage.
---Enables or disables automatic tooltip display in the Listbox.
---@param show boolean `true` to show tooltips, `false` to hide.
---@usage
---```
---widget:ShowAutoTooltip(true)
---```
function Listbox:ShowAutoTooltip(show) end

---@TODO: Clarify tooltip behavior and usage.
---Enables or disables tooltip display in the Listbox.
---@param show boolean `true` to show tooltips, `false` to hide.
---@usage
---```
---widget:ShowTooltip(true)
---```
function Listbox:ShowTooltip(show) end

---@TODO: Clarify purpose of turning off over parent.
---Disables over-parent behavior in the Listbox.
---@usage
---```
---widget:TurnoffOverParent()
---```
function Listbox:TurnoffOverParent() end

---@TODO: Complete the supported fields for ItemsInfo.
---Updates an item in the Listbox with the specified data.
---@param datas ItemsInfo The item information to update.
---@usage
---```
---widget:UpdateItem({
---  childCount = 0,
---  indexing = { 0 },
---  opened = false,
---  text = "Archerage.to",
---  value = 0
---})
---```
---@see ItemsInfo
function Listbox:UpdateItem(datas) end

---@TODO: Confirm default state for child style.
---Enables or disables child style in the Listbox.
---@param use boolean `true` to enable child style, `false` to disable.
---@usage
---```
---widget:UseChildStyle(true)
---```
function Listbox:UseChildStyle(use) end
