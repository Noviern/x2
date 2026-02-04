---@meta _

---@class ComboboxDropDown: Listbox
---@field downBtn Button
---@field upBtn Button
---@field vslider Vslider
local ComboboxDropDown = {}

---@class Vslider: Slider
---@field thumb Button
local Vslider = {}

---@TODO: document other widget dependencies
---**OBJECT**: [Combobox](lua://Combobox)
---
---**Dependencies**:
--- * [Button](lua://Button)
--- * [Listbox](lua://Listbox)
--- * [Slider](lua://Slider)
--- * [TextStyle](lua://TextStyle) (optional)
--- * [X2EditBox](lua://X2EditBox)
---@class Combobox: Widget
---@field dropdown ComboboxDropDown
---@field selector X2EditBox
---@field selectorBtn Button
---@field toggle Button
local Combobox = {}

---**OBJECT**: [Combobox](lua://Combobox)
---
---**Dependencies**:
--- * [Button](lua://Button)
--- * [Listbox](lua://Listbox)
--- * [Slider](lua://Slider)
--- * [TextStyle](lua://TextStyle) (optional)
--- * [X2EditBox](lua://X2EditBox)
---@class combobox: Combobox

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
