# X2Friend
## Globals
**MAX_BLOCK_USER**

`integer`

**MAX_FRIENDS**

`integer`

**MAX_WAIT_FRIENDS**

`integer`

**X2Friend**

`X2Friend`

## Classes
### Class: X2Friend
#### Method: GetFriendList
```lua
(method) X2Friend:GetFriendList(allMember: boolean)
  -> friendList: FriendInfo[]|nil
```
> Retrieves the player's friend list.
> 
> @*param* `allMember` — `true` to include offline friends, `false` to show only online friends.
> 
> @*return* `friendList` — The list of friends, or `nil` if unavailable.
> 
> See: [FriendInfo](../types/classes.md#class-friendinfo)

#### Method: IsMyFriend
```lua
(method) X2Friend:IsMyFriend(charName: string)
  -> isFriend: boolean
```
> Checks whether the specified character is on the player's friend list.
> 
> @*param* `charName` — The name of the character to check.
> 
> @*return* `isFriend` — `true` if the character is a friend, `false` otherwise.

