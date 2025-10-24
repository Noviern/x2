---@meta _

---objects/Combobox
---@class Combobox: Widget
---@field dropdown ComboboxDropDown
---@field selector X2EditBox
---@field selectorBtn Button
---@field toggle Button
local Combobox = {}
---@class combobox: Combobox

---@TODO: Clarify how this works; possibly creates a list for autocomplete.
---Inserts data into the Combobox for autocomplete functionality.
---@param datas table The data to insert for autocomplete.
function Combobox:Insert(datas) end

---Pauses or unpauses autocomplete functionality for the Combobox.
---@param pause boolean `true` to pause autocomplete, `false` to unpause.
---@usage
---```lua
---widget:PauseAutocomplete(false)
---```
function Combobox:PauseAutocomplete(pause) end

---Sets the autocomplete type and filter for the Combobox.
---@param type string The autocomplete type.
---@param filter string The autocomplete filter.
---@usage
---```lua
---widget:SetAutocomplete("item", "")
---```
---@overload fun(self: self, type: "appellation", filter: "")
---@overload fun(self: self, type: "ingameShopGoods", filter: "ingameShopGoods")
---@overload fun(self: self, type: "item", filter: AUTOCOMPLETE_FILTER)
---@overload fun(self: self, type: "itemForDebug", filter: "")
---@overload fun(self: self, type: "itemTypeForDebug", filter: "")
---@overload fun(self: self, type: "store", filter: "")
function Combobox:SetAutocomplete(type, filter) end

---Sets the maximum number of visible items in the Combobox dropdown.
---@param limit number The maximum number of visible items (`0` to `10`). (default: `10`)
---@usage
---```lua
---widget:SetDropdownVisibleLimit(5)
---```
function Combobox:SetDropdownVisibleLimit(limit) end

---Enables or disables editability of the Combobox.
---@param editable boolean `true` to allow editing, `false` to disable. (dfault: `false`)
---@usage
---```lua
---widget:SetEditable(true)
---```
function Combobox:SetEditable(editable) end
