# X2Skill
## Globals
**SIK_DESCRIPTION**

`integer`

**X2Skill**

`X2Skill`

## Aliases
**SKILL_INFORMATION_KIND**

`4`|`SIK_DESCRIPTION`

```lua
-- api/X2Skill
-- Values can be added together to get more information.
SKILL_INFORMATION_KIND:
    | `SIK_DESCRIPTION`
    | `4` -- Not defined but can be used to get almost everything thats not the description.
```

## Classes
### Class: X2Skill
#### Method: GetCooldown
```lua
(method) X2Skill:GetCooldown(skillId: number, ignoreGlobalCooldown: boolean)
  -> remainTime: number|nil
  2. totalTime: number|nil
```
> Retrieves the cooldown information for a specified skill.
> 
> @*param* `skillId` — The ID of the skill.
> 
> @*param* `ignoreGlobalCooldown` — `true` to return the skills specific cooldown, `false` to return the player's global cooldown. If the skill has been used and has a remaining time, this parameter is overridden to `true`, showing the skills cooldown instead of the player's global cooldown.
> 
> @*return* `remainTime` — The remaining cooldown time in milliseconds, or `nil` if the skillId doesn't exist. (default: `0`)
> 
> @*return* `totalTime` — The total cooldown time in milliseconds, or `nil` if the skillId doesn't exist. (default: `0`)

#### Method: GetSkillTooltip
```lua
(method) X2Skill:GetSkillTooltip(skillId: number, itemType: number, filter?: `4`|`SIK_DESCRIPTION`)
  -> skillTooltip: SkillTooltip
```
> Returns tooltip information for a skill, filtered by an optional scope.
> 
> @*param* `skillId` — The ID of the skill.
> 
> @*param* `itemType` — The item type associated with the skill.
> 
> @*param* `filter` — Optional filter to reduce the scope of the returned tooltip.
> 
> @*return* `skillTooltip` — The skill tooltip information, or an empty table if no data is available.
> 
> ```lua
> -- api/X2Skill
> -- Values can be added together to get more information.
> filter:
>     | `SIK_DESCRIPTION`
>     | `4` -- Not defined but can be used to get almost everything thats not the description.
> ```
> 
> See: [SkillTooltip](../types/classes.md#class-skilltooltip)

#### Method: GetMateCooldown
```lua
(method) X2Skill:GetMateCooldown(skillId: number, ignoreGlobalCooldown: boolean, mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)
  -> remainTime: number|nil
```
> Retrieves the cooldown information for a specified skill for the mate.
> 
> @*param* `skillId` — The ID of the skill.
> 
> @*param* `ignoreGlobalCooldown` — `true` to return the skill's specific cooldown, `false` to return the global cooldown.
> 
> @*param* `mateType` — The type of mate to query.
> 
> @*return* `remainTime` — The remaining cooldown time in milliseconds, or `nil` if the skillId doesn't exist.
> 
> ```lua
> -- api/X2Mate
> mateType:
>     | `MATE_TYPE_BATTLE`
>     | `MATE_TYPE_NONE`
>     | `MATE_TYPE_RIDE`
> ```

#### Method: Info
```lua
(method) X2Skill:Info(skillId: number)
  -> skillInfo: SkillInfo|nil
```
> Retrieves detailed information about a specified skill.
> 
> @*param* `skillId` — The ID of the skill.
> 
> @*return* `skillInfo` — The skill information, or `nil` if the skillId doesn't exist.
> 
> See: [SkillInfo](../types/classes.md#class-skillinfo)

