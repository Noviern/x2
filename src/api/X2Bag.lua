---@meta _

---@class X2Bag
X2Bag = {} -- api/X2Bag

---Returns the total number of items in the player's bag.
---@return number itemCount The total count of items currently in the bag.
---@nodiscard
function X2Bag:CountItems() end

---Attempts to equip an item from the specified slot.
---@param slot number The slot containing the item to equip. (min: `1`)
---@param isAuxEquip boolean Whether to equip as auxiliary equipment.
function X2Bag:EquipBagItem(slot, isAuxEquip) end

---Retrieves item information for the specified slot if it exists.
---@param bagId 1 The bag ID.
---@param slot number The slot to query. (min:  `1`)
---@param neededInfo? ITEM_INFORMATION_KIND Optional additional information for the item.
---@return ItemInfo|nil bagItemInfo The item information, or `nil` if the slot is empty or doesn't exist.
---@nodiscard
---@see ItemInfo
function X2Bag:GetBagItemInfo(bagId, slot, neededInfo) end

---Returns the current stack size of the item in the specified bag slot.
---@param slot number The bag slot index. (min: `1`)
---@return number itemStack The number of items in the stack.
---@nodiscard
function X2Bag:ItemStack(slot) end
