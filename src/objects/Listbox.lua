---@meta _

---objects/Listbox
---@class Listbox: Widget
---@field childStyle TextStyle created by Listbox:UseChildStyle(true)
---@field childStyleSub TextStyle created by Listbox:UseChildStyle(true)
---@field itemStyle TextStyle
---@field itemStyleSub TextStyle
local Listbox = {}
---@class listbox: Listbox

---Appends an item to the Listbox with the specified key, value, and optional
---color.
---@param key string The key for the item.
---@param value number The value for the item.
---@param r? number The red color component. (min: `0`, max: `1`)
---@param g? number The green color component. (min: `0`, max: `1`)
---@param b? number The blue color component. (min: `0`, max: `1`)
---@param a? number The alpha component. (min: `0`, max: `1`)
function Listbox:AppendItem(key, value, r, g, b, a) end

---Appends an item to the Listbox using a table of item data.
---@param data ItemTree The item data table.
---@see ItemTree
function Listbox:AppendItemByTable(data) end

---Uunselects all items in the Listbox.
function Listbox:ClearAllSelected() end

---Clears all items from the Listbox.
function Listbox:ClearItem() end

---Creates a closed image drawable for the Listbox.
---@param nameTex string The texture path for the closed image.
---@return ImageDrawable closedImageDrawable The closed image drawable, empty table if the object `ImageDrawable` hasn't been imported, or `nil` if not created.
---@nodiscard
---@see ImageDrawable
function Listbox:CreateClosedImageDrawable(nameTex) end

---Creates an opened image drawable for the Listbox.
---@param nameTex string The texture path for the opened image.
---@return ImageDrawable openedImageDrawable The opened image drawable, empty table if the object `ImageDrawable` hasn't been imported, or `nil` if not created.
---@nodiscard
---@see ImageDrawable
function Listbox:CreateOpenedImageDrawable(nameTex) end

---Creates a separator image drawable for the Listbox.
---@param nameTex string The texture path for the separator image.
---@return ImageDrawable separatorImageDrawable The separator image drawable, empty table if the object `ImageDrawable` hasn't been imported, or `nil` if not created.
---@nodiscard
---@see ImageDrawable
function Listbox:CreateSeparatorImageDrawable(nameTex) end

---Enables or disables toggling of item selection in the Listbox.
---@param enable boolean `true` to enable selection toggling, `false` to disable. (default: `false`)
function Listbox:EnableSelectionToggle(enable) end

---Enables or disables selecting items with no value in the Listbox.
---@param enable boolean `true` to enable selecting no-value items, `false` to disable. (default: `true`)
function Listbox:EnableSelectNoValue(enable) end

---Enables or disables selecting parent items in the Listbox.
---@param enable boolean `true` to enable parent selection, `false` to disable.
function Listbox:EnableSelectParent(enable) end

---Retrieves the inset values for the Listbox.
---@return number left The left inset. (default: `0`)
---@return number top The top inset. (default: `0`)
---@return number right The right inset. (default: `0`)
---@return number bottom The bottom inset. (default: `0`)
---@nodiscard
function Listbox:GetInset() end

---Retrieves the maximum scroll position from the top of the Listbox.
---@return number maxTop The maximum top scroll position. (default: `0`)
---@nodiscard
function Listbox:GetMaxTop() end

---Retrieves the number of opened items in the Listbox.
---@return number openedItemCount The number of opened items. (default: `0`)
---@nodiscard
function Listbox:GetOpenedItemCount() end

---Retrieves the index of the currently selected item in the Listbox.
---@return number selectedIndex The selected item index. (min: `0`, default: `-1`)
---@nodiscard
function Listbox:GetSelectedIndex() end

---Retrieves the selected item index along with its depth in the Listbox.
---@return number[] selectedIndexWithDepth The selected index with depth information.
---@nodiscard
function Listbox:GetSelectedIndexWithDepth() end

---Retrieves the text of the selected item in the Listbox.
---@return string|nil selectedText The selected item's text, or `nil` if none selected.
---@nodiscard
function Listbox:GetSelectedText() end

---Retrieves the value of the selected item in the Listbox.
---@return number|nil selectedValue The selected item's value, or `nil` if none selected.
---@nodiscard
function Listbox:GetSelectedValue() end

---Retrieves the current top scroll position of the Listbox.
---@return number top The top scroll position. (default: `0`)
---@nodiscard
function Listbox:GetTop() end

---Retrieves the number of currently visible items in the Listbox.
---@return number viewItemCount The number of visible items. (default: `50`)
---@nodiscard
function Listbox:GetViewItemCount() end

---Retrieves information about currently viewable items in the Listbox.
---@return ItemsInfo[] viewItemsInfo The viewable items' information, or an empty table.
---@nodiscard
---@see ItemsInfo
function Listbox:GetViewItemsInfo() end

---Initializes the selection to the specified index in the Listbox.
---@param index number The index to select. (min: `0`)
function Listbox:InitializeSelect(index) end

---Checks if the item at the specified index is opened in the Listbox.
---@param index number The item index. (min: `1`)
---@return boolean itemOpened `true` if the item is opened, `false` otherwise.
---@nodiscard
function Listbox:IsItemOpened(index) end

---Retrieves the total number of items in the Listbox.
---@return number itemCount The total item count. (default: `0`)
---@nodiscard
function Listbox:ItemCount() end

---Scrolls the Listbox down by one step.
function Listbox:ScrollDown() end

---Scrolls the Listbox up by one step.
function Listbox:ScrollUp() end

---Selects the item at the specified index in the Listbox.
---@param index number The index to select. (min: `0`)
function Listbox:Select(index) end

---Selects an item by its text in the Listbox.
---@param text string The text of the item to select.
function Listbox:SelectWithText(text) end

---Selects an item by its value in the Listbox.
---@param value number The value of the item to select.
function Listbox:SelectWithValue(value) end

---Sets the border line width for the Listbox. Requires `SetLineColor` to be
---set.
---@param line number The border line width.
function Listbox:SetBorder(line) end

---Sets the default color for items in the Listbox.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
function Listbox:SetDefaultItemColor(r, g, b, a) end

---Sets the texture coordinates for default items in the Listbox. Requires
---`Listbox:SetListItemStateTexture`.
---@param x number The x-coordinate.
---@param y number The y-coordinate.
---@param cx number The width.
---@param cy number The height.
function Listbox:SetDefaultItemCoord(x, y, cx, cy) end

---Sets the default text color for items in the Listbox.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
function Listbox:SetDefaultItemTextColor(r, g, b, a) end

---Sets the text color for disabled items in the Listbox.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
function Listbox:SetDisableItemTextColor(r, g, b, a) end

---Enables or disables folding items in the Listbox.
---@param fold boolean `true` to enable folding, `false` to disable folding. (default: `true`)
function Listbox:SetFold(fold) end

---Sets the inset for the Listbox.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
function Listbox:SetInset(left, top, right, bottom) end

---Sets an item at the specified index in the Listbox.
---@param idx number The item index. (min: `0`)
---@param name string The item name.
---@param value number The item value.
---@param r? number The optional red color component. (min: `0`, max: `1`)
---@param g? number The optional green color component. (min: `0`, max: `1`)
---@param b? number The optional blue color component. (min: `0`, max: `1`)
---@param a? number The optional alpha component. (min: `0`, max: `1`)
function Listbox:SetItem(idx, name, value, r, g, b, a) end

---Sets the default texture info for items in the Listbox. Requires
---`Listbox:SetListItemStateTexture`.
---@param infoKey string The texture info key.
---@param colorKey? string The optional color key for the texture.
function Listbox:SetItemDefaultTextureInfo(infoKey, colorKey) end

---Sets the texture info for overed items in the Listbox. Requires
---`Listbox:SetListItemStateTexture`.
---@param infoKey string The texture info key.
---@param colorKey? string The optional color key for the texture.
function Listbox:SetItemOveredTextureInfo(infoKey, colorKey) end

---Sets the texture info for selected items in the Listbox. Requires
---`Listbox:SetListItemStateTexture`.
---@param infoKey string The texture info key.
---@param colorKey? string The optional color key for the texture.
function Listbox:SetItemSelectedTextureInfo(infoKey, colorKey) end

---Sets a collection of item trees for the Listbox.
---@param treeTable ItemTree[] The array of item tree data.
---@return ItemTreeInfos itemInfos The item tree information.
---@see ItemTree
function Listbox:SetItemTrees(treeTable) end

---Sets the color for the lines in the Listbox.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
function Listbox:SetLineColor(r, g, b, a) end

---Sets the texture file for item states in the Listbox.
---@param texFile string The texture file path.
function Listbox:SetListItemStateTexture(texFile) end

---Sets the texture inset for item states in the Listbox.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
function Listbox:SetListItemStateTextureInset(left, top, right, bottom) end

---Sets the color for overed items in the Listbox.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
function Listbox:SetOveredItemColor(r, g, b, a) end

---Sets the texture coordinates for overed items in the Listbox. Requires
---`Listbox:SetListItemStateTexture`.
---@param x number The x-coordinate.
---@param y number The y-coordinate.
---@param cx number The width.
---@param cy number The height.
function Listbox:SetOveredItemCoord(x, y, cx, cy) end

---Sets the text color for overed items in the Listbox.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
function Listbox:SetOveredItemTextColor(r, g, b, a) end

---Sets the color for selected items in the Listbox.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
function Listbox:SetSelectedItemColor(r, g, b, a) end

---Sets the texture coordinates for selected items in the Listbox. Requires
---`Listbox:SetListItemStateTexture`.
---@param x number The x-coordinate.
---@param y number The y-coordinate.
---@param cx number The width.
---@param cy number The height.
function Listbox:SetSelectedItemCoord(x, y, cx, cy) end

---Sets the text color for selected items in the Listbox.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
function Listbox:SetSelectedItemTextColor(r, g, b, a) end

---Sets the offset for sub-text in the Listbox.
---@param x number The x-offset.
---@param y number The y-offset.
---@param child boolean Whether to apply to child items.
function Listbox:SetSubTextOffset(x, y, child) end

---Sets the text length limit for future items added in the Listbox.
---@param limitTextLength number The maximum text length.
function Listbox:SetTextLimit(limitTextLength) end

---Sets the top scroll position of the Listbox.
---@param value number The top scroll position.
function Listbox:SetTop(value) end

---Sets the indentation for tree-type items in the Listbox.
---@param use boolean `true` to enable indentation, `false` to disable. (default: `true`)
---@param indentLeft number The left indentation.  (default: `13`)
---@param indentRight number The right indentation.  (default: `13`)
function Listbox:SetTreeTypeIndent(use, indentLeft, indentRight) end

---Enables or disables the `"OnTooltip"` handler action for Listbox. Do not use
---in conjunction with `Listbox:ShowTooltip`.
---@param show boolean `true` to show tooltips, `false` to hide.
function Listbox:ShowAutoTooltip(show) end

---Enables or disables the `"OnTooltip"` handler action for Listbox. Do not use
---in conjunction with `Listbox:ShowAutoTooltip`.
---@param show boolean `true` to show tooltips, `false` to hide.
function Listbox:ShowTooltip(show) end

---Disables over behavior for parent items in the Listbox.
function Listbox:TurnoffOverParent() end

---Updates an item in the Listbox with the specified data.
---@param datas ItemData The item data to update.
---@see ItemData
function Listbox:UpdateItem(datas) end

---Enables or disables the `childStyle` and `childStyleSub` style in the Listbox.
---@param use boolean `true` to enable child style, `false` to disable. (default: `false`)
function Listbox:UseChildStyle(use) end
