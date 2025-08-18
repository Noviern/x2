---@meta _

AP_BOTTOM = 8          -- object/RadioGroup
AP_BOTTOMLEFT = 2      -- object/RadioGroup
AP_BOTTOMRIGHT = 3     -- object/RadioGroup
AP_CENTER = 4          -- object/RadioGroup
AP_LEFT = 6            -- object/RadioGroup
AP_RIGHT = 7           -- object/RadioGroup
AP_TOP = 5             -- object/RadioGroup
AP_TOPLEFT = 0         -- object/RadioGroup
AP_TOPRIGHT = 1        -- object/RadioGroup
CT_ABILITY = 2         -- object/RadioGroup
CT_EXPEDITION_NAME = 3 -- object/RadioGroup
CT_NAME = 1            -- object/RadioGroup
DC_ALWAYS = 0          -- object/RadioGroup
DC_SHIFT_KEY_DOWN = 1  -- object/RadioGroup

---object/RadioGroup
---@class RadioItem: EmptyWidget
---@field check Checkbutton

---object/RadioGroup
---@class RadioGroup: Widget
---@field frame? RadioItem[]
local RadioGroup = {}

---Checks the radio item at the specified index in the RadioGroup.
---@param index number The index of the radio item to check.
---@usage
---```
---widget:Check(1)
---```
function RadioGroup:Check(index) end

---Clears all radio data from the RadioGroup.
---@usage
---```
---widget:Clear()
---```
function RadioGroup:Clear() end

---Creates and returns a radio item with the specified data value.
---@param dataValue number The data value for the radio item.
---@return RadioItem radioItem The created radio item.
---@nodiscard
---@usage
---```
---widget:CreateRadioItem(15)
---```
function RadioGroup:CreateRadioItem(dataValue) end

---Enables or disables checking for the radio item at the specified index.
---@param index number The index of the radio item.
---@param enable boolean `true` to enable checking, `false` to disable.
---@usage
---```
---widget:EnableIndex(1, false)
---```
function RadioGroup:EnableIndex(index, enable) end

---Retrieves the number of checked radio items in the RadioGroup.
---@return number checked The count of checked radio items. (default: `-1`)
---@nodiscard
---@usage
---```
---local checked = widget:GetChecked()
---```
function RadioGroup:GetChecked() end

---Retrieves the data value of the currently checked radio item.
---@return number|nil checkedData The data value of the checked item, or `nil` if none are checked.
---@nodiscard
---@usage
---```
---local checkedData = widget:GetCheckedData()
---```
function RadioGroup:GetCheckedData() end

---Retrieves the data value for the specified index in the RadioGroup.
---@param index number The index of the radio item.
---@return number|nil dataValue The data value at the index, or `nil` if the index doesn't exist.
---@nodiscard
---@usage
---```
---local dataValue = widget:GetDataValue(1)
---```
function RadioGroup:GetDataValue(index) end

---Retrieves the index of the radio item with the specified data value.
---@param dataValue number The data value to search for.
---@return number index The index of the radio item, or `-1` if the data value doesn't exist.
---@nodiscard
---@usage
---```
---local index = widget:GetIndexByValue(15)
---```
function RadioGroup:GetIndexByValue(dataValue) end

---Retrieves the total number of radio items in the RadioGroup.
---@return number size The number of radio items. (default: `0`)
---@nodiscard
---@usage
---```
---local size = widget:GetSize()
---```
function RadioGroup:GetSize() end

---Checks if the specified index is within the valid range of the RadioGroup.
---@param index number The index to check.
---@return boolean inRange `true` if the index is in range, `false` otherwise.
---@nodiscard
---@usage
---```
---local inRange = widget:IsInRange(1)
---```
function RadioGroup:IsInRange(index) end

---Releases the check state on all radio items in the RadioGroup.
---@usage
---```
---widget:ReleaseCheck()
---```
function RadioGroup:ReleaseCheck() end

---Shows or hides the radio item at the specified index in the RadioGroup.
---@param index number The index of the radio item.
---@param show boolean `true` to show the item, `false` to hide it. (default: `true`)
---@usage
---```
---widget:ShowIndex(1, false)
---```
function RadioGroup:ShowIndex(index, show) end

---Updates the data value at the specified index in the RadioGroup.
---@param index number The index of the radio item.
---@param data number The new data value to set.
---@usage
---```
---widget:UpdateValue(1, 10)
---```
function RadioGroup:UpdateValue(index, data) end
