---@meta _

---@class X2Coffer
X2Coffer = {} -- api/X2Coffer

---Returns the total capacity of the coffer.
---@return number capacity The maximum number of items the coffer can hold.
---@nodiscard
function X2Coffer:Capacity() end

---Returns the total number of items in the coffer.
---@return number itemCount The total count of items currently in the coffer.
---@nodiscard
function X2Coffer:CountItems() end

---Retrieves item information for the specified slot if it exists. The player
---must interact with a coffer for this to return anything.
---@param slot number The slot to query. (min:  `1`)
---@param neededInfo? ITEM_INFORMATION_KIND Optional additional information for the item.
---@return ItemInfo|nil cofferItemInfo The item information, or `nil` if the slot is empty or doesn't exist.
---@nodiscard
---@see ItemInfo
function X2Coffer:GetBagItemInfo(slot, neededInfo) end

---Returns the current stack size of the item in the specified coffer slot.
---@param slot number The coffer slot index. (min: `1`)
---@return number itemStack The number of items in the stack.
---@nodiscard
function X2Coffer:ItemStack(slot) end

---Moves an item from the coffer to an empty bag slot.
---Cooldown 200ms.
---@param slotIdx number The coffer slot index to move from. (min: `1`, max: `150`)
function X2Coffer:MoveToEmptyBagSlot(slotIdx) end
