---@meta _

---[RadioGroup](lua://RadioGroup)
---
---A `RadioGroup` widget manages a group of radio items, allowing a single
---selection from multiple options. Each radio item can store a custom data
---value, and the group provides functions to query, update, and manage these
---items.
---
---**Dependencies**:
--- - [EmptyWidget](lua://EmptyWidget) used for the `frame` field.
--- - [CheckButton](lua://CheckButton) used for the `frame.check` field.
---
---@class RadioGroup: Widget
---@field frame RadioItem[]|nil The internal list of radio items. Typically populated when radio items are created with `RadioGroup:CreateRadioItem`.
local RadioGroup = {}

---Checks the radio item at the specified index in the RadioGroup.
---@param index number The index of the radio item to check.
function RadioGroup:Check(index) end

---Clears all radio data from the RadioGroup.
function RadioGroup:Clear() end

---Creates and returns a radio item with the specified data value.
---@param dataValue number The data value for the radio item.
---@return RadioItem radioItem The created radio item.
---@nodiscard
function RadioGroup:CreateRadioItem(dataValue) end

---Enables or disables checking for the radio item at the specified index.
---@param index number The index of the radio item.
---@param enable boolean `true` to enable checking, `false` to disable.
function RadioGroup:EnableIndex(index, enable) end

---Retrieves the number of checked radio items in the RadioGroup.
---@return number checked The count of checked radio items. (default: `-1`)
---@nodiscard
function RadioGroup:GetChecked() end

---Retrieves the data value of the currently checked radio item.
---@return number|nil checkedData The data value of the checked item, or `nil` if none are checked.
---@nodiscard
function RadioGroup:GetCheckedData() end

---Retrieves the data value for the specified index in the RadioGroup.
---@param index number The index of the radio item.
---@return number|nil dataValue The data value at the index, or `nil` if the index doesn't exist.
---@nodiscard
function RadioGroup:GetDataValue(index) end

---Retrieves the index of the radio item with the specified data value.
---@param dataValue number The data value to search for.
---@return number index The index of the radio item, or `-1` if the data value doesn't exist.
---@nodiscard
function RadioGroup:GetIndexByValue(dataValue) end

---Retrieves the total number of radio items in the RadioGroup.
---@return number size The number of radio items. (default: `0`)
---@nodiscard
function RadioGroup:GetSize() end

---Checks if the specified index is within the valid range of the RadioGroup.
---@param index number The index to check.
---@return boolean inRange `true` if the index is in range, `false` otherwise.
---@nodiscard
function RadioGroup:IsInRange(index) end

---Releases the check state on all radio items in the RadioGroup.
function RadioGroup:ReleaseCheck() end

---Shows or hides the radio item at the specified index in the RadioGroup.
---@param index number The index of the radio item.
---@param show boolean `true` to show the item, `false` to hide it. (default: `true`)
function RadioGroup:ShowIndex(index, show) end

---Updates the data value at the specified index in the RadioGroup.
---@param index number The index of the radio item.
---@param data number The new data value to set.
function RadioGroup:UpdateValue(index, data) end
