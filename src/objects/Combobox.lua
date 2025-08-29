---@meta _

AP_BOTTOM = 8          -- objects/Combobox
AP_BOTTOMLEFT = 2      -- objects/Combobox
AP_BOTTOMRIGHT = 3     -- objects/Combobox
AP_CENTER = 4          -- objects/Combobox
AP_LEFT = 6            -- objects/Combobox
AP_RIGHT = 7           -- objects/Combobox
AP_TOP = 5             -- objects/Combobox
AP_TOPLEFT = 0         -- objects/Combobox
AP_TOPRIGHT = 1        -- objects/Combobox
CT_ABILITY = 2         -- objects/Combobox
CT_EXPEDITION_NAME = 3 -- objects/Combobox
CT_NAME = 1            -- objects/Combobox
DC_ALWAYS = 0          -- objects/Combobox
DC_SHIFT_KEY_DOWN = 1  -- objects/Combobox

---objects/Combobox
---@enum AUTOCOMPLETE_TYPE
local AUTOCOMPLETE_TYPE = {
  APPELLATION      = "appellation",
  INGAMESHOPGOODS  = "ingameShopGoods",
  ITEM             = "item",
  ITEMFORDEBUG     = "itemForDebug",
  ITEMTYPEFORDEBUG = "itemTypeForDebug",
  STORE            = "store",
}

---objects/Combobox
---@enum AUTOCOMPLETE_FILTER
local AUTOCOMPLETE_FILTER = {
  AUCTIONABLE   = "auctionable",
  CRAFTMATERIAL = "craftMaterial",
  CRAFTPRODUCT  = "craftProduct",
  EMPTY         = "",
}

---objects/Combobox
---@class Combobox: Widget
---@field dropdown ComboboxDropDown
---@field selector X2EditBox
---@field selectorBtn Button
---@field toggle Button
---@class combobox: Combobox
local Combobox = {}

---@TODO: Clarify how this works; possibly creates a list for autocomplete.
---Inserts data into the Combobox for autocomplete functionality.
---@param datas table The data to insert for autocomplete.
function Combobox:Insert(datas) end

---Pauses or unpauses autocomplete functionality for the Combobox.
---@param pause boolean `true` to pause autocomplete, `false` to unpause.
---@usage
---```
---widget:PauseAutocomplete(false)
---```
function Combobox:PauseAutocomplete(pause) end

---@TODO: Verify which filters are valid for each type.
---Sets the autocomplete type and filter for the Combobox.
---@param type AUTOCOMPLETE_TYPE The autocomplete type.
---@param filter AUTOCOMPLETE_FILTER The autocomplete filter.
---@usage
---```
---widget:SetAutocomplete("item", "")
---```
function Combobox:SetAutocomplete(type, filter) end

---Sets the maximum number of visible items in the Combobox dropdown.
---@param limit number The maximum number of visible items (`0` to `10`). (default: `10`)
---@usage
---```
---widget:SetDropdownVisibleLimit(5)
---```
function Combobox:SetDropdownVisibleLimit(limit) end

---Enables or disables editability of the Combobox.
---@param editable boolean `true` to allow editing, `false` to disable. (dfault: `false`)
---@usage
---```
---widget:SetEditable(true)
---```
function Combobox:SetEditable(editable) end

---@class ComboboxDropDown: Listbox
---@field downBtn Button
---@field upBtn Button
---@field vslider Vslider
local ComboboxDropDown = {}

---@class Vslider: Slider
---@field thumb Button
local Vslider = {}
