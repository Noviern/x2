---@meta _

---@class X2Bag
X2Bag = {} -- api/X2Bag

---Attempts to equip an item from the specified slot.
---@param slot number The slot containing the item to equip. (min: `1`)
---@param isAuxEquip boolean Whether to equip as auxiliary equipment.
function X2Bag:EquipBagItem(slot, isAuxEquip) end

---Retrieves item information for the specified slot if it exists.
---@param bagId 1 The bag ID.
---@param slot number The slot to query. (min:  `1`)
---@param neededInfo? IIK Optional additional information for the item. Requires importing the X2Item API. IIK types can be added together to increase the filter range.
---@return ItemInfo|nil bagItemInfo The item information, or `nil` if the slot is empty or doesn't exist.
---@nodiscard
---@see ItemInfo
function X2Bag:GetBagItemInfo(bagId, slot, neededInfo) end
