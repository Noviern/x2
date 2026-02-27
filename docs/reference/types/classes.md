# classes
## Aliases
**ListCtrlItemSubItem**

Button|SubItemString|Textbox|Window

[Button](lua://Button)

A `Button` widget is clickable and responds to mouse interaction with four
visual states: normal, highlighted (hover), pushed (pressed), and disabled.
Supports per-state custom backgrounds, tint colors, text coloring,
auto-resize, content insets, and per-mouse-button click registration.

**Dependencies**:
 - [TextStyle](lua://TextStyle) used for the `style` field.
 - [EffectDrawable](lua://EffectDrawable) used for getting the background state drawable.
 - [ImageDrawable](lua://ImageDrawable) used for getting the background state drawable.
 - [NinePartDrawable](lua://NinePartDrawable) used for getting the background state drawable.
 - [ThreePartDrawable](lua://ThreePartDrawable) used for getting the background state drawable.


## Classes
### Class: AAFormat
#### Field: desc
```lua
string
```


#### Field: samples
```lua
number
```


#### Field: quality
```lua
number
```


#### Field: txaa
```lua
number
```


### Class: AchievementCategory
#### Field: categoryType
```lua
number
```


#### Field: name
```lua
string
```


#### Field: subCategories
```lua
AchievementSubCategory[]
```


### Class: AchievementInfo
#### Field: achievementKind
```lua
number
```


#### Field: name
```lua
string
```


#### Field: objective
```lua
number|nil[]
```
> TODO: I think this is only set if highRank == true

#### Field: isParentComplete
```lua
boolean|nil
```
> TODO: I think this is only set if highRank == false

#### Field: isHidden
```lua
boolean
```


#### Field: iconPath
```lua
string
```


#### Field: reward
```lua
RewardInfo|nil
```
> TODO: I think this is only set if highRank == true

#### Field: subCategoryType
```lua
number
```


#### Field: subCategoryName
```lua
string
```


#### Field: totalSubCount
```lua
number|nil
```
> TODO: I think this is only set if highRank == true

#### Field: summary
```lua
string
```


#### Field: tracing
```lua
boolean
```


#### Field: highRankAchievementType
```lua
number|nil
```
> mainType @TODO: I think this is only set if highRank == false

#### Field: grade
```lua
number
```


#### Field: complete
```lua
boolean
```


#### Field: categoryName
```lua
string
```


#### Field: canProgress
```lua
boolean
```


#### Field: highRank
```lua
boolean
```


#### Field: completeDate
```lua
Time|nil
```
> This is set if complete == true

#### Field: completeSubCount
```lua
number|nil
```
> TODO: I think this is only set if highRank == true

#### Field: completeNum
```lua
number
```


#### Field: desc
```lua
string
```


#### Field: current
```lua
number
```


#### Field: type
```lua
number
```


### Class: AchievementLevelSubCategory
Extends [AchievementSubCategory](../types/AchievementSubCategory.md#class-achievementsubcategory)

#### Field: isHeirLevelCategory
```lua
boolean
```


#### Field: name
```lua
string
```


#### Field: subCategoryType
```lua
number
```


### Class: AchievementSubCategory
#### Field: name
```lua
string
```


#### Field: subCategoryType
```lua
number
```


### Class: AchievementSubList
#### Field: key
```lua
number
```


### Class: ActabilityGroupTypeInfo
Extends [ActabilityInfo](../types/ActabilityInfo.md#class-actabilityinfo)

#### Field: grade
```lua
number
```


#### Field: point
```lua
number
```


#### Field: type
```lua
number
```


#### Field: name
```lua
string
```


#### Field: modifyPoint
```lua
number
```


#### Field: viewGroupType
```lua
number
```


### Class: ActabilityInfo
#### Field: grade
```lua
number
```


#### Field: point
```lua
number
```


#### Field: name
```lua
string
```


#### Field: modifyPoint
```lua
number
```


#### Field: type
```lua
number
```


### Class: ActiveAbilities
#### Field: [1]
```lua
ActiveAbility
```


#### Field: [2]
```lua
ActiveAbility|nil
```


#### Field: [3]
```lua
ActiveAbility|nil
```


### Class: ActiveAbility
#### Field: bool
```lua
boolean
```


#### Field: levelPercent
```lua
number
```


#### Field: nextLevelTotalExp
```lua
string
```


#### Field: level
```lua
number
```


#### Field: exp
```lua
string
```


#### Field: type
```lua
`10`|`11`|`12`|`14`|`1`...(+10)
```
> api/X2Ability

### Class: AddonInfo
#### Field: enable
```lua
boolean
```


#### Field: name
```lua
string
```


### Class: Appellation
#### Field: [1]
```lua
number
```
> TYPE

#### Field: [4]
```lua
number
```
> ISHAVE

#### Field: [5]
```lua
number
```
> ORDER

#### Field: [3]
```lua
number
```
> GRADE

#### Field: [2]
```lua
string|nil
```
> NAME

#### Field: [6]
```lua
AppellationBuffInfo|nil
```
> BUFFINFO

### Class: AppellationBuffInfo
#### Field: buff_id
```lua
number
```


#### Field: name
```lua
string
```


#### Field: path
```lua
string
```


#### Field: description
```lua
string
```


#### Field: category
```lua
string
```


#### Field: tipType
```lua
string
```


### Class: AppellationChangeItemInfo
#### Field: enough
```lua
boolean
```


#### Field: itemType
```lua
number
```


#### Field: has
```lua
number
```


#### Field: need
```lua
number
```


### Class: AppellationInfo
#### Field: iconPath
```lua
string
```


#### Field: name
```lua
string
```


### Class: AppellationMyLevelInfo
#### Field: exp
```lua
number
```


#### Field: maxlevel
```lua
number
```


#### Field: maxExp
```lua
number
```


#### Field: level
```lua
number
```


#### Field: minExp
```lua
number
```


### Class: AppellationMyStamp
#### Field: id
```lua
number
```


#### Field: path
```lua
string
```


### Class: AppellationRouteInfo
#### Field: kind
```lua
number
```


#### Field: routePopup
```lua
number
```


#### Field: routeDesc
```lua
string
```


#### Field: type
```lua
number
```


### Class: BaseLinkInfo
#### Field: linkType
```lua
"character"|"craft"|"invalid"|"item"|"none"...(+4)
```


### Class: BasicCursorShape
#### Field: [1]
```lua
number
```


#### Field: [4]
```lua
number
```


#### Field: [5]
```lua
number
```


#### Field: [3]
```lua
number
```


#### Field: [2]
```lua
number
```


#### Field: [6]
```lua
number
```


### Class: BonusesInfo
#### Field: bufDesc
```lua
string
```


#### Field: numPieces
```lua
number
```


#### Field: satisfied
```lua
boolean
```


### Class: Bound
#### Field: height
```lua
number
```
> unscaled height

#### Field: x
```lua
number
```
> scaled x

#### Field: width
```lua
number
```
> unscaled width

#### Field: y
```lua
number
```
> scaled y

### Class: BuffInfo
#### Field: buff_id
```lua
number
```


#### Field: timeLeft
```lua
number|nil
```


#### Field: stack
```lua
number
```


#### Field: path
```lua
string
```


#### Field: timeUnit
```lua
"msec"|"sec"|nil
```


### Class: BuffTooltip
Extends [BuffInfo](../types/BuffInfo.md#class-buffinfo)

#### Field: buff_id
```lua
number
```


#### Field: path
```lua
string
```


#### Field: stack
```lua
number
```


#### Field: timeLeft
```lua
number|nil
```


#### Field: timeUnit
```lua
"msec"|"sec"|nil
```


#### Field: name
```lua
string|nil
```


#### Field: duration
```lua
number|nil
```


#### Field: mine
```lua
boolean|nil
```


#### Field: category
```lua
"Buff"|"Debuff"
```


#### Field: description
```lua
string|nil
```


#### Field: tipType
```lua
"appStamp"|"buff"|"debuff"|"mate_skill"|"passive"...(+4)
```


### Class: CHAT_MESSAGE_INFO
#### Field: charId
```lua
string
```
> the unqiue id associated with the character when it was created

#### Field: speakerInChatBound
```lua
boolean
```


#### Field: specifyName
```lua
string
```
> specifyName or empty

#### Field: trialPosition
```lua
string
```
> trial position or empty

#### Field: npcBubbleChat
```lua
boolean
```


#### Field: factionName
```lua
string
```


#### Field: isUserChat
```lua
boolean
```


#### Field: displayLocale
```lua
`LOCALE_DE`|`LOCALE_EN_SG`|`LOCALE_EN_US`|`LOCALE_FR`|`LOCALE_IND`...(+7)
```
> api/X2Chat

#### Field: unitId
```lua
string
```
> the units id or "0" if unknown

### Class: CacheData
#### Field: cacheType
```lua
`CT_ABILITY`|`CT_EXPEDITION_NAME`|`CT_NAME`
```
> types/Widget
> Cache Type

#### Field: name
```lua
string
```


### Class: CastingInfo
#### Field: castingTime
```lua
number
```


#### Field: showTargetCastingTime
```lua
boolean
```


#### Field: currCastingTime
```lua
number
```


#### Field: castingUseable
```lua
boolean
```


#### Field: spellName
```lua
string
```


### Class: ChangeOptionInfo
#### Field: display
```lua
false
```


### Class: ChangeVisualRace
#### Field: itemId
```lua
number
```


#### Field: skillType
```lua
number
```


#### Field: raceList
```lua
number[]
```


#### Field: time
```lua
number
```


### Class: CharacterLinkInfo
Extends [BaseLinkInfo](../types/BaseLinkInfo.md#class-baselinkinfo), [CommonLinkFields](../types/CommonLinkFields.md#class-commonlinkfields)

#### Field: filter
```lua
number
```


#### Field: linkType
```lua
"character"
```


#### Field: isOtherWorld
```lua
boolean
```


#### Field: messageTimeStamp
```lua
number
```


### Class: ChatMessageOption
#### Field: isOtherWorldMessage
```lua
boolean|nil
```


#### Field: npcBubbleChat
```lua
boolean|nil
```


#### Field: messageLocale
```lua
`LOCALE_DE`|`LOCALE_EN_SG`|`LOCALE_EN_US`|`LOCALE_FR`|`LOCALE_IND`...(+8)
```
> api/X2Chat

#### Field: isUserChat
```lua
boolean
```
> Creates a time stamp

#### Field: specifyName
```lua
string|nil
```


### Class: ChronicleInfo
#### Field: mainKey
```lua
number
```


#### Field: openKey
```lua
number
```


#### Field: status
```lua
string|"active"|"complete"
```


### Class: CombatAuraSuffix
#### Field: auraType
```lua
"BUFF"|"DEBUFF"
```


#### Field: combatText
```lua
boolean
```


### Class: CombatCastFailedSuffix
#### Field: failType
```lua
any
```
> TODO:

### Class: CombatDamageSuffix
#### Field: damage
```lua
number
```


#### Field: powerType
```lua
"HEALTH"|"MANA"
```


#### Field: reduced
```lua
number
```


#### Field: showElementEffect
```lua
boolean
```


#### Field: hitType
```lua
"CRITICAL"|"HIT"
```
> TODO: COMBAT_HIT_TYPE?

#### Field: elementDamage
```lua
number
```


#### Field: elementType
```lua
number
```


#### Field: synergy
```lua
boolean
```


### Class: CombatDrainSuffix
Extends [CombatEnergizeSuffix](../types/CombatEnergizeSuffix.md#class-combatenergizesuffix)

#### Field: amount
```lua
any
```


#### Field: powerType
```lua
"HEALTH"|"MANA"
```


### Class: CombatEnergizeSuffix
#### Field: amount
```lua
any
```


#### Field: powerType
```lua
"HEALTH"|"MANA"
```


### Class: CombatEnvironmentalDamage
Extends [CombatEnvironmentalPrefix](../types/CombatEnvironmentalPrefix.md#class-combatenvironmentalprefix), [CombatDamageSuffix](../types/CombatDamageSuffix.md#class-combatdamagesuffix)

#### Field: damage
```lua
number
```


#### Field: reduced
```lua
number
```


#### Field: showElementEffect
```lua
boolean
```


#### Field: source
```lua
"COLLISION"|"DROWNING"|"FALLING"
```


#### Field: subType
```lua
`COLLISION_PART_BOTTOM`|`COLLISION_PART_FRONT`|`COLLISION_PART_REAR`|`COLLISION_PART_SIDE`|`COLLISION_PART_TOP`
```
> api/X2Chat

#### Field: powerType
```lua
"HEALTH"|"MANA"
```


#### Field: hitType
```lua
"CRITICAL"|"HIT"
```
> TODO: COMBAT_HIT_TYPE?

#### Field: mySlave
```lua
any
```
> TODO:

#### Field: elementDamage
```lua
number
```


#### Field: elementType
```lua
number
```


#### Field: synergy
```lua
boolean
```


### Class: CombatEnvironmentalPrefix
#### Field: mySlave
```lua
any
```
> TODO:

#### Field: source
```lua
"COLLISION"|"DROWNING"|"FALLING"
```


#### Field: subType
```lua
`COLLISION_PART_BOTTOM`|`COLLISION_PART_FRONT`|`COLLISION_PART_REAR`|`COLLISION_PART_SIDE`|`COLLISION_PART_TOP`
```
> api/X2Chat

### Class: CombatHealedSuffix
#### Field: elementType
```lua
number
```


#### Field: hitType
```lua
"CRITICAL"|"HIT"
```


#### Field: heal
```lua
number
```


#### Field: showElementEffect
```lua
boolean
```


### Class: CombatLeechSuffix
Extends [CombatEnergizeSuffix](../types/CombatEnergizeSuffix.md#class-combatenergizesuffix)

#### Field: amount
```lua
any
```


#### Field: powerType
```lua
"HEALTH"|"MANA"
```


### Class: CombatMeleeDamage
Extends [CombatDamageSuffix](../types/CombatDamageSuffix.md#class-combatdamagesuffix)

#### Field: damage
```lua
number
```


#### Field: powerType
```lua
"HEALTH"|"MANA"
```


#### Field: reduced
```lua
number
```


#### Field: showElementEffect
```lua
boolean
```


#### Field: hitType
```lua
"CRITICAL"|"HIT"
```
> TODO: COMBAT_HIT_TYPE?

#### Field: elementDamage
```lua
number
```


#### Field: elementType
```lua
number
```


#### Field: synergy
```lua
boolean
```


### Class: CombatMeleeMissed
Extends [CombatMissSuffix](../types/CombatMissSuffix.md#class-combatmisssuffix)

#### Field: damage
```lua
number
```


#### Field: missType
```lua
"BLOCK"|"DODGE"|"IMMUNE"|"MISS"|"PARRY"...(+1)
```


#### Field: reduced
```lua
number
```


#### Field: elementType
```lua
number
```


#### Field: elementDamage
```lua
number
```


#### Field: showElementEffect
```lua
boolean
```


### Class: CombatMissSuffix
#### Field: damage
```lua
number
```


#### Field: missType
```lua
"BLOCK"|"DODGE"|"IMMUNE"|"MISS"|"PARRY"...(+1)
```


#### Field: reduced
```lua
number
```


#### Field: elementType
```lua
number
```


#### Field: elementDamage
```lua
number
```


#### Field: showElementEffect
```lua
boolean
```


### Class: CombatResource
#### Field: ability
```lua
number
```


#### Field: resource1Max
```lua
number
```


#### Field: resource2ColorKey
```lua
string|nil
```


#### Field: resource2Current
```lua
number|nil
```


#### Field: resource2Max
```lua
number|nil
```


#### Field: resource1Current
```lua
number
```


#### Field: recoveryResourceType
```lua
number
```


#### Field: resource1ColorKey
```lua
string
```


#### Field: isDefaultResource
```lua
boolean
```


#### Field: uiType
```lua
`CRU_DOUBLE_GAUGE_2`|`CRU_DOUBLE_GAUGE`|`CRU_GAUGE`|`CRU_OVERLAP`
```
> api/X2CombatResource

### Class: CombatResourceInfo
Extends [CombatResource](../types/CombatResource.md#class-combatresource)

#### Field: ability
```lua
number
```


#### Field: resource2ColorKey
```lua
string|nil
```


#### Field: resource1Max
```lua
number
```


#### Field: resource2Current
```lua
number|nil
```


#### Field: resource2Max
```lua
number|nil
```


#### Field: tooltip
```lua
string
```


#### Field: resource1Current
```lua
number
```


#### Field: recoveryResourceType
```lua
number
```


#### Field: groupType
```lua
number
```


#### Field: resource1ColorKey
```lua
string
```


#### Field: iconPath
```lua
string
```


#### Field: isDefaultResource
```lua
boolean
```


#### Field: uiType
```lua
`CRU_DOUBLE_GAUGE_2`|`CRU_DOUBLE_GAUGE`|`CRU_GAUGE`|`CRU_OVERLAP`
```
> api/X2CombatResource

### Class: CombatResources
#### Field: [1]
```lua
CombatResourceInfo
```


#### Field: [2]
```lua
CombatResourceInfo
```


#### Field: [3]
```lua
CombatResourceInfo
```


### Class: CombatSpellAuraApplied
Extends [CombatSpellPrefix](../types/CombatSpellPrefix.md#class-combatspellprefix), [CombatAuraSuffix](../types/CombatAuraSuffix.md#class-combataurasuffix)

#### Field: auraType
```lua
"BUFF"|"DEBUFF"
```


#### Field: spellName
```lua
string
```


#### Field: spellId
```lua
number
```


#### Field: combatText
```lua
boolean
```


#### Field: spellSchool
```lua
string
```
> PHYSICAL|HOLY

### Class: CombatSpellAuraRemoved
Extends [CombatSpellPrefix](../types/CombatSpellPrefix.md#class-combatspellprefix), [CombatAuraSuffix](../types/CombatAuraSuffix.md#class-combataurasuffix)

#### Field: auraType
```lua
"BUFF"|"DEBUFF"
```


#### Field: spellName
```lua
string
```


#### Field: spellId
```lua
number
```


#### Field: combatText
```lua
boolean
```


#### Field: spellSchool
```lua
string
```
> PHYSICAL|HOLY

### Class: CombatSpellCastFailed
Extends [CombatSpellPrefix](../types/CombatSpellPrefix.md#class-combatspellprefix), [CombatCastFailedSuffix](../types/CombatCastFailedSuffix.md#class-combatcastfailedsuffix)

#### Field: failType
```lua
any
```
> TODO:

#### Field: spellName
```lua
string
```


#### Field: spellId
```lua
number
```


#### Field: spellSchool
```lua
string
```
> PHYSICAL|HOLY

### Class: CombatSpellCastStart
Extends [CombatSpellPrefix](../types/CombatSpellPrefix.md#class-combatspellprefix)

#### Field: spellId
```lua
number
```


#### Field: spellName
```lua
string
```


#### Field: spellSchool
```lua
string
```
> PHYSICAL|HOLY

### Class: CombatSpellCastSuccess
Extends [CombatSpellPrefix](../types/CombatSpellPrefix.md#class-combatspellprefix)

#### Field: spellId
```lua
number
```


#### Field: spellName
```lua
string
```


#### Field: spellSchool
```lua
string
```
> PHYSICAL|HOLY

### Class: CombatSpellDamage
Extends [CombatSpellPrefix](../types/CombatSpellPrefix.md#class-combatspellprefix), [CombatDamageSuffix](../types/CombatDamageSuffix.md#class-combatdamagesuffix)

#### Field: damage
```lua
number
```


#### Field: showElementEffect
```lua
boolean
```


#### Field: spellId
```lua
number
```


#### Field: spellName
```lua
string
```


#### Field: spellSchool
```lua
string
```
> PHYSICAL|HOLY

#### Field: reduced
```lua
number
```


#### Field: hitType
```lua
"CRITICAL"|"HIT"
```
> TODO: COMBAT_HIT_TYPE?

#### Field: powerType
```lua
"HEALTH"|"MANA"
```


#### Field: elementDamage
```lua
number
```


#### Field: elementType
```lua
number
```


#### Field: synergy
```lua
boolean
```


### Class: CombatSpellDotDamage
Extends [CombatSpellPrefix](../types/CombatSpellPrefix.md#class-combatspellprefix), [CombatDamageSuffix](../types/CombatDamageSuffix.md#class-combatdamagesuffix)

#### Field: damage
```lua
number
```


#### Field: showElementEffect
```lua
boolean
```


#### Field: spellId
```lua
number
```


#### Field: spellName
```lua
string
```


#### Field: spellSchool
```lua
string
```
> PHYSICAL|HOLY

#### Field: reduced
```lua
number
```


#### Field: hitType
```lua
"CRITICAL"|"HIT"
```
> TODO: COMBAT_HIT_TYPE?

#### Field: powerType
```lua
"HEALTH"|"MANA"
```


#### Field: elementDamage
```lua
number
```


#### Field: elementType
```lua
number
```


#### Field: synergy
```lua
boolean
```


### Class: CombatSpellEnergize
Extends [CombatSpellPrefix](../types/CombatSpellPrefix.md#class-combatspellprefix)

#### Field: spellId
```lua
number
```


#### Field: spellName
```lua
string
```


#### Field: spellSchool
```lua
string
```
> PHYSICAL|HOLY

### Class: CombatSpellHealed
Extends [CombatSpellPrefix](../types/CombatSpellPrefix.md#class-combatspellprefix), [CombatHealedSuffix](../types/CombatHealedSuffix.md#class-combathealedsuffix)

#### Field: elementType
```lua
number
```


#### Field: spellId
```lua
number
```


#### Field: spellName
```lua
string
```


#### Field: showElementEffect
```lua
boolean
```


#### Field: heal
```lua
number
```


#### Field: hitType
```lua
"CRITICAL"|"HIT"
```


#### Field: spellSchool
```lua
string
```
> PHYSICAL|HOLY

### Class: CombatSpellMissed
Extends [CombatSpellPrefix](../types/CombatSpellPrefix.md#class-combatspellprefix), [CombatMissSuffix](../types/CombatMissSuffix.md#class-combatmisssuffix)

#### Field: damage
```lua
number
```


#### Field: showElementEffect
```lua
boolean
```


#### Field: spellId
```lua
number
```


#### Field: spellName
```lua
string
```


#### Field: reduced
```lua
number
```


#### Field: elementType
```lua
number
```


#### Field: missType
```lua
"BLOCK"|"DODGE"|"IMMUNE"|"MISS"|"PARRY"...(+1)
```


#### Field: elementDamage
```lua
number
```


#### Field: spellSchool
```lua
string
```
> PHYSICAL|HOLY

### Class: CombatSpellPrefix
#### Field: spellId
```lua
number
```


#### Field: spellName
```lua
string
```


#### Field: spellSchool
```lua
string
```
> PHYSICAL|HOLY

### Class: CommonFarmItem
#### Field: growthDone
```lua
boolean
```


#### Field: name
```lua
string
```


### Class: CommonLinkFields
#### Field: filter
```lua
number
```


#### Field: isOtherWorld
```lua
boolean
```


#### Field: messageTimeStamp
```lua
number
```


### Class: CompleteCraftOrderInfo
#### Field: craftCount
```lua
number
```


#### Field: craftGrade
```lua
`0`|`10`|`11`|`12`|`1`...(+8)
```


#### Field: craftType
```lua
number
```


### Class: Craft
#### Field: craftType
```lua
number
```


#### Field: value
```lua
number
```


### Class: CraftBaseInfo
#### Field: actability_satisfied
```lua
boolean
```


#### Field: required_actability_name
```lua
string
```


#### Field: require_doodad
```lua
number
```


#### Field: recommend_level
```lua
number
```


#### Field: required_actability_point
```lua
number
```


#### Field: skill_type
```lua
number
```


#### Field: required_actability_type
```lua
number
```


#### Field: title
```lua
string
```


#### Field: orderable
```lua
boolean
```


#### Field: laborpower_satisfied
```lua
boolean
```


#### Field: cost
```lua
number
```


#### Field: consume_lp
```lua
number
```


#### Field: needed_lp
```lua
number
```


#### Field: cost_satisfied
```lua
boolean
```


#### Field: doodad_name
```lua
string
```


#### Field: craft_type
```lua
number
```


#### Field: use_only_actability
```lua
boolean
```


### Class: CraftLinkInfo
Extends [BaseLinkInfo](../types/BaseLinkInfo.md#class-baselinkinfo), [CommonLinkFields](../types/CommonLinkFields.md#class-commonlinkfields)

#### Field: craftType
```lua
number
```


#### Field: linkType
```lua
"craft"
```


#### Field: isOtherWorld
```lua
boolean
```


#### Field: filter
```lua
number
```


#### Field: messageTimeStamp
```lua
number
```


### Class: CraftOrderEntries
#### Field: [1]
```lua
CraftOrderEntry|nil
```


#### Field: [5]
```lua
CraftOrderEntry|nil
```


#### Field: [6]
```lua
CraftOrderEntry|nil
```


#### Field: [7]
```lua
CraftOrderEntry|nil
```


#### Field: [4]
```lua
CraftOrderEntry|nil
```


#### Field: [2]
```lua
CraftOrderEntry|nil
```


#### Field: [3]
```lua
CraftOrderEntry|nil
```


#### Field: [8]
```lua
CraftOrderEntry|nil
```


### Class: CraftOrderEntry
#### Field: chargeFee
```lua
string
```


#### Field: entryIndex
```lua
number
```


#### Field: entryId
```lua
number
```


#### Field: fee
```lua
string
```


#### Field: remainTime
```lua
number
```


#### Field: mine
```lua
number
```


#### Field: requireLp
```lua
number
```


#### Field: enableLp
```lua
boolean
```


#### Field: craftType
```lua
number
```


#### Field: consumeLp
```lua
number
```


#### Field: enableAct
```lua
boolean
```


#### Field: craftCount
```lua
number
```


#### Field: craftGrade
```lua
number
```


#### Field: totalFee
```lua
string
```


### Class: CraftOrderInfo
#### Field: craftCount
```lua
number
```


#### Field: craftGrade
```lua
`0`|`10`|`11`|`12`|`1`...(+8)
```


#### Field: craftType
```lua
number
```


### Class: CraftOrderItemFee
#### Field: defaultFee
```lua
string
```


#### Field: maxFee
```lua
string
```


#### Field: minFee
```lua
string
```


### Class: CraftOrderItemSlot
#### Field: craftCount
```lua
number
```


#### Field: craftGrade
```lua
number
```


#### Field: craftType
```lua
number
```


### Class: CraftProductInfo
#### Field: amount
```lua
number
```


#### Field: productGrade
```lua
number
```


#### Field: success_rate
```lua
number
```


#### Field: item_name
```lua
string
```


#### Field: itemType
```lua
number
```


#### Field: useGrade
```lua
boolean
```


### Class: CursorSize
#### Field: [1]
```lua
number
```


#### Field: [2]
```lua
number
```


#### Field: [3]
```lua
number
```


### Class: CustomHairColor
Extends [CustomizingHairDefaultColor](../types/CustomizingHairDefaultColor.md#class-customizinghairdefaultcolor), [CustomizingHairTwoToneColor](../types/CustomizingHairTwoToneColor.md#class-customizinghairtwotonecolor)

#### Field: defaultB
```lua
number
```
> Basic Hair Color Blue. (min: `0`, max: `255`)

#### Field: secondWidth
```lua
number
```
> Highlights. (min: `0`, max: `1`)

#### Field: twoToneB
```lua
number
```
> Highlight Color Blue. (min: `0`, max: `255`)

#### Field: twoToneG
```lua
number
```
> Highlight Color Green. (min: `0`, max: `255`)

#### Field: index
```lua
number|nil
```
> Old Hair @TODO: If this is set by default on the model then rgb cant be used and vice versa, needs more testing.

#### Field: defaultR
```lua
number
```
> Basic Hair Color Red. (min: `0`, max: `255`)

#### Field: firstWidth
```lua
number
```
> Dye Length. (min: `0`, max: `1`)

#### Field: defaultG
```lua
number
```
> Basic Hair Color Green. (min: `0`, max: `255`)

#### Field: twoToneR
```lua
number
```
> Highlight Color Red. (min: `0`, max: `255`)

### Class: CustomizingHairDefaultColor
#### Field: defaultB
```lua
number
```
> Basic Hair Color Blue. (min: `0`, max: `255`)

#### Field: defaultR
```lua
number
```
> Basic Hair Color Red. (min: `0`, max: `255`)

#### Field: defaultG
```lua
number
```
> Basic Hair Color Green. (min: `0`, max: `255`)

#### Field: index
```lua
number|nil
```
> Old Hair @TODO: If this is set by default on the model then rgb cant be used and vice versa, needs more testing.

### Class: CustomizingHairTwoToneColor
#### Field: firstWidth
```lua
number
```
> Dye Length. (min: `0`, max: `1`)

#### Field: twoToneG
```lua
number
```
> Highlight Color Green. (min: `0`, max: `255`)

#### Field: twoToneB
```lua
number
```
> Highlight Color Blue. (min: `0`, max: `255`)

#### Field: secondWidth
```lua
number
```
> Highlights. (min: `0`, max: `1`)

#### Field: twoToneR
```lua
number
```
> Highlight Color Red. (min: `0`, max: `255`)

### Class: DiagonalASRDailyInfo
#### Field: dailyAvg
```lua
string
```


#### Field: volume
```lua
number
```


#### Field: minPrice
```lua
string
```


#### Field: maxPrice
```lua
string
```


#### Field: weeklyAvg
```lua
string
```


### Class: DiagonalASRInfo
#### Field: [10]
```lua
DiagonalASRDailyInfo
```


#### Field: [4]
```lua
DiagonalASRDailyInfo
```


#### Field: [3]
```lua
DiagonalASRDailyInfo
```


#### Field: [5]
```lua
DiagonalASRDailyInfo
```


#### Field: [7]
```lua
DiagonalASRDailyInfo
```


#### Field: [6]
```lua
DiagonalASRDailyInfo
```


#### Field: [8]
```lua
DiagonalASRDailyInfo
```


#### Field: [2]
```lua
DiagonalASRDailyInfo
```


#### Field: [14]
```lua
DiagonalASRDailyInfo
```


#### Field: [11]
```lua
DiagonalASRDailyInfo
```


#### Field: [1]
```lua
DiagonalASRDailyInfo
```


#### Field: [12]
```lua
DiagonalASRDailyInfo
```


#### Field: [13]
```lua
DiagonalASRDailyInfo
```


#### Field: [9]
```lua
DiagonalASRDailyInfo
```


### Class: DoodadProgress
#### Field: curCount
```lua
any
```
> TODO:

#### Field: maxCount
```lua
any
```
> TODO:

### Class: DoodadTooltipInfo
#### Field: alignLeft
```lua
boolean|nil
```


#### Field: length
```lua
number|nil
```


#### Field: loadedItemName
```lua
string|nil
```


#### Field: isFree
```lua
boolean|nil
```


#### Field: id
```lua
any
```
> TODO:

#### Field: goodsValue
```lua
number|nil
```


#### Field: name
```lua
string|nil
```


#### Field: permission
```lua
`1`|`2`|`3`|`4`|`5`...(+2)
```


#### Field: owner
```lua
string|nil
```


#### Field: ptype
```lua
any
```
> TODO:

#### Field: progress
```lua
DoodadProgress|nil
```


#### Field: timeLabel
```lua
string|nil
```


#### Field: freshnessTooltip
```lua
string|nil
```


#### Field: explain
```lua
string|nil
```


#### Field: chillingPercent
```lua
any
```
> TODO:

#### Field: chillRemainTime
```lua
Time|nil
```


#### Field: catched
```lua
Time|nil
```


#### Field: freshnessRemainTime
```lua
Time|nil
```


#### Field: chillingRate
```lua
any
```
> TODO:

#### Field: displayTime
```lua
number|nil
```


#### Field: crafterName
```lua
string|nil
```


#### Field: expeditionOwn
```lua
boolean|nil
```


#### Field: dtype
```lua
any
```
> TODO:

#### Field: weight
```lua
number|nil
```


### Class: EquipSetInfo
#### Field: bonuses
```lua
BonusesInfo[]
```


#### Field: equipSetItemInfoDesc
```lua
string
```


### Class: EscMenuAddButtonInfo
#### Field: categoryId
```lua
`1`|`2`|`3`|`4`|`5`
```
> Taken from db ui_esc_menu_categories

#### Field: name
```lua
string
```


#### Field: iconKey
```lua
""|"achievement"|"auction"|"bag"|"butler"...(+26)
```
> game/ui/common/esc_menu.g

#### Field: uiContentType
```lua
`UIC_ABILITY_CHANGE`|`UIC_ACHIEVEMENT`|`UIC_ACTABILITY`|`UIC_ADDON`|`UIC_APPELLATION`...(+121)
```
> api/Addon

### Class: EscMenuButtonData
#### Field: h
```lua
number
```
> 25

#### Field: x
```lua
number|nil
```


#### Field: w
```lua
number
```
> 25

#### Field: path
```lua
string
```
> Addon/{addonname}/example.dds

#### Field: y
```lua
number|nil
```


### Class: EvolvingInfo
#### Field: evolveChance
```lua
number
```


#### Field: modifier
```lua
EvolvingInfoModifier[]
```


#### Field: minSectionExp
```lua
number
```


#### Field: minExp
```lua
number
```


#### Field: percent
```lua
number
```


### Class: EvolvingInfoModifier
#### Field: gsNum
```lua
number
```


#### Field: type
```lua
number
```


#### Field: value
```lua
number
```


### Class: ExpeditionApplicant
#### Field: day
```lua
number
```


#### Field: month
```lua
number
```


#### Field: name
```lua
string
```


#### Field: memo
```lua
string
```


#### Field: heirLevel
```lua
number
```


#### Field: level
```lua
number
```


#### Field: year
```lua
number
```


### Class: FactionCompetitionInfo
#### Field: zoneIn
```lua
boolean
```


### Class: FactionCompetitionPointInfo
#### Field: pointList
```lua
FactionPointInfo[]
```


### Class: FactionCompetitionResultInfos
#### Field: pointList
```lua
FactionPointInfo[]
```


#### Field: winFaction
```lua
`HARIHARA_FACTION_ID`|`MONSTER_FACTION_ID`|`NUIA_FACTION_ID`|`OUTLAW_FACTION_ID`|`PC_IN_ALL_FACTION_ID`
```
> api/Addon

### Class: FactionPointInfo
#### Field: factionId
```lua
`HARIHARA_FACTION_ID`|`MONSTER_FACTION_ID`|`NUIA_FACTION_ID`|`OUTLAW_FACTION_ID`|`PC_IN_ALL_FACTION_ID`
```
> api/Addon

#### Field: point
```lua
number
```


### Class: FontSizeList
#### Field: cinema
```lua
number
```


#### Field: small
```lua
number
```


#### Field: xlarge
```lua
number
```


#### Field: middle
```lua
number
```


#### Field: default
```lua
number
```


#### Field: large
```lua
number
```


#### Field: xxlarge
```lua
number
```


### Class: FrameInfo
#### Field: alpha
```lua
number|nil
```


#### Field: showTime
```lua
number|nil
```


#### Field: scale
```lua
number|nil
```


#### Field: time
```lua
number|nil
```


#### Field: w
```lua
number|nil
```


#### Field: x
```lua
number|nil
```


#### Field: moveY
```lua
number|nil
```


#### Field: h
```lua
number|nil
```


#### Field: moveX
```lua
number|nil
```


#### Field: animTime
```lua
number|nil
```


#### Field: animType
```lua
`DAT_LINEAR_ALPHA`|`DAT_LINEAR_SCALE`|`DAT_MOVE`|`LAT_AFTERIMAGE`|`LAT_COUNT`...(+5)
```
> This can add multiple LINEAR_ANIMATION_TYPE

#### Field: y
```lua
number|nil
```


### Class: FriendInfo
#### Field: [10]
```lua
number|nil
```
> CHK

#### Field: [5]
```lua
`RACE_DARU`|`RACE_DWARF`|`RACE_ELF`|`RACE_FAIRY`|`RACE_FERRE`...(+5)
```
> api/X2Unit

#### Field: [6]
```lua
boolean
```
> Online

#### Field: [7]
```lua
boolean
```
> Party

#### Field: [8]
```lua
number
```
> Ancestral Level = 40,

#### Field: [4]
```lua
Time
```
> Last login

#### Field: [2]
```lua
number
```
> Basic Level

#### Field: [3]
```lua
UnitClass
```
> Class

#### Field: [1]
```lua
string
```
> Name

#### Field: [9]
```lua
number
```
> Faction

### Class: GachaLootPackItemLog
#### Field: itemGrade
```lua
`0`|`10`|`11`|`12`|`1`...(+8)
```


#### Field: itemType
```lua
number
```


#### Field: stackSize
```lua
number
```


### Class: GachaLootPackItemResult
#### Field: grade
```lua
`0`|`10`|`11`|`12`|`1`...(+8)
```


#### Field: linkText
```lua
string
```


#### Field: stackSize
```lua
number
```


### Class: GachaLootPackLog
#### Field: [1]
```lua
GachaLootPackItemLog
```
> Gold

#### Field: [2]
```lua
GachaLootPackItemLog
```
> Item

### Class: GachaLootPackResult
#### Field: [1]
```lua
GachaLootPackItemResult
```
> Gold

#### Field: [2]
```lua
GachaLootPackItemResult
```
> Item

### Class: GearScoreItemInfo
#### Field: bare
```lua
number
```


#### Field: equipSlotReinforce
```lua
number
```


#### Field: total
```lua
number
```


### Class: GuildInterests
#### Field: [1]
```lua
number
```
> Dungeon

#### Field: [4]
```lua
number
```
> Raid

#### Field: [5]
```lua
number
```
> Adventure

#### Field: [3]
```lua
number
```
> Naval Battles

#### Field: [2]
```lua
number
```
> War

#### Field: [6]
```lua
number
```
> Crafting

### Class: GuildRecruitmentInfo
#### Field: apply
```lua
boolean
```


#### Field: introduce
```lua
string
```


#### Field: memberCount
```lua
number
```


#### Field: owner_name
```lua
string
```


#### Field: pull
```lua
boolean
```
> Full

#### Field: interests
```lua
GuildInterests
```


#### Field: expedition_level
```lua
number
```


#### Field: expedition_name
```lua
string
```


#### Field: expeditionId
```lua
number
```


#### Field: remainTime
```lua
number
```


### Class: HotKeyInfo
#### Field: featureSet
```lua
string
```


#### Field: restart
```lua
boolean
```


#### Field: title
```lua
string
```


#### Field: hotkeyActionName
```lua
string
```


#### Field: featureSetCondition
```lua
boolean
```


#### Field: tooltip
```lua
string
```


### Class: InsetData
Extends [number](../types/number.md#class-number)

#### Field: [1]
```lua
number|nil
```
> Left

#### Field: [3]
```lua
number|nil
```
> Bottom

#### Field: [2]
```lua
number|nil
```
> Top

#### Field: [4]
```lua
number|nil
```
> Right

### Class: InstanceEnterableInfo
#### Field: content
```lua
string
```


#### Field: iconKey
```lua
string
```


#### Field: title
```lua
string
```


### Class: InstanceGameKillInfo
#### Field: killer
```lua
string
```


#### Field: ruleMode
```lua
number
```


#### Field: victim
```lua
string
```


#### Field: victimCorps
```lua
string
```


#### Field: killerKillstreak
```lua
number
```


#### Field: killerCorps
```lua
string
```


#### Field: killerCorpsKill
```lua
number
```


#### Field: victimCorpsDeath
```lua
number
```


### Class: InvalidLinkInfo
Extends [BaseLinkInfo](../types/BaseLinkInfo.md#class-baselinkinfo), [CommonLinkFields](../types/CommonLinkFields.md#class-commonlinkfields)

#### Field: filter
```lua
number
```


#### Field: linkType
```lua
"invalid"
```


#### Field: isOtherWorld
```lua
boolean
```


#### Field: messageTimeStamp
```lua
number
```


### Class: ItemData
Extends [ItemTree](../types/ItemTree.md#class-itemtree)

#### Field: child
```lua
ItemTree[]|nil
```


#### Field: subColor
```lua
RGBAColor|nil
```


#### Field: selectColor
```lua
RGBAColor|nil
```
> Requires `useColor = true`.

#### Field: overColor
```lua
RGBAColor|nil
```
> Requires `useColor = true`.

#### Field: subtext
```lua
string|nil
```
> Only renders if subColor is defined.

#### Field: tailIconPath
```lua
string|nil
```


#### Field: tailIconCoord
```lua
string|nil
```


#### Field: text
```lua
string|nil
```


#### Field: useColor
```lua
boolean|nil
```
> if `true` defaultColor, selectColor, overColor, disableColor, and color need to all be set or they will be invisible.

#### Field: opened
```lua
boolean|nil
```
> (default: `false`)

#### Field: indexing
```lua
number[]
```
> { parentIndex[, childIndex...] } (min: `0`)

#### Field: defaultColor
```lua
RGBAColor|nil
```
> Requires `useColor = true`.

#### Field: color
```lua
RGBAColor|nil
```
> Requires `useColor = true`.

#### Field: infoKey
```lua
string|nil
```


#### Field: disableColor
```lua
RGBAColor|nil
```
> Requires `useColor = true`.

#### Field: iconPath
```lua
string|nil
```


#### Field: enable
```lua
boolean|nil
```
> `true` to enable, `false` to disable. (default: `true`)

#### Field: value
```lua
number|nil
```


### Class: ItemInfo
#### Field: DPS
```lua
number
```


#### Field: magicResistance
```lua
number
```


#### Field: maxDamage
```lua
number
```


#### Field: magicDps
```lua
number
```


#### Field: lookType
```lua
number
```


#### Field: lookChanged
```lua
boolean
```


#### Field: maxDurability
```lua
number
```


#### Field: maxStack
```lua
number
```


#### Field: maxSetItemCount
```lua
number
```


#### Field: modifier
```lua
ModifireTable[]
```


#### Field: minDamage
```lua
number
```


#### Field: moveSpeed
```lua
number
```


#### Field: locked
```lua
boolean
```


#### Field: location_world_name
```lua
string
```


#### Field: level_limit
```lua
number
```


#### Field: level_requirement
```lua
number
```


#### Field: level
```lua
number
```


#### Field: item_impl
```lua
"accessory"|"armor"|"butler_armor"|"enchanting_gem"|"itemGrade"...(+11)
```


#### Field: location_zone_name
```lua
string
```


#### Field: lifeSpan
```lua
number
```


#### Field: lifeSpanType
```lua
string
```


#### Field: lifeSpanDayOfWeek
```lua
boolean
```


#### Field: livingPointPrice
```lua
number
```


#### Field: linkKind
```lua
"auciton"|"coffer"|"guildBank"|nil
```


#### Field: item_flag_cannot_equip
```lua
boolean
```


#### Field: name
```lua
string
```


#### Field: overIcon
```lua
string
```


#### Field: soul_bind
```lua
string
```


#### Field: soul_bind_type
```lua
number
```


#### Field: socketInfo
```lua
SocketInfo
```


#### Field: slotTypeNum
```lua
number
```


#### Field: slotType
```lua
string
```


#### Field: soul_bound
```lua
number
```


#### Field: uccTooltip
```lua
string
```


#### Field: stack
```lua
number
```


#### Field: useAsStat
```lua
boolean
```


#### Field: useAsSkin
```lua
boolean
```


#### Field: needsUnpack
```lua
boolean
```


#### Field: skillType
```lua
number
```


#### Field: setItems
```lua
SetItemsInfo[]
```


#### Field: refund
```lua
number
```


#### Field: rechargeBuff
```lua
RechargeBuffInfo
```


#### Field: processedState
```lua
string
```


#### Field: sideEffect
```lua
boolean
```


#### Field: repairable
```lua
number
```


#### Field: scalable
```lua
boolean
```


#### Field: requiredCondition
```lua
RequiredConditionInfo
```


#### Field: sellable
```lua
boolean
```


#### Field: securityState
```lua
`ITEM_SECURITY_INVALID`|`ITEM_SECURITY_LOCKED`|`ITEM_SECURITY_UNLOCKED`|`ITEM_SECURITY_UNLOCKING`
```
> api/X2Item

#### Field: useConsumeItem
```lua
boolean
```


#### Field: itemUsage
```lua
string
```


#### Field: itemGrade
```lua
number
```


#### Field: craftedWorldName
```lua
string
```


#### Field: crafter
```lua
string
```


#### Field: craftType
```lua
number
```


#### Field: cost
```lua
number
```


#### Field: convertibleItem
```lua
boolean
```


#### Field: dead
```lua
boolean
```


#### Field: durability
```lua
number
```


#### Field: description
```lua
string
```


#### Field: elementName
```lua
string
```


#### Field: element
```lua
string
```


#### Field: equipSetInfo
```lua
EquipSetInfo
```


#### Field: contributionPointPrice
```lua
number
```


#### Field: category
```lua
string
```


#### Field: attackDelay
```lua
number
```


#### Field: armorType
```lua
string
```


#### Field: armor
```lua
number
```


#### Field: checkUnitReq
```lua
boolean
```


#### Field: auction_only
```lua
boolean
```


#### Field: baseEquipment
```lua
boolean
```


#### Field: backpackType
```lua
number
```


#### Field: canEvolve
```lua
boolean
```


#### Field: buffType
```lua
number
```


#### Field: itemType
```lua
number
```


#### Field: equiped
```lua
boolean
```


#### Field: evolvingCategory
```lua
boolean
```


#### Field: indestructible
```lua
boolean
```


#### Field: isEnchantDisable
```lua
boolean
```


#### Field: icon
```lua
string
```


#### Field: honorPrice
```lua
number
```


#### Field: healDps
```lua
number
```


#### Field: isMaterial
```lua
boolean
```


#### Field: isPetOnly
```lua
boolean
```


#### Field: isMyWorld
```lua
boolean
```


#### Field: isUnderWaterCreature
```lua
boolean
```


#### Field: isStackable
```lua
boolean
```


#### Field: equippedSetItemCount
```lua
number
```


#### Field: gradeIcon
```lua
string
```


#### Field: gradeColor
```lua
string
```


#### Field: extraDPS
```lua
number
```


#### Field: extraArmor
```lua
number
```


#### Field: evolvingInfo
```lua
EvolvingInfo
```


#### Field: gradeEnchantable
```lua
boolean
```


#### Field: gearScore
```lua
GearScoreItemInfo
```


#### Field: gemModifireTable
```lua
ModifireTable[]
```


#### Field: gemInfo
```lua
number
```


#### Field: grade
```lua
string
```


#### Field: gender
```lua
string
```


#### Field: wear
```lua
boolean
```


### Class: ItemLinkInfo
Extends [BaseLinkInfo](../types/BaseLinkInfo.md#class-baselinkinfo), [CommonLinkFields](../types/CommonLinkFields.md#class-commonlinkfields)

#### Field: filter
```lua
number
```


#### Field: linkKind
```lua
`1`|`2`|`3`
```


#### Field: linkType
```lua
"item"
```


#### Field: itemLinkText
```lua
string
```


#### Field: isOtherWorld
```lua
boolean
```


#### Field: itemGrade
```lua
`0`|`10`|`11`|`12`|`1`...(+8)
```


#### Field: messageTimeStamp
```lua
number
```


### Class: ItemTree
#### Field: child
```lua
ItemTree[]|nil
```


#### Field: subtext
```lua
string|nil
```
> Only renders if subColor is defined.

#### Field: subColor
```lua
RGBAColor|nil
```


#### Field: selectColor
```lua
RGBAColor|nil
```
> Requires `useColor = true`.

#### Field: tailIconCoord
```lua
string|nil
```


#### Field: text
```lua
string
```


#### Field: tailIconPath
```lua
string|nil
```


#### Field: useColor
```lua
boolean|nil
```
> if `true` defaultColor, selectColor, overColor, disableColor, and color need to all be set or they will be invisible.

#### Field: overColor
```lua
RGBAColor|nil
```
> Requires `useColor = true`.

#### Field: infoKey
```lua
string|nil
```


#### Field: defaultColor
```lua
RGBAColor|nil
```
> Requires `useColor = true`.

#### Field: color
```lua
RGBAColor|nil
```
> Requires `useColor = true`.

#### Field: opened
```lua
boolean|nil
```
> (default: `false`)

#### Field: disableColor
```lua
RGBAColor|nil
```
> Requires `useColor = true`.

#### Field: iconPath
```lua
string|nil
```


#### Field: enable
```lua
boolean|nil
```
> `true` to enable, `false` to disable. (default: `true`)

#### Field: value
```lua
number
```


### Class: ItemTreeInfos
#### Field: itemInfos
```lua
ItemTreeValue[]
```


### Class: ItemTreeValue
#### Field: value
```lua
number
```


### Class: ItemsInfo
#### Field: indexing
```lua
number[]
```
> { parentIndex[, childIndex...] } (min: `0`)

#### Field: text
```lua
string
```


#### Field: opened
```lua
boolean
```


#### Field: value
```lua
number
```


### Class: KillStreakInfo
#### Field: gameType
```lua
number
```


#### Field: param1
```lua
number
```


#### Field: param2
```lua
number
```
> threeKillCount

#### Field: killerName
```lua
string
```


#### Field: killerKillStreak
```lua
number
```


#### Field: victimName
```lua
number
```


### Class: ListCtrlItem
Extends [Window](../types/Window.md#class-window)

#### Field: eventWindow
```lua
Window
```
> [Window](lua://Window)
> 
> A `Window` widget represents a UI window with optional modal behavior, title
> text and styling, and layer management. It supports closing via the Escape
> key, custom title insets, and modal backgrounds.
> 
> **Dependencies**:
>  - [EmptyWidget](lua://EmptyWidget) used for the `modalBackgroundWindow` field.
>  - [TextStyle](lua://TextStyle) used for the `titleStyle` field.
> 

#### Field: subItems
```lua
Button|SubItemString|Textbox|Window[]
```


### Class: MemberInfo
#### Field: [10]
```lua
number
```
> Ancestral Level

#### Field: [5]
```lua
table
```
> Connection Status (empty)

#### Field: [4]
```lua
number
```
> Guild Role

#### Field: [6]
```lua
string
```
> Memo

#### Field: [7]
```lua
boolean
```
> Online

#### Field: [8]
```lua
boolean
```
> Party

#### Field: [3]
```lua
UnitClassNames
```
> Class

#### Field: [1]
```lua
string
```
> Name

#### Field: [2]
```lua
number
```
> Basic Level

#### Field: [11]
```lua
number
```
> Weekly Contribution Points

#### Field: [12]
```lua
any
```
> CHK

#### Field: [9]
```lua
number
```
> Contribution Points

### Class: MiniScoreBoardInfo
#### Field: footer
```lua
string
```


#### Field: type
```lua
number
```


#### Field: rows
```lua
MiniScoreBoardRowInfo[]
```


#### Field: footerGuide
```lua
string
```


#### Field: visibleOrder
```lua
number
```


### Class: MiniScoreBoardRowInfo
#### Field: curHp
```lua
number
```


#### Field: name
```lua
string
```


#### Field: type
```lua
number
```


#### Field: moduleType
```lua
number
```


#### Field: maxHp
```lua
number
```


#### Field: visibleOrder
```lua
number
```


### Class: ModifireTable
#### Field: name
```lua
string
```


#### Field: type
```lua
number
```


#### Field: value
```lua
number
```


### Class: NextSiegeInfo
#### Field: hour
```lua
number
```


#### Field: week
```lua
string
```


#### Field: min
```lua
number
```


#### Field: zoneGroupName
```lua
"Abyssal Library"|"Aegis Island"|"Ahnimar Event Arena"|"Ahnimar"|"Airain Rock"...(+143)
```


### Class: NoneLinkInfo
Extends [BaseLinkInfo](../types/BaseLinkInfo.md#class-baselinkinfo)

#### Field: linkType
```lua
"none"
```


### Class: NpcBroadcastingInfo
#### Field: broadcastingType
```lua
`NIBC_BUFF_LEFT_TIME`|`NIBC_BUFF_STACK`
```
> api/X2BattleField

#### Field: iconPath
```lua
string
```


#### Field: buffType
```lua
number
```


#### Field: buffName
```lua
string
```


#### Field: stack
```lua
number
```


### Class: NuonsArrowUpdate
#### Field: charge
```lua
string
```


#### Field: step
```lua
string
```


#### Field: name
```lua
"Abyssal Library"|"Aegis Island"|"Ahnimar Event Arena"|"Ahnimar"|"Airain Rock"...(+143)
```


#### Field: zoneGroup
```lua
`0`|`100`|`101`|`102`|`103`...(+151)
```
> Obtained from db zone_groups

### Class: OptionInfo
#### Field: restart
```lua
boolean
```


#### Field: title
```lua
string
```


#### Field: tooltip
```lua
string
```


### Class: PhaseMsgInfo
#### Field: color
```lua
string
```


#### Field: titleColor
```lua
string
```


#### Field: msg
```lua
string
```


#### Field: iconKey
```lua
string
```


#### Field: titleMsg
```lua
string
```


### Class: Point
#### Field: beginX
```lua
number
```


#### Field: endX
```lua
number
```


#### Field: beginY
```lua
number
```


#### Field: endY
```lua
number
```


### Class: QuestItem
#### Field: order
```lua
`QUEST_MARK_ORDER_DAILY_HUNT`|`QUEST_MARK_ORDER_DAILY`|`QUEST_MARK_ORDER_LIVELIHOOD`|`QUEST_MARK_ORDER_MAIN`|`QUEST_MARK_ORDER_NORMAL`...(+2)
```
> api/X2Quest

#### Field: qtype
```lua
number
```


### Class: QuestLinkInfo
Extends [BaseLinkInfo](../types/BaseLinkInfo.md#class-baselinkinfo), [CommonLinkFields](../types/CommonLinkFields.md#class-commonlinkfields)

#### Field: filter
```lua
number
```


#### Field: messageTimeStamp
```lua
number
```


#### Field: linkType
```lua
"quest"
```


#### Field: isOtherWorld
```lua
boolean
```


#### Field: questType
```lua
number
```


### Class: QuestSelectList
#### Field: gives
```lua
QuestItem[]
```


### Class: RGBA
#### Field: a
```lua
number
```


#### Field: g
```lua
number
```


#### Field: b
```lua
number
```


#### Field: r
```lua
number
```


### Class: RGBAColor
#### Field: [1]
```lua
number
```
> Red (min: `0`, max: `1`)

#### Field: [3]
```lua
number
```
> Blue (min: `0`, max: `1`)

#### Field: [2]
```lua
number
```
> Green (min: `0`, max: `1`)

#### Field: [4]
```lua
number
```
> Alpha (min: `0`, max: `1`)

### Class: RadioItem
Extends [EmptyWidget](../types/EmptyWidget.md#class-emptywidget)

#### Field: check
```lua
CheckButton
```
> [CheckButton](lua://CheckButton)
> 
> A `CheckButton` widget is a small clickable widget that represents a binary
> on/off or true/false setting or option. It inherits from Button and supports
> the same four visual states: normal, highlighted (hover), pushed (pressed),
> and disabled. Adds checked/unchecked state management with separate
> background drawables for checked and disabled-checked states. Can trigger
> the widget `"OnCheckChanged"` action.
> 
> **Dependencies**:
>  - [TextStyle](lua://TextStyle) used for the `style` field.
> 

### Class: RaidApplicant
#### Field: abilities
```lua
UnitClass
```


#### Field: name
```lua
string
```


#### Field: level
```lua
number
```


#### Field: gearPoint
```lua
number
```


#### Field: role
```lua
`TMROLE_DEALER`|`TMROLE_HEALER`|`TMROLE_NONE`|`TMROLE_RANGED_DEALER`|`TMROLE_TANKER`
```
> api/X2Team

### Class: RaidApplicantData
#### Field: applicantList
```lua
RaidApplicant[]
```


#### Field: headcount
```lua
number
```


#### Field: createTime
```lua
string
```


#### Field: autoJoin
```lua
boolean
```


#### Field: memberCount
```lua
number
```


### Class: RaidLinkInfo
Extends [BaseLinkInfo](../types/BaseLinkInfo.md#class-baselinkinfo), [CommonLinkFields](../types/CommonLinkFields.md#class-commonlinkfields)

#### Field: createTime
```lua
string
```


#### Field: linkType
```lua
"raid"
```


#### Field: messageTimeStamp
```lua
number
```


#### Field: isOtherWorld
```lua
boolean
```


#### Field: filter
```lua
number
```


#### Field: ownerId
```lua
string
```


### Class: RaidRecruitDetailInfo
#### Field: createTime
```lua
string
```


#### Field: ownerLevel
```lua
number
```


#### Field: ownerId
```lua
string
```


#### Field: ownerName
```lua
string
```


#### Field: subType
```lua
number
```


#### Field: subTypeName
```lua
string
```


#### Field: ownerExpedition
```lua
string
```


#### Field: minute
```lua
number
```


#### Field: hour
```lua
number
```


#### Field: msg
```lua
string
```


#### Field: limitGearPoint
```lua
number
```


#### Field: limitLevel
```lua
number
```


#### Field: type
```lua
number
```


### Class: RaidRecruitInfo
#### Field: hour
```lua
number
```


#### Field: minute
```lua
number
```


#### Field: isRecruiter
```lua
boolean
```


#### Field: subTypeName
```lua
string
```


### Class: RaidRecruitListInfo
#### Field: recruiter
```lua
boolean
```


#### Field: subRecruiter
```lua
boolean
```


### Class: RechargeBuffInfo
#### Field: chargeLifetime
```lua
Time
```


#### Field: remainTime
```lua
Time
```


### Class: ReentryParam
#### Field: [1]
```lua
boolean
```
> reentry

#### Field: [2]
```lua
number
```
> timeLeft in milliseconds

#### Field: [3]
```lua
string|nil
```
> instanceName

### Class: RequiredConditionInfo
#### Field: equipSlotTypes
```lua
string[]
```


### Class: ResidentBoardContent
#### Field: [1]
```lua
string|nil
```


#### Field: contents
```lua
ResidentBoardContent
```


#### Field: faction
```lua
string
```


#### Field: [4]
```lua
string|nil
```


#### Field: [2]
```lua
string|nil
```


#### Field: [3]
```lua
string|nil
```


#### Field: title
```lua
string
```


### Class: ResidentHousing
#### Field: decoextendnum
```lua
number
```


#### Field: posy
```lua
number
```


#### Field: posz
```lua
number
```


#### Field: price
```lua
number
```


#### Field: sellername
```lua
string
```


#### Field: posx
```lua
number
```


#### Field: division
```lua
string
```


#### Field: kind
```lua
string
```


#### Field: decolimitnum
```lua
number
```


#### Field: zoneId
```lua
`0`|`100`|`101`|`102`|`103`...(+151)
```
> Obtained from db zone_groups

### Class: ResidentInfo
#### Field: huntingCharge
```lua
number
```


#### Field: localFactionIcon
```lua
string
```


#### Field: memberCount
```lua
number|nil
```


#### Field: name
```lua
string
```


#### Field: refreshRemain
```lua
number|nil
```


#### Field: localFaction
```lua
string
```


#### Field: localCharge
```lua
string|nil
```


#### Field: localEffect
```lua
string
```


#### Field: isResident
```lua
boolean
```


#### Field: servicePoint
```lua
number|nil
```


### Class: ResidentMember
#### Field: [1]
```lua
string
```
> Name

#### Field: [6]
```lua
boolean
```
> Party

#### Field: [7]
```lua
boolean
```
> CHK

#### Field: [8]
```lua
number
```
> Ancestral Level

#### Field: [5]
```lua
boolean
```
> Online

#### Field: [3]
```lua
number
```
> Contribution

#### Field: [4]
```lua
number
```
> Family

#### Field: [2]
```lua
number
```
> Basic Level

#### Field: [9]
```lua
number
```
> Contribution Rank

### Class: RewardInfo
#### Field: appellation
```lua
AppellationInfo
```


#### Field: item
```lua
RewardItemInfo
```


### Class: RewardItemInfo
#### Field: count
```lua
number
```


#### Field: itemType
```lua
number
```


### Class: SEXTANT
#### Field: deg_lat
```lua
number
```


#### Field: min_lat
```lua
number
```


#### Field: min_long
```lua
number
```


#### Field: sec_lat
```lua
number
```


#### Field: longitude
```lua
"E"|"W"
```


#### Field: deg_long
```lua
number
```


#### Field: latitude
```lua
"N"|"S"
```


#### Field: sec_long
```lua
number
```


### Class: ScreenResolution
#### Field: scale
```lua
number
```


#### Field: x
```lua
number
```
> width of screen

#### Field: y
```lua
number
```
> height of screen

### Class: SelectSquadList
#### Field: curPage
```lua
number
```


#### Field: listInfo
```lua
SquadInfo[]
```


#### Field: maxCount
```lua
number
```


### Class: SellSpecialtyInfo
#### Field: count
```lua
number
```


#### Field: refundItemCount
```lua
number
```


#### Field: refundItemType
```lua
number
```


#### Field: sellerRatio
```lua
number
```


#### Field: specialtyZone
```lua
`0`|`100`|`101`|`102`|`103`...(+151)
```
> Obtained from db zone_groups

#### Field: refund
```lua
string
```


#### Field: noEventRefund
```lua
string
```


#### Field: ratio
```lua
number
```


#### Field: freshnessRatio
```lua
number
```


#### Field: item
```lua
ItemInfo
```


#### Field: supply
```lua
SpecialtySupplyInfo
```


### Class: SetItemsInfo
#### Field: equipped
```lua
boolean
```


#### Field: item_name
```lua
string
```


#### Field: item_type
```lua
number
```


### Class: SiegeInfo
#### Field: action
```lua
"change_state"|"ignore"
```


#### Field: periodName
```lua
"siege_period_hero_volunteer"|"siege_period_peace"
```


#### Field: team
```lua
string
```


#### Field: zoneGroupName
```lua
"Abyssal Library"|"Aegis Island"|"Ahnimar Event Arena"|"Ahnimar"|"Airain Rock"...(+143)
```


#### Field: offenseName
```lua
string
```


#### Field: defenseName
```lua
string
```


#### Field: isMyInfo
```lua
boolean
```


#### Field: zoneGroupType
```lua
`0`|`100`|`101`|`102`|`103`...(+151)
```
> Obtained from db zone_groups

### Class: SiegeRaidInfo
#### Field: memberInfo
```lua
SiegeRaidMemberInfo[]
```


#### Field: zoneInfo
```lua
SiegeRaidZoneInfo
```


### Class: SiegeRaidMemberInfo
#### Field: ability
```lua
`10`|`11`|`12`|`14`|`1`...(+10)[]
```


#### Field: level
```lua
number
```


#### Field: heirLevel
```lua
number
```


#### Field: gearScore
```lua
number
```


#### Field: name
```lua
string
```


### Class: SiegeRaidScheduleInfo
#### Field: endHour
```lua
number
```


#### Field: startMin
```lua
number
```


#### Field: startHour
```lua
number
```


#### Field: endMin
```lua
number
```


#### Field: weekDay
```lua
string
```


### Class: SiegeRaidTeam
#### Field: defense
```lua
boolean
```


#### Field: ownerName
```lua
string
```


#### Field: period
```lua
string
```


#### Field: membetCount
```lua
number
```
> xlgames misspelt this

#### Field: fName
```lua
string
```


#### Field: isWaitWar
```lua
boolean
```


#### Field: ranking
```lua
number
```


### Class: SiegeRaidTeamInfos
#### Field: [1]
```lua
SiegeRaidTeam
```


#### Field: [2]
```lua
SiegeRaidTeam
```


#### Field: [3]
```lua
SiegeRaidTeam
```


### Class: SiegeRaidZoneInfo
#### Field: commanderName
```lua
string
```


#### Field: scheduleInfo
```lua
SiegeRaidScheduleInfo
```


#### Field: siegeState
```lua
string
```
> = "siege_state_ready_to_siege",

#### Field: memberMax
```lua
number
```


#### Field: factionId
```lua
number
```


#### Field: memberCnt
```lua
number
```


#### Field: zoneName
```lua
string
```
> TODO: ZONE_NAME?

### Class: SkillInfo
#### Field: abilityName
```lua
string
```


#### Field: maxRange
```lua
number
```


#### Field: manaCost
```lua
number
```


#### Field: levelStep
```lua
number
```


#### Field: learnLeavel
```lua
number
```


#### Field: minRange
```lua
number
```


#### Field: nextLearnLevel
```lua
number
```


#### Field: name
```lua
string
```


#### Field: show
```lua
boolean
```


#### Field: skillPoints
```lua
number
```


#### Field: isMeleeAttack
```lua
boolean
```


#### Field: isHarmful
```lua
boolean
```


#### Field: cooldownTime
```lua
number
```


#### Field: castingTime
```lua
number
```


#### Field: isHelpful
```lua
boolean
```


#### Field: description
```lua
string
```


#### Field: hasRange
```lua
boolean
```


#### Field: firstLearnLevel
```lua
number
```


#### Field: iconPath
```lua
string
```


#### Field: upgradeCost
```lua
number
```


### Class: SkillMapEffectInfo
#### Field: a
```lua
number
```


#### Field: time
```lua
number
```


#### Field: texturePath
```lua
string
```


#### Field: useEffect
```lua
boolean
```


#### Field: x
```lua
number
```


#### Field: y
```lua
number
```


#### Field: textureKey
```lua
string
```


#### Field: r
```lua
number
```


#### Field: b
```lua
number
```


#### Field: radius
```lua
number
```


#### Field: g
```lua
number
```


#### Field: index
```lua
number
```


#### Field: z
```lua
number
```


### Class: SkillSelectiveItemList
#### Field: is_multi
```lua
boolean
```


#### Field: popup_text
```lua
string
```


#### Field: select
```lua
number
```


#### Field: maxTryCount
```lua
number
```


#### Field: itemTables
```lua
SkillSelectiveItemTable[]
```


#### Field: srcItem
```lua
ItemInfo
```


### Class: SkillSelectiveItemTable
#### Field: count
```lua
number
```


#### Field: name
```lua
string
```


#### Field: selectable
```lua
boolean
```


#### Field: idx
```lua
number
```


#### Field: grade
```lua
number
```


#### Field: type
```lua
number
```


### Class: SkillTooltip
#### Field: ability
```lua
string
```


#### Field: minRange
```lua
number|nil
```


#### Field: name
```lua
string
```


#### Field: minCombatResource
```lua
number
```


#### Field: meleeDpsMultiplier
```lua
number|nil
```


#### Field: maxRange
```lua
number|nil
```


#### Field: path
```lua
string
```


#### Field: skillLevel
```lua
number
```


#### Field: targetAreaRadius
```lua
number|nil
```


#### Field: show
```lua
boolean
```


#### Field: synergyIconInfo
```lua
SynergyIconInfo[]|nil
```


#### Field: skillPoints
```lua
number
```


#### Field: tipType
```lua
string
```


#### Field: maxCombatResource
```lua
number
```


#### Field: levelStep
```lua
number
```


#### Field: category
```lua
string
```


#### Field: channeling
```lua
number
```


#### Field: casting
```lua
number
```


#### Field: abilityLevel
```lua
number
```


#### Field: mana
```lua
number
```


#### Field: cooldown
```lua
number
```


#### Field: firstLearnLevel
```lua
number
```


#### Field: learnLevel
```lua
number
```


#### Field: description
```lua
string
```


#### Field: isRaceSkill
```lua
boolean
```


#### Field: heirSkillName
```lua
number
```


#### Field: type
```lua
number
```


### Class: SocketInfo
#### Field: maxSocket
```lua
number
```


#### Field: socketItem
```lua
number[]
```


### Class: SpecialtyBaseInfo
#### Field: item
```lua
ItemInfo
```


#### Field: refund
```lua
string
```


#### Field: ratio
```lua
number
```


#### Field: noEventRefund
```lua
string
```


#### Field: supply
```lua
SpecialtySupplyInfo
```


### Class: SpecialtyContentInfo
Extends [SpecialtyBaseInfo](../types/SpecialtyBaseInfo.md#class-specialtybaseinfo)

#### Field: item
```lua
ItemInfo
```


#### Field: refund
```lua
string
```


#### Field: stock
```lua
number
```


#### Field: ratio
```lua
number
```


#### Field: noEventRefund
```lua
string
```


#### Field: supply
```lua
SpecialtySupplyInfo
```


### Class: SpecialtyInfo
Extends [SpecialtyBaseInfo](../types/SpecialtyBaseInfo.md#class-specialtybaseinfo)

#### Field: count
```lua
number
```


#### Field: ratio
```lua
number
```


#### Field: refund
```lua
string
```


#### Field: specialtyZone
```lua
`0`|`100`|`101`|`102`|`103`...(+151)
```
> Obtained from db zone_groups

#### Field: noEventRefund
```lua
string
```


#### Field: delay
```lua
number
```


#### Field: item
```lua
ItemInfo
```


#### Field: supply
```lua
SpecialtySupplyInfo
```


### Class: SpecialtyRatioInfo
#### Field: itemInfo
```lua
ItemInfo
```


#### Field: ratio
```lua
number
```


### Class: SpecialtySupplyInfo
#### Field: iconCoord
```lua
string
```


#### Field: label
```lua
string
```


#### Field: iconPath
```lua
string
```


#### Field: priceIndex
```lua
number
```


### Class: SquadInfo
#### Field: buttonEnable
```lua
boolean
```


#### Field: nameCacheQueryId
```lua
string|nil
```


#### Field: maxMemberCount
```lua
number
```


#### Field: openType
```lua
number
```


#### Field: squadId
```lua
number
```


#### Field: ownerLevel
```lua
number
```


#### Field: worldName
```lua
string
```


#### Field: limitLevel
```lua
number
```


#### Field: isMySquad
```lua
boolean
```


#### Field: buttonType
```lua
number
```


#### Field: limitGearScore
```lua
number
```


#### Field: curMemberCount
```lua
number
```


#### Field: fieldType
```lua
number
```


#### Field: explanationText
```lua
string
```


#### Field: zoneGroupType
```lua
`0`|`100`|`101`|`102`|`103`...(+151)
```
> Obtained from db zone_groups

### Class: SquadLinkInfo
Extends [BaseLinkInfo](../types/BaseLinkInfo.md#class-baselinkinfo), [CommonLinkFields](../types/CommonLinkFields.md#class-commonlinkfields)

#### Field: battleFieldType
```lua
number
```


#### Field: linkType
```lua
"squad"
```


#### Field: messageTimeStamp
```lua
number
```


#### Field: squadId
```lua
number
```


#### Field: joinKey
```lua
string
```


#### Field: filter
```lua
number
```


#### Field: isOtherWorld
```lua
boolean
```


#### Field: zoneGroupType
```lua
number
```


### Class: StampChangeItemInfo
#### Field: enough
```lua
boolean
```


#### Field: itemType
```lua
number
```


#### Field: has
```lua
number
```


#### Field: need
```lua
number
```


### Class: StampInfo
Extends [AppellationMyStamp](../types/AppellationMyStamp.md#class-appellationmystamp)

#### Field: canEquip
```lua
number
```


#### Field: name
```lua
string
```


#### Field: path
```lua
string
```


#### Field: reqLevel
```lua
number
```


#### Field: modifier
```lua
table
```


#### Field: effectDescription
```lua
string
```


#### Field: id
```lua
number
```


#### Field: description
```lua
string
```


#### Field: tipType
```lua
string
```


### Class: SubItemString
#### Field: style
```lua
TextStyle
```
> [TextStyle](lua://TextStyle)
> 
> A `TextStyle` defines the visual appearance of text within a widget,
> including font, size, color, alignment, outline, shadow, ellipsis,
> and snapping behavior. It can measure text width and line height, and
> supports special font types for image-based text rendering.
> 

### Class: SubOptionItem
#### Field: optionId
```lua
number
```


#### Field: value
```lua
number
```


### Class: SubcategoryInfo
#### Field: completedCount
```lua
number
```


#### Field: name
```lua
string
```


#### Field: rewardAchievementType
```lua
number
```


#### Field: isHeirLevelCategory
```lua
boolean
```


#### Field: desc
```lua
string
```


#### Field: totalCount
```lua
number
```


### Class: SynergyIconInfo
#### Field: conditionbuffkind
```lua
boolean
```


#### Field: resultbuffkind
```lua
boolean
```


#### Field: desc
```lua
string
```


#### Field: conditionicon
```lua
string
```


#### Field: resulticon
```lua
string
```


### Class: TargetAbility
#### Field: [1]
```lua
TargetAbilityTemplate
```


#### Field: [2]
```lua
TargetAbilityTemplate
```


#### Field: [3]
```lua
TargetAbilityTemplate
```


### Class: TargetAbilityTemplate
#### Field: index
```lua
number|`10`|`11`|`12`|`14`...(+11)
```
> api/X2Ability

#### Field: level
```lua
number
```


#### Field: name
```lua
string
```


### Class: TeamMember
#### Field: isParty
```lua
boolean
```


#### Field: name
```lua
string
```


#### Field: memberIndex
```lua
number
```


#### Field: jointOrder
```lua
number
```
> 1 or 2

#### Field: teamRoleType
```lua
string
```


### Class: TextureColorKey
#### Field: [1]
```lua
number
```
> Red (min: `0`, max: `1`)

#### Field: [2]
```lua
number
```
> Green (min: `0`, max: `1`)

#### Field: [3]
```lua
number
```
> Blue (min: `0`, max: `1`)

### Class: TextureColors
#### Field: [string]
```lua
RGBAColor
```


### Class: TextureCoords
#### Field: [1]
```lua
number
```
> x

#### Field: [3]
```lua
number
```
> width

#### Field: [2]
```lua
number
```
> y

#### Field: [4]
```lua
number
```
> height

### Class: TextureData
#### Field: colorKey
```lua
TextureColorKey
```


#### Field: extent
```lua
TextureDimensions
```


#### Field: inset
```lua
TextureInset
```


#### Field: coords
```lua
TextureCoords
```


#### Field: colors
```lua
TextureColors|nil
```
> TODO: could be nil?

#### Field: offset
```lua
number[]
```


### Class: TextureDimensions
#### Field: [1]
```lua
number
```
> resized width

#### Field: [2]
```lua
number
```
> resized height

### Class: TextureInset
#### Field: [1]
```lua
number
```
> leftPadding

#### Field: [3]
```lua
number
```
> rightPadding

#### Field: [2]
```lua
number
```
> topPadding

#### Field: [4]
```lua
number
```
> bottomPadding

### Class: TextureKeyData
#### Field: height
```lua
number
```


#### Field: keys
```lua
string[]
```


#### Field: width
```lua
number
```


### Class: Time
#### Field: day
```lua
number
```


#### Field: month
```lua
number
```


#### Field: second
```lua
number
```


#### Field: minute
```lua
number
```


#### Field: hour
```lua
number
```


#### Field: year
```lua
number
```


### Class: TodayAssignmentGoal
#### Field: goal
```lua
number
```


#### Field: itemCount
```lua
number
```


#### Field: itemType
```lua
number
```


### Class: TodayAssignmentInfo
#### Field: desc
```lua
string
```


#### Field: requireItemCount
```lua
number|nil
```


#### Field: requireItem
```lua
number|nil
```


#### Field: requireLevel
```lua
number
```


#### Field: sort
```lua
number
```


#### Field: satisfy
```lua
boolean
```


#### Field: status
```lua
number
```


#### Field: realStep
```lua
number
```


#### Field: levelMin
```lua
number
```


#### Field: iconPath
```lua
string
```


#### Field: questType
```lua
number
```


#### Field: init
```lua
boolean
```


#### Field: levelMax
```lua
number
```


#### Field: title
```lua
string
```


### Class: TooltipInfo
#### Field: buff
```lua
boolean|nil
```


#### Field: name
```lua
string|nil
```


#### Field: maxHp
```lua
string|number|nil
```


#### Field: list
```lua
CommonFarmItem[]|nil
```


#### Field: owner
```lua
string|nil
```


#### Field: territoryName
```lua
string|nil
```


#### Field: possible
```lua
boolean|nil
```
> `true` if the player can use the ezi light

#### Field: text
```lua
string
```


#### Field: tooltipType
```lua
"carrying_backpack_slave"|"commonFarm"|"common_farm"|"conquest"|"corpse"...(+7)
```


#### Field: kind
```lua
"big_sailing_ship"|"boat"|"fishboat"|"gubuk"|"leviathan"...(+8)
```
> db ui_texts category_id 100

#### Field: hp
```lua
string|number|nil
```


#### Field: enemy
```lua
boolean|nil
```


#### Field: count
```lua
number|nil
```


#### Field: id
```lua
number|nil
```


#### Field: expedition
```lua
string|nil
```


#### Field: factionName
```lua
string|nil
```


#### Field: factionId
```lua
`HARIHARA_FACTION_ID`|`MONSTER_FACTION_ID`|`NUIA_FACTION_ID`|`OUTLAW_FACTION_ID`|`PC_IN_ALL_FACTION_ID`...(+1)
```
> api/Addon

#### Field: factions
```lua
`HARIHARA_FACTION_ID`|`MONSTER_FACTION_ID`|`NUIA_FACTION_ID`|`OUTLAW_FACTION_ID`|`PC_IN_ALL_FACTION_ID`[]|nil
```


#### Field: zoneId
```lua
`0`|`100`|`101`|`102`|`103`...(+152)
```
> Obtained from db zone_groups

### Class: TowerDefInfo
#### Field: color
```lua
string
```


#### Field: step
```lua
string
```


#### Field: titleMsg
```lua
string
```


#### Field: msg
```lua
string
```


#### Field: iconKey
```lua
string
```


#### Field: zoneGroup
```lua
`0`|`100`|`101`|`102`|`103`...(+151)
```
> TODO: Might not be ZONE_GROUP_ID

### Class: TutorialInfo
#### Field: [1]
```lua
{ title: string }
```


#### Field: [2]
```lua
{ [1]: string }
```


### Class: UIBound
#### Field: bound
```lua
Bound
```


#### Field: screenResolution
```lua
ScreenResolution
```


### Class: UnitAppellationRoute
#### Field: key
```lua
number
```


#### Field: value
```lua
string
```


### Class: UnitClass
#### Field: [1]
```lua
`10`|`11`|`12`|`14`|`1`...(+10)
```
> api/X2Ability

#### Field: [2]
```lua
`10`|`11`|`12`|`14`|`1`...(+10)
```
> api/X2Ability

#### Field: [3]
```lua
`10`|`11`|`12`|`14`|`1`...(+10)
```
> api/X2Ability

### Class: UnitClassNames
#### Field: [1]
```lua
"adamant"|"assassin"|"death"|"fight"|"hatred"...(+9)
```


#### Field: [2]
```lua
"adamant"|"assassin"|"death"|"fight"|"hatred"...(+9)
```


#### Field: [3]
```lua
"adamant"|"assassin"|"death"|"fight"|"hatred"...(+9)
```


### Class: UnitDistance
#### Field: distance
```lua
number
```


#### Field: over_distance
```lua
boolean
```


### Class: UnitInfo
#### Field: base_progress
```lua
number|nil
```
> if type == housing

#### Field: kind
```lua
string|nil
```
> if type == npc

#### Field: is_portal
```lua
boolean|nil
```
> if type == npc

#### Field: hp
```lua
string
```


#### Field: level
```lua
number
```


#### Field: name
```lua
string
```


#### Field: max_hp
```lua
string
```


#### Field: nick_name
```lua
string|nil
```


#### Field: owner_name
```lua
string|nil
```
> if type == housing

#### Field: house_category
```lua
string|nil
```
> if type == housing

#### Field: grade
```lua
string|nil
```


#### Field: class
```lua
UnitClass
```


#### Field: building_state
```lua
string|"done"|nil
```
> if type == housing

#### Field: heirLevel
```lua
number
```


#### Field: expeditionName
```lua
string|nil
```
> if type == character

#### Field: family_name
```lua
string
```


#### Field: faction
```lua
string
```


#### Field: type
```lua
"character"|"housing"|"mate"|"npc"|"shipyard"...(+2)
```


### Class: UrlLinkInfo
Extends [BaseLinkInfo](../types/BaseLinkInfo.md#class-baselinkinfo), [CommonLinkFields](../types/CommonLinkFields.md#class-commonlinkfields)

#### Field: addr
```lua
string
```


#### Field: linkType
```lua
"url"
```


#### Field: messageTimeStamp
```lua
number
```


#### Field: isOtherWorld
```lua
boolean
```


#### Field: filter
```lua
number
```


#### Field: text
```lua
string
```


### Class: Vec3
#### Field: x
```lua
number|nil
```


#### Field: y
```lua
number|nil
```


#### Field: z
```lua
number|nil
```


### Class: Vec3Array
#### Field: [1]
```lua
number|nil
```
> x

#### Field: [2]
```lua
number|nil
```
> y

#### Field: [3]
```lua
number|nil
```
> z

### Class: VirtualMemoryStats
#### Field: usage
```lua
number
```


#### Field: workingSet
```lua
number
```


### Class: WorldMessageInfo
#### Field: factionName
```lua
"170906 DO NOT TRANSLATE"|"184394 DO NOT TRANSLATE"|"27499 DO NOT TRANSLATE"|"27500 DO NOT TRANSLATE"|"27501 DO NOT TRANSLATE"...(+115)
```
> Obtained from db system_factions.name

#### Field: trgFactionName
```lua
"170906 DO NOT TRANSLATE"|"184394 DO NOT TRANSLATE"|"27499 DO NOT TRANSLATE"|"27500 DO NOT TRANSLATE"|"27501 DO NOT TRANSLATE"...(+115)
```
> Obtained from db system_factions.name

#### Field: trgMotherFactionName
```lua
"170906 DO NOT TRANSLATE"|"184394 DO NOT TRANSLATE"|"27499 DO NOT TRANSLATE"|"27500 DO NOT TRANSLATE"|"27501 DO NOT TRANSLATE"...(+115)
```
> Obtained from db system_factions.name

#### Field: trgName
```lua
string
```


#### Field: sextant
```lua
SEXTANT
```


#### Field: motherFactionName
```lua
"170906 DO NOT TRANSLATE"|"184394 DO NOT TRANSLATE"|"27499 DO NOT TRANSLATE"|"27500 DO NOT TRANSLATE"|"27501 DO NOT TRANSLATE"...(+115)
```
> Obtained from db system_factions.name

#### Field: name
```lua
string
```


#### Field: zoneGroupName
```lua
"Abyssal Library"|"Aegis Island"|"Ahnimar Event Arena"|"Ahnimar"|"Airain Rock"...(+143)
```


### Class: ZoneInfo
#### Field: continentName
```lua
string
```


#### Field: id
```lua
number
```


#### Field: zoneGroupName
```lua
string
```


### Class: ZoneStateInfo
#### Field: conflictState
```lua
`-1`|`HPWS_BATTLE`|`HPWS_PEACE`|`HPWS_TROUBLE_0`|`HPWS_TROUBLE_1`...(+4)
```
> api/X2Dominion

#### Field: localDevelopmentStep
```lua
number|nil
```


#### Field: localDevelopmentName
```lua
string|nil
```


#### Field: isSiegeZone
```lua
boolean
```


#### Field: isPeaceZone
```lua
boolean
```


#### Field: lockTime
```lua
number|nil
```


#### Field: nonRate
```lua
boolean|nil
```


#### Field: nonPeaceState
```lua
boolean
```


#### Field: remainTime
```lua
number|nil
```


#### Field: warChaos
```lua
boolean
```


#### Field: isNuiaProtectedZone
```lua
boolean
```


#### Field: isInstanceZone
```lua
boolean
```


#### Field: goldRate
```lua
number|nil
```


#### Field: festivalName
```lua
string|nil
```


#### Field: dropRate
```lua
number|nil
```


#### Field: isLocalDevelopment
```lua
boolean
```


#### Field: isConflictZone
```lua
boolean
```


#### Field: isFestivalZone
```lua
boolean
```


#### Field: isCurrentZone
```lua
boolean
```


#### Field: isHariharaProtectedZone
```lua
boolean
```


#### Field: zoneName
```lua
"Abyssal Library"|"Aegis Island"|"Ahnimar Event Arena"|"Ahnimar"|"Airain Rock"...(+143)
```


