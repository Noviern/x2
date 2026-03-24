# X2CombatResource
## Globals
**CRU_DOUBLE_GAUGE**

`integer`

**CRU_DOUBLE_GAUGE_2**

`integer`

**CRU_GAUGE**

`integer`

**CRU_OVERLAP**

`integer`

**X2CombatResource**

`X2CombatResource`

## Aliases
**COMBAT_RESOURCE_UITYPE**

COMBAT_RESOURCE_UITYPE

```lua
-- api/X2CombatResource
COMBAT_RESOURCE_UITYPE:
    | `CRU_DOUBLE_GAUGE`
    | `CRU_DOUBLE_GAUGE_2`
    | `CRU_GAUGE`
    | `CRU_OVERLAP`
```

## Classes
### Class: X2CombatResource
#### Method: CheckCombatResourceMaxPointByGroupType
```lua
(method) X2CombatResource:CheckCombatResourceMaxPointByGroupType(groupType: ABILITY_TYPE)
  -> maxPointByGroupType: boolean
```
> Checks if the combat resource for the specified group type is at its maximum.
> 
> @*param* `groupType` — The group type to check.
> 
> @*return* `maxPointByGroupType` — `true` if the combat resource is at maximum, `false` otherwise.
> 
> ```lua
> -- api/X2Ability
> groupType:
>     | `ABILITY_GENERAL`
>     | `1` -- BATTLERAGE (FIGHT)
>     | `2` -- WITCHCRAFT (ILLUSION)
>     | `3` -- DEFENSE (ADAMANT)
>     | `4` -- AURAMANCY (WILL)
>     | `5` -- OCCULTISM (DEATH)
>     | `6` -- ARCHERY (WILD)
>     | `7` -- SORCERY (MAGIC)
>     | `8` -- SHADOWPLAY (VOCATION)
>     | `9` -- SONGCRAFT (ROMANCE)
>     | `10` -- VITALISM (LOVE)
>     | `11` -- MALEDICTION (HATRED)
>     | `12` -- SWIFTBLADE (ASSASSIN)
>     | `14` -- SPELLDANCE (PLEASURE)
>     | `ABILITY_MADNESS` -- GUNSLINGER (MADNESS)
> ```

#### Method: GetCombatResourceInfo
```lua
(method) X2CombatResource:GetCombatResourceInfo()
  -> combatResourceInfo: CombatResources
```
> Retrieves a list of combat resource information for all available ability
> types.
> 
> @*return* `combatResourceInfo` — A table of combat resource information.
> 
> See: [CombatResources](../types/classes.md#class-combatresources)

#### Method: GetCombatResourceInfoByGroupType
```lua
(method) X2CombatResource:GetCombatResourceInfoByGroupType(groupType: ABILITY_TYPE)
  -> combatResourceInfo: CombatResource|nil
```
> Retrieves combat resource information for the specified group type if the
> player has it.
> 
> @*param* `groupType` — The group type to query.
> 
> @*return* `combatResourceInfo` — The combat resource information, or `nil` if not available.
> 
> ```lua
> -- api/X2Ability
> groupType:
>     | `ABILITY_GENERAL`
>     | `1` -- BATTLERAGE (FIGHT)
>     | `2` -- WITCHCRAFT (ILLUSION)
>     | `3` -- DEFENSE (ADAMANT)
>     | `4` -- AURAMANCY (WILL)
>     | `5` -- OCCULTISM (DEATH)
>     | `6` -- ARCHERY (WILD)
>     | `7` -- SORCERY (MAGIC)
>     | `8` -- SHADOWPLAY (VOCATION)
>     | `9` -- SONGCRAFT (ROMANCE)
>     | `10` -- VITALISM (LOVE)
>     | `11` -- MALEDICTION (HATRED)
>     | `12` -- SWIFTBLADE (ASSASSIN)
>     | `14` -- SPELLDANCE (PLEASURE)
>     | `ABILITY_MADNESS` -- GUNSLINGER (MADNESS)
> ```
> 
> See: [CombatResource](../types/classes.md#class-combatresource)

