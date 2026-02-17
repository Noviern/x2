---@meta _

---objects/DynamicList
---@class DynamicListAnchor: EmptyWidget
---@field main EmptyWidget[] `DynamicList:InitCreateWidgetPool()` is required for this to exist.
---@field sub EmptyWidget[] `DynamicList:InitCreateWidgetPool()` is required for this to exist.

---objects/DynamicList
---@class DynamicListContent: EmptyWidget
---@field anchor DynamicListAnchor

---@TODO: get a working example of this widget.
---[DynamicList](lua://DynamicList)
---
---A `DynamicList` widget displays and manages hierarchical, expandable list
---data. Supports main items with nested sub-items, dynamic insertion and
---removal, selection tracking, scrolling, and view updates. Provides a widget
---pooling system for efficient reuse, customizable layout and data callbacks
---for main and sub items, and utilities for toggling, opening, and navigating
---list entries programmatically.
---
---**Dependencies**:
--- - [EmptyWidget](lua://EmptyWidget) used for the `content` field.
---
---@class DynamicList: Widget
---@field content DynamicListContent Container holding anchors and list widgets.
local DynamicList = {}

---Clears all data from the DynamicList.
function DynamicList:ClearData() end

---Creates an overed image for the DynamicList with the specified layer.
---@param layerStr DRAWABLE_NAME_LAYER The layer string for the overed image.
---@return NinePartDrawable overedImage The created overed image.
---@nodiscard
---@see NinePartDrawable
function DynamicList:CreateOveredImage(layerStr) end

---Enables or disables touch interaction for child elements in the DynamicList.
---@param isEnable boolean `true` to enable child touch, `false` to disable. (default: `false`)
function DynamicList:EnableChildTouch(isEnable) end

---Erases data at the specified index from the DynamicList.
---@param index number The index of the data to erase.
function DynamicList:EraseData(index) end

---@TODO: Clarify parameters and their roles.
---Erases sub-item information from the DynamicList.
---@param mainKey number The main key identifier.
---@param depth number The depth level of the sub-item.
---@param depthKey number The depth key identifier.
---@param key number The key of the sub-item to erase.
function DynamicList:EraseSubItemInfo(mainKey, depth, depthKey, key) end

---Retrieves the current height of the DynamicList.
---@return number currentHeight The current height. (default: `0`)
---@nodiscard
function DynamicList:GetCurrentHeight() end

---Retrieves the main index for the specified main key.
---@param mainKey number The main key identifier.
---@return number|nil index The index of the main key identifier.
function DynamicList:GetMainIndex(mainKey) end

---Retrieves the main list of the DynamicList from the highest to lowest index.
---@return table list The main list data.
---@nodiscard
function DynamicList:GetMainList() end

---Retrieves the maximum scroll value for the DynamicList.
---@return number scrollMaxValue The maximum scroll value.
---@nodiscard
function DynamicList:GetScrollMaxValue() end

---@TODO: Clarify return values and their meaning.
---Retrieves information about the currently selected item.
---@return number key The key of the selected item. (default: `-1`)
---@return number depth The depth of the selected item. (default: `0`)
---@nodiscard
function DynamicList:GetSelectedItemInfo() end

---Initializes the background draw type for the `frameBg` of the `mainData` function for the `InitFunc` in the DynamicList.
---@param bgDrawType UI_OBJECT_TYPE_DRAWABLE The background draw type.
function DynamicList:InitBgType(bgDrawType) end

---Initializes the widget pool for the DynamicList creating the main and sub fields.
function DynamicList:InitCreateWidgetPool() end

---@alias MainLayoutFunc fun(subItem: EmptyWidget, index: number)
---@alias MainDataFunc fun(subItem: EmptyWidget, mainKey: number, isOpen: boolean, frameBg: Drawablebase, subListSize: number, isClicked: boolean)
---@alias SubLayoutFunc fun(subItem: EmptyWidget, index: number)

---@TODO: subItemInfo
---@alias SubDataFunc fun(subItem: EmptyWidget, subItemInfo: table, isClicked: boolean)

---Initializes functions for main and sub layouts and data in the DynamicList.
---@param mainLayout MainLayoutFunc The main layout function.
---@param mainData MainDataFunc The main data function.
---@param subLayout SubLayoutFunc The sub-layout function.
---@param subData function The sub-data function.
---@usage
---```lua
---local function mainLayoutFunc(subItem, index) end
---local function mainDataFunc(subItem, mainKey, isOpen, frameBg, subListSize, isClicked) end
---local function subLayoutFunc(subItem, index) end
---local function subDataFunc(subItem, subItemInfo, isClicked) end
---
---widget:InitFunc(mainLayoutFunc, mainDataFunc, subLayoutFunc, subDataFunc)
---```
function DynamicList:InitFunc(mainLayout, mainData, subLayout, subData) end

---Initializes height settings for the DynamicList.
---@param viewHeight number The view height.
---@param mainHeight number The main item height.
---@param subHeight number The sub-item height.
---@usage
---```lua
---local viewRowCount   = 3
---local mainItemHeight = 73
---local viewHeight     = mainItemHeight * viewRowCount
---local subItemHeight  = 29
---widget:InitHeight(viewHeight, mainItemHeight, subItemHeight)
---```
function DynamicList:InitHeight(viewHeight, mainHeight, subHeight) end

---@TODO: Clarify subDatas structure. I think its just { { key = 1 }, ... }
---Inserts data into the DynamicList at the specified index.
---@param index number The index to insert data. (min: `1`)
---@param mainKey number The main key identifier.
---@param subDatas table The sub-data table.
function DynamicList:InsertData(index, mainKey, subDatas) end

---@TODO: Confirm parameters and sub-item insertion logic.
---Inserts sub-item information into the DynamicList.
---@param mainKey number The main key identifier.
---@param depth number The depth level of the sub-item.
---@param depthKey number The depth key identifier.
---@param key number The key of the sub-item.
function DynamicList:InsertSubItemInfo(mainKey, depth, depthKey, key) end

---@TODO: Verify key and depth usage.
---Checks if the specified item is selected in the DynamicList.
---@param key number The key of the item.
---@param depth number The depth of the item.
---@return boolean selected `true` if the item is selected, `false` otherwise.
---@nodiscard
function DynamicList:IsSelectedItem(key, depth) end

---@TODO: Confirm item list loading behavior.
---Loads the item list for the DynamicList.
function DynamicList:LoadItemList() end

---@TODO: Clarify height parameter and movement effect.
---Moves the DynamicList view by the specified height.
---@param height number The height to move the view.
function DynamicList:MoveHeight(height) end

---@FIXME: setting open to true results in a error, [Lua Error] attempt to call a boolean value
---Moves to the specified index in the DynamicList with anchor height.
---@param index number The index to move to.
---@param anchorHeight number The anchor height for positioning.
---@param open boolean `true` to open the item, `false` to close.
function DynamicList:MoveIndex(index, anchorHeight, open) end

---@TODO: Clarify sub-item opening logic.
---Opens a sub-item in the DynamicList based on its information.
---@param mainKey number The main key identifier.
---@param depth number The depth level of the sub-item.
---@param key number The key of the sub-item.
function DynamicList:OpenBySubItemInfo(mainKey, depth, key) end

---@TODO: Confirm mainKey and subDatas structure.
---Pushes data into the DynamicList.
---@param mainKey number The main key identifier.
---@param subDatas table The sub-data table.
function DynamicList:PushData(mainKey, subDatas) end

---@TODO: Verify item list saving behavior.
---Saves the item list for the DynamicList.
function DynamicList:SaveItemList() end

---Sets the gaps between main and sub-list items in the DynamicList.
---@param mainGap number The gap between main items.
---@param subListGap number The gap between sub-list items.
function DynamicList:SetGaps(mainGap, subListGap) end

---@TODO: Confirm key and depth usage for selection.
---Sets the selected item information in the DynamicList.
---@param key number The key of the item to select.
---@param depth number The depth of the item to select.
function DynamicList:SetSelectedItemInfo(key, depth) end

---@FIXME: causes the game to hang
---Toggles the state of the item at the specified index in the DynamicList.
---@param index number The index of the item to toggle.
function DynamicList:Toggle(index) end

---@FIXME: causes the game to hang
---Toggles the state of the item with the specified main key in the DynamicList.
---@param mainKey number The main key identifier.
function DynamicList:ToggleByMainKey(mainKey) end

---@TODO: Clarify sub-item toggle logic.
---Toggles the state of a sub-item in the DynamicList.
---@param mainKey number The main key identifier.
---@param depth number The depth level of the sub-item.
---@param depthKey number The depth key identifier.
function DynamicList:ToggleSubItem(mainKey, depth, depthKey) end

---@TODO: Verify mainKey and subDatas structure for updates.
---Updates data in the DynamicList for the specified main key.
---@param mainKey number The main key identifier.
---@param subDatas table The updated sub-data table.
function DynamicList:UpdateData(mainKey, subDatas) end

---@TODO: Confirm view update behavior.
---Updates the view of the DynamicList.
function DynamicList:UpdateView() end
