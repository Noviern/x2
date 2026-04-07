---@meta _

---@class X2Coffer
X2Coffer = {} -- api/X2Coffer

---Returns the total number of items in the player's coffer.
---@return number itemCount The total count of items currently in the coffer.
---@nodiscard
function X2Coffer:CountItems() end

---Retrieves item information for the specified slot if it exists.
---@param cofferId 1 The coffer ID.
---@param slot number The slot to query. (min:  `1`)
---@param neededInfo? ITEM_INFORMATION_KIND Optional additional information for the item.
---@return ItemInfo|nil cofferItemInfo The item information, or `nil` if the slot is empty or doesn't exist.
---@nodiscard
---@see ItemInfo
function X2Coffer:GetBagItemInfo(cofferId, slot, neededInfo) end

---Returns the current stack size of the item in the specified coffer slot.
---@param slot number The coffer slot index. (min: `1`)
---@return number itemStack The number of items in the stack.
---@nodiscard
function X2Coffer:ItemStack(slot) end
