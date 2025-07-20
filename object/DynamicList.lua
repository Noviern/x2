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
---@field content EmptyWidget
local DynamicList = {}

---Clears data for the DynamicList.
function DynamicList:ClearData() end

---TODO:
---@param layerStr string
---@return table
---@nodiscard
function DynamicList:CreateOveredImage(layerStr) end

---TODO:
---@param isEnable boolean
function DynamicList:EnableChildTouch(isEnable) end

---TODO:
---@param index number
function DynamicList:EraseData(index) end

---TODO:
---@param mainKey number
---@param depth number
---@param depthKey number
---@param key number
function DynamicList:EraseSubItemInfo(mainKey, depth, depthKey, key) end

---Returns the `currentHeight` for the DynamicList.
---@return number currentHeight
---@nodiscard
function DynamicList:GetCurrentHeight() end

---TODO:
---@param mainKey number
function DynamicList:GetMainIndex(mainKey) end

---TODO:
---@return table
---@nodiscard
function DynamicList:GetMainList() end

---Returns the `scrollMaxValue` for the DynamicList.
---@return number scrollMaxValue
---@nodiscard
function DynamicList:GetScrollMaxValue() end

---TODO:
---@return number
---@return number
function DynamicList:GetSelectedItemInfo() end

---TODO: bgDrawType type may not be correct.
---@param bgDrawType UOT
function DynamicList:InitBgType(bgDrawType) end

---TODO:
function DynamicList:InitCreateWidgetPool() end

---TODO:
---@param mainLayout function
---@param mainData function
---@param subLayout function
---@param subData function
function DynamicList:InitFunc(mainLayout, mainData, subLayout, subData) end

---TODO:
---@param viewHeight number
---@param mainHeight number
---@param subHeight number
function DynamicList:InitHeight(viewHeight, mainHeight, subHeight) end

---TODO:
---@param index number
---@param mainKey number
---@param subDatas table
function DynamicList:InsertData(index, mainKey, subDatas) end

---TODO:
---@param mainKey number
---@param depth number
---@param depthKey number
---@param key number
function DynamicList:InsertSubItemInfo(mainKey, depth, depthKey, key) end

---TODO:
---@param key number
---@param depth number
---@return boolean
---@nodiscard
function DynamicList:IsSelectedItem(key, depth) end

---TODO:
function DynamicList:LoadItemList() end

---TODO:
---@param height number
function DynamicList:MoveHeight(height) end

---TODO:
---@param index number
---@param anchorHeight number
---@param open boolean
function DynamicList:MoveIndex(index, anchorHeight, open) end

---TODO:
---@param mainKey number
---@param depth number
---@param key number
function DynamicList:OpenBySubItemInfo(mainKey, depth, key) end

---TODO:
---@param mainKey number
---@param subDatas table
function DynamicList:PushData(mainKey, subDatas) end

---TODO:
function DynamicList:SaveItemList() end

---TODO:
---@param mainGap number
---@param subListGap number
function DynamicList:SetGaps(mainGap, subListGap) end

---TODO:
---@param key number
---@param depth number
function DynamicList:SetSelectedItemInfo(key, depth) end

---TODO:
---@param index number
function DynamicList:Toggle(index) end

---TODO:
---@param mainKey number
function DynamicList:ToggleByMainKey(mainKey) end

---TODO:
---@param mainKey number
---@param depth number
---@param depthKey number
function DynamicList:ToggleSubItem(mainKey, depth, depthKey) end

---TODO:
---@param mainKey number
---@param subDatas table
function DynamicList:UpdateData(mainKey, subDatas) end

---TODO:
function DynamicList:UpdateView() end
