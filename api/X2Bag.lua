---@meta _

X2Bag = {} -- api/X2Bag

---Attempts to equip the item from the slot.
---@param slot number
---@param isAuxEquip boolean
function X2Bag:EquipBagItem(slot, isAuxEquip) end

---Returns item info for the `slot` if the slot exists. [IIK](lua://IIK) requires importing the API X2Item.
---@param bagId BAGID
---@param slot number
---@param neededInfo? IIK (optional) [IIK](lua://IIK)
---@return ItemInfo? [ItemInfo](lua://ItemInfo)
function X2Bag:GetBagItemInfo(bagId, slot, neededInfo) end