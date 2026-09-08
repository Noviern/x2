---@meta _

MAX_BLOCK_USER = 200  -- api/X2Friend
MAX_FRIENDS = 100     -- api/X2Friend
MAX_WAIT_FRIENDS = 50 -- api/X2Friend
---@class X2Friend
X2Friend = {}         -- api/X2Friend

---Blocks a character.
---Cooldown 1 second.
function X2Friend:BlockUser(charName) end

---Retrieves a list of blocked characters and the amount blocked.
---@return BlockedCharacter[] blockedCharacters A list of blocked characters.
---@return number totalBlocked The total number of blocked characters.
---@nodiscard
---@see BlockedCharacter
function X2Friend:GetBlockList() end

---Retrieves the player's friend list.
---@param allMember boolean `true` to include offline friends, `false` to show only online friends.
---@return FriendInfo[]|nil friendList The list of friends, or `nil` if unavailable.
---@nodiscard
---@see FriendInfo
function X2Friend:GetFriendList(allMember) end

---Retrieves a list of muted characters and the amount muted.
---@return MutedCharacter[] mutedCharacters  A list of muted characters.
---@return number totalMuted The total number of muted characters.
---@nodiscard
---@see MutedCharacter
function X2Friend:GetMuteList() end

---Checks whether the specified character is on the player's friend list.
---@param charName string The name of the character to check.
---@return boolean isFriend `true` if the character is a friend, `false` otherwise.
---@nodiscard
function X2Friend:IsMyFriend(charName) end

---Mutes a character.
---Cooldown 1 second.
---@param charName string The character's name.
function X2Friend:MuteUser(charName) end

---Unblocks a character.
---Cooldown 1 second.
---@param charName string The character's name.
function X2Friend:UnblockUser(charName) end

---Unmutes a character.
---Cooldown 1 second.
---@param charName string The character's name.
function X2Friend:UnmuteUser(charName) end
