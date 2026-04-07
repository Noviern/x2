---@meta _

---@class X2GuildBank
X2GuildBank = {} -- api/X2GuildBank

---Returns the total number of items in the player's guild bank.
---@return number itemCount The total count of items currently in the guild bank.
---@nodiscard
function X2GuildBank:CountItems() end

---Retrieves item information for the specified slot if it exists.
---@param guildBankId 1 The guild bank ID.
---@param slot number The slot to query. (min:  `1`)
---@param neededInfo? ITEM_INFORMATION_KIND Optional additional information for the item.
---@return ItemInfo|nil guild bankItemInfo The item information, or `nil` if the slot is empty or doesn't exist.
---@nodiscard
---@see ItemInfo
function X2GuildBank:GetBagItemInfo(guildBankId, slot, neededInfo) end

---Returns the current stack size of the item in the specified guild bank slot.
---@param slot number The guild bank slot index. (min: `1`)
---@return number itemStack The number of items in the stack.
---@nodiscard
function X2GuildBank:ItemStack(slot) end
