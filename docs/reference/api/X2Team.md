# X2Team
## Globals
**MAX_COMMUNITY_SUMMON**

`integer`

**RAID_RECRUIT_EXPIRE_DELAY_MINUTE**

`integer`

**RAID_TEAM_RECRUIT_LIST_REQ**

`integer`

**SIEGE_RAID_TEAM_ALL_INFO**

`integer`

**SIEGE_RAID_TEAM_INFO_BY_FACTION**

`integer`

**TEAM_JOINT_MENU_CHAT**

`integer`

**TEAM_JOINT_MENU_TARGET**

`integer`

**TEAM_JOINT_REQUEST**

`integer`

**TEAM_LOOT_FREE_FOR_ALL**

`integer`

**TEAM_LOOT_MASTER_LOOTER**

`integer`

**TEAM_LOOT_ROUND_ROBIN**

`integer`

**TMROLE_DEALER**

`integer`

**TMROLE_HEALER**

`integer`

**TMROLE_NONE**

`integer`

**TMROLE_RANGED_DEALER**

`integer`

**TMROLE_TANKER**

`integer`

**X2Team**

`X2Team`

## Aliases
**SIEGE_RAID**

`SIEGE_RAID_TEAM_ALL_INFO`|`SIEGE_RAID_TEAM_INFO_BY_FACTION`

```lua
-- api/X2Team
SIEGE_RAID:
    | `SIEGE_RAID_TEAM_ALL_INFO`
    | `SIEGE_RAID_TEAM_INFO_BY_FACTION`
```

**TEAM_JOIN**

`TEAM_JOINT_MENU_CHAT`|`TEAM_JOINT_MENU_TARGET`|`TEAM_JOINT_REQUEST`

```lua
-- api/X2Team
TEAM_JOIN:
    | `TEAM_JOINT_MENU_CHAT`
    | `TEAM_JOINT_MENU_TARGET`
    | `TEAM_JOINT_REQUEST`
```

**TEAM_LOOT**

`TEAM_LOOT_FREE_FOR_ALL`|`TEAM_LOOT_MASTER_LOOTER`|`TEAM_LOOT_ROUND_ROBIN`

```lua
-- api/X2Team
TEAM_LOOT:
    | `TEAM_LOOT_FREE_FOR_ALL`
    | `TEAM_LOOT_MASTER_LOOTER`
    | `TEAM_LOOT_ROUND_ROBIN`
```

**TEAM_ROLE**

`TMROLE_DEALER`|`TMROLE_HEALER`|`TMROLE_NONE`|`TMROLE_RANGED_DEALER`|`TMROLE_TANKER`

```lua
-- api/X2Team
TEAM_ROLE:
    | `TMROLE_DEALER`
    | `TMROLE_HEALER`
    | `TMROLE_NONE`
    | `TMROLE_RANGED_DEALER`
    | `TMROLE_TANKER`
```

## Classes
### Class: X2Team
#### Method: GetRaidRecruitSubType
```lua
(method) X2Team:GetRaidRecruitSubType(recruitType: any, recruitSubType: any)
  -> raidRecruitSubType: RaidRecruitSubTypeInfo
```
> Returns information for a specific raid recruit type and subtype.
> 
> @*param* `recruitType` — The raid recruit type.
> 
> @*param* `recruitSubType` — The raid recruit subtype.
> 
> @*return* `raidRecruitSubType` — The subtype information.
> 
> See: [RaidRecruitSubTypeInfo](../types/classes.md#class-raidrecruitsubtypeinfo)

#### Method: MoveTeamMember
```lua
(method) X2Team:MoveTeamMember(frommemberIndex: number, tomemberIndex: number)
```
> Moves a team member to a different position.
> 
> @*param* `frommemberIndex` — The current index of the member. (min: `1`)
> 
> @*param* `tomemberIndex` — The target index to move the member to. (min: `1`)

#### Method: KickTeamMemberByName
```lua
(method) X2Team:KickTeamMemberByName(charName: string, teamRoleType: `TMROLE_DEALER`|`TMROLE_HEALER`|`TMROLE_NONE`|`TMROLE_RANGED_DEALER`|`TMROLE_TANKER`)
```
> Kicks a team member by their character name.
> 
> @*param* `charName` — The name of the character to kick.
> 
> @*param* `teamRoleType` — The role of the member being kicked.
> 
> ```lua
> -- api/X2Team
> teamRoleType:
>     | `TMROLE_DEALER`
>     | `TMROLE_HEALER`
>     | `TMROLE_NONE`
>     | `TMROLE_RANGED_DEALER`
>     | `TMROLE_TANKER`
> ```

#### Method: MoveTeamMemberToParty
```lua
(method) X2Team:MoveTeamMemberToParty(frommemberIndex: number, toParty: number)
```
> Moves a team member to a different party.
> 
> @*param* `frommemberIndex` — The current index of the member.  (min: `1`)
> 
> @*param* `toParty` — The target party number to move the member to.

#### Method: RaidRecruitAdd
```lua
(method) X2Team:RaidRecruitAdd(type: `1`|`2`|`3`|`4`, subType: number, headcount: number, limitLevel: number, autoJoin: boolean, msg: string, hour: number, minute: number, limitGearPoint: number)
```
> Registers a new raid recruitment listing.
> Cooldown 5 seconds.
> 
> @*param* `type` — The type of raid recruitment.
> 
> @*param* `subType` — The subtype of the raid.
> 
> @*param* `headcount` — Maximum number of players that can join.
> 
> @*param* `limitLevel` — Minimum level required to join. (min: `0`, max: `125`, base 0-55 + ancestral 1-70)
> 
> @*param* `autoJoin` — `true` to allow auto-join, `false` otherwise.
> 
> @*param* `msg` — The recruitment message.
> 
> @*param* `hour` — Departure hour.
> 
> @*param* `minute` — Departure minute.
> 
> @*param* `limitGearPoint` — Minimum gear score required to join.
> 
> 
> 
> ```lua
> type:
>     | `1` -- Dungeons
>     | `2` -- Raids
>     | `3` -- Faction War
>     | `4` -- Other
> ```

#### Method: RaidRecruitDel
```lua
(method) X2Team:RaidRecruitDel()
```
> Shows popup confirming if the raid recuitment post should be deleted.
> Cooldown 5 seconds.

#### Method: KickTeamMember
```lua
(method) X2Team:KickTeamMember(memberIndex: string, teamRoleType: `TMROLE_DEALER`|`TMROLE_HEALER`|`TMROLE_NONE`|`TMROLE_RANGED_DEALER`|`TMROLE_TANKER`)
  -> success: boolean
```
> Kicks a team member from the team.
> 
> @*param* `memberIndex` — The index or identifier of the member to kick. (min: `1`)
> 
> @*param* `teamRoleType` — The role of the member being kicked.
> 
> @*return* `success` — `true` if the kick was successful, `false` otherwise.
> 
> ```lua
> -- api/X2Team
> teamRoleType:
>     | `TMROLE_DEALER`
>     | `TMROLE_HEALER`
>     | `TMROLE_NONE`
>     | `TMROLE_RANGED_DEALER`
>     | `TMROLE_TANKER`
> ```

#### Method: GetRole
```lua
(method) X2Team:GetRole(teamIndex: number, memberIndex: number)
  -> role: `TMROLE_DEALER`|`TMROLE_HEALER`|`TMROLE_NONE`|`TMROLE_RANGED_DEALER`|`TMROLE_TANKER`
```
> Retrieves the role of the specified member in the given team.
> 
> @*param* `teamIndex` — The index of the team. (min: `0`)
> 
> @*param* `memberIndex` — The index of the member within the team. (min: `1`)
> 
> @*return* `role` — The role of the member.
> 
> ```lua
> -- api/X2Team
> role:
>     | `TMROLE_DEALER`
>     | `TMROLE_HEALER`
>     | `TMROLE_NONE`
>     | `TMROLE_RANGED_DEALER`
>     | `TMROLE_TANKER`
> ```

#### Method: GetTeamRoleType
```lua
(method) X2Team:GetTeamRoleType()
  -> role: `TMROLE_DEALER`|`TMROLE_HEALER`|`TMROLE_NONE`|`TMROLE_RANGED_DEALER`|`TMROLE_TANKER`
```
> Returns the current role of the local player in the team.
> 
> @*return* `role` — The player's team role.
> 
> ```lua
> -- api/X2Team
> role:
>     | `TMROLE_DEALER`
>     | `TMROLE_HEALER`
>     | `TMROLE_NONE`
>     | `TMROLE_RANGED_DEALER`
>     | `TMROLE_TANKER`
> ```

#### Method: GetRaidRecruitSubTypeList
```lua
(method) X2Team:GetRaidRecruitSubTypeList(recruitTypeList: table, bExceptSiege: boolean)
  -> raidRecruitSubTypeList: RaidRecruitSubType[]
```
> Returns subtype information for multiple raid recruit types.
> 
> @*param* `recruitTypeList` — A table containing the types to look up.
> 
> @*param* `bExceptSiege` — `true` to exclude siege raids from the list, `false` otherwise.
> 
> @*return* `raidRecruitSubTypeList` — A list of subtype information.
> 
> See: [RaidRecruitSubType](../types/classes.md#class-raidrecruitsubtype)

#### Method: GetRaidRecruitTypeList
```lua
(method) X2Team:GetRaidRecruitTypeList()
  -> raidRecruitTypeList: RaidRecruitType[]
```
> Returns the full list of available raid recruit types.
> 
> @*return* `raidRecruitTypeList` — The list of raid recruit types.
> 
> See: [RaidRecruitType](../types/classes.md#class-raidrecruittype)

#### Method: SetRole
```lua
(method) X2Team:SetRole(role: `TMROLE_DEALER`|`TMROLE_HEALER`|`TMROLE_NONE`|`TMROLE_RANGED_DEALER`|`TMROLE_TANKER`)
```
> Sets the player's role in a raid.
> 
> @*param* `role` — The role to set for the player.
> 
> ```lua
> -- api/X2Team
> role:
>     | `TMROLE_DEALER`
>     | `TMROLE_HEALER`
>     | `TMROLE_NONE`
>     | `TMROLE_RANGED_DEALER`
>     | `TMROLE_TANKER`
> ```

