---@meta _

MAX_BLOCK_USER = 200  -- api/X2Friend
MAX_FRIENDS = 100     -- api/X2Friend
MAX_WAIT_FRIENDS = 50 -- api/X2Friend
---@class X2Friend
X2Friend = {}         -- api/X2Friend

---Retrieves the player's friend list.
---@param allMember boolean `true` to include offline friends, `false` to show only online friends.
---@return FriendInfo[]|nil friendList The list of friends, or `nil` if unavailable.
---@nodiscard
---@see FriendInfo
function X2Friend:GetFriendList(allMember) end

---Checks whether the specified character is on the player's friend list.
---@param charName string The name of the character to check.
---@return boolean isFriend `true` if the character is a friend, `false` otherwise.
---@nodiscard
function X2Friend:IsMyFriend(charName) end
