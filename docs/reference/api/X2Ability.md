# X2Ability
## Globals
**ABILITY_ACTIVATION_LEVEL_1**

`integer`

**ABILITY_ACTIVATION_LEVEL_2**

`integer`

**ABILITY_ACTIVATION_LEVEL_3**

`integer`

**ABILITY_GENERAL**

`integer`

**ABILITY_MADNESS**

`integer`

**ABILITY_MAX**

`integer`

**ACTIVE_SKILL_1**

`integer`

**ACTIVE_SKILL_2**

`integer`

**ACTIVE_SKILL_3**

`integer`

**ATTACK_SKILL**

`integer`

**BIK_DESCRIPTION**

`integer`

**BIK_RUNTIME_ALL**

`integer`

**BIK_RUNTIME_DURATION**

`integer`

**BIK_RUNTIME_MINE**

`integer`

**BIK_RUNTIME_STACK**

`integer`

**BIK_RUNTIME_TIMELEFT**

`integer`

**EMOTION_SKILL**

`integer`

**GENERAL_SKILL**

`integer`

**INVALID_ABILITY_KIND**

`integer`

**JOB_SKILL**

`integer`

**MAX_ABILITY_SET_SLOTS**

`integer`

**PASSIVE_SKILL_1**

`integer`

**PASSIVE_SKILL_2**

`integer`

**PASSIVE_SKILL_3**

`integer`

**RAC_FIRST**

`integer`

**RAC_INVALID**

`integer`

**RAC_SECOND**

`integer`

**SAT_ACTIVE**

`integer`

**SAT_HIDE**

`integer`

**SAT_NONACTIVE**

`integer`

**SAT_NONE**

`integer`

**SBC_ATTACK**

`integer`

**SBC_EMOTION**

`integer`

**SBC_GENERAL**

`integer`

**SBC_JOB**

`integer`

**SBC_NONE**

`integer`

**SPECIAL_ABILITY_MUTATION_SKILL**

`integer`

**SPECIAL_ACTIVE_SKILL**

`integer`

**SPECIAL_PASSIVE_SKILL**

`integer`

**X2Ability**

`X2Ability`

## Aliases
**ABILITY_ACTIVATION_LEVEL**

`ABILITY_ACTIVATION_LEVEL_1`|`ABILITY_ACTIVATION_LEVEL_2`|`ABILITY_ACTIVATION_LEVEL_3`

```lua
-- api/X2Ability
ABILITY_ACTIVATION_LEVEL:
    | `ABILITY_ACTIVATION_LEVEL_1`
    | `ABILITY_ACTIVATION_LEVEL_2`
    | `ABILITY_ACTIVATION_LEVEL_3`
```

**ABILITY_TYPE**

`10`|`11`|`12`|`14`|`1`...(+10)

```lua
-- api/X2Ability
ABILITY_TYPE:
    | `ABILITY_GENERAL`
    | `1` -- BATTLERAGE (FIGHT)
    | `2` -- WITCHCRAFT (ILLUSION)
    | `3` -- DEFENSE (ADAMANT)
    | `4` -- AURAMANCY (WILL)
    | `5` -- OCCULTISM (DEATH)
    | `6` -- ARCHERY (WILD)
    | `7` -- SORCERY (MAGIC)
    | `8` -- SHADOWPLAY (VOCATION)
    | `9` -- SONGCRAFT (ROMANCE)
    | `10` -- VITALISM (LOVE)
    | `11` -- MALEDICTION (HATRED)
    | `12` -- SWIFTBLADE (ASSASSIN)
    | `14` -- SPELLDANCE (PLEASURE)
    | `ABILITY_MADNESS` -- GUNSLINGER (MADNESS)
```

**BUFF_INFO_KIND**

`BIK_DESCRIPTION`|`BIK_RUNTIME_ALL`|`BIK_RUNTIME_DURATION`|`BIK_RUNTIME_MINE`|`BIK_RUNTIME_STACK`...(+1)

```lua
-- api/X2Ability
-- Values can be added together to get more information. (e.g, `BIK_DESCRIPTION + BIK_RUNTIME_DURATION`)
BUFF_INFO_KIND:
    | `BIK_DESCRIPTION`
    | `BIK_RUNTIME_ALL`
    | `BIK_RUNTIME_DURATION`
    | `BIK_RUNTIME_MINE`
    | `BIK_RUNTIME_STACK`
    | `BIK_RUNTIME_TIMELEFT`
```

**RECOMMENDED_ABILITY_CATEGORY**

`RAC_FIRST`|`RAC_INVALID`|`RAC_SECOND`

```lua
-- api/X2Ability
RECOMMENDED_ABILITY_CATEGORY:
    | `RAC_FIRST`
    | `RAC_INVALID`
    | `RAC_SECOND`
```

**SBC**

`SBC_ATTACK`|`SBC_EMOTION`|`SBC_GENERAL`|`SBC_JOB`|`SBC_NONE`

```lua
-- api/X2Ability
SBC:
    | `SBC_ATTACK`
    | `SBC_EMOTION`
    | `SBC_GENERAL`
    | `SBC_JOB`
    | `SBC_NONE`
```

**SKILL**

`ACTIVE_SKILL_1`|`ACTIVE_SKILL_2`|`ACTIVE_SKILL_3`|`ATTACK_SKILL`|`EMOTION_SKILL`...(+8)

```lua
-- api/X2Ability
SKILL:
    | `ACTIVE_SKILL_1`
    | `ACTIVE_SKILL_2`
    | `ACTIVE_SKILL_3`
    | `ATTACK_SKILL`
    | `EMOTION_SKILL`
    | `GENERAL_SKILL`
    | `JOB_SKILL`
    | `PASSIVE_SKILL_1`
    | `PASSIVE_SKILL_2`
    | `PASSIVE_SKILL_3`
    | `SPECIAL_ABILITY_MUTATION_SKILL`
    | `SPECIAL_ACTIVE_SKILL`
    | `SPECIAL_PASSIVE_SKILL`
```

**SLOT_ACTIVE_TYPE**

`SAT_ACTIVE`|`SAT_HIDE`|`SAT_NONACTIVE`|`SAT_NONE`

```lua
-- api/X2Ability
SLOT_ACTIVE_TYPE:
    | `SAT_ACTIVE`
    | `SAT_HIDE`
    | `SAT_NONACTIVE`
    | `SAT_NONE`
```

## Classes
### Class: X2Ability
#### Method: GetActiveAbility
```lua
(method) X2Ability:GetActiveAbility()
  -> activeAbilities: ActiveAbilities
```
> Retrieves a list of the player's active ability information.
> 
> @*return* `activeAbilities` — The list of active abilities.
> 
> See: [ActiveAbilities](../types/classes.md#class-activeabilities)

#### Method: GetMyActabilityInfo
```lua
(method) X2Ability:GetMyActabilityInfo(actabilityGroupType: `10`|`11`|`12`|`13`|`14`...(+32))
  -> myActabilityInfo: ActabilityGroupTypeInfo|nil
```
> Returns actability information for the player.
> 
> @*param* `actabilityGroupType` — The actability group type to query.
> 
> @*return* `myActabilityInfo` — The actability information, or `nil` if not found.
> 
> ```lua
> -- db actability_groups
> actabilityGroupType:
>     | `1` -- Alchemy
>     | `2` -- Construction
>     | `3` -- Cooking
>     | `4` -- Handicrafts
>     | `5` -- Husbandry
>     | `6` -- Farming
>     | `7` -- Fishing
>     | `8` -- Logging
>     | `9` -- Gathering
>     | `10` -- Machining
>     | `11` -- Metalwork
>     | `12` -- Printing
>     | `13` -- Mining
>     | `14` -- Masonry
>     | `15` -- Tailoring
>     | `16` -- Leatherwork
>     | `17` -- Weaponry
>     | `18` -- Carpentry
>     | `19` -- Quest
>     | `20` -- Larceny
>     | `21` -- Nuian Language
>     | `22` -- Elven Language
>     | `23` -- Dwarven Language
>     | `24` -- Faerie Language
>     | `25` -- Harani Language
>     | `26` -- Firran Language
>     | `27` -- Warborn Language
>     | `28` -- Returned Language
>     | `29` -- Nuia Continent Dialect
>     | `30` -- Haranya Continent Dialect
>     | `31` -- Commerce
>     | `32` -- Mirage Isle
>     | `33` -- Artistry
>     | `34` -- Exploration
>     | `36` -- Zones
>     | `37` -- Dungeons
>     | `38` -- Other
> ```

#### Method: GetBuffTooltip
```lua
(method) X2Ability:GetBuffTooltip(buffType: number, itemLevel: number, neededInfo?: `BIK_DESCRIPTION`|`BIK_RUNTIME_ALL`|`BIK_RUNTIME_DURATION`|`BIK_RUNTIME_MINE`|`BIK_RUNTIME_STACK`...(+1))
  -> buffTooltip: AppellationBuffInfo
```
> Retrieves information for the buff tooltip based on the buff type and item
> level.
> 
> @*param* `buffType` — The type of buff.
> 
> @*param* `itemLevel` — The item level for the buff.
> 
> @*param* `neededInfo` — Optional additional information for the buff.
> 
> @*return* `buffTooltip` — The buff tooltip information.
> 
> ```lua
> -- api/X2Ability
> -- Values can be added together to get more information. (e.g, `BIK_DESCRIPTION + BIK_RUNTIME_DURATION`)
> neededInfo:
>     | `BIK_DESCRIPTION`
>     | `BIK_RUNTIME_ALL`
>     | `BIK_RUNTIME_DURATION`
>     | `BIK_RUNTIME_MINE`
>     | `BIK_RUNTIME_STACK`
>     | `BIK_RUNTIME_TIMELEFT`
> ```
> 
> See: [AppellationBuffInfo](../types/classes.md#class-appellationbuffinfo)

#### Method: GetAllMyActabilityInfos
```lua
(method) X2Ability:GetAllMyActabilityInfos()
  -> allMyActabilityInfos: ActabilityInfo[]
```
> Retrieves a list of all the player's actability information.
> 
> @*return* `allMyActabilityInfos` — A table of actability information.
> 
> See: [ActabilityInfo](../types/classes.md#class-actabilityinfo)

#### Method: IsActiveAbility
```lua
(method) X2Ability:IsActiveAbility(index: `10`|`11`|`12`|`14`|`1`...(+10))
  -> activeAbility: boolean
```
> Returns if the ability is active.
> 
> @*param* `index` — The ability type to check.
> 
> @*return* `activeAbility` — `true` if the ability is active, `false` otherwise.
> 
> ```lua
> -- api/X2Ability
> index:
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

