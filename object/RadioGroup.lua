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
local RadioGroup = {}

---Checks the `index` of the RadioGroup.
---@param index number
function RadioGroup:Check(index) end

---Clears out all radio data for the RadioGroup.
function RadioGroup:Clear() end

---Returns `radioItem` and creates 
---@param dataValue number
---@return RadioItem radioItem
---@nodiscard
function RadioGroup:CreateRadioItem(dataValue) end

---Enables/Disables `enable` checking the radio item `index` of the RadioGroup. 
---@param index number
---@param enable boolean
function RadioGroup:EnableIndex(index, enable) end

---Returns the `checked` count of the RadioGroup.
---@return number checked
---@nodiscard
function RadioGroup:GetChecked() end

---Returns `checkedData` of the currently checked radio item of the RadioGroup.
---Returns `nil` if no radio items are checked.
---@return number|nil checkedData
function RadioGroup:GetCheckedData() end

---Returns the `dataValue` for the `index` of the RadioGroup. Returns `nil` if
---the `index` doesnt exist.
---@param index number
---@return number|nil dataValue
---@nodiscard
function RadioGroup:GetDataValue(index) end

---Returns the `index` by the `dataValue` for the RadioGroup. Returns `-1` if
---`dataValue` doesnt exists.
---@param dataValue number
---@return number index
---@nodiscard
function RadioGroup:GetIndexByValue(dataValue) end

---Returns `size` of the RadioGroup.
---@return number size
---@nodiscard
function RadioGroup:GetSize() end

---Returns a boolean indicating if `index` is in range of the RadioGroup.
---@param index number
---@return boolean
---@nodiscard
function RadioGroup:IsInRange(index) end

---Releases check on radio items of RadioGroup.
function RadioGroup:ReleaseCheck() end

---Shows/Hides `show` the `index` of the RadioGroup.
---@param index number
---@param show boolean
function RadioGroup:ShowIndex(index, show) end

---Updates the `data` at `index` of the RadioGroup.
---@param index number
---@param data number
function RadioGroup:UpdateValue(index, data) end
