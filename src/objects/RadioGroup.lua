---@meta _

AP_BOTTOM = 8          -- objects/RadioGroup
AP_BOTTOMLEFT = 2      -- objects/RadioGroup
AP_BOTTOMRIGHT = 3     -- objects/RadioGroup
AP_CENTER = 4          -- objects/RadioGroup
AP_LEFT = 6            -- objects/RadioGroup
AP_RIGHT = 7           -- objects/RadioGroup
AP_TOP = 5             -- objects/RadioGroup
AP_TOPLEFT = 0         -- objects/RadioGroup
AP_TOPRIGHT = 1        -- objects/RadioGroup
CT_ABILITY = 2         -- objects/RadioGroup
CT_EXPEDITION_NAME = 3 -- objects/RadioGroup
CT_NAME = 1            -- objects/RadioGroup
DC_ALWAYS = 0          -- objects/RadioGroup DRAG_CONDITION
DC_SHIFT_KEY_DOWN = 1  -- objects/RadioGroup DRAG_CONDITION

---objects/RadioGroup
---@class RadioGroup: Widget
---@field frame? RadioItem[]
local RadioGroup = {}
---@class radiogroup: RadioGroup

---Checks the radio item at the specified index in the RadioGroup.
---@param index number The index of the radio item to check.
---@usage
---```lua
---widget:Check(1)
---```
function RadioGroup:Check(index) end

---Clears all radio data from the RadioGroup.
---@usage
---```lua
---widget:Clear()
---```
function RadioGroup:Clear() end

---Creates and returns a radio item with the specified data value.
---@param dataValue number The data value for the radio item.
---@return RadioItem radioItem The created radio item.
---@nodiscard
---@usage
---```lua
---widget:CreateRadioItem(15)
---```
function RadioGroup:CreateRadioItem(dataValue) end

---Enables or disables checking for the radio item at the specified index.
---@param index number The index of the radio item.
---@param enable boolean `true` to enable checking, `false` to disable.
---@usage
---```lua
---widget:EnableIndex(1, false)
---```
function RadioGroup:EnableIndex(index, enable) end

---Retrieves the number of checked radio items in the RadioGroup.
---@return number checked The count of checked radio items. (default: `-1`)
---@nodiscard
---@usage
---```lua
---local checked = widget:GetChecked()
---```
function RadioGroup:GetChecked() end

---Retrieves the data value of the currently checked radio item.
---@return number|nil checkedData The data value of the checked item, or `nil` if none are checked.
---@nodiscard
---@usage
---```lua
---local checkedData = widget:GetCheckedData()
---```
function RadioGroup:GetCheckedData() end

---Retrieves the data value for the specified index in the RadioGroup.
---@param index number The index of the radio item.
---@return number|nil dataValue The data value at the index, or `nil` if the index doesn't exist.
---@nodiscard
---@usage
---```lua
---local dataValue = widget:GetDataValue(1)
---```
function RadioGroup:GetDataValue(index) end

---Retrieves the index of the radio item with the specified data value.
---@param dataValue number The data value to search for.
---@return number index The index of the radio item, or `-1` if the data value doesn't exist.
---@nodiscard
---@usage
---```lua
---local index = widget:GetIndexByValue(15)
---```
function RadioGroup:GetIndexByValue(dataValue) end

---Retrieves the total number of radio items in the RadioGroup.
---@return number size The number of radio items. (default: `0`)
---@nodiscard
---@usage
---```lua
---local size = widget:GetSize()
---```
function RadioGroup:GetSize() end

---Checks if the specified index is within the valid range of the RadioGroup.
---@param index number The index to check.
---@return boolean inRange `true` if the index is in range, `false` otherwise.
---@nodiscard
---@usage
---```lua
---local inRange = widget:IsInRange(1)
---```
function RadioGroup:IsInRange(index) end

---Releases the check state on all radio items in the RadioGroup.
---@usage
---```lua
---widget:ReleaseCheck()
---```
function RadioGroup:ReleaseCheck() end

---Shows or hides the radio item at the specified index in the RadioGroup.
---@param index number The index of the radio item.
---@param show boolean `true` to show the item, `false` to hide it. (default: `true`)
---@usage
---```lua
---widget:ShowIndex(1, false)
---```
function RadioGroup:ShowIndex(index, show) end

---Updates the data value at the specified index in the RadioGroup.
---@param index number The index of the radio item.
---@param data number The new data value to set.
---@usage
---```lua
---widget:UpdateValue(1, 10)
---```
function RadioGroup:UpdateValue(index, data) end
