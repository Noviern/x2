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

---TODO: Not sure how this works. Im assuming you can create a list of things that can autocomplete?
---@param datas table
function Combobox:Insert(datas) end

---Pauses/Unpauses autocomplete for the Combobox.
---@param pause boolean
function Combobox:PauseAutocomplete(pause) end

---TODO: Not every `filter` can be used for the `type`.
---Sets autocomplete for the `type` and `filter` for the Combobox.
---@param type AUTOCOMPLETE_TYPE
---@param filter AUTOCOMPLETE_FILTER
function Combobox:SetAutocomplete(type, filter) end

---Limits the visible dropdown items from the Combobox.
---@param limit number 0 to 10.
function Combobox:SetDropdownVisibleLimit(limit) end

---Enables/Disables the editability of the Combobox.
---@param editable boolean
function Combobox:SetEditable(editable) end

---@class ComboboxDropDown: Listbox
---@field downBtn Button
---@field upBtn Button
---@field vslider Vslider
local ComboboxDropDown = {}

---@class Vslider: Slider
---@field thumb Button
local Vslider = {}
