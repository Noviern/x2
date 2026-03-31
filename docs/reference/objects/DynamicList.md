# DynamicList
## Aliases
**MainDataFunc**

fun(subItem: EmptyWidget, mainKey: number, isOpen: boolean, frameBg: Drawablebase, subListSize: number, isClicked: boolean)



**MainLayoutFunc**

fun(subItem: EmptyWidget, index: number)



**SubDataFunc**

fun(subItem: EmptyWidget, subItemInfo: table, isClicked: boolean)



**SubLayoutFunc**

fun(subItem: EmptyWidget, index: number)



## Classes
### Class: DynamicList
Extends [Widget](../types/Widget.md#class-widget)

> [DynamicList](../types/DynamicList.md#class-dynamiclist)
> 
> A `DynamicList` widget displays and manages hierarchical, expandable list
> data. Supports main items with nested sub-items, dynamic insertion and
> removal, selection tracking, scrolling, and view updates. Provides a widget
> pooling system for efficient reuse, customizable layout and data callbacks
> for main and sub items, and utilities for toggling, opening, and navigating
> list entries programmatically.
> 
> **Dependencies**:
>  - [EmptyWidget](../types/EmptyWidget.md#class-emptywidget) used for the `content` field.
> 
#### Field: content
```lua
DynamicListContent
```
> Container holding anchors and list widgets.

#### Method: OpenBySubItemInfo
```lua
(method) DynamicList:OpenBySubItemInfo(mainKey: number, depth: number, key: number)
```
> Opens a sub-item in the DynamicList based on its information.
> 
> @*param* `mainKey` — The main key identifier.
> 
> @*param* `depth` — The depth level of the sub-item.
> 
> @*param* `key` — The key of the sub-item.

#### Method: PushData
```lua
(method) DynamicList:PushData(mainKey: number, subDatas: table)
```
> Pushes data into the DynamicList.
> 
> @*param* `mainKey` — The main key identifier.
> 
> @*param* `subDatas` — The sub-data table.

#### Method: MoveIndex
```lua
(method) DynamicList:MoveIndex(index: number, anchorHeight: number, open: boolean)
```
> Moves to the specified index in the DynamicList with anchor height.
> 
> @*param* `index` — The index to move to.
> 
> @*param* `anchorHeight` — The anchor height for positioning.
> 
> @*param* `open` — `true` to open the item, `false` to close.

#### Method: LoadItemList
```lua
(method) DynamicList:LoadItemList()
```
> Loads the item list for the DynamicList.

#### Method: MoveHeight
```lua
(method) DynamicList:MoveHeight(height: number)
```
> Moves the DynamicList view by the specified height.
> 
> @*param* `height` — The height to move the view.

#### Method: IsSelectedItem
```lua
(method) DynamicList:IsSelectedItem(key: number, depth: number)
  -> selected: boolean
```
> Checks if the specified item is selected in the DynamicList.
> 
> @*param* `key` — The key of the item.
> 
> @*param* `depth` — The depth of the item.
> 
> @*return* `selected` — `true` if the item is selected, `false` otherwise.

#### Method: SaveItemList
```lua
(method) DynamicList:SaveItemList()
```
> Saves the item list for the DynamicList.

#### Method: SetSelectedItemInfo
```lua
(method) DynamicList:SetSelectedItemInfo(key: number, depth: number)
```
> Sets the selected item information in the DynamicList.
> 
> @*param* `key` — The key of the item to select.
> 
> @*param* `depth` — The depth of the item to select.

#### Method: UpdateData
```lua
(method) DynamicList:UpdateData(mainKey: number, subDatas: table)
```
> Updates data in the DynamicList for the specified main key.
> 
> @*param* `mainKey` — The main key identifier.
> 
> @*param* `subDatas` — The updated sub-data table.

#### Method: SetGaps
```lua
(method) DynamicList:SetGaps(mainGap: number, subListGap: number)
```
> Sets the gaps between main and sub-list items in the DynamicList.
> 
> @*param* `mainGap` — The gap between main items.
> 
> @*param* `subListGap` — The gap between sub-list items.

#### Method: ToggleSubItem
```lua
(method) DynamicList:ToggleSubItem(mainKey: number, depth: number, depthKey: number)
```
> Toggles the state of a sub-item in the DynamicList.
> 
> @*param* `mainKey` — The main key identifier.
> 
> @*param* `depth` — The depth level of the sub-item.
> 
> @*param* `depthKey` — The depth key identifier.

#### Method: Toggle
```lua
(method) DynamicList:Toggle(index: number)
```
> Toggles the state of the item at the specified index in the DynamicList.
> 
> @*param* `index` — The index of the item to toggle.

#### Method: ToggleByMainKey
```lua
(method) DynamicList:ToggleByMainKey(mainKey: number)
```
> Toggles the state of the item with the specified main key in the DynamicList.
> 
> @*param* `mainKey` — The main key identifier.

#### Method: UpdateView
```lua
(method) DynamicList:UpdateView()
```
> Updates the view of the DynamicList.

#### Method: InsertSubItemInfo
```lua
(method) DynamicList:InsertSubItemInfo(mainKey: number, depth: number, depthKey: number, key: number)
```
> Inserts sub-item information into the DynamicList.
> 
> @*param* `mainKey` — The main key identifier.
> 
> @*param* `depth` — The depth level of the sub-item.
> 
> @*param* `depthKey` — The depth key identifier.
> 
> @*param* `key` — The key of the sub-item.

#### Method: InitHeight
```lua
(method) DynamicList:InitHeight(viewHeight: number, mainHeight: number, subHeight: number)
```
> Initializes height settings for the DynamicList.
> 
> @*param* `viewHeight` — The view height.
> 
> @*param* `mainHeight` — The main item height.
> 
> @*param* `subHeight` — The sub-item height.
> 
> ```lua
> local viewRowCount   = 3
> local mainItemHeight = 73
> local viewHeight     = mainItemHeight * viewRowCount
> local subItemHeight  = 29
> widget:InitHeight(viewHeight, mainItemHeight, subItemHeight)
> ```

#### Method: EraseSubItemInfo
```lua
(method) DynamicList:EraseSubItemInfo(mainKey: number, depth: number, depthKey: number, key: number)
```
> Erases sub-item information from the DynamicList.
> 
> @*param* `mainKey` — The main key identifier.
> 
> @*param* `depth` — The depth level of the sub-item.
> 
> @*param* `depthKey` — The depth key identifier.
> 
> @*param* `key` — The key of the sub-item to erase.

#### Method: GetCurrentHeight
```lua
(method) DynamicList:GetCurrentHeight()
  -> currentHeight: number
```
> Retrieves the current height of the DynamicList.
> 
> @*return* `currentHeight` — The current height. (default: `0`)

#### Method: EraseData
```lua
(method) DynamicList:EraseData(index: number)
```
> Erases data at the specified index from the DynamicList.
> 
> @*param* `index` — The index of the data to erase.

#### Method: CreateOveredImage
```lua
(method) DynamicList:CreateOveredImage(layerStr: "artwork"|"background"|"overlay"|"overoverlay")
  -> overedImage: NinePartDrawable
```
> Creates an overed image for the DynamicList with the specified layer.
> 
> @*param* `layerStr` — The layer string for the overed image.
> 
> @*return* `overedImage` — The created overed image.
> 
> ```lua
> -- Drawables with layers of the same level and parent can overlap based on focus.
> layerStr:
>     | "background" -- Layer 1
>     | "artwork" -- Layer 2
>     | "overlay" -- Layer 3
>     | "overoverlay" -- Layer 4
> ```
> 
> See: [NinePartDrawable](../objects/NinePartDrawable.md#class-ninepartdrawable)

#### Method: EnableChildTouch
```lua
(method) DynamicList:EnableChildTouch(isEnable: boolean)
```
> Enables or disables touch interaction for child elements in the DynamicList.
> 
> @*param* `isEnable` — `true` to enable child touch, `false` to disable. (default: `false`)

#### Method: InsertData
```lua
(method) DynamicList:InsertData(index: number, mainKey: number, subDatas: table)
```
> Inserts data into the DynamicList at the specified index.
> 
> @*param* `index` — The index to insert data. (min: `1`)
> 
> @*param* `mainKey` — The main key identifier.
> 
> @*param* `subDatas` — The sub-data table.

#### Method: GetMainIndex
```lua
(method) DynamicList:GetMainIndex(mainKey: number)
  -> index: number|nil
```
> Retrieves the main index for the specified main key.
> 
> @*param* `mainKey` — The main key identifier.
> 
> @*return* `index` — The index of the main key identifier.

#### Method: GetScrollMaxValue
```lua
(method) DynamicList:GetScrollMaxValue()
  -> scrollMaxValue: number
```
> Retrieves the maximum scroll value for the DynamicList.
> 
> @*return* `scrollMaxValue` — The maximum scroll value.

#### Method: InitFunc
```lua
(method) DynamicList:InitFunc(mainLayout: fun(subItem: EmptyWidget, index: number), mainData: fun(subItem: EmptyWidget, mainKey: number, isOpen: boolean, frameBg: Drawablebase, subListSize: number, isClicked: boolean), subLayout: fun(subItem: EmptyWidget, index: number), subData: function)
```
> Initializes functions for main and sub layouts and data in the DynamicList.
> 
> @*param* `mainLayout` — The main layout function.
> 
> @*param* `mainData` — The main data function.
> 
> @*param* `subLayout` — The sub-layout function.
> 
> @*param* `subData` — The sub-data function.
> 
> ```lua
> local function mainLayoutFunc(subItem, index) end
> local function mainDataFunc(subItem, mainKey, isOpen, frameBg, subListSize, isClicked) end
> local function subLayoutFunc(subItem, index) end
> local function subDataFunc(subItem, subItemInfo, isClicked) end
> 
> widget:InitFunc(mainLayoutFunc, mainDataFunc, subLayoutFunc, subDataFunc)
> ```

#### Method: GetMainList
```lua
(method) DynamicList:GetMainList()
  -> list: table
```
> Retrieves the main list of the DynamicList from the highest to lowest index.
> 
> @*return* `list` — The main list data.

#### Method: InitCreateWidgetPool
```lua
(method) DynamicList:InitCreateWidgetPool()
```
> Initializes the widget pool for the DynamicList creating the main and sub fields.

#### Method: GetSelectedItemInfo
```lua
(method) DynamicList:GetSelectedItemInfo()
  -> key: number
  2. depth: number
```
> Retrieves information about the currently selected item.
> 
> @*return* `key` — The key of the selected item. (default: `-1`)
> 
> @*return* `depth` — The depth of the selected item. (default: `0`)

#### Method: InitBgType
```lua
(method) DynamicList:InitBgType(bgDrawType: `7`|`9`|`UOT_IMAGE_DRAWABLE`|`UOT_NINE_PART_DRAWABLE`)
```
> Initializes the background draw type for the `frameBg` of the `mainData` function for the `InitFunc` in the DynamicList.
> 
> @*param* `bgDrawType` — The background draw type.
> 
> ```lua
> -- api/Addon
> bgDrawType:
>     | `7` -- UOT_COLOR_DRAWABLE We dont have access to this global yet but it does exist in the codebase.
>     | `UOT_IMAGE_DRAWABLE`
>     | `UOT_NINE_PART_DRAWABLE`
>     | `9` -- UOT_THREE_PART_DRAWABLE We dont have access to this global yet but it does exist in the codebase.
> ```

#### Method: ClearData
```lua
(method) DynamicList:ClearData()
```
> Clears all data from the DynamicList.

### Class: DynamicListAnchor
Extends [EmptyWidget](../types/EmptyWidget.md#class-emptywidget)

> objects/DynamicList
#### Field: main
```lua
EmptyWidget[]
```
> `DynamicList:InitCreateWidgetPool()` is required for this to exist.

#### Field: sub
```lua
EmptyWidget[]
```
> `DynamicList:InitCreateWidgetPool()` is required for this to exist.

### Class: DynamicListContent
Extends [EmptyWidget](../types/EmptyWidget.md#class-emptywidget)

> objects/DynamicList
#### Field: anchor
```lua
DynamicListAnchor
```
> objects/DynamicList

