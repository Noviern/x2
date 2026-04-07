---@meta _

---@class X2Bank
X2Bank = {} -- api/X2Bank

---Returns the total number of items in the player's bank.
---@return number itemCount The total count of items currently in the bank.
---@nodiscard
function X2Bank:CountItems() end

---Retrieves item information for the specified slot if it exists.
---@param bankId 1 The bank ID.
---@param slot number The slot to query. (min:  `1`)
---@param neededInfo? ITEM_INFORMATION_KIND Optional additional information for the item.
---@return ItemInfo|nil bankItemInfo The item information, or `nil` if the slot is empty or doesn't exist.
---@nodiscard
---@see ItemInfo
function X2Bank:GetBagItemInfo(bankId, slot, neededInfo) end

---Returns the current stack size of the item in the specified bank slot.
---@param slot number The bank slot index. (min: `1`)
---@return number itemStack The number of items in the stack.
---@nodiscard
function X2Bank:ItemStack(slot) end
