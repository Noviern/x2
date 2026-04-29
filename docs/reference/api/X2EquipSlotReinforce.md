# X2EquipSlotReinforce
## Globals
**ESRA_DEFENCE**

`integer`

**ESRA_MAX**

`integer`

**ESRA_OFFENCE**

`integer`

**ESRA_SUPPORT**

`integer`

**X2EquipSlotReinforce**

`X2EquipSlotReinforce`

## Aliases
**EQUIP_SLOT_REINFORCE_ATTRIBUTE**

`ESRA_DEFENCE`|`ESRA_OFFENCE`|`ESRA_SUPPORT`

```lua
-- api/X2EquipSlotReinforce
EQUIP_SLOT_REINFORCE_ATTRIBUTE:
    | `ESRA_DEFENCE`
    | `ESRA_OFFENCE`
    | `ESRA_SUPPORT`
```

## Classes
### Class: X2EquipSlotReinforce
#### Method: GetAppliedAllBundleEffect
```lua
(method) X2EquipSlotReinforce:GetAppliedAllBundleEffect()
  -> appliedAllBundleEffect: table|nil
```
> Returns the currently applied bundle rank effects.
> 
> @*return* `appliedAllBundleEffect` — The list of applied bundle effects, or `nil` if none.

#### Method: GetSetEffectTopLevel
```lua
(method) X2EquipSlotReinforce:GetSetEffectTopLevel(attributeType: `ESRA_DEFENCE`|`ESRA_OFFENCE`|`ESRA_SUPPORT`)
  -> setEffectTopLevel: number
```
> Returns the set effect top level for the specified attribute type.
> This appears to be unused and is likely a relic of an early system.
> 
> @*param* `attributeType` — The attribute type.
> 
> @*return* `setEffectTopLevel` — The top set effect level.
> 
> ```lua
> -- api/X2EquipSlotReinforce
> attributeType:
>     | `ESRA_DEFENCE`
>     | `ESRA_OFFENCE`
>     | `ESRA_SUPPORT`
> ```

#### Method: GetReinforceInfo
```lua
(method) X2EquipSlotReinforce:GetReinforceInfo(equipSlotIndex: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27))
  -> reinforceInfo: ReinforceInfo
```
> Returns reinforcement information for the specified equipment slot.
> 
> @*param* `equipSlotIndex` — The equipment slot index.
> 
> @*return* `reinforceInfo` — The reinforcement info for the slot.
> 
> ```lua
> -- api/X2Equipment
> equipSlotIndex:
>     | `ES_ARMS`
>     | `ES_BACK`
>     | `ES_BACKPACK`
>     | `ES_BEARD`
>     | `ES_BODY`
>     | `ES_CHEST`
>     | `ES_COSPLAY`
>     | `ES_COSPLAYLOOKS`
>     | `ES_EAR_1`
>     | `ES_EAR_2`
>     | `ES_FACE`
>     | `ES_FEET`
>     | `ES_FINGER_1`
>     | `ES_FINGER_2`
>     | `ES_GLASSES`
>     | `ES_HAIR`
>     | `ES_HANDS`
>     | `ES_HEAD`
>     | `ES_HORNS`
>     | `ES_INVALID`
>     | `ES_LEGS`
>     | `ES_MAINHAND`
>     | `ES_MUSICAL`
>     | `ES_NECK`
>     | `ES_OFFHAND`
>     | `ES_RACE_COSPLAY`
>     | `ES_RACE_COSPLAYLOOKS`
>     | `ES_RANGED`
>     | `ES_TAIL`
>     | `ES_UNDERPANTS`
>     | `ES_UNDERSHIRT`
>     | `ES_WAIST`
> ```
> 
> See: [ReinforceInfo](../types/classes.md#class-reinforceinfo)

#### Method: GetNextSetApplyLevel
```lua
(method) X2EquipSlotReinforce:GetNextSetApplyLevel(attributeType: `ESRA_DEFENCE`|`ESRA_OFFENCE`|`ESRA_SUPPORT`)
  -> nextSetApplyLevel: number
```
> Returns the next level required to activate the next set effect for the attribute.
> This appears to be unused and is likely a relic of an early system.
> 
> @*param* `attributeType` — The attribute type.
> 
> @*return* `nextSetApplyLevel` — The level required for the next set effect.
> 
> ```lua
> -- api/X2EquipSlotReinforce
> attributeType:
>     | `ESRA_DEFENCE`
>     | `ESRA_OFFENCE`
>     | `ESRA_SUPPORT`
> ```

#### Method: GetMaterialInfo
```lua
(method) X2EquipSlotReinforce:GetMaterialInfo(equipSlotIndex: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27), level: number)
```
> **Warning:** currently broken, crashes the game.
> 
> @*param* `equipSlotIndex` — The equipment slot index.
> 
> @*param* `level` — The level to query.
> 
> ```lua
> -- api/X2Equipment
> equipSlotIndex:
>     | `ES_ARMS`
>     | `ES_BACK`
>     | `ES_BACKPACK`
>     | `ES_BEARD`
>     | `ES_BODY`
>     | `ES_CHEST`
>     | `ES_COSPLAY`
>     | `ES_COSPLAYLOOKS`
>     | `ES_EAR_1`
>     | `ES_EAR_2`
>     | `ES_FACE`
>     | `ES_FEET`
>     | `ES_FINGER_1`
>     | `ES_FINGER_2`
>     | `ES_GLASSES`
>     | `ES_HAIR`
>     | `ES_HANDS`
>     | `ES_HEAD`
>     | `ES_HORNS`
>     | `ES_INVALID`
>     | `ES_LEGS`
>     | `ES_MAINHAND`
>     | `ES_MUSICAL`
>     | `ES_NECK`
>     | `ES_OFFHAND`
>     | `ES_RACE_COSPLAY`
>     | `ES_RACE_COSPLAYLOOKS`
>     | `ES_RANGED`
>     | `ES_TAIL`
>     | `ES_UNDERPANTS`
>     | `ES_UNDERSHIRT`
>     | `ES_WAIST`
> ```

#### Method: GetSetEffects
```lua
(method) X2EquipSlotReinforce:GetSetEffects(attributeType: `ESRA_DEFENCE`|`ESRA_OFFENCE`|`ESRA_SUPPORT`)
  -> setEffects: SetEffect[]
```
> Returns the set effects for the specified attribute type.
> This appears to be unused and is likely a relic of an early system.
> 
> @*param* `attributeType` — The attribute type.
> 
> @*return* `setEffects` — The list of set effects.
> 
> ```lua
> -- api/X2EquipSlotReinforce
> attributeType:
>     | `ESRA_DEFENCE`
>     | `ESRA_OFFENCE`
>     | `ESRA_SUPPORT`
> ```
> 
> See: [SetEffect](../types/classes.md#class-seteffect)

#### Method: HasNextSetEffect
```lua
(method) X2EquipSlotReinforce:HasNextSetEffect(attributeType: `ESRA_DEFENCE`|`ESRA_OFFENCE`|`ESRA_SUPPORT`)
  -> hasNextSetEffect: boolean
```
> Checks whether the attribute has a next set effect available.
> This appears to be unused and is likely a relic of an early system.
> 
> @*param* `attributeType` — The attribute type.
> 
> @*return* `hasNextSetEffect` — `true` if a next set effect exists, `false` otherwise.
> 
> ```lua
> -- api/X2EquipSlotReinforce
> attributeType:
>     | `ESRA_DEFENCE`
>     | `ESRA_OFFENCE`
>     | `ESRA_SUPPORT`
> ```

#### Method: GetTotalReinforceLevel
```lua
(method) X2EquipSlotReinforce:GetTotalReinforceLevel()
  -> totalReinforceLevel: number
```
> Returns the total reinforcement level across all equipment slots.
> 
> @*return* `totalReinforceLevel` — The sum of all reinforcement levels.

#### Method: IsFullExp
```lua
(method) X2EquipSlotReinforce:IsFullExp(equipSlotIndex: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27))
  -> isFullExp: number
```
> Checks whether the equipment slot has reached full experience.
> 
> @*param* `equipSlotIndex` — The equipment slot index.
> 
> @*return* `isFullExp` — `1` if at full experience, `0` otherwise.
> 
> ```lua
> -- api/X2Equipment
> equipSlotIndex:
>     | `ES_ARMS`
>     | `ES_BACK`
>     | `ES_BACKPACK`
>     | `ES_BEARD`
>     | `ES_BODY`
>     | `ES_CHEST`
>     | `ES_COSPLAY`
>     | `ES_COSPLAYLOOKS`
>     | `ES_EAR_1`
>     | `ES_EAR_2`
>     | `ES_FACE`
>     | `ES_FEET`
>     | `ES_FINGER_1`
>     | `ES_FINGER_2`
>     | `ES_GLASSES`
>     | `ES_HAIR`
>     | `ES_HANDS`
>     | `ES_HEAD`
>     | `ES_HORNS`
>     | `ES_INVALID`
>     | `ES_LEGS`
>     | `ES_MAINHAND`
>     | `ES_MUSICAL`
>     | `ES_NECK`
>     | `ES_OFFHAND`
>     | `ES_RACE_COSPLAY`
>     | `ES_RACE_COSPLAYLOOKS`
>     | `ES_RANGED`
>     | `ES_TAIL`
>     | `ES_UNDERPANTS`
>     | `ES_UNDERSHIRT`
>     | `ES_WAIST`
> ```

#### Method: IsInGameShopItemTag
```lua
(method) X2EquipSlotReinforce:IsInGameShopItemTag(itemType: number)
  -> isInGameShopItem: boolean
```
> **Warning:** This function does not appear to work.
> Checks whether an item is tagged as an in-game shop item.
> 
> @*param* `itemType` — The item type to check.
> 
> @*return* `isInGameShopItem` — `true` if the item is an in-game shop item, `false` otherwise.

#### Method: GetLevelEffectStep
```lua
(method) X2EquipSlotReinforce:GetLevelEffectStep(equipSlotIndex: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27))
  -> levelEffectStep: number
```
> Returns the current level effect step of the specified equipment slot.
> 
> @*param* `equipSlotIndex` — The equipment slot index.
> 
> @*return* `levelEffectStep` — The current level effect step.
> 
> ```lua
> -- api/X2Equipment
> equipSlotIndex:
>     | `ES_ARMS`
>     | `ES_BACK`
>     | `ES_BACKPACK`
>     | `ES_BEARD`
>     | `ES_BODY`
>     | `ES_CHEST`
>     | `ES_COSPLAY`
>     | `ES_COSPLAYLOOKS`
>     | `ES_EAR_1`
>     | `ES_EAR_2`
>     | `ES_FACE`
>     | `ES_FEET`
>     | `ES_FINGER_1`
>     | `ES_FINGER_2`
>     | `ES_GLASSES`
>     | `ES_HAIR`
>     | `ES_HANDS`
>     | `ES_HEAD`
>     | `ES_HORNS`
>     | `ES_INVALID`
>     | `ES_LEGS`
>     | `ES_MAINHAND`
>     | `ES_MUSICAL`
>     | `ES_NECK`
>     | `ES_OFFHAND`
>     | `ES_RACE_COSPLAY`
>     | `ES_RACE_COSPLAYLOOKS`
>     | `ES_RANGED`
>     | `ES_TAIL`
>     | `ES_UNDERPANTS`
>     | `ES_UNDERSHIRT`
>     | `ES_WAIST`
> ```

#### Method: GetLevelEffectChangeUIInfo
```lua
(method) X2EquipSlotReinforce:GetLevelEffectChangeUIInfo(equipSlotIndex: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27))
```
> **Warning:** currently broken, crashes the game.
> 
> @*param* `equipSlotIndex` — The equipment slot index.
> 
> ```lua
> -- api/X2Equipment
> equipSlotIndex:
>     | `ES_ARMS`
>     | `ES_BACK`
>     | `ES_BACKPACK`
>     | `ES_BEARD`
>     | `ES_BODY`
>     | `ES_CHEST`
>     | `ES_COSPLAY`
>     | `ES_COSPLAYLOOKS`
>     | `ES_EAR_1`
>     | `ES_EAR_2`
>     | `ES_FACE`
>     | `ES_FEET`
>     | `ES_FINGER_1`
>     | `ES_FINGER_2`
>     | `ES_GLASSES`
>     | `ES_HAIR`
>     | `ES_HANDS`
>     | `ES_HEAD`
>     | `ES_HORNS`
>     | `ES_INVALID`
>     | `ES_LEGS`
>     | `ES_MAINHAND`
>     | `ES_MUSICAL`
>     | `ES_NECK`
>     | `ES_OFFHAND`
>     | `ES_RACE_COSPLAY`
>     | `ES_RACE_COSPLAYLOOKS`
>     | `ES_RANGED`
>     | `ES_TAIL`
>     | `ES_UNDERPANTS`
>     | `ES_UNDERSHIRT`
>     | `ES_WAIST`
> ```

#### Method: GetAppliedAllSetEffect
```lua
(method) X2EquipSlotReinforce:GetAppliedAllSetEffect()
```


#### Method: GetAppliedAllLevelEffect
```lua
(method) X2EquipSlotReinforce:GetAppliedAllLevelEffect()
  -> appliedAllLevelEffect: AppliedAllLevelEffect[]
```
> Returns a list of all applied level effects from equipment slot reinforcement.
> 
> @*return* `appliedAllLevelEffect` — The list of applied level effects.
> 
> See: [AppliedAllLevelEffect](../types/classes.md#class-appliedallleveleffect)

#### Method: GetLevelEffectInfoByEquipSlot
```lua
(method) X2EquipSlotReinforce:GetLevelEffectInfoByEquipSlot(equipSlotIndex: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27))
  -> levelEffectInfoByEquipSlot: LevelEffectInfo[]
```
> Returns level effect information for the specified equipment slot.
> 
> @*param* `equipSlotIndex` — The equipment slot index.
> 
> @*return* `levelEffectInfoByEquipSlot` — The list of level effects for the slot.
> 
> ```lua
> -- api/X2Equipment
> equipSlotIndex:
>     | `ES_ARMS`
>     | `ES_BACK`
>     | `ES_BACKPACK`
>     | `ES_BEARD`
>     | `ES_BODY`
>     | `ES_CHEST`
>     | `ES_COSPLAY`
>     | `ES_COSPLAYLOOKS`
>     | `ES_EAR_1`
>     | `ES_EAR_2`
>     | `ES_FACE`
>     | `ES_FEET`
>     | `ES_FINGER_1`
>     | `ES_FINGER_2`
>     | `ES_GLASSES`
>     | `ES_HAIR`
>     | `ES_HANDS`
>     | `ES_HEAD`
>     | `ES_HORNS`
>     | `ES_INVALID`
>     | `ES_LEGS`
>     | `ES_MAINHAND`
>     | `ES_MUSICAL`
>     | `ES_NECK`
>     | `ES_OFFHAND`
>     | `ES_RACE_COSPLAY`
>     | `ES_RACE_COSPLAYLOOKS`
>     | `ES_RANGED`
>     | `ES_TAIL`
>     | `ES_UNDERPANTS`
>     | `ES_UNDERSHIRT`
>     | `ES_WAIST`
> ```
> 
> See: [LevelEffectInfo](../types/classes.md#class-leveleffectinfo)

#### Method: GetAttributeTotalLevel
```lua
(method) X2EquipSlotReinforce:GetAttributeTotalLevel(attributeType: `ESRA_DEFENCE`|`ESRA_OFFENCE`|`ESRA_SUPPORT`)
  -> attributeTotalLevel: number
```
> Returns the total level of the specified attribute type across all reinforced slots.
> 
> @*param* `attributeType` — The attribute type.
> 
> @*return* `attributeTotalLevel` — The total level of the attribute.
> 
> ```lua
> -- api/X2EquipSlotReinforce
> attributeType:
>     | `ESRA_DEFENCE`
>     | `ESRA_OFFENCE`
>     | `ESRA_SUPPORT`
> ```

#### Method: GetBundleEffectInfos
```lua
(method) X2EquipSlotReinforce:GetBundleEffectInfos()
  -> bundleEffectInfos: BundleEffectInfo[]
```
> Returns a list of all available bundle rank effects.
> 
> @*return* `bundleEffectInfos` — The list of bundle effect information.
> 
> See: [BundleEffectInfo](../types/classes.md#class-bundleeffectinfo)

#### Method: GetAttributeType
```lua
(method) X2EquipSlotReinforce:GetAttributeType(equipSlotIndex: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27))
  -> attributeType: `ESRA_DEFENCE`|`ESRA_OFFENCE`|`ESRA_SUPPORT`
```
> Returns the attribute type associated with the given equipment slot.
> 
> @*param* `equipSlotIndex` — The equipment slot index.
> 
> @*return* `attributeType` — The corresponding attribute type.
> 
> ```lua
> -- api/X2Equipment
> equipSlotIndex:
>     | `ES_ARMS`
>     | `ES_BACK`
>     | `ES_BACKPACK`
>     | `ES_BEARD`
>     | `ES_BODY`
>     | `ES_CHEST`
>     | `ES_COSPLAY`
>     | `ES_COSPLAYLOOKS`
>     | `ES_EAR_1`
>     | `ES_EAR_2`
>     | `ES_FACE`
>     | `ES_FEET`
>     | `ES_FINGER_1`
>     | `ES_FINGER_2`
>     | `ES_GLASSES`
>     | `ES_HAIR`
>     | `ES_HANDS`
>     | `ES_HEAD`
>     | `ES_HORNS`
>     | `ES_INVALID`
>     | `ES_LEGS`
>     | `ES_MAINHAND`
>     | `ES_MUSICAL`
>     | `ES_NECK`
>     | `ES_OFFHAND`
>     | `ES_RACE_COSPLAY`
>     | `ES_RACE_COSPLAYLOOKS`
>     | `ES_RANGED`
>     | `ES_TAIL`
>     | `ES_UNDERPANTS`
>     | `ES_UNDERSHIRT`
>     | `ES_WAIST`
> 
> -- api/X2EquipSlotReinforce
> attributeType:
>     | `ESRA_DEFENCE`
>     | `ESRA_OFFENCE`
>     | `ESRA_SUPPORT`
> ```

#### Method: GetBundleEffectTopLevel
```lua
(method) X2EquipSlotReinforce:GetBundleEffectTopLevel()
  -> myBundleEffectTopLevel: number
```
> Returns the player's current bundle rank level.
> 
> @*return* `myBundleEffectTopLevel` — The player's top bundle effect level.

#### Method: SuitableLevelForEquipSlotReinforce
```lua
(method) X2EquipSlotReinforce:SuitableLevelForEquipSlotReinforce()
  -> suitableLevelForEquipSlotReinforce: boolean
```
> Checks whether the player is high enough level to reinforce equipment slots.
> 
> @*return* `suitableLevelForEquipSlotReinforce` — `true` if the player meets the level requirement, `false` otherwise.

