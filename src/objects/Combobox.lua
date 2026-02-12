---@meta _

---@class ComboboxDropDown: Listbox
---@field downBtn Button
---@field upBtn Button
---@field vslider Vslider
local ComboboxDropDown = {}

---@class Vslider: Slider
---@field thumb Button
local Vslider = {}

---[Combobox](lua://Combobox)
---
---A `Combobox` widget is a dropdown selection control that can be editable
---with autocomplete filters or read-only with predefined dropdown list. Usually
---consists of a editbox (or selector button) + toggle button + dropdown list.
---
---**Dependencies**:
--- - [Button](lua://Button) used for the dropdown `downBtn`, `selectorBtn`, and `toggle` fields.
--- - [Listbox](lua://Listbox) used for the `dropdown` field.
--- - [Slider](lua://Slider) used for the dropdown `vslider` field.
--- - [X2Editbox](lua://X2Editbox) used for the selector field.
---
---@class Combobox: Widget
---@field dropdown ComboboxDropDown The dropdown for the Combobox.
---@field selector X2Editbox The input exitbox if the Combobox is editable.
---@field selectorBtn Button The input button if the Combobox is not editable.
---@field toggle Button Dropdown open/close button
local Combobox = {}

---Inserts data into the Combobox dropdown if `Combobox:SetEditable(false)`.
---@param datas ItemTree[] The data to insert for autocomplete.
---@see ItemTree
function Combobox:Insert(datas) end

---Pauses or unpauses autocomplete functionality for the Combobox.
---@param pause boolean `true` to pause autocomplete, `false` to unpause.
function Combobox:PauseAutocomplete(pause) end

---Sets the autocomplete type and filter for the Combobox.
---@param type string The autocomplete type.
---@param filter string The autocomplete filter.
---@overload fun(self: self, type: "appellation", filter: "")
---@overload fun(self: self, type: "ingameShopGoods", filter: "ingameShopGoods")
---@overload fun(self: self, type: "item", filter: AUTOCOMPLETE_FILTER)
---@overload fun(self: self, type: "itemForDebug", filter: "")
---@overload fun(self: self, type: "itemTypeForDebug", filter: "")
---@overload fun(self: self, type: "store", filter: "")
function Combobox:SetAutocomplete(type, filter) end

---Sets the maximum number of visible items in the Combobox dropdown.
---@param limit number The maximum number of visible items (min: `0`, max: `10`). (default: `10`)
function Combobox:SetDropdownVisibleLimit(limit) end

---Enables or disables editability of the Combobox. If set to `false` any guide
---text set to `Combobox.selector` will not render.
---@param editable boolean `true` to allow editing, `false` to disable. (default: `false`)
function Combobox:SetEditable(editable) end
