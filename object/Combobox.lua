---@meta _

AP_BOTTOM = 8          -- object/Combobox
AP_BOTTOMLEFT = 2      -- object/Combobox
AP_BOTTOMRIGHT = 3     -- object/Combobox
AP_CENTER = 4          -- object/Combobox
AP_LEFT = 6            -- object/Combobox
AP_RIGHT = 7           -- object/Combobox
AP_TOP = 5             -- object/Combobox
AP_TOPLEFT = 0         -- object/Combobox
AP_TOPRIGHT = 1        -- object/Combobox
CT_ABILITY = 2         -- object/Combobox
CT_EXPEDITION_NAME = 3 -- object/Combobox
CT_NAME = 1            -- object/Combobox
DC_ALWAYS = 0          -- object/Combobox
DC_SHIFT_KEY_DOWN = 1  -- object/Combobox

---object/Combobox
---@enum AUTOCOMPLETE_TYPE
local AUTOCOMPLETE_TYPE = {
  APPELLATION      = "appellation",
  INGAMESHOPGOODS  = "ingameShopGoods",
  ITEM             = "item",
  ITEMFORDEBUG     = "itemForDebug",
  ITEMTYPEFORDEBUG = "itemTypeForDebug",
  STORE            = "store",
}

---object/Combobox
---@enum AUTOCOMPLETE_FILTER
local AUTOCOMPLETE_FILTER = {
  AUCTIONABLE   = "auctionable",
  CRAFTMATERIAL = "craftMaterial",
  CRAFTPRODUCT  = "craftProduct",
  EMPTY         = "",
}

---object/Combobox
---@class Combobox: Widget
---@field dropdown ComboboxDropDown
---@field selector X2EditBox
---@field selectorBtn Button
---@field toggle Button
local Combobox = {}

---@TODO: Clarify how this works; possibly creates a list for autocomplete.
---Inserts data into the Combobox for autocomplete functionality.
---@param datas table The data to insert for autocomplete.
function Combobox:Insert(datas) end

---Pauses or unpauses autocomplete functionality for the Combobox.
---@param pause boolean `true` to pause autocomplete, `false` to unpause.
---@usage
---```
---combobox:PauseAutocomplete(false)
---```
function Combobox:PauseAutocomplete(pause) end

---@TODO: Verify which filters are valid for each type.
---Sets the autocomplete type and filter for the Combobox.
---@param type AUTOCOMPLETE_TYPE The autocomplete type.
---@param filter AUTOCOMPLETE_FILTER The autocomplete filter.
---@usage
---```
---combobox:SetAutocomplete("item", "")
---```
function Combobox:SetAutocomplete(type, filter) end

---Sets the maximum number of visible items in the Combobox dropdown.
---@param limit number The maximum number of visible items (`0` to `10`). (default: `10`)
---@usage
---```
---combobox:SetDropdownVisibleLimit(5)
---```
function Combobox:SetDropdownVisibleLimit(limit) end

---Enables or disables editability of the Combobox.
---@param editable boolean `true` to allow editing, `false` to disable. (dfault: `false`)
---@usage
---```
---combobox:SetEditable(true)
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
