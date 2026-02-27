# Listbox
## Classes
### Class: Listbox
Extends [Widget](../types/Widget.md#class-widget)

> [Listbox](../types/Listbox.md#class-listbox)
> 
> A `Listbox` widget is scrollable and can display items with optional
> hierarchical structure (tree items), support for selection, folding, and
> custom styles. Items can have custom colors, text, and textures, and the
> list supports scrolling, insets, and tooltips.
> 
> **Dependencies**:
>  - [TextStyle](../types/TextStyle.md#class-textstyle) used for the `itemStyle`, `itemStyleSub`, `childStyle`, and `childStyleSub` fields.
>  - [ImageDrawable](../types/ImageDrawable.md#class-imagedrawable) used for the methods `CreateClosedImageDrawable`, `CreateOpenedImageDrawable`, and `CreateSeparatorImageDrawable`.
> 
#### Field: itemStyleSub
```lua
TextStyle
```
> Secondary style applied to items in the list (for alternate states or sub-items).

#### Field: childStyle
```lua
TextStyle
```
> Style applied to child items when `Listbox:UseChildStyle(true)` is enabled.

#### Field: itemStyle
```lua
TextStyle
```
> Default style applied to items in the list.

#### Field: childStyleSub
```lua
TextStyle
```
> Secondary style for child items when `Listbox:UseChildStyle(true)` is enabled.

#### Method: SetItemTrees
```lua
(method) Listbox:SetItemTrees(treeTable: ItemTree[])
  -> itemInfos: ItemTreeInfos
```
> Sets a collection of item trees for the Listbox.
> 
> @*param* `treeTable` — The array of item tree data.
> 
> @*return* `itemInfos` — The item tree information.
> 
> See: [ItemTree](../types/classes.md#class-itemtree)

#### Method: SetItemSelectedTextureInfo
```lua
(method) Listbox:SetItemSelectedTextureInfo(infoKey: string, colorKey?: string)
```
> Sets the texture info for selected items in the Listbox. Requires
> `Listbox:SetListItemStateTexture`.
> 
> @*param* `infoKey` — The texture info key.
> 
> @*param* `colorKey` — The optional color key for the texture.

#### Method: SetLineColor
```lua
(method) Listbox:SetLineColor(r: number, g: number, b: number, a: number)
```
> Sets the color for the lines in the Listbox.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`)
> 
> @*param* `a` — The alpha component. (min: `0`, max: `1`)

#### Method: SetListItemStateTextureInset
```lua
(method) Listbox:SetListItemStateTextureInset(left: number, top: number, right: number, bottom: number)
```
> Sets the texture inset for item states in the Listbox.
> 
> @*param* `left` — The left inset.
> 
> @*param* `top` — The top inset.
> 
> @*param* `right` — The right inset.
> 
> @*param* `bottom` — The bottom inset.

#### Method: SetListItemStateTexture
```lua
(method) Listbox:SetListItemStateTexture(texFile: string)
```
> Sets the texture file for item states in the Listbox.
> 
> @*param* `texFile` — The texture file path.

#### Method: SetOveredItemColor
```lua
(method) Listbox:SetOveredItemColor(r: number, g: number, b: number, a: number)
```
> Sets the color for overed items in the Listbox.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`)
> 
> @*param* `a` — The alpha component. (min: `0`, max: `1`)

#### Method: SetItemOveredTextureInfo
```lua
(method) Listbox:SetItemOveredTextureInfo(infoKey: string, colorKey?: string)
```
> Sets the texture info for overed items in the Listbox. Requires
> `Listbox:SetListItemStateTexture`.
> 
> @*param* `infoKey` — The texture info key.
> 
> @*param* `colorKey` — The optional color key for the texture.

#### Method: SetItem
```lua
(method) Listbox:SetItem(idx: number, name: string, value: number, r?: number, g?: number, b?: number, a?: number)
```
> Sets an item at the specified index in the Listbox.
> 
> @*param* `idx` — The item index. (min: `0`)
> 
> @*param* `name` — The item name.
> 
> @*param* `value` — The item value.
> 
> @*param* `r` — The optional red color component. (min: `0`, max: `1`)
> 
> @*param* `g` — The optional green color component. (min: `0`, max: `1`)
> 
> @*param* `b` — The optional blue color component. (min: `0`, max: `1`)
> 
> @*param* `a` — The optional alpha component. (min: `0`, max: `1`)

#### Method: SetDisableItemTextColor
```lua
(method) Listbox:SetDisableItemTextColor(r: number, g: number, b: number, a: number)
```
> Sets the text color for disabled items in the Listbox.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`)
> 
> @*param* `a` — The alpha component. (min: `0`, max: `1`)

#### Method: SetItemDefaultTextureInfo
```lua
(method) Listbox:SetItemDefaultTextureInfo(infoKey: string, colorKey?: string)
```
> Sets the default texture info for items in the Listbox. Requires
> `Listbox:SetListItemStateTexture`.
> 
> @*param* `infoKey` — The texture info key.
> 
> @*param* `colorKey` — The optional color key for the texture.

#### Method: SetFold
```lua
(method) Listbox:SetFold(fold: boolean)
```
> Enables or disables folding items in the Listbox.
> 
> @*param* `fold` — `true` to enable folding, `false` to disable folding. (default: `true`)

#### Method: SetInset
```lua
(method) Listbox:SetInset(left: number, top: number, right: number, bottom: number)
```
> Sets the inset for the Listbox.
> 
> @*param* `left` — The left inset.
> 
> @*param* `top` — The top inset.
> 
> @*param* `right` — The right inset.
> 
> @*param* `bottom` — The bottom inset.

#### Method: UseChildStyle
```lua
(method) Listbox:UseChildStyle(use: boolean)
```
> Enables or disables the `childStyle` and `childStyleSub` style in the Listbox.
> 
> @*param* `use` — `true` to enable child style, `false` to disable. (default: `false`)

#### Method: SetOveredItemCoord
```lua
(method) Listbox:SetOveredItemCoord(x: number, y: number, cx: number, cy: number)
```
> Sets the texture coordinates for overed items in the Listbox. Requires
> `Listbox:SetListItemStateTexture`.
> 
> @*param* `x` — The x-coordinate.
> 
> @*param* `y` — The y-coordinate.
> 
> @*param* `cx` — The width.
> 
> @*param* `cy` — The height.

#### Method: SetSelectedItemColor
```lua
(method) Listbox:SetSelectedItemColor(r: number, g: number, b: number, a: number)
```
> Sets the color for selected items in the Listbox.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`)
> 
> @*param* `a` — The alpha component. (min: `0`, max: `1`)

#### Method: ShowTooltip
```lua
(method) Listbox:ShowTooltip(show: boolean)
```
> Enables or disables the `"OnTooltip"` handler action for Listbox. Do not use
> in conjunction with `Listbox:ShowAutoTooltip`.
> 
> @*param* `show` — `true` to show tooltips, `false` to hide.

#### Method: ShowAutoTooltip
```lua
(method) Listbox:ShowAutoTooltip(show: boolean)
```
> Enables or disables the `"OnTooltip"` handler action for Listbox. Do not use
> in conjunction with `Listbox:ShowTooltip`.
> 
> @*param* `show` — `true` to show tooltips, `false` to hide.

#### Method: TurnoffOverParent
```lua
(method) Listbox:TurnoffOverParent()
```
> Disables over behavior for parent items in the Listbox.

#### Method: UpdateItem
```lua
(method) Listbox:UpdateItem(datas: ItemData)
```
> Updates an item in the Listbox with the specified data.
> 
> @*param* `datas` — The item data to update.
> 
> See: [ItemData](../types/classes.md#class-itemdata)

#### Method: SetDefaultItemTextColor
```lua
(method) Listbox:SetDefaultItemTextColor(r: number, g: number, b: number, a: number)
```
> Sets the default text color for items in the Listbox.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`)
> 
> @*param* `a` — The alpha component. (min: `0`, max: `1`)

#### Method: SetTreeTypeIndent
```lua
(method) Listbox:SetTreeTypeIndent(use: boolean, indentLeft: number, indentRight: number)
```
> Sets the indentation for tree-type items in the Listbox.
> 
> @*param* `use` — `true` to enable indentation, `false` to disable. (default: `true`)
> 
> @*param* `indentLeft` — The left indentation.  (default: `13`)
> 
> @*param* `indentRight` — The right indentation.  (default: `13`)

#### Method: SetTextLimit
```lua
(method) Listbox:SetTextLimit(limitTextLength: number)
```
> Sets the text length limit for future items added in the Listbox.
> 
> @*param* `limitTextLength` — The maximum text length.

#### Method: SetSelectedItemCoord
```lua
(method) Listbox:SetSelectedItemCoord(x: number, y: number, cx: number, cy: number)
```
> Sets the texture coordinates for selected items in the Listbox. Requires
> `Listbox:SetListItemStateTexture`.
> 
> @*param* `x` — The x-coordinate.
> 
> @*param* `y` — The y-coordinate.
> 
> @*param* `cx` — The width.
> 
> @*param* `cy` — The height.

#### Method: SetTop
```lua
(method) Listbox:SetTop(value: number)
```
> Sets the top scroll position of the Listbox.
> 
> @*param* `value` — The top scroll position.

#### Method: SetSelectedItemTextColor
```lua
(method) Listbox:SetSelectedItemTextColor(r: number, g: number, b: number, a: number)
```
> Sets the text color for selected items in the Listbox.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`)
> 
> @*param* `a` — The alpha component. (min: `0`, max: `1`)

#### Method: SetSubTextOffset
```lua
(method) Listbox:SetSubTextOffset(x: number, y: number, child: boolean)
```
> Sets the offset for sub-text in the Listbox.
> 
> @*param* `x` — The x-offset.
> 
> @*param* `y` — The y-offset.
> 
> @*param* `child` — Whether to apply to child items.

#### Method: SetOveredItemTextColor
```lua
(method) Listbox:SetOveredItemTextColor(r: number, g: number, b: number, a: number)
```
> Sets the text color for overed items in the Listbox.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`)
> 
> @*param* `a` — The alpha component. (min: `0`, max: `1`)

#### Method: SetDefaultItemCoord
```lua
(method) Listbox:SetDefaultItemCoord(x: number, y: number, cx: number, cy: number)
```
> Sets the texture coordinates for default items in the Listbox. Requires
> `Listbox:SetListItemStateTexture`.
> 
> @*param* `x` — The x-coordinate.
> 
> @*param* `y` — The y-coordinate.
> 
> @*param* `cx` — The width.
> 
> @*param* `cy` — The height.

#### Method: SetBorder
```lua
(method) Listbox:SetBorder(line: number)
```
> Sets the border line width for the Listbox. Requires `SetLineColor` to be
> set.
> 
> @*param* `line` — The border line width.

#### Method: EnableSelectionToggle
```lua
(method) Listbox:EnableSelectionToggle(enable: boolean)
```
> Enables or disables toggling of item selection in the Listbox.
> 
> @*param* `enable` — `true` to enable selection toggling, `false` to disable. (default: `false`)

#### Method: EnableSelectParent
```lua
(method) Listbox:EnableSelectParent(enable: boolean)
```
> Enables or disables selecting parent items in the Listbox.
> 
> @*param* `enable` — `true` to enable parent selection, `false` to disable.

#### Method: GetInset
```lua
(method) Listbox:GetInset()
  -> left: number
  2. top: number
  3. right: number
  4. bottom: number
```
> Retrieves the inset values for the Listbox.
> 
> @*return* `left` — The left inset. (default: `0`)
> 
> @*return* `top` — The top inset. (default: `0`)
> 
> @*return* `right` — The right inset. (default: `0`)
> 
> @*return* `bottom` — The bottom inset. (default: `0`)

#### Method: GetOpenedItemCount
```lua
(method) Listbox:GetOpenedItemCount()
  -> openedItemCount: number
```
> Retrieves the number of opened items in the Listbox.
> 
> @*return* `openedItemCount` — The number of opened items. (default: `0`)

#### Method: GetMaxTop
```lua
(method) Listbox:GetMaxTop()
  -> maxTop: number
```
> Retrieves the maximum scroll position from the top of the Listbox.
> 
> @*return* `maxTop` — The maximum top scroll position. (default: `0`)

#### Method: GetSelectedIndex
```lua
(method) Listbox:GetSelectedIndex()
  -> selectedIndex: number
```
> Retrieves the index of the currently selected item in the Listbox.
> 
> @*return* `selectedIndex` — The selected item index. (min: `0`, default: `-1`)

#### Method: EnableSelectNoValue
```lua
(method) Listbox:EnableSelectNoValue(enable: boolean)
```
> Enables or disables selecting items with no value in the Listbox.
> 
> @*param* `enable` — `true` to enable selecting no-value items, `false` to disable. (default: `true`)

#### Method: CreateOpenedImageDrawable
```lua
(method) Listbox:CreateOpenedImageDrawable(nameTex: string)
  -> openedImageDrawable: ImageDrawable
```
> Creates an opened image drawable for the Listbox.
> 
> @*param* `nameTex` — The texture path for the opened image.
> 
> @*return* `openedImageDrawable` — The opened image drawable, empty table if the object `ImageDrawable` hasn't been imported, or `nil` if not created.
> 
> See: [ImageDrawable](../objects/ImageDrawable.md#class-imagedrawable)

#### Method: AppendItemByTable
```lua
(method) Listbox:AppendItemByTable(data: ItemTree)
```
> Appends an item to the Listbox using a table of item data.
> 
> @*param* `data` — The item data table.
> 
> See: [ItemTree](../types/classes.md#class-itemtree)

#### Method: CreateSeparatorImageDrawable
```lua
(method) Listbox:CreateSeparatorImageDrawable(nameTex: string)
  -> separatorImageDrawable: ImageDrawable
```
> Creates a separator image drawable for the Listbox.
> 
> @*param* `nameTex` — The texture path for the separator image.
> 
> @*return* `separatorImageDrawable` — The separator image drawable, empty table if the object `ImageDrawable` hasn't been imported, or `nil` if not created.
> 
> See: [ImageDrawable](../objects/ImageDrawable.md#class-imagedrawable)

#### Method: ClearAllSelected
```lua
(method) Listbox:ClearAllSelected()
```
> Uunselects all items in the Listbox.

#### Method: CreateClosedImageDrawable
```lua
(method) Listbox:CreateClosedImageDrawable(nameTex: string)
  -> closedImageDrawable: ImageDrawable
```
> Creates a closed image drawable for the Listbox.
> 
> @*param* `nameTex` — The texture path for the closed image.
> 
> @*return* `closedImageDrawable` — The closed image drawable, empty table if the object `ImageDrawable` hasn't been imported, or `nil` if not created.
> 
> See: [ImageDrawable](../objects/ImageDrawable.md#class-imagedrawable)

#### Method: ClearItem
```lua
(method) Listbox:ClearItem()
```
> Clears all items from the Listbox.

#### Method: SetDefaultItemColor
```lua
(method) Listbox:SetDefaultItemColor(r: number, g: number, b: number, a: number)
```
> Sets the default color for items in the Listbox.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`)
> 
> @*param* `a` — The alpha component. (min: `0`, max: `1`)

#### Method: GetSelectedIndexWithDepth
```lua
(method) Listbox:GetSelectedIndexWithDepth()
  -> selectedIndexWithDepth: number[]
```
> Retrieves the selected item index along with its depth in the Listbox.
> 
> @*return* `selectedIndexWithDepth` — The selected index with depth information.

#### Method: GetSelectedValue
```lua
(method) Listbox:GetSelectedValue()
  -> selectedValue: number|nil
```
> Retrieves the value of the selected item in the Listbox.
> 
> @*return* `selectedValue` — The selected item's value, or `nil` if none selected.

#### Method: ScrollUp
```lua
(method) Listbox:ScrollUp()
```
> Scrolls the Listbox up by one step.

#### Method: ScrollDown
```lua
(method) Listbox:ScrollDown()
```
> Scrolls the Listbox down by one step.

#### Method: Select
```lua
(method) Listbox:Select(index: number)
```
> Selects the item at the specified index in the Listbox.
> 
> @*param* `index` — The index to select. (min: `0`)

#### Method: SelectWithValue
```lua
(method) Listbox:SelectWithValue(value: number)
```
> Selects an item by its value in the Listbox.
> 
> @*param* `value` — The value of the item to select.

#### Method: SelectWithText
```lua
(method) Listbox:SelectWithText(text: string)
```
> Selects an item by its text in the Listbox.
> 
> @*param* `text` — The text of the item to select.

#### Method: GetSelectedText
```lua
(method) Listbox:GetSelectedText()
  -> selectedText: string|nil
```
> Retrieves the text of the selected item in the Listbox.
> 
> @*return* `selectedText` — The selected item's text, or `nil` if none selected.

#### Method: ItemCount
```lua
(method) Listbox:ItemCount()
  -> itemCount: number
```
> Retrieves the total number of items in the Listbox.
> 
> @*return* `itemCount` — The total item count. (default: `0`)

#### Method: InitializeSelect
```lua
(method) Listbox:InitializeSelect(index: number)
```
> Initializes the selection to the specified index in the Listbox.
> 
> @*param* `index` — The index to select. (min: `0`)

#### Method: GetTop
```lua
(method) Listbox:GetTop()
  -> top: number
```
> Retrieves the current top scroll position of the Listbox.
> 
> @*return* `top` — The top scroll position. (default: `0`)

#### Method: IsItemOpened
```lua
(method) Listbox:IsItemOpened(index: number)
  -> itemOpened: boolean
```
> Checks if the item at the specified index is opened in the Listbox.
> 
> @*param* `index` — The item index. (min: `1`)
> 
> @*return* `itemOpened` — `true` if the item is opened, `false` otherwise.

#### Method: GetViewItemCount
```lua
(method) Listbox:GetViewItemCount()
  -> viewItemCount: number
```
> Retrieves the number of currently visible items in the Listbox.
> 
> @*return* `viewItemCount` — The number of visible items. (default: `50`)

#### Method: GetViewItemsInfo
```lua
(method) Listbox:GetViewItemsInfo()
  -> viewItemsInfo: ItemsInfo[]
```
> Retrieves information about currently viewable items in the Listbox.
> 
> @*return* `viewItemsInfo` — The viewable items' information, or an empty table.
> 
> See: [ItemsInfo](../types/classes.md#class-itemsinfo)

#### Method: AppendItem
```lua
(method) Listbox:AppendItem(key: string, value: number, r?: number, g?: number, b?: number, a?: number)
```
> Appends an item to the Listbox with the specified key, value, and optional
> color.
> 
> @*param* `key` — The key for the item.
> 
> @*param* `value` — The value for the item.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`)
> 
> @*param* `a` — The alpha component. (min: `0`, max: `1`)

