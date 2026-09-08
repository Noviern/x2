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
#### Method: BlockUser
```lua
(method) X2Friend:BlockUser(charName: any)
```
> Blocks a character.
> Cooldown 1 second.

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

#### Method: MuteUser
```lua
(method) X2Friend:MuteUser(charName: string)
```
> Mutes a character.
> Cooldown 1 second.
> 
> @*param* `charName` — The character's name.

#### Method: UnblockUser
```lua
(method) X2Friend:UnblockUser(charName: string)
```
> Unblocks a character.
> Cooldown 1 second.
> 
> @*param* `charName` — The character's name.

#### Method: GetMuteList
```lua
(method) X2Friend:GetMuteList()
  -> mutedCharacters: MutedCharacter[]
  2. totalMuted: number
```
> Retrieves a list of muted characters and the amount muted.
> 
> @*return* `mutedCharacters` — A list of muted characters.
> 
> @*return* `totalMuted` — The total number of muted characters.
> 
> See: [MutedCharacter](../types/classes.md#class-mutedcharacter)

#### Method: GetBlockList
```lua
(method) X2Friend:GetBlockList()
  -> blockedCharacters: BlockedCharacter[]
  2. totalBlocked: number
```
> Retrieves a list of blocked characters and the amount blocked.
> 
> @*return* `blockedCharacters` — A list of blocked characters.
> 
> @*return* `totalBlocked` — The total number of blocked characters.
> 
> See: [BlockedCharacter](../types/classes.md#class-blockedcharacter)

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

#### Method: UnmuteUser
```lua
(method) X2Friend:UnmuteUser(charName: string)
```
> Unmutes a character.
> Cooldown 1 second.
> 
> @*param* `charName` — The character's name.

