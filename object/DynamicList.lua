---@meta _

AP_BOTTOM = 8          -- object/DynamicList
AP_BOTTOMLEFT = 2      -- object/DynamicList
AP_BOTTOMRIGHT = 3     -- object/DynamicList
AP_CENTER = 4          -- object/DynamicList
AP_LEFT = 6            -- object/DynamicList
AP_RIGHT = 7           -- object/DynamicList
AP_TOP = 5             -- object/DynamicList
AP_TOPLEFT = 0         -- object/DynamicList
AP_TOPRIGHT = 1        -- object/DynamicList
CT_ABILITY = 2         -- object/DynamicList
CT_EXPEDITION_NAME = 3 -- object/DynamicList
CT_NAME = 1            -- object/DynamicList
DC_ALWAYS = 0          -- object/DynamicList
DC_SHIFT_KEY_DOWN = 1  -- object/DynamicList

---object/DynamicList
---@class DynamicList: Widget
---@field content EmptyWidget TODO: This has a anchor field EmptyWidget
---@class dynamiclist: DynamicList
local DynamicList = {}

---Clears all data from the DynamicList.
---@usage
---```
---widget:ClearData()
---```
function DynamicList:ClearData() end

---Creates an overed image for the DynamicList with the specified layer.
---@param layerStr DRAWABLE_NAME_LAYER The layer string for the overed image.
---@return NinePartDrawable overedImage The created overed image.
---@nodiscard
---@usage
---```
---local overedImage = widget:CreateOveredImage("overlay")
---```
---@see DRAWABLE_NAME_LAYER
---@see NinePartDrawable
function DynamicList:CreateOveredImage(layerStr) end

---@TODO: Confirm behavior of child touch enabling.
---Enables or disables touch interaction for child elements in the DynamicList.
---@param isEnable boolean `true` to enable child touch, `false` to disable.
function DynamicList:EnableChildTouch(isEnable) end

---@TODO: Verify index parameter usage.
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
---@usage
---```
---local currentHeight = widget:GetCurrentHeight()
---```
function DynamicList:GetCurrentHeight() end

---@TODO: Confirm mainKey usage and return value.
---Retrieves the main index for the specified main key.
---@param mainKey number The main key identifier.
function DynamicList:GetMainIndex(mainKey) end

---@TODO: Verify return table structure.
---Retrieves the main list of the DynamicList.
---@return table The main list data.
---@nodiscard
function DynamicList:GetMainList() end

---Retrieves the maximum scroll value for the DynamicList.
---@return number scrollMaxValue The maximum scroll value.
---@nodiscard
---@usage
---```
---local scrollMaxValue = widget:GetScrollMaxValue()
---```
function DynamicList:GetScrollMaxValue() end

---@TODO: Clarify return values and their meaning.
---Retrieves information about the currently selected item.
---@return number The key of the selected item.
---@return number The depth of the selected item.
---@nodiscard
function DynamicList:GetSelectedItemInfo() end

---@TODO: Verify bgDrawType and its correct type (UOT).
---Initializes the background draw type for the DynamicList.
---@param bgDrawType UOT The background draw type.
function DynamicList:InitBgType(bgDrawType) end

---@TODO: Confirm purpose and behavior.
---Initializes the widget pool for the DynamicList.
---@usage
---```
---widget:InitCreateWidgetPool()
---```
function DynamicList:InitCreateWidgetPool() end

---@TODO: Clarify function parameters and their roles. Create function aliases.
---Initializes functions for main and sub layouts and data in the DynamicList.
---@param mainLayout function The main layout function.
---@param mainData function The main data function.
---@param subLayout function The sub-layout function.
---@param subData function The sub-data function.
---@usage
---```
---function mainLayoutFunc(subItem, index) end
---function mainDataFunc(subItem, mainKey, isOpen, frameBg, subListSize, isClicked) end
---function subLayoutFunc(subItem, index) end
---function subDataFunc(subItem, subItemInfo, isClicked) end
---
---widget:InitFunc(mainLayoutFunc, mainDataFunc, subLayoutFunc, subDataFunc)
---```
function DynamicList:InitFunc(mainLayout, mainData, subLayout, subData) end

---@TODO: Verify height parameters and their effect.
---Initializes height settings for the DynamicList.
---@param viewHeight number The view height.
---@param mainHeight number The main item height.
---@param subHeight number The sub-item height.
function DynamicList:InitHeight(viewHeight, mainHeight, subHeight) end

---@TODO: Clarify index, mainKey, and subDatas structure.
---Inserts data into the DynamicList at the specified index.
---@param index number The index to insert data.
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
---@return boolean `true` if the item is selected, `false` otherwise.
---@nodiscard
function DynamicList:IsSelectedItem(key, depth) end

---@TODO: Confirm item list loading behavior.
---Loads the item list for the DynamicList.
function DynamicList:LoadItemList() end

---@TODO: Clarify height parameter and movement effect.
---Moves the DynamicList view by the specified height.
---@param height number The height to move the view.
function DynamicList:MoveHeight(height) end

---@TODO: Verify index, anchorHeight, and open parameters.
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

---@TODO: Clarify gap parameters and their effect.
---Sets the gaps between main and sub-list items in the DynamicList.
---@param mainGap number The gap between main items.
---@param subListGap number The gap between sub-list items.
function DynamicList:SetGaps(mainGap, subListGap) end

---@TODO: Confirm key and depth usage for selection.
---Sets the selected item information in the DynamicList.
---@param key number The key of the item to select.
---@param depth number The depth of the item to select.
function DynamicList:SetSelectedItemInfo(key, depth) end

---@TODO: Verify toggle behavior for index.
---Toggles the state of the item at the specified index in the DynamicList.
---@param index number The index of the item to toggle.
function DynamicList:Toggle(index) end

---@TODO: Confirm mainKey toggle behavior.
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
