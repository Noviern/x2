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
`EAK_ACHIEVEMENT`|`EAK_ARCHERAGE`|`EAK_COLLECTION`|`EAK_RACIAL_MISSION`
```
> api/X2Achievement

#### Field: name
```lua
string
```


#### Field: objective
```lua
number[]|nil
```


#### Field: isParentComplete
```lua
boolean|nil
```
> TODO this may not exist.

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


#### Field: subCategoryType
```lua
`10`|`11`|`12`|`13`|`14`...(+53)
```


#### Field: subCategoryName
```lua
string
```


#### Field: totalSubCount
```lua
number|nil
```


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
> TODO this may not exist.

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
> If totalSubCount exists

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
`10`|`11`|`12`|`13`|`14`...(+53)
```


### Class: AchievementSubCategory
#### Field: name
```lua
string
```


#### Field: subCategoryType
```lua
`10`|`11`|`12`|`13`|`14`...(+53)
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
`10`|`11`|`12`|`14`|`1`...(+11)
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


### Class: AppliedAllLevelEffect
#### Field: attributeType
```lua
string
```


#### Field: unitModifierType
```lua
number
```


#### Field: value
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


### Class: BlockedCharacter
#### Field: name
```lua
string
```


#### Field: unitName
```lua
string
```


#### Field: worldName
```lua
string
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
> scaled x (EffectiveOffset)

#### Field: width
```lua
number
```
> unscaled width

#### Field: y
```lua
number
```
> scaled y (EffectiveOffset)

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


### Class: BuildCondition
#### Field: buildEffect
```lua
string
```


#### Field: itemType
```lua
number
```


#### Field: name
```lua
string
```


#### Field: reqItemCount
```lua
number
```


#### Field: title
```lua
string
```


#### Field: itemCount
```lua
number
```


#### Field: effectDesc
```lua
string
```


#### Field: isLastStep
```lua
boolean
```


#### Field: buildExplanation
```lua
string
```


#### Field: devoteItemCount
```lua
number
```


#### Field: tooltip
```lua
string
```


### Class: BundleEffectInfo
#### Field: level
```lua
number
```


#### Field: reqSupportLevel
```lua
number
```


#### Field: reqOffenseLevel
```lua
number
```


#### Field: reqDefenseLevel
```lua
number
```


#### Field: unitModifierInfos
```lua
AppliedAllLevelEffect[]
```


### Class: ButlerChargeInfo
#### Field: freeChargeAmount
```lua
number
```


#### Field: maxFreeChargeCount
```lua
number
```


#### Field: maxWeeklychargeAmount
```lua
number
```


#### Field: isFree
```lua
boolean
```


#### Field: freeChargeCount
```lua
number
```


#### Field: remainWeeklyChargeAmount
```lua
number
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
> TODO

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
> TODO COMBAT_HIT_TYPE?

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
> TODO COMBAT_HIT_TYPE?

#### Field: mySlave
```lua
any
```
> TODO

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
> TODO

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
> TODO COMBAT_HIT_TYPE?

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
> TODO

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
> TODO COMBAT_HIT_TYPE?

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
> TODO COMBAT_HIT_TYPE?

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


### Class: CraftInfo
#### Field: amount
```lua
number
```


#### Field: item_info
```lua
ItemInfo
```


#### Field: count
```lua
number
```


#### Field: mainGrade
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
> Old Hair @TODO If this is set by default on the model then rgb cant be used and vice versa, needs more testing.

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
> Old Hair @TODO If this is set by default on the model then rgb cant be used and vice versa, needs more testing.

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

### Class: DetailInstanceInfo
#### Field: available
```lua
boolean
```


#### Field: resetCount
```lua
number
```


#### Field: resetItem
```lua
boolean
```


#### Field: playingTime
```lua
number
```


#### Field: permitLimit
```lua
number
```


#### Field: playRoundCount
```lua
number
```


#### Field: permitItem
```lua
boolean
```


#### Field: resetLimit
```lua
number
```


#### Field: showExpeditionLevel
```lua
boolean
```


#### Field: uiKey
```lua
string
```


#### Field: roundTime
```lua
number
```


#### Field: squadCreatable
```lua
boolean
```


#### Field: singleApplyAvailable
```lua
boolean
```


#### Field: zoneList
```lua
InstanceZoneInfo[]
```


#### Field: permitCount
```lua
number
```


#### Field: maxEnterCount
```lua
number
```


#### Field: enterCount
```lua
number
```


#### Field: entranceTime
```lua
EntranceTime
```


#### Field: desc
```lua
string
```


#### Field: balanceLevel
```lua
number
```


#### Field: name
```lua
string
```


#### Field: expeditionLevel
```lua
number
```


#### Field: gearScoreLimitMax
```lua
number
```


#### Field: levelMin
```lua
number
```


#### Field: gearScore
```lua
number
```


#### Field: levelMax
```lua
number
```


#### Field: hasSquad
```lua
boolean
```


#### Field: zoneName
```lua
string
```


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
> TODO

#### Field: maxCount
```lua
any
```
> TODO

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
> TODO

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
> TODO

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
> TODO

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
> TODO

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
> TODO

#### Field: weight
```lua
number|nil
```


### Class: EntranceTime
#### Field: timeGroupInfo
```lua
GroupInfo[]
```


#### Field: weekGroupInfo
```lua
GroupInfo[]
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


### Class: EquipSlotReinforceMaterialInfo
#### Field: [1]
```lua
RequiredMaterialInfo
```


#### Field: [4]
```lua
RequiredMaterialInfo
```


#### Field: curExp
```lua
number
```


#### Field: [3]
```lua
RequiredMaterialInfo
```


#### Field: [2]
```lua
RequiredMaterialInfo
```


#### Field: totalExp
```lua
number
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
> ui/common/esc_menu.g

#### Field: uiContentType
```lua
`UIC_ABILITY_CHANGE`|`UIC_ACHIEVEMENT`|`UIC_ACTABILITY`|`UIC_ADDON`|`UIC_APPELLATION`...(+121)
```
> api/Addon

### Class: EscMenuBadgeData
#### Field: buttonType
```lua
`1`|`2`|`3`
```


#### Field: buttonValue
```lua
number|nil
```
> 0 disable, 1 and more enable or show

#### Field: colorKey
```lua
string|nil
```
> ui/common/default.g > text_badge_bg.colors

### Class: EscMenuButtonData
#### Field: h
```lua
number|nil
```
> 25

#### Field: x
```lua
number|nil
```


#### Field: w
```lua
number|nil
```
> 25

#### Field: path
```lua
string|nil
```
> Addon/{addonname}/example.dds

#### Field: y
```lua
number|nil
```


### Class: EventTable
#### Field: ABILITY_CHANGED
```lua
fun(newAbility: "adamant"|"assassin"|"death"|"fight"|"hatred"...(+9), oldAbility: "adamant"|"assassin"|"death"|"fight"|"hatred"...(+9))|nil
```
> Event triggers when one of the players ability is changed.

#### Field: RANK_SNAPSHOTS
```lua
fun(rankType: number, divisionId: number)|nil
```
> Event triggers when the player checks ranking info.

#### Field: RANK_SEASON_RESULT_RECEIVED
```lua
fun()|nil
```


#### Field: RANK_UNLOCK
```lua
fun()|nil
```


#### Field: RECOVERABLE_EXP
```lua
fun(stringId: string, restorableExp: number, expLoss: number)|nil
```
> Event triggers when the player dies and has recoverable exp.

#### Field: RECOVERED_EXP
```lua
fun(stringId: string, recoveredExp: number)|nil
```
> Event triggers when the player recovers lost exp.

#### Field: RANK_REWARD_SNAPSHOTS
```lua
fun(rankType: number, divisionId: number)|nil
```
> Event triggers when the player views a pervious ranking snapshot.

#### Field: RANK_PERSONAL_DATA
```lua
fun()|nil
```
> Event triggers when the player views a tab of the ranking information window
> that requires the players personal data.

#### Field: RANK_RANKER_APPEARANCE
```lua
fun(charID: number)|nil
```
> Event triggers when the player views the gear of a player on the ranking
> information window.

#### Field: RANK_DATA_RECEIVED
```lua
fun()|nil
```


#### Field: RANK_LOCK
```lua
fun()|nil
```


#### Field: RANK_ALARM_MSG
```lua
fun(rankType: `RK_CHARACTER_GEAR_SCORE`|`RK_EXPEDITION_BATTLE_RECORD`|`RK_EXPEDITION_GEAR_SCORE`|`RK_EXPEDITION_INSTANCE_RATING`|`RK_FISHING_SUM`...(+7), msg: string)|nil
```
> Event triggers when a ranking information alarm occurs.

#### Field: REENTRY_NOTIFY_DISABLE
```lua
fun()|nil
```
> Event triggers when the player is no longer able to reenter a instance.

#### Field: REFRESH_COMBAT_RESOURCE
```lua
fun(resetBar: boolean, groupType: number, resourceType: number, point?: number)|nil
```
> Event triggers when the players combat resource has been refreshed.

#### Field: REMOVE_CARRYING_BACKPACK_SLAVE_INFO
```lua
fun(arg: any)|nil
```


#### Field: REMOVE_BOSS_TELESCOPE_INFO
```lua
fun(arg: any)|nil
```


#### Field: REMOVE_FISH_SCHOOL_INFO
```lua
fun(index: number)|nil
```
> Event triggers when a fish is no longer on fish telescope.

#### Field: REMOVE_GIVEN_QUEST_INFO
```lua
fun(arg1: number, qType: number)|nil
```
> Event triggers when the new quest is not within range of the player.

#### Field: REENTRY_NOTIFY_ENABLE
```lua
fun(param: ReentryParam)|nil
```
> Event triggers when the player can still reenter a instance.

#### Field: REMOVED_ITEM
```lua
fun(itemLinkText: string, itemCount: number, removeState: "consume"|"conversion"|"destroy", itemTaskType: number, tradeOtherName: string)|nil
```
> Event triggers when an item has been deleted/removed from the players inventory.

#### Field: REFRESH_STORE_MERCHANT_GOOD_LIMIT_PURCHASE
```lua
fun()|nil
```
> Event triggers when the stores purchase count for a limited item changes.

#### Field: RELOAD_CASH
```lua
fun(money: any)|nil
```


#### Field: REFRESH_COMBAT_RESOURCE_UPDATE_TIME
```lua
fun(updateReesourceType: number, nowTime: number, show: boolean)|nil
```
> Event triggers when the players combat resource has been updated.

#### Field: REFRESH_SQUAD_LIST
```lua
fun(arg?: boolean)|nil
```
> Event triggers when the players squad list has refreshed.

#### Field: REMOVE_NOTIFY_QUEST_INFO
```lua
fun(qType: number)|nil
```
> Event triggers when a quest notifcation is removed.

#### Field: RANDOM_SHOP_UPDATE
```lua
fun()|nil
```
> Event triggers when the manastorm shop updates.

#### Field: RAID_RECRUIT_LIST
```lua
fun(data: RaidRecruitListInfo)|nil
```
> Event triggers when the player views the raid recruit window.

#### Field: QUEST_CONTEXT_OBJECTIVE_EVENT
```lua
fun(objText: string)|nil
```
> Event triggers when the players quest updates.

#### Field: QUEST_CONTEXT_CONDITION_EVENT
```lua
fun(objText: string, condition: "dropped"|"started"|"updated")|nil
```
> Event triggers when the players quest condition occurs.

#### Field: QUEST_CONTEXT_UPDATED
```lua
fun(qType: number, status: "dropped"|"started"|"updated")|nil
```
> Event triggers when the players quest updates.

#### Field: QUEST_DIRECTING_MODE_END
```lua
fun()|nil
```


#### Field: QUEST_DIRECTING_MODE_HOT_KEY
```lua
fun(key: `1`|`2`|`3`)|nil
```
> Event triggers when the player uses a hot key to advance the quest dialog.

#### Field: QUEST_CHAT_RESTART
```lua
fun()|nil
```


#### Field: PROGRESS_TALK_QUEST_CONTEXT
```lua
fun(qtype: number, useDirectingMode: boolean, npcId: string, doodadId?: string)|nil
```
> Event triggers when the player talks to a npc that is required to progress a quest.

#### Field: QUEST_CHAT_LET_IT_DONE
```lua
fun()|nil
```


#### Field: PREMIUM_SERVICE_LIST_UPDATED
```lua
fun()|nil
```
> Event triggers when the player opens the patron window.

#### Field: PROCESS_CRAFT_ORDER
```lua
fun(result: boolean, processType: `COPT_INSTANT`|`COPT_INVALID`|`COPT_PC`)|nil
```
> Event triggers when the player processes a crafting order.

#### Field: RANDOM_SHOP_INFO
```lua
fun(isHide: boolean, isdailyReset: boolean)|nil
```
> Event triggers when the manastorm shop updates.

#### Field: QUEST_ERROR_INFO
```lua
fun(errNum: `10`|`11`|`12`|`13`|`14`...(+35), qtype: number, questDetail?: string, isCommon?: boolean)|nil
```
> Event triggers when the players quest has an error.

#### Field: QUEST_HIDDEN_READY
```lua
fun(qtype: number)|nil
```
> Event triggers when the player activates a hidden quest.

#### Field: RAID_FRAME_SIMPLE_VIEW
```lua
fun(simple: boolean)|nil
```
> Event triggers when the player checks the status display of the raid and
> changing raid window zoom setting.

#### Field: RAID_RECRUIT_DETAIL
```lua
fun(data: RaidRecruitDetailInfo)|nil
```
> Event triggers when the player views the details of a raid recruit.

#### Field: RAID_RECRUIT_HUD
```lua
fun(infos: RaidRecruitInfo[])|nil
```
> Event triggers when the raid hud changes.

#### Field: QUEST_HIDDEN_COMPLETE
```lua
fun(qtype: number)|nil
```
> Event triggers when the player completes a hidden quest.

#### Field: RAID_APPLICANT_LIST
```lua
fun(data: RaidApplicantData)|nil
```
> Event triggers when the player checks their raid applicant list.

#### Field: QUEST_NOTIFIER_START
```lua
fun()|nil
```
> Event triggers when the player loads into the world and the quest notifier needs to be initialized or refreshed.

#### Field: QUEST_QUICK_CLOSE_EVENT
```lua
fun(qtype: number)|nil
```
> Event triggers when a quests window is closed to show a video.

#### Field: QUEST_LEFT_TIME_UPDATED
```lua
fun(qtype: number, leftTime: number)|nil
```
> Event triggers when the players quest updates.

#### Field: QUEST_MSG
```lua
fun(arg1: string, arg2: string)|nil
```


#### Field: PREMIUM_SERVICE_BUY_RESULT
```lua
fun(err: any)|nil
```


#### Field: REMOVE_PING
```lua
fun()|nil
```
> Event triggers when the player enters/exits an instance and the map needs to remove all pings.

#### Field: REMOVE_TRANSFER_TELESCOPE_INFO
```lua
fun(index: number)|nil
```
> Event triggers when a transfer vehicle is no longer on the telescope.

#### Field: SET_ROADMAP_PICKABLE
```lua
fun(pick: boolean)|nil
```
> Event triggers when the player enables/disables ping mode.

#### Field: SET_REBUILD_HOUSE_CAMERA_MODE
```lua
fun()|nil
```
> Event triggers when the player enters house preview mode for remodeling a
> building.

#### Field: SHOW_ACCUMULATE_HONOR_POINT_DURING_HPW
```lua
fun(zoneName: string, accumulatePoint: number, state?: any)|nil
```
> Event triggers when the players honor points change during war due to combat.

#### Field: SHOW_ADDED_ITEM
```lua
fun(item: ItemInfo, count: number, taskType: number)|nil
```
> Event triggers when the player receives an item.

#### Field: SHOW_ADD_TAB_WINDOW
```lua
fun()|nil
```


#### Field: SET_PING_MODE
```lua
fun(pick: boolean)|nil
```
> Event triggers when the player enables/disables ping mode.

#### Field: SET_EFFECT_ICON_VISIBLE
```lua
fun(isShow: boolean, arg: Widget)|nil
```
> Event triggers when a effect icon should be visible on the map.

#### Field: SET_OVERHEAD_MARK
```lua
fun(unitId: string, index: number, visible: boolean)|nil
```
> Event triggers when a player has a mark set or remove on them.

#### Field: SELL_SPECIALTY_CONTENT_INFO
```lua
fun(list: SpecialtyInfo)|nil
```
> Event triggers when the player checks the specialty price information at a
> trade outlet.

#### Field: SET_DEFAULT_EXPAND_RATIO
```lua
fun(isSameZone: boolean)|nil
```
> Event triggers when the player is changing zones in the map.

#### Field: SELL_SPECIALTY
```lua
fun(text: string)|nil
```
> Event triggers when the player sells specialty cargo.

#### Field: SHOW_BANNER
```lua
fun(show: boolean, instanceType: number, remainPreNoticeTime?: any)|nil
```
> Event triggers when a banner should appear for content.

#### Field: SHOW_CRIME_RECORDS
```lua
fun(trialState: `TRIAL_FINAL_STATEMENT`|`TRIAL_FREE`|`TRIAL_GUILTY_BY_SYSTEM`|`TRIAL_GUILTY_BY_USER`|`TRIAL_POST_SENTENCE`...(+4))|nil
```
> Event triggers when the player joins a trial and triggers at each trial state.

#### Field: SHOW_SEXTANT_POS
```lua
fun(sextantPos: SEXTANT)|nil
```
> Event triggers when the player uses a sextant.

#### Field: SHOW_SLAVE_INFO
```lua
fun()|nil
```
> Event triggers when the player checks the summon information of the vehicle.

#### Field: SHOW_VERDICTS
```lua
fun(p1: number, p2: number, p3: number, p4: number, p5: number)|nil
```
> Event triggers when the player has to make a verdict in a trial.

#### Field: SHOW_CHAT_TAB_CONTEXT
```lua
fun(arg1: Widget, arg2: number)|nil
```
> Event triggers when the player right clicks on a tab for the context menu.

#### Field: SHOW_ROADMAP_TOOLTIP
```lua
fun(tooltipInfo: TooltipInfo[], tooltipCount: number)|nil
```
> Event triggers when a tooltip is shown on the roadmap.

#### Field: SHOW_RAID_FRAME_SETTINGS
```lua
fun()|nil
```
> Event triggers when the player views the raid frame settings.

#### Field: SHOW_RENAME_EXPEIDITON
```lua
fun(byItem: any, triedName: any, ownerWnd: any)|nil
```


#### Field: SHOW_DEFENDANT_WAIT_JURY
```lua
fun()|nil
```


#### Field: SHOW_DEFENDANT_WAIT_TRIAL
```lua
fun()|nil
```


#### Field: REMOVE_SHIP_TELESCOPE_INFO
```lua
fun(arg: number)|nil
```
> Event triggers when a ship is no longer on the telescope.

#### Field: SELECT_SQUAD_LIST
```lua
fun(data: SelectSquadList)|nil
```
> Event triggers when the player view the Recruit/Search page for instances.

#### Field: SCHEDULE_ITEM_UPDATED
```lua
fun()|nil
```
> Event triggers every minute to update the schedule.

#### Field: REQUIRE_ITEM_TO_CHAT
```lua
fun(channel: any)|nil
```


#### Field: REQUIRE_DELAY_TO_CHAT
```lua
fun(channel: any, delay: any, remain: any)|nil
```


#### Field: RESET_INGAME_SHOP_MODELVIEW
```lua
fun()|nil
```


#### Field: RESIDENT_BOARD_TYPE
```lua
fun(boardType: `1`|`2`|`3`|`4`|`5`...(+2))|nil
```
> Event triggers when the player views the residents board type.

#### Field: RESIDENT_HOUSING_TRADE_LIST
```lua
fun(infos: ResidentHousing, rownum: number, filter: number, searchword: string, refresh: number)|nil
```
> Event triggers when the player views the housing sales tab of a zone.

#### Field: REPUTATION_GIVEN
```lua
fun()|nil
```
> Event triggers when the player thumbs a player.

#### Field: REPORT_BAD_USER_UPDATE
```lua
fun()|nil
```


#### Field: REPORT_CRIME
```lua
fun(doodadName: string, locationName: string)|nil
```
> Event triggers when the player begins to report a crime.

#### Field: RENAME_PORTAL
```lua
fun()|nil
```
> Event triggers when the player renames a portal.

#### Field: RENEW_ITEM_SUCCEEDED
```lua
fun()|nil
```


#### Field: SELECTED_INSTANCE_DIFFICULT
```lua
fun(difficult: any)|nil
```


#### Field: RESIDENT_MEMBER_LIST
```lua
fun(total: number, start: number, refresh: number, members: ResidentMember[])|nil
```
> Event triggers when the player views the housing residents tab of a zone.

#### Field: RESIDENT_TOWNHALL
```lua
fun(info: ResidentInfo)|nil
```
> Event triggers when the player accesses the task board at resident townhall
> of the zone.

#### Field: SAVE_SCREEN_SHOT
```lua
fun(path: string)|nil
```
> Event triggers when the player saves a screenshot.

#### Field: SCALE_ENCHANT_BROADCAST
```lua
fun(characterName: string, resultCode: `IEBCT_ENCHANT_GREATE_SUCCESS`|`IEBCT_ENCHANT_SUCCESS`|`IEBCT_EVOVING`, itemLink: string, oldScale: string, newScale: string)|nil
```
> Event triggers when a player increases the temper of their equipment and it is broadcasted to the server.

#### Field: SCHEDULE_ITEM_SENT
```lua
fun()|nil
```
> Event triggers when the player clicks on an scheduled item (loyalty token) to
> collect it.

#### Field: RESIDENT_SERVICE_POINT_CHANGED
```lua
fun(zoneGroupName: "Abyssal Library"|"Aegis Island"|"Ahnimar Event Arena"|"Ahnimar"|"Airain Rock"...(+143), amount: number, total: number)|nil
```
> Event triggers when the players residental contribution points change.

#### Field: SAVE_PORTAL
```lua
fun()|nil
```
> Event triggers when the player saves a portal.

#### Field: RULING_CLOSED
```lua
fun()|nil
```
> Event triggers when a jury ruling is has come to an end.

#### Field: RULING_STATUS
```lua
fun(count: number, total: number, sentenceType: `SENTENCE_GUILTY_1`|`SENTENCE_GUILTY_2`|`SENTENCE_GUILTY_3`|`SENTENCE_GUILTY_4`|`SENTENCE_GUILTY_5`...(+1), sentenceTime: number)|nil
```
> Event triggers when a member of the jury votes.

#### Field: RESIDENT_ZONE_STATE_CHANGE
```lua
fun()|nil
```
> Event triggers when the player is viewing the location of land for sale in
> sales tab of the resident townhall for the zone.

#### Field: ROLLBACK_FAVORITE_CRAFTS
```lua
fun(datas: Craft[])|nil
```
> Event triggers when the players favorite crafts are rolledback.

#### Field: SHOW_WORLDMAP_LOCATION
```lua
fun(zoneId: `0`|`100`|`101`|`102`|`104`...(+315), x: number, y: number, z: number)|nil
```
> Event triggers when the world map has a location to be shown.

#### Field: PREMIUM_POINT_CHANGE
```lua
fun()|nil
```


#### Field: PREMIUM_GRADE_CHANGE
```lua
fun(prevPremiumGrade: any, presentPremiumGrade: any)|nil
```


#### Field: MOVIE_LOAD
```lua
fun()|nil
```


#### Field: MOVIE_ABORT
```lua
fun()|nil
```


#### Field: MOVIE_STOP
```lua
fun()|nil
```


#### Field: MULTI_QUEST_CONTEXT_SELECT
```lua
fun(targetNpc: boolean, qtype: number, useDirectingMode: boolean, targetId: string, interactionValue: string)|nil
```
> Event triggers when the player interacts with a npc that has multiple quests.

#### Field: MULTI_QUEST_CONTEXT_SELECT_LIST
```lua
fun(questList: QuestSelectList)|nil
```
> Event triggers when the player interacts with a npc that has multiple quests.

#### Field: MOVE_SPEED_CHANGE
```lua
fun()|nil
```
> Event triggers when the players move speed changes.

#### Field: MOUSE_DOWN
```lua
fun(widgetId: string)|nil
```
> Event triggers when the player clicks on a widget.

#### Field: MOUSE_UP
```lua
fun()|nil
```


#### Field: MOUNT_SLOT_CHANGED
```lua
fun()|nil
```


#### Field: MOUSE_CLICK
```lua
fun()|nil
```


#### Field: MOUNT_PET
```lua
fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`, isMyPet: boolean)|nil
```
> Event triggers when the player mounts a pet.

#### Field: NAME_TAG_MODE_CHANGED_MSG
```lua
fun(changedNameTagMode: `1`|`2`|`3`|`4`)|nil
```
> Event triggers when the player changes the name tag mode.

#### Field: NAVI_MARK_POS_TO_MAP
```lua
fun()|nil
```


#### Field: NOTIFY_AUTH_BILLING_MESSAGE
```lua
fun(msg: any, remainTime: any)|nil
```


#### Field: NOTIFY_AUTH_ADVERTISING_MESSAGE
```lua
fun(msg: any, remainTime: any)|nil
```


#### Field: NOTIFY_AUTH_DISCONNECTION_MESSAGE
```lua
fun(msg: any, remainTime: any)|nil
```


#### Field: NOTIFY_AUTH_FATIGUE_MESSAGE
```lua
fun(msg: any, remainTime: any)|nil
```


#### Field: NATION_DOMINION
```lua
fun(zoneGroupType: `0`|`100`|`101`|`102`|`103`...(+151), force: boolean)|nil
```
> Event triggers when the player is selecting a territory from the Faction > Auroria Territories window.

#### Field: NOTICE_MESSAGE
```lua
fun(noticeType: number, color: string, visibleTime: number, message: string, name: string)|nil
```
> Event triggers when a gm notice message occurs.

#### Field: NEW_SKILL_POINT
```lua
fun(point: number)|nil
```
> Event triggers when the player gains a new skill point.

#### Field: NEXT_SIEGE_INFO
```lua
fun(siegeInfo: NextSiegeInfo)|nil
```
> Event triggers when the next siege information is required.

#### Field: NAVI_MARK_REMOVE
```lua
fun()|nil
```


#### Field: NEW_DAY_STARTED
```lua
fun()|nil
```
> Event triggers when a new day (daily reset) starts.

#### Field: NOTIFY_AUTH_NOTICE_MESSAGE
```lua
fun(message: any, visibleTime: any, needCountdown: any)|nil
```


#### Field: MOUNT_BAG_UPDATE
```lua
fun()|nil
```


#### Field: MODE_ACTIONS_UPDATE
```lua
fun()|nil
```
> Event triggers when the players dynamic shortcut is updated.

#### Field: MAIL_WRITE_ITEM_UPDATE
```lua
fun(index: number)|nil
```
> Event triggers when the player starts to create a new mail.

#### Field: MAIL_SENT_SUCCESS
```lua
fun()|nil
```
> Event triggers when the player successfully sends a mail.

#### Field: MAP_EVENT_CHANGED
```lua
fun()|nil
```
> Event triggers when the player opens the map.

#### Field: MATE_SKILL_LEARNED
```lua
fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`, text: string)|nil
```
> Event triggers when the players mount or battlepet learns a new skill.

#### Field: MATE_STATE_UPDATE
```lua
fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`, stateIndex: `1`|`2`|`3`|`4`)|nil
```
> Event triggers when the players mount of battlepet state changes without the
> player changing it.

#### Field: MAIL_SENTBOX_UPDATE
```lua
fun(read: any, mailListKind: any)|nil
```
> Event triggers when the player checks their sent mail.

#### Field: MAIL_INBOX_UPDATE
```lua
fun(read: boolean|nil, mailListKind: `MAIL_LIST_CONTINUE`|`MAIL_LIST_END`|`MAIL_LIST_INVALID`|`MAIL_LIST_START`|nil)|nil
```
> Event triggers when the players mailbox has an update.

#### Field: MAIL_RETURNED
```lua
fun()|nil
```


#### Field: MAIL_INBOX_MONEY_TAKEN
```lua
fun()|nil
```
> Event triggers when the player takes money from the mail.

#### Field: MAIL_INBOX_TAX_PAID
```lua
fun()|nil
```
> Event triggers when the player pays their taxes through the mail.

#### Field: MONEY_ACQUISITION_BY_LOOT
```lua
fun(charName: any, moneyStr: any)|nil
```


#### Field: MEGAPHONE_MESSAGE
```lua
fun(show: any, channel: any, name: any, message: any, isMyMessage: any)|nil
```


#### Field: MIA_MAIL_INBOX_MONEY_TAKEN
```lua
fun()|nil
```


#### Field: MIA_MAIL_WRITE_ITEM_UPDATE
```lua
fun()|nil
```


#### Field: MINE_AMOUNT
```lua
fun()|nil
```


#### Field: MINI_SCOREBOARD_CHANGED
```lua
fun(status: "inactive"|"remove"|"update", info: MiniScoreBoardInfo[]|nil)|nil
```
> Event triggers when the mini scoreboard changes.

#### Field: MIA_MAIL_INBOX_ITEM_TAKEN
```lua
fun()|nil
```


#### Field: MIA_MAIL_SENT_SUCCESS
```lua
fun()|nil
```


#### Field: MIA_MAIL_RETURNED
```lua
fun()|nil
```


#### Field: MIA_MAIL_SENTBOX_UPDATE
```lua
fun()|nil
```


#### Field: MIA_MAIL_INBOX_TAX_PAID
```lua
fun()|nil
```


#### Field: MIA_MAIL_INBOX_UPDATE
```lua
fun()|nil
```


#### Field: PREMIUM_LABORPOWER_CHANGED
```lua
fun(onlineDiff: any, offlineDiff: any)|nil
```


#### Field: NOTIFY_AUTH_TC_FATIGUE_MESSAGE
```lua
fun(msg: any, remainTime: any)|nil
```


#### Field: NPC_CRAFT_UPDATE
```lua
fun()|nil
```


#### Field: PLAYER_BANK_AA_POINT
```lua
fun()|nil
```


#### Field: PLAYER_ABILITY_LEVEL_CHANGED
```lua
fun()|nil
```
> Event triggers when the players ability level changes.

#### Field: PLAYER_BANK_MONEY
```lua
fun(amount: number, amountStr: string)|nil
```
> Event triggers when the player deposits or withdraws from their bank.

#### Field: PLAYER_BM_POINT
```lua
fun(oldBmPoint: string)|nil
```
> Event triggers when the players loyalty tokens change.

#### Field: PLAYER_GEAR_POINT
```lua
fun()|nil
```


#### Field: PLAYER_AA_POINT
```lua
fun(change: any, changeStr: any, itemTaskType: any, info: any)|nil
```


#### Field: PET_FOLLOWING_MASTER
```lua
fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)|nil
```
> Event triggers when the players mount state t is following.

#### Field: PET_STOP_BY_MASTER
```lua
fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)|nil
```
> Event triggers when the players mount state is not following.

#### Field: PETMATE_UNBOUND
```lua
fun()|nil
```
> Event triggers when the player unmounts another players pet.

#### Field: PET_AUTO_SKILL_CHANGED
```lua
fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)|nil
```
> Event triggers when the players pet auto skill changes

#### Field: PETMATE_BOUND
```lua
fun()|nil
```
> Event triggers when the player mounts another players pet.

#### Field: PLAYER_HONOR_POINT
```lua
fun(amount: number, amountStr: string, isCombatInHonorPointWar?: boolean)|nil
```
> Event triggers when the players honor points change.

#### Field: PLAYER_JURY_POINT
```lua
fun()|nil
```
> Event triggers when the player completes a trial.

#### Field: PLAYER_VISUAL_RACE
```lua
fun()|nil
```
> Event triggers when the player changes race.

#### Field: POST_CRAFT_ORDER
```lua
fun(result: boolean)|nil
```
> Event triggers when the player attempts to list a craftring request.

#### Field: PRELIMINARY_EQUIP_UPDATE
```lua
fun()|nil
```
> Event triggers when the player changes equipment.

#### Field: PLAYER_HONOR_POINT_CHANGED_IN_HPW
```lua
fun(amount: number)|nil
```
> Event triggers when the players honor points change in a zone.

#### Field: PLAYER_RESURRECTION
```lua
fun(name: string)|nil
```
> Event triggers when the player has been resurrected.

#### Field: PLAYER_MONEY
```lua
fun(change: number, changeStr: string, itemTaskType: number, info?: any)|nil
```
> Event triggers when the players money changes

#### Field: PLAYER_RESURRECTED
```lua
fun()|nil
```
> Event triggers when the player accepts a resurrection.

#### Field: PLAYER_LEADERSHIP_POINT
```lua
fun(amount: number, amountStr: string)|nil
```
> Event triggers when the player receives leadership points.

#### Field: PLAYER_LIVING_POINT
```lua
fun(amount: number, amountStr: string)|nil
```
> Event triggers when the players vocation changes.

#### Field: NPC_CRAFT_ERROR
```lua
fun()|nil
```


#### Field: PASSENGER_UNMOUNT_PET
```lua
fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)|nil
```
> Event triggers when a passenger unmounts the players pet.

#### Field: OPTION_RESET
```lua
fun()|nil
```
> Event triggers when the player resets a Game Settings option.

#### Field: ONE_AND_ONE_CHAT_ADD_MESSAGE
```lua
fun(channelId: any, speakerName: any, message: any, isSpeakerGm: any)|nil
```


#### Field: NUONS_ARROW_UPDATE
```lua
fun(data: NuonsArrowUpdate[])|nil
```
> Event triggers when a continent has regional community center development update.

#### Field: ONE_AND_ONE_CHAT_END
```lua
fun(channelId: any)|nil
```


#### Field: ONE_AND_ONE_CHAT_START
```lua
fun(channelId: any, targetName: any)|nil
```


#### Field: OPEN_CHAT
```lua
fun()|nil
```
> Event triggers when the player opens their chat.

#### Field: NUONS_ARROW_UI_MSG
```lua
fun(nuonsMsgInfo: any)|nil
```


#### Field: NPC_UNIT_EQUIPMENT_CHANGED
```lua
fun()|nil
```


#### Field: NUONS_ARROW_SHOW
```lua
fun(visible: any)|nil
```


#### Field: NPC_INTERACTION_END
```lua
fun()|nil
```
> Event triggers when the player ends a interaction with a npc.

#### Field: NPC_INTERACTION_START
```lua
fun(value: "quest", addedValue: "complete"|"start"|"talk", npcId: string)|nil
```
> Event triggers when the player starts a interaction with a npc.

#### Field: PASSENGER_MOUNT_PET
```lua
fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)|nil
```
> Event triggers when a passenger mounts the players pet.

#### Field: OPEN_COMMON_FARM_INFO
```lua
fun(commonFarmType: `1`|`2`|`3`|`4`)|nil
```
> Event triggers when the player opens information board at a public farm to check which items can be placed.

#### Field: OPEN_CRAFT_ORDER_BOARD
```lua
fun(tabName: string)|nil
```
> Event triggers when the player opens the crafting request window by right clicking on a crafting request.

#### Field: OPEN_PAPER
```lua
fun(type: "book"|"page", idx: number)|nil
```
> Event triggers when the player opens a letter/book in their inventory.

#### Field: OPEN_PROMOTION_EVENT_URL
```lua
fun(url: any)|nil
```


#### Field: OPTIMIZATION_RESULT_MESSAGE
```lua
fun(activated: boolean)|nil
```
> Event triggers when the player enables/disables optimization.

#### Field: OPEN_CONFIG
```lua
fun()|nil
```
> Event triggers when the player opens the escape menu with the escape key.

#### Field: OPEN_NAVI_DOODAD_NAMING_DIALOG
```lua
fun()|nil
```


#### Field: OPEN_EXPEDITION_PORTAL_LIST
```lua
fun(addPortal: boolean, interactionDoodad: boolean, expeditionOwner: boolean)|nil
```
> Event triggers when the player interacts with their guild portal.

#### Field: OPEN_MUSIC_SHEET
```lua
fun(isShow: boolean, itemIdString: string, isWide: number)|nil
```
> Event triggers when the player opens a music sheet to begin composing music.

#### Field: OPEN_EMBLEM_IMPRINT_UI
```lua
fun()|nil
```


#### Field: OPEN_EMBLEM_UPLOAD_UI
```lua
fun(doodad: number)|nil
```
> Event triggers when the player opens the crest printer window.

#### Field: MAIL_INBOX_ITEM_TAKEN
```lua
fun(index: number)|nil
```
> Event triggers when the player takes an item from the mail.

#### Field: SHOW_WORLDMAP_TOOLTIP
```lua
fun(tooltipInfo: TooltipInfo[], tooltipCount: number)|nil
```
> Event triggers when a tooltip is shown on the worldmap.

#### Field: SIEGEWEAPON_UNBOUND
```lua
fun()|nil
```
> Event triggers when the player unmounts a siege weapon.

#### Field: UPDATE_COMPLETED_QUEST_INFO
```lua
fun()|nil
```
> Event triggers when the map needs to update the completed quest information.

#### Field: UPDATE_CLIENT_DRIVEN_INFO
```lua
fun(sceneInfo: any)|nil
```


#### Field: UPDATE_CONTENT_ROSTER_WINDOW
```lua
fun(updateInfo: any)|nil
```


#### Field: UPDATE_CORPSE_INFO
```lua
fun()|nil
```
> Event triggers when the player dies and when the player respawns.

#### Field: UPDATE_CRAFT_ORDER_ITEM_FEE
```lua
fun(info: CraftOrderItemFee)|nil
```
> Event triggers when the player is attempting to list a requested item.

#### Field: UPDATE_CHRONICLE_NOTIFIER
```lua
fun(init: boolean, mainKey: number)|nil
```
> Event triggers when the players chronicle quest notification tab updates.

#### Field: UPDATE_CHANGE_VISUAL_RACE_WND
```lua
fun(fired: boolean)|nil
```
> Event triggers when the player starts/cancels the race transformation.

#### Field: UPDATE_CHRONICLE_INFO
```lua
fun(info: ChronicleInfo)|nil
```
> Event triggers when the player purchases a chronicle quest.

#### Field: UPDATE_BUBBLE
```lua
fun()|nil
```


#### Field: UPDATE_CARRYING_BACKPACK_SLAVE_INFO
```lua
fun()|nil
```


#### Field: UPDATE_BOT_CHECK_INFO
```lua
fun(totalTime: number, remainTime: number, count: number, question: string)|nil
```
> Event triggers when the bot check window info for the player updates.

#### Field: UPDATE_CRAFT_ORDER_ITEM_SLOT
```lua
fun(info?: CraftOrderItemSlot)|nil
```
> Event triggers when the request slot updates.

#### Field: UPDATE_DEFENCE_INFO
```lua
fun(info: any)|nil
```


#### Field: UPDATE_EXPEDITION_TODAY_ASSIGNMENT_RESET_COUNT
```lua
fun(count: number)|nil
```
> Event triggers when the players guild assignments reset.

#### Field: UPDATE_EXPEDITION_PORTAL
```lua
fun()|nil
```
> Event triggers when the players guild house portal list changes.

#### Field: UPDATE_FACTION_REZ_DISTRICT
```lua
fun()|nil
```
> Event triggers when a hero activates a hero respawn spot.

#### Field: UPDATE_FISH_SCHOOL_AREA
```lua
fun()|nil
```
> Event triggers when the player starts and stops using a ship fish telescope.

#### Field: UPDATE_CRAFT_ORDER_SKILL
```lua
fun(key: string, fired: boolean)|nil
```
> Event triggers when the player starts to make, or cancels, a request for a
> craft order.

#### Field: UPDATE_ENCHANT_ITEM_MODE
```lua
fun(isExcutable: boolean, isLock: boolean)|nil
```
> Event triggers when an item is about to be enchanted and when at the start of the item being enchanted.

#### Field: UPDATE_DURABILITY_STATUS
```lua
fun(added: boolean, removed: boolean)|nil
```
> Event triggers when the players durability status of their gear changes. (e.g., Item is nearly broken)

#### Field: UPDATE_DYEING_EXCUTABLE
```lua
fun(executeable: boolean)|nil
```
> Event triggers when the player attempts to dye an item and the dye preview window opens.

#### Field: UPDATE_DOMINION_INFO
```lua
fun()|nil
```
> Event triggers whenever there is a siege information update.

#### Field: UPDATE_DOODAD_INFO
```lua
fun()|nil
```
> Event triggers when the player opens the map.

#### Field: UPDATE_FISH_SCHOOL_INFO
```lua
fun()|nil
```
> Event triggers every 500ms while the player is using a ship fish telescope.

#### Field: UPDATE_BOSS_TELESCOPE_INFO
```lua
fun()|nil
```
> Event triggers every 500ms while the player is using a boss telescope.

#### Field: UPDATE_BINDINGS
```lua
fun()|nil
```
> Event triggers when the player applies updates to their hotkey bindings.

#### Field: TUTORIAL_EVENT
```lua
fun(id: number, info: TutorialInfo[])|nil
```
> Event triggers when an tutorial event occurs.

#### Field: TRY_LOOT_DICE
```lua
fun(key: number, timeStamp: number, itemLink: string)|nil
```
> Event triggers when an item that needs to be rolled on drops.

#### Field: TUTORIAL_HIDE_FROM_OPTION
```lua
fun()|nil
```
> Event triggers when the player disables pop-up tutorial windows from their
> options window.

#### Field: UCC_IMPRINT_SUCCEEDED
```lua
fun()|nil
```
> Event triggers when a ucc imprint has succeeded.

#### Field: UI_ADDON
```lua
fun()|nil
```
> Event triggers when `ADDON:FireAddon` has been called.

#### Field: TRIAL_TIMER
```lua
fun(state: `TRIAL_FINAL_STATEMENT`|`TRIAL_FREE`|`TRIAL_GUILTY_BY_SYSTEM`|`TRIAL_GUILTY_BY_USER`|`TRIAL_POST_SENTENCE`...(+4), remainTable: Time)|nil
```
> Event triggers every second a player is in a trial.

#### Field: TRIAL_MESSAGE
```lua
fun(text: string)|nil
```
> Event triggers when the player attempts to join a trial that has already begun.

#### Field: TRIAL_STATUS
```lua
fun(state: `TRIAL_FINAL_STATEMENT`|`TRIAL_FREE`|`TRIAL_GUILTY_BY_SYSTEM`|`TRIAL_GUILTY_BY_USER`|`TRIAL_POST_SENTENCE`...(+4), juryCount: number, remainTime: number, arg: number)|nil
```
> Event triggers when the trial changes state,

#### Field: TRIAL_CANCELED
```lua
fun()|nil
```


#### Field: TRIAL_CLOSED
```lua
fun()|nil
```
> Event triggers when a trial is over.

#### Field: UPDATE_BOSS_TELESCOPE_AREA
```lua
fun()|nil
```
> Event triggers when the player starts and stops using a boss telescope.

#### Field: UI_PERMISSION_UPDATE
```lua
fun()|nil
```
> Event triggers when a ui permission update has occured.

#### Field: UNFINISHED_BUILD_HOUSE
```lua
fun(message: string)|nil
```
> Event triggers when the player attempts to place land while they already have land that is unbuilt.

#### Field: UNIT_KILL_STREAK
```lua
fun(killStreakInfo: KillStreakInfo)|nil
```
> Event triggers when a player is on a kill streak.

#### Field: UNIT_NAME_CHANGED
```lua
fun(unitId: string)|nil
```
> Event triggers when a units name changes.

#### Field: UNIT_NPC_EQUIPMENT_CHANGED
```lua
fun(arg: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27))|nil
```
> Event triggers when the players pet equipment changes.

#### Field: UI_RELOADED
```lua
fun()|nil
```
> Event triggers when the players UI reloads. (Toggling Vertical Sync will cause a UI reload)

#### Field: UNIT_EQUIPMENT_CHANGED
```lua
fun(equipSlot: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27))|nil
```
> Event triggers when the player changes their gear.

#### Field: UNIT_DEAD
```lua
fun(stringId: string, lossExp: number, lossDurabilityRatio: number)|nil
```
> Event triggers when a player dies.

#### Field: UNIT_DEAD_NOTICE
```lua
fun(name: string)|nil
```
> Event triggers when a player dies.

#### Field: UNITFRAME_ABILITY_UPDATE
```lua
fun(unitId: string)|nil
```
> Event triggers when a player changes their class.

#### Field: UNIT_COMBAT_STATE_CHANGED
```lua
fun(combat: boolean, unitId: string)|nil
```
> Event triggers when the combat state of a unit changes.

#### Field: TRANSFORM_COMBAT_RESOURCE
```lua
fun(groupType: `10`|`11`|`12`|`14`|`1`...(+11))|nil
```
> Event triggers when a combat resource has been transformed. (e.g. When Vitalism Prayer reaches max stacks it converts into Divine Response.)

#### Field: UPDATE_GACHA_LOOT_MODE
```lua
fun(isExcutable: boolean, isLock: boolean)|nil
```
> Event triggers when the open chest (gold/silver/copper crate) window receives
> a update when the player selects a crate or a key and when each crate is
> opened.

#### Field: UPDATE_HERO_ELECTION_CONDITION
```lua
fun()|nil
```
> Event triggers when the hero election condition has updated.

#### Field: UPDATE_TELESCOPE_AREA
```lua
fun()|nil
```
> Event triggers when the player starts and stops using a ship telescope.

#### Field: UPDATE_SQUAD
```lua
fun()|nil
```
> Event triggers when the players squad updates.

#### Field: UPDATE_TODAY_ASSIGNMENT
```lua
fun(todayInfo?: TodayAssignmentInfo)|nil
```
> Event triggers when the players daily assignment updates.

#### Field: UPDATE_TODAY_ASSIGNMENT_RESET_COUNT
```lua
fun(count: number)|nil
```
> Event triggers when the players daily assignments reset.

#### Field: UPDATE_TRANSFER_TELESCOPE_AREA
```lua
fun()|nil
```
> Event triggers when the player starts and stops using a telescope.

#### Field: UPDATE_SPECIALTY_RATIO
```lua
fun(sellItem: SellSpecialtyInfo)|nil
```
> Event triggers when the player opens the sell cargo window. Event triggers when `X2Store:GetZoneSpecialtyRatio` is used.

#### Field: UPDATE_SKILL_ACTIVE_TYPE
```lua
fun()|nil
```
> Event triggers when the player learns a new emote.

#### Field: UPDATE_SLAVE_EQUIPMENT_SLOT
```lua
fun(reload: boolean)|nil
```
> Event triggers when the players slave equipment slot updates.

#### Field: UPDATE_SHORTCUT_SKILLS
```lua
fun()|nil
```


#### Field: UPDATE_SIEGE_SCORE
```lua
fun(offensePoint: number, outlawPoint: number)|nil
```
> Event triggers when the siege score changes.

#### Field: UPDATE_SHIP_TELESCOPE_INFO
```lua
fun()|nil
```
> Event triggers every 500ms while the player is using a ship telescope.

#### Field: UPDATE_TRANSFER_TELESCOPE_INFO
```lua
fun()|nil
```
> Event triggers every 500ms while the player is using a telescope.

#### Field: UPDATE_ZONE_LEVEL_INFO
```lua
fun(level: `0`|`1`|`2`|`3`, id: `0`|`100`|`101`|`102`|`103`...(+151))|nil
```
> Event triggers when the world map zone zoom level changes.

#### Field: WATCH_TARGET_CHANGED
```lua
fun(stringId: any)|nil
```
> Event triggers when the player starts tracking a new target.

#### Field: WEB_BROWSER_ESC_EVENT
```lua
fun(browser: any)|nil
```


#### Field: WORLD_MESSAGE
```lua
fun(msg: string, iconKey: string, info: WorldMessageInfo)|nil
```
> Event triggers when a world message occurs.

#### Field: UPDATE_ZONE_INFO
```lua
fun()|nil
```
> Event triggers when the player enters a new zone.

#### Field: WAIT_REPLY_FROM_SERVER
```lua
fun(waiting: boolean)|nil
```
> Event triggers when the player is waiting on a reply from the server.

#### Field: WAIT_FRIENDLIST_UPDATE
```lua
fun(updateType: string)|nil
```
> Event triggers when the player receieves a friend request.

#### Field: WAIT_FRIEND_ADD_ALARM
```lua
fun()|nil
```
> Event triggers when the player receieves a friend request.

#### Field: UPDATE_ZONE_PERMISSION
```lua
fun()|nil
```
> Event triggers when the player enters a zone with permissions. (Ipyna Ridge Akasch Invasion)

#### Field: VIEW_CASH_BUY_WINDOW
```lua
fun(sellType: any)|nil
```


#### Field: UPDATE_GIVEN_QUEST_STATIC_INFO
```lua
fun()|nil
```
> Event triggers when the players given quest information updates.

#### Field: UPDATE_ROUTE_MAP
```lua
fun()|nil
```


#### Field: UPDATE_ROADMAP_ANCHOR
```lua
fun(file: string)|nil
```
> Event triggers when the player changes zones.

#### Field: UPDATE_INSTANT_GAME_INVITATION_COUNT
```lua
fun(accept: number, totalSize: number)|nil
```
> Event triggers when a instance invitation goes out and each time a player joins.

#### Field: UPDATE_INGAME_SHOP_VIEW
```lua
fun(viewType: "enter_mode"|"leave_mode"|"leave_sort", mode: `1`|`MODE_SEARCH`)|nil
```
> Event triggers when the in game shops view changes.

#### Field: UPDATE_INSTANT_GAME_KILLSTREAK
```lua
fun(count: any)|nil
```


#### Field: UPDATE_INSTANT_GAME_KILLSTREAK_COUNT
```lua
fun(count: number)|nil
```
> Event triggers when the player kills another player in a instance.

#### Field: UPDATE_INSTANT_GAME_SCORES
```lua
fun()|nil
```
> Event triggers when an instance score updates.

#### Field: UPDATE_INGAME_SHOP
```lua
fun(updateType: "cart"|"checkTime"|"exchange_ratio"|"goods"|"maintab"...(+2), page?: number, totalItems?: number, arg4?: any)|nil
```
> Event triggers when the in game shop receives an event.

#### Field: UPDATE_INDUN_PLAYING_INFO_BROADCASTING
```lua
fun(info: NpcBroadcastingInfo[])|nil
```
> Event triggers every second while the npc info is broadcasting for the player. (e.g. Hereafter Rebellion Win Condition/Progress)

#### Field: UPDATE_INGAME_BEAUTYSHOP_STATUS
```lua
fun()|nil
```
> Event triggers when the players ability to use the beautyshop changes.

#### Field: UPDATE_HOUSING_INFO
```lua
fun()|nil
```
> Event triggers when the housing information for the map updates.

#### Field: UPDATE_HOUSING_TOOLTIP
```lua
fun(unitId: string)|nil
```
> Event triggers when a housing tooltip updates.

#### Field: UPDATE_ROSTER_MEMBER_INFO
```lua
fun(rosterId: any)|nil
```


#### Field: UPDATE_INSTANT_GAME_STATE
```lua
fun()|nil
```
> Event triggers when the player queues an instance.

#### Field: UPDATE_ITEM_LOOK_CONVERT_MODE
```lua
fun()|nil
```
> Event triggers when the player opens/closes the item infusion window.

#### Field: UPDATE_RESTORE_CRAFT_ORDER_ITEM_MATERIAL
```lua
fun(infos: ItemInfo)|nil
```
> Event triggers when the player is attemping to revert a crafting order.

#### Field: UPDATE_RESTORE_CRAFT_ORDER_ITEM_SLOT
```lua
fun(info: CraftOrderInfo|nil)|nil
```
> Event triggers when the player is attempting to revert a crafting order.

#### Field: UPDATE_RETURN_ACCOUNT_STATUS
```lua
fun(status: `1`|`2`|`3`)|nil
```
> Event triggers when the player returns to the game after a month. https://na.archerage.to/forums/threads/returning-player-pack.10482/

#### Field: UPDATE_INSTANT_GAME_TIME
```lua
fun()|nil
```
> Event triggers every 500ms while the player is inside an instance.

#### Field: UPDATE_PING_INFO
```lua
fun()|nil
```
> Event triggers when the map has a ping update.

#### Field: UPDATE_NPC_INFO
```lua
fun()|nil
```
> Event triggers when npc information for the map has changed.

#### Field: UPDATE_OPTION_BINDINGS
```lua
fun(overrided?: boolean, oldAction?: string, newAction?: string)|nil
```
> Event triggers when the player opens the settings window and triggers when
> the player updates a setting.

#### Field: UPDATE_MONITOR_NPC
```lua
fun()|nil
```
> Event triggers when a montiored npc updates for the map.

#### Field: UPDATE_MY_SLAVE_POS_INFO
```lua
fun()|nil
```
> Event triggers every 5 seconds to update the players slave (vehicle) position information.

#### Field: SIEGEWEAPON_BOUND
```lua
fun(arg: number)|nil
```
> Event triggers when the player mounts a siege weapon.

#### Field: TRADE_UNLOCKED
```lua
fun()|nil
```


#### Field: TRADE_STARTED
```lua
fun(targetName: string)|nil
```
> Event triggers when the player starts trading with another player.

#### Field: START_QUEST_CONTEXT_NPC
```lua
fun(qtype: number, useDirectingMode: boolean, npcId: string)|nil
```
> Event triggers when the player interacts with a npc that gives a quest with context,

#### Field: START_QUEST_CONTEXT_DOODAD
```lua
fun(qtype: number, useDirectingMode: boolean, doodadId: number)|nil
```
> Event triggers when the player starts a quest with a context doodad.

#### Field: START_QUEST_CONTEXT_SPHERE
```lua
fun(qtype: number, stype: number)|nil
```
> Event triggers when the player enters a quest sphere and a quest starts.

#### Field: START_SENSITIVE_OPERATION
```lua
fun(remainTime: any)|nil
```


#### Field: START_TALK_QUEST_CONTEXT
```lua
fun(doodadId: any)|nil
```


#### Field: START_QUEST_CONTEXT
```lua
fun(qtype: any, useDirectingMode: any, npcId: any)|nil
```


#### Field: START_CHAT_BUBBLE
```lua
fun(arg: string)|nil
```
> Event triggers when the player interacts with a npc that starts a chat bubble.

#### Field: START_HERO_ELECTION_PERIOD
```lua
fun()|nil
```


#### Field: SPELLCAST_SUCCEEDED
```lua
fun(caster: "player"|"target"|"targettarget"|"watchtarget")|nil
```
> Event triggers when a local unit successfully casts a spell.

#### Field: STARTED_DUEL
```lua
fun()|nil
```


#### Field: SPELLCAST_STOP
```lua
fun(caster: "player"|"target"|"targettarget"|"watchtarget")|nil
```
> Event triggers when a local unit stops casting a spell.

#### Field: START_TODAY_ASSIGNMENT
```lua
fun(stepName: any)|nil
```
> Event triggers when the player opens a daily assignment.

#### Field: STILL_LOADING
```lua
fun(loadingProgress: any)|nil
```


#### Field: STORE_SOLD_LIST
```lua
fun(soldItems: ItemInfo[])|nil
```
> Event triggers when the player accesses a merchant or when the merchants sold
> list updates.

#### Field: STORE_TRADE_FAILED
```lua
fun()|nil
```
> Event triggers when the player attempts to purchase an item from a store and their bag is full.

#### Field: SURVEY_FORM_UPDATE
```lua
fun()|nil
```


#### Field: STICKED_MSG
```lua
fun()|nil
```


#### Field: STORE_SELL
```lua
fun(itemLinkText: string, stackCount: number)|nil
```
> Event triggers when the player has sold an item to a merchant.

#### Field: STORE_BUY
```lua
fun(itemLinkText: string, stackCount: number)|nil
```
> Event triggers when the player buys an item from merchant.

#### Field: STORE_FULL
```lua
fun()|nil
```
> Event triggers when the player attempts to purchase an item from a store and their bag is full.

#### Field: STORE_ADD_BUY_ITEM
```lua
fun()|nil
```


#### Field: STORE_ADD_SELL_ITEM
```lua
fun(slotNumber: number)|nil
```
> Event triggers when the player attempts to sell an item a merchant.

#### Field: SWITCH_ENCHANT_ITEM_MODE
```lua
fun(mode: "awaken"|"element"|"evolving"|"evolving_re_roll"|"gem"...(+7))|nil
```
> Event triggers when the player changes their enchanting mode.

#### Field: SPELLCAST_START
```lua
fun(spellName: string, castingTime: number, caster: "player"|"target"|"targettarget"|"watchtarget", castingUseable: boolean)|nil
```
> Event triggers when a local unit starts casting a spell.

#### Field: SPECIALTY_RATIO_BETWEEN_INFO
```lua
fun(specialtyRatioTable: SpecialtyRatioInfo[])|nil
```
> Event triggers when the player checks the specialty ratio between two zones.

#### Field: SKILL_ALERT_ADD
```lua
fun(statusBuffType: `10`|`11`|`12`|`13`|`14`...(+16), buffId: number, remainTime: number, name: "Bleed (All)"|"Bubble Trap"|"Charmed"|"Deep Freeze"|"Enervate"...(+16))|nil
```
> Event triggers when the player receives a status debuff.

#### Field: SKILLS_RESET
```lua
fun(ability: "adamant"|"assassin"|"death"|"fight"|"hatred"...(+9))|nil
```
> Event triggers when the player resets a skill tree.

#### Field: SKILL_ALERT_REMOVE
```lua
fun(statusBuffType: `10`|`11`|`12`|`13`|`14`...(+16))|nil
```
> Event triggers when the players status debuff is gone.

#### Field: SKILL_CHANGED
```lua
fun(text: string, level: number, ability: "adamant"|"assassin"|"death"|"fight"|"hatred"...(+9))|nil
```
> Event triggers when the players skill level changes.

#### Field: SKILL_LEARNED
```lua
fun(text: string, skillType: "buff"|"skill")|nil
```
> Event triggers when the player learns a skill.

#### Field: SIM_DOODAD_MSG
```lua
fun(code?: any)|nil
```


#### Field: SIEGE_RAID_TEAM_INFO
```lua
fun(info: SiegeRaidInfo)|nil
```
> Event triggers when the player attempts to apply to a siege raid.

#### Field: SIEGE_WAR_ENDED
```lua
fun()|nil
```


#### Field: SIEGE_APPOINT_RESULT
```lua
fun(isDefender: any, faction: any)|nil
```


#### Field: SIEGE_RAID_REGISTER_LIST
```lua
fun(zoneGroupType?: any, bRegistState?: any, bListUpdate?: any)|nil
```
> Event triggers when a siege raid is created.

#### Field: SPECIAL_ABILITY_LEARNED
```lua
fun(recvAbility: number)|nil
```
> Event triggers when the player learns to transform.

#### Field: SKILL_MAP_EFFECT
```lua
fun(info: SkillMapEffectInfo)|nil
```
> Event triggers when the worldmap has an effect that that needs to be shown.

#### Field: SKILL_SELECTIVE_ITEM
```lua
fun(list: SkillSelectiveItemList, usingSlotIndex: number)|nil
```
> Event triggers when the player is trying tos select an item from a supply
> kit.

#### Field: SLAVE_SPAWN
```lua
fun()|nil
```
> Event triggers when the player spawns a vehicle.

#### Field: SPAWN_PET
```lua
fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)|nil
```
> Event triggers when the player spawns a pet.

#### Field: SPECIALTY_CONTENT_RECIPE_INFO
```lua
fun(list: any)|nil
```


#### Field: SKILL_MSG
```lua
fun(resultCode: "ALERT_OPTION"|"ALERT_OPTION_POPUP_DESC"|"ALERT_OPTION_POSITION_1_TEXT"|"ALERT_OPTION_POSITION_2_TEXT"|"ALERT_OPTION_POSITION_BASIC_TEXT"...(+202), param: string, skillType: number)|nil
```
> Event triggers when the player uses as skill has a message.

#### Field: SLAVE_SHIP_UNBOARDING
```lua
fun()|nil
```


#### Field: SKILL_UPGRADED
```lua
fun(skillType: number, level: number, oldLevel: number)|nil
```
> Event triggers when the players skill upgrades.

#### Field: SLAVE_SHIP_BOARDING
```lua
fun()|nil
```


#### Field: SKILL_SELECTIVE_ITEM_NOT_AVAILABLE
```lua
fun()|nil
```


#### Field: SKILL_SELECTIVE_ITEM_READY_STATUS
```lua
fun(status: boolean)|nil
```
> Event triggers when the player attempts to open an item that has a selection.

#### Field: TRADE_UI_TOGGLE
```lua
fun()|nil
```


#### Field: SYNC_PORTAL
```lua
fun()|nil
```


#### Field: SYS_INDUN_STAT_UPDATED
```lua
fun()|nil
```
> Event triggers when the player views the system status of a dungeon instance.

#### Field: TOWER_DEF_MSG
```lua
fun(towerDefInfo: TowerDefInfo)|nil
```
> Event triggers when a tower defense message occurs.

#### Field: TOWER_DEF_INFO_UPDATE
```lua
fun()|nil
```
> Event triggers when a tower defense information updates.

#### Field: TRADE_CANCELED
```lua
fun()|nil
```


#### Field: TRADE_CAN_START
```lua
fun(unitIdStr: any)|nil
```


#### Field: TRADE_ITEM_PUTUP
```lua
fun(inventoryIdx: number, amount: number)|nil
```
> Event triggers when the player puts an item up for trade.

#### Field: TOGGLE_WALK
```lua
fun(speed: number)|nil
```
> Event triggers when the player toggles walk.

#### Field: TOGGLE_RAID_FRAME_PARTY
```lua
fun(party: number, visible: boolean)|nil
```
> Event triggers when a party in the raid is shown or hidden.

#### Field: TOGGLE_ROADMAP
```lua
fun()|nil
```
> Event triggers when the roadmap size is changed.

#### Field: TOGGLE_RAID_FRAME
```lua
fun(show: boolean)|nil
```
> Event triggers when the first raid frame is shown or hidden.

#### Field: TOGGLE_RAID_FRAME2
```lua
fun()|nil
```
> Event triggers when the second raid frame is shown or hidden.

#### Field: TOGGLE_PORTAL_DIALOG
```lua
fun(addPortal: boolean, skillTypeNumber: number, itemTypeNumber: number)|nil
```
> Event triggers when the player uses a teleport book.

#### Field: TRADE_ITEM_TOOKDOWN
```lua
fun(inventoryIdx: any)|nil
```


#### Field: TRADE_LOCKED
```lua
fun()|nil
```
> Event triggers when the player locks their trade.

#### Field: TRADE_OTHER_LOCKED
```lua
fun()|nil
```
> Event triggers when the other player being traded with locks their trade.

#### Field: TRADE_OTHER_MONEY_PUTUP
```lua
fun(money: any)|nil
```


#### Field: TRADE_OTHER_OK
```lua
fun()|nil
```
> Event triggers when the other player being traded with confirms their trade.

#### Field: TRADE_ITEM_UPDATED
```lua
fun()|nil
```


#### Field: TRADE_OTHER_ITEM_TOOKDOWN
```lua
fun(otherIdx: any)|nil
```


#### Field: TRADE_OK
```lua
fun()|nil
```
> Event triggers when the player confirms the trade.

#### Field: TRADE_OTHER_ITEM_PUTUP
```lua
fun(otherIdx: any, type: any, stackCount: any, tooltip: any)|nil
```


#### Field: TRADE_MADE
```lua
fun()|nil
```
> Event triggers when a trade has been made.

#### Field: TRADE_MONEY_PUTUP
```lua
fun(money: string)|nil
```
> Event triggers when the player puts up money on their trade.

#### Field: SYSMSG
```lua
fun(msg: string)|nil
```
> Event triggers when there is a system message.

#### Field: TOGGLE_PET_MANAGE
```lua
fun()|nil
```


#### Field: TOGGLE_IN_GAME_NOTICE
```lua
fun(url: any)|nil
```


#### Field: TEAM_JOINT_BROKEN
```lua
fun()|nil
```
> Event triggers when a co raid splits.

#### Field: TEAM_JOINT_BREAK
```lua
fun(requester: any, enable: any)|nil
```


#### Field: TEAM_JOINT_CHAT
```lua
fun()|nil
```


#### Field: TEAM_JOINT_RESPONSE
```lua
fun()|nil
```


#### Field: TEAM_JOINT_TARGET
```lua
fun(isJointable: any)|nil
```


#### Field: TEAM_JOINTED
```lua
fun()|nil
```
> Event triggers when a raid joins another raid join.

#### Field: TARGET_OVER
```lua
fun(targetType: "doodad"|"nothing"|"ui"|"unit", unitId: string|number)|nil
```
> Event triggers when the players mouse is over a target.

#### Field: TARGET_TO_TARGET_CHANGED
```lua
fun(stringId: string|nil, targetType: "doodad"|"nothing"|"ui"|"unit"|nil)|nil
```
> Event triggers when the players target changes their target.

#### Field: TARGET_CHANGED
```lua
fun(stringId: string|nil, targetType: "housing"|"npc"|nil)|nil
```
> Event triggers when the player targets a new unit.

#### Field: TARGET_NPC_HEALTH_CHANGED_FOR_DEFENCE_INFO
```lua
fun(curHp: any, maxHp: any)|nil
```


#### Field: TOGGLE_PARTY_FRAME
```lua
fun(show: boolean)|nil
```
> Event triggers when the players party is shown or hidden.

#### Field: TEAM_MEMBERS_CHANGED
```lua
fun(reason: "joined"|"leaved"|"refreshed", value: TeamMember)|nil
```
> Event triggers when the players team changes.

#### Field: TEAM_MEMBER_UNIT_ID_CHANGED
```lua
fun(oldStringId: string, stringId: string)|nil
```
> Event triggers when a team members unit id changes.

#### Field: TOGGLE_CRAFT
```lua
fun()|nil
```


#### Field: TOGGLE_FACTION
```lua
fun()|nil
```


#### Field: TOGGLE_FOLLOW
```lua
fun(on: boolean)|nil
```
> Event triggers when the player toggles follow on another player.

#### Field: TEAM_MEMBER_DISCONNECTED
```lua
fun(isParty: boolean, jointOrder: number, stringId: string, memberIndex: number)|nil
```
> Event triggers when a player in the team is disconnected.

#### Field: TOGGLE_COMMUNITY
```lua
fun()|nil
```


#### Field: TIME_MESSAGE
```lua
fun(key: any, timeTable: any)|nil
```


#### Field: TOGGLE_CHANGE_VISUAL_RACE
```lua
fun(data: ChangeVisualRace)|nil
```
> Event triggers when the player attempts to use a race change elixir.

#### Field: TEAM_ROLE_CHANGED
```lua
fun(jointOrder: number, memberIndex: number, role: `TMROLE_DEALER`|`TMROLE_HEALER`|`TMROLE_NONE`|`TMROLE_RANGED_DEALER`|`TMROLE_TANKER`)|nil
```
> Event triggers when a player changes their team role.

#### Field: TEAM_SUMMON_SUGGEST
```lua
fun()|nil
```


#### Field: ZONE_SCORE_CONTENT_STATE
```lua
fun(states?: any)|nil
```
> Event triggers when the zones content score changes.

#### Field: MAIL_INBOX_ATTACHMENT_TAKEN_ALL
```lua
fun(mailId: number)|nil
```
> Event triggers when the player takes all from a mail.

#### Field: LOOT_PACK_ITEM_BROADCAST
```lua
fun(characterName: string, sourceName: string, useItemLink: string, resultItemLink: string)|nil
```
> Event triggers when a player loots an item that broadcasts to the server.

#### Field: COMPLETE_QUEST_CONTEXT_NPC
```lua
fun(qtype: number, useDirectingMode: boolean, npcId: string)|nil
```
> Event triggers when the player completes a npc context quest.

#### Field: COMPLETE_QUEST_CONTEXT_DOODAD
```lua
fun(qtype: number, useDirectingMode: boolean, doodadId: string)|nil
```
> Event triggers when the player completes part of a quest doodad.

#### Field: CONVERT_TO_RAID_TEAM
```lua
fun()|nil
```
> Event triggers when the players party is converted into a raid.

#### Field: COPY_RAID_MEMBERS_TO_CLIPBOARD
```lua
fun()|nil
```
> Event triggers when the players copies raid members to their clipboard.

#### Field: CRAFTING_END
```lua
fun()|nil
```


#### Field: COMPLETE_CRAFT_ORDER
```lua
fun(info: CraftOrderInfo)|nil
```
> Event triggers when the players craft order has been completed.

#### Field: COMMUNITY_ERROR
```lua
fun(msg: any)|nil
```
> Event triggers when the player attempts to send a friend request to a player that does not exist, or attempts to block a character that is already blocked.

#### Field: COMPLETE_ACHIEVEMENT
```lua
fun(newAchievementType: number)|nil
```
> Event triggers when the player completes an achievement.

#### Field: COMBAT_TEXT_SYNERGY
```lua
fun(arg: number)|nil
```
> Event triggers when a skill has a combo **effect**.

#### Field: COMMON_FARM_UPDATED
```lua
fun()|nil
```
> Event triggers whenever the players common (public) farm updates.

#### Field: COMBAT_TEXT_COLLISION
```lua
fun(targetUnitId: string, combatEvent: string, source: string, target: string, collisionSource: "COLLISION"|"DROWNING"|"FALLING", subType: `COLLISION_PART_BOTTOM`|`COLLISION_PART_FRONT`|`COLLISION_PART_REAR`|`COLLISION_PART_SIDE`|`COLLISION_PART_TOP`, mySlave: boolean, damage: number, powerType: "HEALTH"|"MANA")|nil
```
> Event triggers when there is a collision.

#### Field: CRAFTING_START
```lua
fun(doodadId: any, count: any)|nil
```
> Event triggers when the player opens the crafting window.

#### Field: CRAFT_ENDED
```lua
fun(leftCount: any)|nil
```
> Event triggers when an item has been crafted.

#### Field: CRIME_REPORTED
```lua
fun(diffPoint: number, diffRecord: number, diffScore: number)|nil
```
> Event triggers when the players crime has been reported.

#### Field: CREATE_ORIGIN_UCC_ITEM
```lua
fun()|nil
```


#### Field: DEBUFF_UPDATE
```lua
fun(action: "create"|"destroy", target: "character"|"mate"|"slave")|nil
```
> Event triggers when a debuff is created or destroyed for a unit.

#### Field: DELETE_CRAFT_ORDER
```lua
fun()|nil
```
> Event triggers when a crafting order has been removed.

#### Field: CRAFT_DOODAD_INFO
```lua
fun()|nil
```


#### Field: CRAFT_TRAINED
```lua
fun()|nil
```


#### Field: CRAFT_RECIPE_ADDED
```lua
fun()|nil
```


#### Field: CRAFT_STARTED
```lua
fun(leftCount: number)|nil
```
> Event triggers when the player has started crafting.

#### Field: CRAFT_FAILED
```lua
fun(itemLinkText: string)|nil
```
> Event triggers when the player fails to craft an item.

#### Field: CRAFT_ORDER_ENTRY_SEARCHED
```lua
fun(infos: CraftOrderEntries, totalCount: number, page: number)|nil
```
> Event triggers when crafting order entries are requested.

#### Field: DELETE_PORTAL
```lua
fun()|nil
```
> Event triggers when a portal has been deleted from the players teleport book.

#### Field: COMBAT_TEXT
```lua
fun(sourceUnitId: string, targetUnitId: string, amount: number, a: number, b: string, hitType: "CRITICAL"|"HIT"|"IMMUNE", d: number, e: boolean, f: number, g: boolean, distance: number)|nil
```


#### Field: COFFER_UPDATE
```lua
fun(bagId: number, slotId: number)|nil
```
> Event triggers when the players coffer (storage chest) updates.

#### Field: CLEAR_HOUSING_INFO
```lua
fun()|nil
```
> Event triggers when the housing information needs to be cleared from the map.

#### Field: CLEAR_GIVEN_QUEST_STATIC_INFO
```lua
fun()|nil
```
> Event triggers when the given quest information needs to be cleared from the map.

#### Field: CLEAR_MY_SLAVE_POS_INFO
```lua
fun()|nil
```
> Event triggers every 5 seconds to clear the players slave (vehicle) position information.

#### Field: CLEAR_NOTIFY_QUEST_INFO
```lua
fun()|nil
```
> Event triggers when the notify quest information needs to be cleared from the map.

#### Field: CLEAR_NPC_INFO
```lua
fun()|nil
```
> Event triggers when the npc information needs to be cleared from the map.

#### Field: CLEAR_FISH_SCHOOL_INFO
```lua
fun()|nil
```
> Event triggers when the fish school information needs to be cleared from the map.

#### Field: CLEAR_CORPSE_INFO
```lua
fun()|nil
```
> Event triggers when the player dies and when the player respawns or the players corpse information expires.

#### Field: CLEAR_DOODAD_INFO
```lua
fun()|nil
```
> Event triggers when the player opens the map.

#### Field: CLEAR_CARRYING_BACKPACK_SLAVE_INFO
```lua
fun()|nil
```
> Event triggers when the pack slave information needs to be cleared from the map.

#### Field: CLEAR_COMPLETED_QUEST_INFO
```lua
fun()|nil
```
> Event triggers when the completed quest information needs to be cleared from the map.

#### Field: COMBAT_MSG
```lua
fun(targetUnitId: string, combatEvent: "ENVIRONMENTAL_DAMAGE"|"ENVIRONMENTAL_DRAIN"|"ENVIRONMENTAL_ENERGIZE"|"ENVIRONMENTAL_HEALED"|"ENVIRONMENTAL_LEECH"...(+14), source: string, target: string, ...any)|nil
```
> Event triggers when a combat message occurs.

#### Field: CLEAR_SHIP_TELESCOPE_INFO
```lua
fun()|nil
```
> Event triggers when the player stops using a ship telescope.

#### Field: CLOSE_CRAFT_ORDER
```lua
fun()|nil
```
> Event triggers when the player creates a craft order.

#### Field: COFFER_TAB_REMOVED
```lua
fun()|nil
```
> Event triggers when the player deletes a tab from the coffer (storage chest).

#### Field: COFFER_TAB_SORTED
```lua
fun(bagId: number)|nil
```
> Event triggers when the player sorts the coffer (storage chest).

#### Field: COFFER_TAB_SWITCHED
```lua
fun(tabId: number)|nil
```
> Event triggers when the player changes their coffer (storage chest) tab.

#### Field: CLEAR_TRANSFER_TELESCOPE_INFO
```lua
fun()|nil
```
> Event triggers when the player stops using a telescope.

#### Field: COFFER_TAB_CREATED
```lua
fun()|nil
```
> Event triggers when the player creates a tab for the coffer (storage chest).

#### Field: COFFER_INTERACTION_START
```lua
fun()|nil
```


#### Field: COFFER_REAL_INDEX_SHOW
```lua
fun(isRealSlotShow: any)|nil
```


#### Field: CLOSE_MUSIC_SHEET
```lua
fun()|nil
```
> Event triggers when the player attempts to use sheet music.

#### Field: COFFER_INTERACTION_END
```lua
fun()|nil
```
> Event triggers when the player interacts with something other than the coffer (storage chest).

#### Field: CLEAR_BOSS_TELESCOPE_INFO
```lua
fun()|nil
```
> Event triggers when the boss telescope information needs to be cleared from the map.

#### Field: DESTROY_PAPER
```lua
fun()|nil
```
> Event triggers when the player deletes a letter/book from their inventory.

#### Field: DIAGONAL_LINE
```lua
fun()|nil
```


#### Field: ENTERED_SUBZONE
```lua
fun(zoneName: ""|"3rd Corps Camp"|"Abandoned Claimstake"|"Abandoned Drill Camp"|"Abandoned Guardpost"...(+1163))|nil
```
> Event triggers when the player enters a subzone.

#### Field: ENTERED_SCREEN_SHOT_CAMERA_MODE
```lua
fun()|nil
```
> Event triggers when the player enters screenshot mode.

#### Field: ENTERED_WORLD
```lua
fun(unknown: boolean)|nil
```
> Event triggers when the player enters the world.

#### Field: ENTER_ANOTHER_ZONEGROUP
```lua
fun(zoneId: `0`|`100`|`101`|`102`|`103`...(+151))|nil
```
> Event triggers when the player enters another zone group.

#### Field: ENTER_ENCHANT_ITEM_MODE
```lua
fun(mode: "awaken"|"element"|"evolving"|"evolving_re_roll"|"gem"...(+7))|nil
```
> Event triggers when the player attempts to enter enchanting mode.

#### Field: ENTERED_LOADING
```lua
fun(worldImagePath: string)|nil
```
> Event triggers when the player enters a loading screen.

#### Field: END_QUEST_CHAT_BUBBLE
```lua
fun(playedBubble: boolean)|nil
```
> Event triggers when the player talks to a npc with a quest chat bubble.

#### Field: ENTERED_INSTANT_GAME_ZONE
```lua
fun(arg: number)|nil
```
> Event triggers when the player enters a instance.

#### Field: ENDED_DUEL
```lua
fun()|nil
```


#### Field: END_HERO_ELECTION_PERIOD
```lua
fun()|nil
```
> Event triggers when the hero election period has ended.

#### Field: ENCHANT_SAY_ABILITY
```lua
fun()|nil
```


#### Field: ENTER_GACHA_LOOT_MODE
```lua
fun()|nil
```
> Event triggers when the player opens the open chest (gold/silver/copper crate) window.

#### Field: EQUIP_SLOT_REINFORCE_EXPAND_PAGE
```lua
fun()|nil
```
> Event triggers when the player expands their Ipnysh Artifacts pages.

#### Field: EQUIP_SLOT_REINFORCE_UPDATE
```lua
fun(equipSlot: any)|nil
```
> Event triggers when the player increases the ipnysh level of an equipment
> slot.

#### Field: ESCAPE_END
```lua
fun()|nil
```
> Event triggers when the player stops using the escape skill or the player has successfully escaped.

#### Field: ESCAPE_START
```lua
fun(waitTime: number)|nil
```
> Event triggers when the player attempts to use the escape skill.

#### Field: ENTER_ITEM_LOOK_CONVERT_MODE
```lua
fun()|nil
```


#### Field: EQUIP_SLOT_REINFORCE_SELECT_PAGE
```lua
fun()|nil
```
> Event triggers when the player changes their Ipnysh Artifacts page.

#### Field: EQUIP_SLOT_REINFORCE_MSG_LEVEL_UP
```lua
fun(equipSlot: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27), level: number)|nil
```
> Event triggers when the players ipnysh equipment slot levels up.

#### Field: EQUIP_SLOT_REINFORCE_MSG_SET_EFFECT
```lua
fun(equipSlotAttribute: number, level: number)|nil
```
> Event triggers when the players ipnysh equipment slot levels up.

#### Field: EQUIP_SLOT_REINFORCE_MSG_CHANGE_LEVEL_EFFECT
```lua
fun()|nil
```


#### Field: EQUIP_SLOT_REINFORCE_MSG_LEVEL_EFFECT
```lua
fun(equipSlot: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27), level: number)|nil
```
> Event triggers when the players ipnysh equipment slot effect levels up.

#### Field: DIAGONAL_ASR
```lua
fun(itemName: string, itemGrade: `0`|`10`|`11`|`12`|`1`...(+8), askMarketPriceUi: boolean, values: DiagonalASRInfo)|nil
```
> Event triggers when the market price of an item is requested.

#### Field: ENCHANT_RESULT
```lua
fun(resultCode: any, itemLink: any, oldGrade: any, newGrade: any, breakRewardItemType: any, breakRewardItemCount: any, breakRewardByMail: any)|nil
```


#### Field: ENABLE_TEAM_AREA_INVITATION
```lua
fun(enable: boolean)|nil
```
> Event triggers when the player does a radius invite and when that radius invite is off cooldown.

#### Field: DOMINION_GUARD_TOWER_STATE_NOTICE
```lua
fun(key: `0`|`1`|`2`|`3`|`4`...(+2), name: string, factionName: string)|nil
```
> Event triggers when the siege lodestones state changes.

#### Field: DOMINION
```lua
fun(action: string, zoneGroupName: string, expeditionName: string)|nil
```
> Event triggers when the player events a siegable zone.

#### Field: DOMINION_GUARD_TOWER_UPDATE_TOOLTIP
```lua
fun(unitId: any)|nil
```


#### Field: DOMINION_SIEGE_PARTICIPANT_COUNT_CHANGED
```lua
fun(count: number)|nil
```
> Event triggers when the player joins a siege raid.

#### Field: DOMINION_SIEGE_PERIOD_CHANGED
```lua
fun(siegeInfo: SiegeInfo)|nil
```
> Event triggers when the siege period changes.

#### Field: DIVE_START
```lua
fun()|nil
```
> Event triggers when the player starts diving.

#### Field: DISMISS_PET
```lua
fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)|nil
```
> Event triggers when the player dismisses a pet.

#### Field: DIVE_END
```lua
fun()|nil
```
> Event triggers when the player stops diving.

#### Field: DICE_BID_RULE_CHANGED
```lua
fun(diceBidRule: `1`|`2`|`3`)|nil
```
> Event triggers when the players bid type changes.

#### Field: DISCONNECTED_BY_WORLD
```lua
fun(title: string, body: string)|nil
```
> Event triggers every 500ms when the player has disconnected from the world.

#### Field: ENCHANT_EXAMINE
```lua
fun()|nil
```


#### Field: DOMINION_SIEGE_SYSTEM_NOTICE
```lua
fun()|nil
```


#### Field: DOODAD_LOGIC
```lua
fun()|nil
```


#### Field: DYEING_START
```lua
fun()|nil
```
> Event triggers when the player wants to start dying an item.

#### Field: DYNAMIC_ACTION_BAR_HIDE
```lua
fun()|nil
```
> Event triggers when the player dynamic action bar (interaction bar) is hidden.

#### Field: DYNAMIC_ACTION_BAR_SHOW
```lua
fun(dynamicActionType: any)|nil
```
> Event triggers when the player dynamic action bar (interaction bar) is shown.

#### Field: DOMINION_SIEGE_UPDATE_TIMER
```lua
fun(secondHalf: boolean)|nil
```
> Event triggers every 500ms while a siege update is occuring.

#### Field: DYEING_END
```lua
fun()|nil
```
> Event triggers when the player ends dying an item.

#### Field: DRAW_DOODAD_SIGN_TAG
```lua
fun(tooltip: nil)|nil
```
> Event triggers when the player hovers over a doodad and the tooltip appears
> in the bottom right of the screen.

#### Field: DRAW_DOODAD_TOOLTIP
```lua
fun(info: DoodadTooltipInfo)|nil
```
> Event triggers every frame the players mouse hovers a doodad.

#### Field: DOODAD_PHASE_MSG
```lua
fun(text: string)|nil
```
> Event triggers when a doodad phase message occurs. (ex: Strength of the Faction message)

#### Field: DOODAD_PHASE_UI_MSG
```lua
fun(phaseMsgInfo: PhaseMsgInfo)|nil
```
> Event triggers when a title UI message appears.

#### Field: ESC_MENU_ADD_BUTTON
```lua
fun(info: EscMenuAddButtonInfo)|nil
```
> Event triggers when a new button is added to the escape menu.

#### Field: CHECK_TEXTURE
```lua
fun(texturePath: string)|nil
```


#### Field: CHAT_MSG_DOODAD
```lua
fun(message: string, author: string, authorId: string, isSelf: boolean, tailType: `CBK_NORMAL`|`CBK_SYSTEM`|`CBK_THINK`, showTime: number, fadeTime: number, currentBubbleType: number|nil, qtype: number|nil, forceFinished: boolean|nil)|nil
```
> Event triggers when the player receives a chat message from a doodad/npc.

#### Field: AUCTION_CHARACTER_LEVEL_TOO_LOW
```lua
fun(msg: string)|nil
```
> Event triggers when the player attempts to list an item or search for an item
> in the auction house and they are too low of a level.

#### Field: AUCTION_CANCELED
```lua
fun(itemName: string)|nil
```
> Event triggers when the player cancels a listed item.

#### Field: AUCTION_ITEM_ATTACHMENT_STATE_CHANGED
```lua
fun(attached: boolean)|nil
```
> Event triggers when a player is listing an item on the auction house.

#### Field: AUCTION_ITEM_PUT_UP
```lua
fun(itemName: string)|nil
```
> Event triggers when a player is listing an item on the auction house.

#### Field: AUCTION_ITEM_SEARCH
```lua
fun()|nil
```
> Event triggers when a player is listing or searching for an item on the auction house.

#### Field: AUCTION_BOUGHT_BY_SOMEONE
```lua
fun(itemName: string, moneyStr: string)|nil
```
> Event triggers when the player sells something on the auction house.

#### Field: AUCTION_BIDDEN
```lua
fun(itemName: string, moneyStr: string)|nil
```
> Event triggers when the player receives a bid on an item on the auction house.

#### Field: AUCTION_BOUGHT
```lua
fun()|nil
```
> Event triggers when the player buys something on the auction house.

#### Field: ASK_FORCE_ATTACK
```lua
fun(forceAttackLevel: number)|nil
```
> Event triggers when the player attempts to turn on bloodlust.

#### Field: AUCTION_BIDDED
```lua
fun(itemName: string, moneyStr: string)|nil
```
> Event triggers when the player bids on an item on the auction house.

#### Field: ASK_BUY_LABOR_POWER_POTION
```lua
fun()|nil
```
> Event triggers when the players labor is low and the game recommends they buy a labor potion from the market place.

#### Field: AUCTION_ITEM_SEARCHED
```lua
fun(clearLastSearchArticle: boolean)|nil
```
> Event triggers when a player is listing or searching for an item on the auction house.

#### Field: AUCTION_PERMISSION_BY_CRAFT
```lua
fun(icraftType: number)|nil
```
> Event triggers when a player has started crafting and after each craft end.

#### Field: BAG_ITEM_CONFIRMED
```lua
fun()|nil
```
> Event triggers when the player receives an item to their bag.

#### Field: BAG_REAL_INDEX_SHOW
```lua
fun(isRealSlotShow: boolean)|nil
```


#### Field: BAG_TAB_CREATED
```lua
fun()|nil
```
> Event triggers when the player creates a tab in their bag.

#### Field: AUCTION_LOWEST_PRICE
```lua
fun(itemType: number, grade: `0`|`10`|`11`|`12`|`1`...(+8), price: string)|nil
```
> Event triggers when a player is listing an item on the auction house.

#### Field: BAG_EXPANDED
```lua
fun()|nil
```
> Event triggers when the player expands their bag.

#### Field: BADWORD_USER_REPORED_RESPONE_MSG
```lua
fun(success: boolean)|nil
```
> Event triggers when the player attempts to report a player for inappropriate language.

#### Field: BAD_USER_LIST_UPDATE
```lua
fun()|nil
```
> Event triggers when the list of people who reported a suspicious user is updated.

#### Field: AUDIENCE_JOINED
```lua
fun(audienceName: string)|nil
```
> Event triggers when a player joins the jury audience.

#### Field: AUDIENCE_LEFT
```lua
fun(audienceName: string)|nil
```
> Event triggers when a player leaves the jury audience.

#### Field: BAG_TAB_REMOVED
```lua
fun()|nil
```
> Event triggers when the player deletes a tab in their bag.

#### Field: APPELLATION_STAMP_SET
```lua
fun()|nil
```
> Event triggers when the players stamp (name icon) changes.

#### Field: APPELLATION_CHANGED
```lua
fun(stringId: string, isChanged: boolean)|nil
```
> Event triggers when a player changes their appellation.

#### Field: ACHIEVEMENT_UPDATE
```lua
fun(status: string|"update", newAchievementType: number)|nil
```
> Event triggers when the player updates an achievement.

#### Field: ACCOUNT_RESTRICT_NOTICE
```lua
fun()|nil
```
> Event triggers when the players account gets restricted.

#### Field: ACQUAINTANCE_LOGIN
```lua
fun(cmf: `CMF_ACQ_CONSUME_GROUP`|`CMF_ADDED_ITEM_GROUP`|`CMF_ADDED_ITEM_SELF`|`CMF_ADDED_ITEM_TEAM`|`CMF_ALL_SERVER`...(+60), charName: string)|nil
```
> Event triggers when an acquaintance (guild member) logs in.

#### Field: ACTABILITY_EXPERT_CHANGED
```lua
fun(actabilityId: number, name: string, diff: string|number, final: string|number)|nil
```
> Event triggers when the players proficiency changes.

#### Field: ACTABILITY_EXPERT_EXPANDED
```lua
fun()|nil
```
> Event triggers when the player expands their maximum proficiency specializations.

#### Field: ACCOUNT_ATTENDANCE_LOADED
```lua
fun()|nil
```
> Event triggers when dailies reset.

#### Field: ABILITY_SET_USABLE_SLOT_COUNT_CHANGED
```lua
fun()|nil
```
> Event triggers when the players statsaver is expanded.

#### Field: ACCOUNT_ATTENDANCE_ADDED
```lua
fun()|nil
```
> Event triggers when the player tracks their daily login.

#### Field: ABILITY_EXP_CHANGED
```lua
fun(expStr: string)|nil
```


#### Field: ABILITY_SET_CHANGED
```lua
fun(responseType: `1`|`2`|`3`)|nil
```
> Event triggers when the players statsaver set is saved, changed, or deleted

#### Field: APPELLATION_GAINED
```lua
fun(str: string)|nil
```
> Event triggers when the player gains a title.

#### Field: ACTABILITY_EXPERT_GRADE_CHANGED
```lua
fun(actabilityId: `10`|`11`|`12`|`13`|`14`...(+32), isUpgrade: boolean, name: "Alchemy"|"Artistry"|"Carpentry"|"Commerce"|"Construction"...(+32), gradeName: "Adept"|"Amateur"|"Authority"|"Celebrity"|"Champion"...(+7))|nil
```
> Event triggers when the players proficiency level changes.

#### Field: ACTABILITY_REFRESH_ALL
```lua
fun()|nil
```
> Event triggers when the players proficiencies need to be refreshed.

#### Field: ADD_GIVEN_QUEST_INFO
```lua
fun(type: `0`|`1`, questType: number)|nil
```
> Event triggers when a new event has appeared with in the players range.

#### Field: ADD_NOTIFY_QUEST_INFO
```lua
fun(qType: number)|nil
```
> Event triggers when the player has a quest notification info.

#### Field: ALL_SIEGE_RAID_TEAM_INFOS
```lua
fun(teamInfos: SiegeRaidTeamInfos)|nil
```
> Event triggers when the player views the Siege Info tab when a siege period has started.

#### Field: ACTABILITY_MODIFIER_UPDATE
```lua
fun()|nil
```
> Event triggers when the players proficiency modifiers are updated.

#### Field: ADDON_LOADED
```lua
fun()|nil
```
> Event triggers when the addon has fully loaded.

#### Field: ACTION_BAR_PAGE_CHANGED
```lua
fun(page: number)|nil
```
> Event triggers when the players action bar changes. (min: `1`)

#### Field: ADDED_ITEM
```lua
fun(itemLinkText: string, itemCount: number, itemTaskType: number, tradeOtherName: string)|nil
```
> Event triggers when an item has been added to the players inventory.

#### Field: ACTIONS_UPDATE
```lua
fun()|nil
```


#### Field: ACTION_BAR_AUTO_REGISTERED
```lua
fun(slotIndex: number)|nil
```
> Event triggers when the players shortcut bar has a skill auto registered. (e.g. When the player is leveling and learns a skill and it auto registers to the players shortcut bar.)

#### Field: CHAT_MSG_QUEST
```lua
fun(message: string, author: string, authorId: string, isSelf: boolean, tailType: `CBK_NORMAL`|`CBK_SYSTEM`|`CBK_THINK`, showTime: number, fadeTime: number, currentBubbleType: number|nil, qtype: number|nil, forceFinished: boolean|nil)|nil
```
> Event triggers when the player interacts with a npc that has a quest message.

#### Field: BAG_TAB_SORTED
```lua
fun(arg: number)|nil
```
> Event triggers when the players sorts their bag.

#### Field: BAG_UPDATE
```lua
fun(bagId: number, slotId: number)|nil
```
> Event triggers when the players bag updates.

#### Field: CANDIDATE_LIST_SHOW
```lua
fun()|nil
```


#### Field: CANDIDATE_LIST_SELECTION_CHANGED
```lua
fun()|nil
```


#### Field: CHANGED_MSG
```lua
fun()|nil
```


#### Field: CHANGE_ACTABILITY_DECO_NUM
```lua
fun()|nil
```


#### Field: CHANGE_CONTRIBUTION_POINT_TO_PLAYER
```lua
fun(isGain: boolean, diff: string, total: string)|nil
```
> Event triggers when the player contributes a change to the guilds prestige.

#### Field: CANDIDATE_LIST_HIDE
```lua
fun()|nil
```


#### Field: CANCEL_REBUILD_HOUSE_CAMERA_MODE
```lua
fun()|nil
```
> Event triggers when the player exists house preview mode for remodeling a
> building.

#### Field: CANDIDATE_LIST_CHANGED
```lua
fun()|nil
```


#### Field: BUY_SPECIALTY_CONTENT_INFO
```lua
fun(list: SpecialtyContentInfo[])|nil
```
> Event triggers when the player opens the purchase cargo window.

#### Field: CANCEL_CRAFT_ORDER
```lua
fun(result: boolean)|nil
```
> Event triggers when a crafting order has been canceled.

#### Field: BUTLER_UI_COMMAND
```lua
fun(mode: `ADD_GARDEN_MODE`|`CHANGE_LOOK_MODE`|`RECHARGE_COST_MODE`|`REGISTER_HARVEST_MODE`|`REGISTER_TRACTOR_MODE`...(+1))|nil
```
> Event triggers if the player does something that activates the butler ui such as using vitalizing treats.

#### Field: CHANGE_CONTRIBUTION_POINT_TO_STORE
```lua
fun()|nil
```
> Event triggers when the players guilds prestige changes.

#### Field: CHANGE_OPTION
```lua
fun(optionType: number, infoTable: ChangeOptionInfo)|nil
```
> Event triggers when the player changes a Game Settings option.

#### Field: CHAT_LEAVED_CHANNEL
```lua
fun(channel: `CHAT_ALL_SERVER`|`CHAT_BIG_MEGAPHONE`|`CHAT_DAILY_MSG`|`CHAT_EXPEDITION`|`CHAT_FACTION`...(+22), name: string)|nil
```
> Event triggers when the player leaves a channel.

#### Field: CHAT_MESSAGE
```lua
fun(channel: `CHAT_ALL_SERVER`|`CHAT_BIG_MEGAPHONE`|`CHAT_DAILY_MSG`|`CHAT_EXPEDITION`|`CHAT_FACTION`...(+22), relation: `UR_FRIENDLY`|`UR_HOSTILE`|`UR_NEUTRAL`, name: string, message: string, info: CHAT_MESSAGE_INFO)|nil
```
> Event triggers when a chat message occurs.

#### Field: CHAT_MSG_ALARM
```lua
fun(text: string)|nil
```
> Event triggers when a chat message alarm occurs.

#### Field: CHANGE_MY_LANGUAGE
```lua
fun()|nil
```
> Event triggers when the player changes their language.

#### Field: CHAT_JOINED_CHANNEL
```lua
fun(channel: `CHAT_ALL_SERVER`|`CHAT_BIG_MEGAPHONE`|`CHAT_DAILY_MSG`|`CHAT_EXPEDITION`|`CHAT_FACTION`...(+22), name: string)|nil
```
> Event triggers when the player joins a channel.

#### Field: CHAT_EMOTION
```lua
fun(message: string)|nil
```
> Event triggers when a player does a chat emotion.

#### Field: CHAT_FAILED
```lua
fun(message: string, channelName: string)|nil
```
> Event triggers when the player fails to send a chat message.

#### Field: CHANGE_VISUAL_RACE_ENDED
```lua
fun()|nil
```
> Event triggers when the player changes race.

#### Field: CHAT_DICE_VALUE
```lua
fun(msg: string)|nil
```
> Event triggers when a player uses /roll.

#### Field: BAG_TAB_SWITCHED
```lua
fun(tabId: number)|nil
```
> Event triggers when the player changes the bag tab.

#### Field: BUTLER_INFO_UPDATED
```lua
fun(event: "equipment"|"garden"|"harvestSlot"|"labowPower"|"productionCost"...(+5), noError: boolean)|nil
```
> Event triggers when the player is updating the farmhand.

#### Field: BUILDER_STEP
```lua
fun(step: "position"|"roation")|nil
```
> Event triggers when the player is attempting to place something that can be built.

#### Field: BANK_UPDATE
```lua
fun(bagId: number, slotId: number)|nil
```
> Event triggers when the players bank updates.

#### Field: BANK_TAB_SWITCHED
```lua
fun(tabId: number)|nil
```
> Event triggers when the player changes the bank tab.

#### Field: BEAUTYSHOP_CLOSE_BY_SYSTEM
```lua
fun()|nil
```
> Event triggers when the beautyshop is closed by the system. (e.g the player dies while in the beautyshop)

#### Field: BLESS_UTHSTIN_EXTEND_MAX_STATS
```lua
fun()|nil
```
> Event triggers when the player increases their maximum stat migration limit.

#### Field: BLESS_UTHSTIN_ITEM_SLOT_CLEAR
```lua
fun()|nil
```
> Event triggers when the players stat migration slot is clear.

#### Field: BANK_TAB_SORTED
```lua
fun()|nil
```
> Event triggers when the player sorts their bank.

#### Field: BANK_TAB_CREATED
```lua
fun()|nil
```
> Event triggers when the players creates a tab in their bank.

#### Field: BANK_TAB_REMOVED
```lua
fun()|nil
```
> Event triggers when the player deletes a tab in their bank.

#### Field: BANK_EXPANDED
```lua
fun()|nil
```
> Event triggers when the player expands their bank.

#### Field: BANK_REAL_INDEX_SHOW
```lua
fun(isRealSlotShow: boolean)|nil
```


#### Field: BUILD_CONDITION
```lua
fun(condition: BuildCondition)|nil
```
> Event triggers when the player views the build condition of a community center.

#### Field: BLESS_UTHSTIN_ITEM_SLOT_SET
```lua
fun(msgapplycountlimit?: any)|nil
```
> Event triggers when the player sets a item in the stat migration slot.

#### Field: BLESS_UTHSTIN_UPDATE_STATS
```lua
fun()|nil
```
> Event triggers when the player changes their stat migration or activates a different stat migration.

#### Field: BUFF_SKILL_CHANGED
```lua
fun()|nil
```
> Event triggers when the players buff/debuff/hidden buff that gives a skill for the dynamic shortcut changes.

#### Field: BUFF_UPDATE
```lua
fun(action: "create"|"destroy", target: "character"|"mate"|"slave")|nil
```
> Event triggers when a buff is created or destroyed for a unit.

#### Field: BUILDER_END
```lua
fun()|nil
```
> Event triggers when the player cancels trying to place something that can be built.

#### Field: BLESS_UTHSTIN_MESSAGE
```lua
fun(messageType: number)|nil
```
> Event triggers when the players stat migration or ipnysh artifacts emmits a message.

#### Field: BOT_SUSPECT_REPORTED
```lua
fun(sourceName: string, targetName: string)|nil
```


#### Field: BLOCKED_USER_LIST
```lua
fun(msg: string)|nil
```
> Event triggers when a user is added or removed from the players block list.

#### Field: BLOCKED_USER_UPDATE
```lua
fun()|nil
```
> Event triggers when a user is added or removed from the players block list.

#### Field: BLESS_UTHSTIN_WILL_APPLY_STATS
```lua
fun(itemType: number, incStatsKind: `1`|`2`|`3`|`4`|`5`, decStatsKind: `1`|`2`|`3`|`4`|`5`, incStatsPoint: number, decStatsPoint: number)|nil
```
> Event triggers when the player applies the stat migration item in the slot.

#### Field: BLOCKED_USERS_INFO
```lua
fun()|nil
```


#### Field: LP_MANAGE_CHARACTER_CHANGED
```lua
fun()|nil
```


#### Field: EVENT_SCHEDULE_START
```lua
fun(msg: any)|nil
```


#### Field: EXPEDITION_APPLICANT_ACCEPT
```lua
fun(expeditionName: string)|nil
```
> Event triggers when the players application to a guild is accepted.

#### Field: HOUSE_STEP_INFO_UPDATED
```lua
fun(structureType: "housing"|"shipyard")|nil
```
> Event triggers when a house is being built within range of the player.

#### Field: HOUSE_SET_SELL_SUCCESS
```lua
fun(houseName: string)|nil
```
> Event triggers when the player successfully set the house to sell.

#### Field: HOUSE_TAX_INFO
```lua
fun(dominionTaxRate: any, hostileTaxRate: any, taxString: any, dueTime: any, prepayTime: any, weeksWithoutPay: any, weeksPrepay: any, isAlreadyPaid: any, isHeavyTaxHouse: any, depositString: any, taxType: any, id: any)|nil
```


#### Field: HOUSING_UCC_CLOSE
```lua
fun()|nil
```


#### Field: HOUSING_UCC_ITEM_SLOT_CLEAR
```lua
fun()|nil
```
> Event triggers when the customization window slot is cleared.

#### Field: HOUSE_SET_SELL_FAIL
```lua
fun()|nil
```
> Event triggers when the player fails to set the house to sell.

#### Field: HOUSE_ROTATE_CONFIRM
```lua
fun()|nil
```


#### Field: HOUSE_SALE_SUCCESS
```lua
fun(houseName: string)|nil
```
> Event triggers when the player successfully sells a house.

#### Field: HOUSE_PERMISSION_UPDATED
```lua
fun()|nil
```
> Event triggers when the player changes the building permissions.

#### Field: HOUSE_REBUILD_TAX_INFO
```lua
fun()|nil
```
> Event triggers when the player opens the remodel window for their house.

#### Field: HOUSE_INTERACTION_START
```lua
fun(structureType: string, viewType: string, arg: boolean)|nil
```
> Event triggers when the player starts interacting with the building.

#### Field: HOUSING_UCC_ITEM_SLOT_SET
```lua
fun()|nil
```
> Event triggers when the player places a crest stamp in the housing ucc
> customization window slot.

#### Field: HOUSING_UCC_UPDATED
```lua
fun()|nil
```
> Event triggers when the players housing ucc updates.

#### Field: INDUN_UPDATE_ROUND_INFO
```lua
fun()|nil
```
> Event triggers when a instance round begins. (e.g. Noryette Challenge)

#### Field: INDUN_ROUND_START
```lua
fun(round: number, isBossRound: boolean)|nil
```
> Event triggers when a instance round begins. (e.g. Noryette Challenge)

#### Field: INGAME_SHOP_BUY_RESULT
```lua
fun()|nil
```
> Event triggers when the player attempts to purchase an item from the marketplace.

#### Field: INIT_CHRONICLE_INFO
```lua
fun()|nil
```
> Event triggers when the player loads into the world to initalize the chronicle quest window.

#### Field: HOUSING_UCC_LEAVE
```lua
fun()|nil
```
> Event triggers when the player leaves the house ucc customization window.

#### Field: INDUN_ROUND_END
```lua
fun(success: boolean, round: number, isBossRound: boolean, lastRound: boolean)|nil
```
> Event triggers when a instance round ends. (e.g. Noryette Challenge)

#### Field: IME_STATUS_CHANGED
```lua
fun()|nil
```
> Event triggers when the players ime status changes.

#### Field: INDUN_INITAL_ROUND_INFO
```lua
fun()|nil
```
> Event triggers when a instance initial round starts. (e.g. Noryette Challenge)

#### Field: HPW_ZONE_STATE_CHANGE
```lua
fun(zoneId: `0`|`100`|`101`|`102`|`103`...(+151))|nil
```
> Event triggers when the state of a zone changes.

#### Field: HPW_ZONE_STATE_WAR_END
```lua
fun(zoneId: `0`|`100`|`101`|`102`|`103`...(+151), points: number)|nil
```
> Event triggers when a zones war state ends.

#### Field: INSERT_CRAFT_ORDER
```lua
fun()|nil
```
> Event triggers when a crafting order is listed.

#### Field: HOUSE_INTERACTION_END
```lua
fun()|nil
```
> Event triggers when the player ends interacting with the building.

#### Field: HOUSE_FARM_MSG
```lua
fun(name: any, total: any, harvestable: any)|nil
```


#### Field: HERO_RANK_DATA_RETRIEVED
```lua
fun(factionID: `101`|`102`|`103`|`104`|`105`...(+124))|nil
```
> Event triggers when the player tries to retrieve hero information.

#### Field: HERO_NOTI
```lua
fun()|nil
```


#### Field: HERO_RANK_DATA_TIMEOUT
```lua
fun()|nil
```


#### Field: HERO_SCORE_UPDATED
```lua
fun()|nil
```
> Event triggers when the players leadership increases.

#### Field: HERO_SEASON_OFF
```lua
fun()|nil
```
> Event triggers when a hero season is over.

#### Field: HERO_ELECTION_VOTED
```lua
fun()|nil
```
> Event triggers when the player casts their vote in a hero election,

#### Field: HERO_ELECTION_DAY_ALERT
```lua
fun(title: any, desc: any)|nil
```


#### Field: HERO_ELECTION_RESULT
```lua
fun()|nil
```
> Event triggers when the hero election has results.

#### Field: HERO_CANDIDATE_NOTI
```lua
fun()|nil
```


#### Field: HERO_ELECTION
```lua
fun()|nil
```
> Event triggers when the player opens the hero election list to cast a vote.

#### Field: HOUSE_INFO_UPDATED
```lua
fun()|nil
```


#### Field: HERO_SEASON_UPDATED
```lua
fun()|nil
```
> Event triggers when a new hero season has begun.

#### Field: HIDE_SKILL_MAP_EFFECT
```lua
fun(index: number)|nil
```
> Event triggers when the worldmap has an effect that that needs to be hidden.

#### Field: HOUSE_CANCEL_SELL_FAIL
```lua
fun()|nil
```
> Event triggers when the player fails to cancel selling their house.

#### Field: HOUSE_CANCEL_SELL_SUCCESS
```lua
fun(houseName: string)|nil
```
> Event triggers when the player successfully cancels selling their house.

#### Field: HOUSE_DECO_UPDATED
```lua
fun()|nil
```


#### Field: HIDE_ROADMAP_TOOLTIP
```lua
fun(text: any)|nil
```
> Event triggers when the roadmap tooltip is hidden.

#### Field: HOUSE_BUY_SUCCESS
```lua
fun(houseName: string)|nil
```
> Event triggers when the player buys a house.

#### Field: HOUSE_BUILD_INFO
```lua
fun(hType: `100`|`101`|`102`|`103`|`104`...(+832), baseTax: string, hTax: string, heavyTaxHouseCount: number, normalTaxHouseCount: number, isHeavyTaxHouse: boolean, hostileTaxRate: number, monopolyTaxRate: number, depositString: string, taxType: `HOUSING_TAX_CONTRIBUTION`|`HOUSING_TAX_SEAL`, completion: boolean)|nil
```
> Event triggers when the player attempts to place a building and the start construction window is shown/hidden.

#### Field: HOUSE_BUY_FAIL
```lua
fun()|nil
```


#### Field: HIDE_WORLDMAP_TOOLTIP
```lua
fun()|nil
```
> Event triggers when the worldmap tooltip is hidden.

#### Field: HOTKEY_ACTION
```lua
fun(actionName: string, keyUp: boolean)|nil
```
> Event triggers for the key down and key up when the player uses a hotkey that
> an addon has registered.

#### Field: HERO_CANDIDATES_ANNOUNCED
```lua
fun()|nil
```


#### Field: INSTANCE_ENTERABLE_MSG
```lua
fun(info: InstanceEnterableInfo)|nil
```
> Event triggers when an instance is now enterable.

#### Field: INSTANT_GAME_END
```lua
fun()|nil
```
> Event triggers when the instance game ends.

#### Field: LEAVE_ITEM_LOOK_CONVERT_MODE
```lua
fun()|nil
```
> Event triggers when the player closes the item infusion window.

#### Field: LEAVE_GACHA_LOOT_MODE
```lua
fun()|nil
```
> Event triggers when the player closes the open chest (gold/silver/copper crate) window.

#### Field: LEAVING_WORLD_CANCELED
```lua
fun()|nil
```
> Event triggers if the player cancels leaving the world.

#### Field: LEAVING_WORLD_STARTED
```lua
fun(waitTime: number, exitTarget: `EXIT_CLIENT_NONE_ACTION`|`EXIT_CLIENT`|`EXIT_TO_CHARACTER_LIST`|`EXIT_TO_WORLD_LIST`, idleKick: boolean)|nil
```
> Event triggers if the player is leaving the world.

#### Field: LEFT_LOADING
```lua
fun()|nil
```
> Event triggers when the player is finished loading.

#### Field: LEAVE_ENCHANT_ITEM_MODE
```lua
fun()|nil
```
> Event triggers when the player leaves enchanting mode.

#### Field: LABORPOWER_CHANGED
```lua
fun(diff: number, laborPower: number)|nil
```
> Event triggers when the players labor changes.

#### Field: LEAVED_INSTANT_GAME_ZONE
```lua
fun()|nil
```
> Event triggers when the player leaves the instance.

#### Field: JURY_OK_COUNT
```lua
fun(count: number, total: number)|nil
```
> Event triggers when the jury count changes.

#### Field: JURY_WAITING_NUMBER
```lua
fun(num: number)|nil
```
> Event triggers when the player is checking their current jury waiting number.

#### Field: ITEM_SOCKET_UPGRADE
```lua
fun(socketItemType: number)|nil
```
> Event triggers when the player upgrades a socketed lunagem in an item.

#### Field: LEFT_SCREEN_SHOT_CAMERA_MODE
```lua
fun()|nil
```
> Event triggers when the player leaves screenshot mode

#### Field: LEFT_WORLD
```lua
fun()|nil
```
> Event triggers when the player leaves the world.

#### Field: LOOT_BAG_CHANGED
```lua
fun(setTime: boolean)|nil
```
> Event triggers when the player opens the loot bag of a mob.

#### Field: LOOT_BAG_CLOSE
```lua
fun()|nil
```
> Event triggers when the player closes the loot bag of a mob.

#### Field: LOOT_DICE
```lua
fun(charName: string, itemLinkText: string, diceValue: number)|nil
```
> Event triggers when a player rolls for an item.

#### Field: LEFT_SUBZONE
```lua
fun(zoneId: `1000`|`1001`|`1002`|`1003`|`1004`...(+1351), zoneName: ""|"3rd Corps Camp"|"Abandoned Claimstake"|"Abandoned Drill Camp"|"Abandoned Guardpost"...(+1163))|nil
```
> Event triggers when the player leaves a subzone.

#### Field: LOOTING_RULE_METHOD_CHANGED
```lua
fun(lootMethod: number)|nil
```
> Event triggers when the raid leader sets the loot method rule.

#### Field: LOOTING_RULE_GRADE_CHANGED
```lua
fun(grade: number)|nil
```
> Event triggers when the raid leader sets the loot grade rule.

#### Field: LOOTING_RULE_MASTER_CHANGED
```lua
fun(charName: string)|nil
```
> Event triggers when the raid leader sets the loot master rule.

#### Field: LEVEL_CHANGED
```lua
fun(name: string, stringId: string)|nil
```
> Event triggers when a players level changes.

#### Field: LOOTING_RULE_BOP_CHANGED
```lua
fun(rollForBop: number)|nil
```
> Event triggers when the raid leader sets the loot bind on pick up rule.

#### Field: INSTANT_GAME_BEST_RATING_REWARD
```lua
fun()|nil
```


#### Field: ITEM_SOCKETING_RESULT
```lua
fun(resultCode: `1`, itemLink: string, socketItemType: number, install: boolean)|nil
```
> Event triggers when the player sockets a lunagem into an item.

#### Field: ITEM_REFURBISHMENT_RESULT
```lua
fun(resultCode: `IGER_BREAK`|`IGER_DISABLE`|`IGER_DOWNGRADE`|`IGER_FAIL`|`IGER_GREAT_SUCCESS`...(+2), itemLink: string, beforeScale: string, afterScale: string)|nil
```
> Event triggers when the player attempts to temper an item.

#### Field: INSTANT_GAME_ROUND_RESULT
```lua
fun(resultState: any, resultRound: any)|nil
```


#### Field: INSTANT_GAME_RETIRE
```lua
fun()|nil
```


#### Field: INSTANT_GAME_START
```lua
fun()|nil
```
> Event triggers when an instance game starts.

#### Field: INSTANT_GAME_START_POINT_RETURN_MSG
```lua
fun(remainSec: number)|nil
```


#### Field: INSTANT_GAME_UNEARNED_WIN_REMAIN_TIME
```lua
fun(remainTime: any)|nil
```


#### Field: INSTANT_GAME_READY
```lua
fun()|nil
```
> Event triggers when an instance game is ready.

#### Field: INSTANT_GAME_KILL
```lua
fun(msgInfo: InstanceGameKillInfo)|nil
```
> Event triggers when a player kills another player in an instance.

#### Field: INSTANT_GAME_PICK_BUFFS
```lua
fun()|nil
```
> Event triggers when the instance game pickable buffs is available.

#### Field: INSTANT_GAME_JOIN_APPLY
```lua
fun()|nil
```


#### Field: INSTANT_GAME_JOIN_CANCEL
```lua
fun()|nil
```
> Event triggers when an instance queue has been canceled.

#### Field: ITEM_SMELTING_RESULT
```lua
fun(resultCode: any, itemLink: any, smeltingItemType: any)|nil
```


#### Field: INSTANT_GAME_WAIT
```lua
fun()|nil
```
> Event triggers when the instance game is waiting.

#### Field: INTERACTION_START
```lua
fun()|nil
```


#### Field: ITEM_EQUIP_RESULT
```lua
fun(ItemEquipResult: `ITEM_MATE_NOT_EQUIP`|`ITEM_MATE_UNSUMMON`|`ITEM_SLAVE_NOT_EQUIP`|`ITEM_SLAVE_UNSUMMON`)|nil
```
> Event triggers when the player attempt to equip an item to a mate/slave and it fails.

#### Field: ITEM_LOOK_CONVERTED
```lua
fun(itemLinkText: string)|nil
```
> Event triggers when the player changes the image of an item.

#### Field: ITEM_LOOK_CONVERTED_EFFECT
```lua
fun(itemInfo: ItemInfo)|nil
```
> Event triggers when the player changes the image of an item.

#### Field: INTERACTION_END
```lua
fun()|nil
```
> Event triggers when the player stops interacting with something.

#### Field: ITEM_ENCHANT_MAGICAL_RESULT
```lua
fun(resultCode: number|`1`, itemLink: string, gemItemType: number)|nil
```
> Event triggers when the player enchants an item with a lunastone.

#### Field: ITEM_ACQUISITION_BY_LOOT
```lua
fun(charName: string, itemLinkText: string, itemCount: number)|nil
```
> Event triggers when a player acquires loot.

#### Field: ITEM_CHANGE_MAPPING_RESULT
```lua
fun(result: `ICMR_FAIL_DISABLE_ENCHANT`|`ICMR_FAIL`|`ICMR_SUCCESS`, oldGrade: `0`|`10`|`11`|`12`|`1`...(+8), oldGearScore: number, itemLink: string, bonusRate: number)|nil
```
> Event triggers when the player attempts to awaken a item.

#### Field: INVALID_NAME_POLICY
```lua
fun(namePolicyType: any)|nil
```


#### Field: INVEN_SLOT_SPLIT
```lua
fun(invenType: string, slot: number, amount: number)|nil
```
> Event triggers when the player starts to split items in their inventory.

#### Field: EVENT_SCHEDULE_STOP
```lua
fun(msg: any)|nil
```


#### Field: HERO_ANNOUNCE_REMAIN_TIME
```lua
fun(remainTime: number, isStartTime: boolean)|nil
```
> Event triggers every 10 seconds when hero annoucement is about to happen.

#### Field: HEIR_SKILL_UPDATE
```lua
fun()|nil
```
> Event triggers when the player changes an ancestral skill.

#### Field: FACTION_COMPETITION_RESULT
```lua
fun(infos: FactionCompetitionResultInfos)|nil
```
> Event triggers when a faction competition is over. (e.g. Akasch Invasion/Mysthrane Gorge/Reedwind/Great Prairie/Cinderstone+Ynystere war)

#### Field: FACTION_COMPETITION_INFO
```lua
fun(info: FactionCompetitionInfo)|nil
```
> Event triggers when the player enters a zone with a competition. (e.g. Akasch Invasion/Mysthrane Gorge/Reedwind/Great Prairie/Cinderstone+Ynystere war)

#### Field: FACTION_COMPETITION_UPDATE_POINT
```lua
fun(infos: FactionCompetitionPointInfo)|nil
```
> Event triggers when a factions competition points (e.g. Akasch Invasion/Mysthrane Gorge/Reedwind/Great Prairie/Cinderstone+Ynystere war) update.

#### Field: FACTION_RELATION_ACCEPTED
```lua
fun(name: any, factionName: any)|nil
```


#### Field: FACTION_RELATION_CHANGED
```lua
fun(isHostile: boolean, f1Name: string, f2Name: string)|nil
```
> Event triggers when a faction relation changes.

#### Field: FACTION_CHANGED
```lua
fun()|nil
```


#### Field: EXPIRED_ITEM
```lua
fun(itemLinkText: string)|nil
```
> Event triggers when an item expires for the player.

#### Field: EXP_CHANGED
```lua
fun(stringId: string, expNum: number, expStr: string)|nil
```
> Event triggers when the player receives experience.

#### Field: EXPEDITION_WAR_SET_PROTECT_DATE
```lua
fun()|nil
```
> Event triggers when the players guild dominion protection date changes.

#### Field: EXPEDITION_WAR_STATE
```lua
fun(related: boolean, state: string, declarer: string, defendant: string, winner: string)|nil
```
> Event triggers when a guild starts a dominion with another guild.

#### Field: EXPEDITION_WAR_KILL_SCORE
```lua
fun(toggle: boolean)|nil
```
> Event triggers when the player views the current dominion status.

#### Field: FACTION_RELATION_COUNT
```lua
fun()|nil
```


#### Field: FACTION_RELATION_HISTORY
```lua
fun()|nil
```
> Event triggers when the player views the alliance history of a faction.

#### Field: FAMILY_EXP_ADD
```lua
fun(amount: any)|nil
```


#### Field: FAMILY_INFO_REFRESH
```lua
fun()|nil
```


#### Field: FAMILY_LEVEL_UP
```lua
fun(levelName: any)|nil
```


#### Field: FACTION_RELATION_DENIED
```lua
fun(name: any)|nil
```


#### Field: FAMILY_ERROR
```lua
fun(msg: any)|nil
```


#### Field: FACTION_RENAMED
```lua
fun(isExpedition: boolean, oldName: string, newName: string)|nil
```
> Event triggers if a nation or guild is renamed.

#### Field: FAILED_TO_SET_PET_AUTO_SKILL
```lua
fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)|nil
```
> Event triggers when the player failed to set a pet auto skill. (e.g. Mount skill auto use/Battlepet not in defensive mode skill auto use)

#### Field: FACTION_RELATION_REQUESTED
```lua
fun(name: any, factionName: any)|nil
```


#### Field: FACTION_RELATION_WILL_CHANGE
```lua
fun(f1Name: string, f2Name: string)|nil
```
> Event triggers when a faction relation will change.

#### Field: FAMILY_MEMBER
```lua
fun(owner: any, member: any, role: any, title: any)|nil
```


#### Field: EXPEDITION_WAR_DECLARATION_MONEY
```lua
fun(unitId: any, name: any, money: any)|nil
```


#### Field: EXPEDITION_SUMMON_SUGGEST
```lua
fun()|nil
```


#### Field: EXPEDITION_MANAGEMENT_APPLICANT_ACCEPT
```lua
fun(charId: any)|nil
```


#### Field: EXPEDITION_MANAGEMENT_APPLICANTS
```lua
fun(infos: ExpeditionApplicant[])|nil
```
> Event triggers when a guild member (who has permissions) opens the manage applicants window.

#### Field: EXPEDITION_MANAGEMENT_APPLICANT_ADD
```lua
fun(expeditionId: any)|nil
```


#### Field: EXPEDITION_MANAGEMENT_APPLICANT_DEL
```lua
fun(expeditionId: any)|nil
```


#### Field: EXPEDITION_MANAGEMENT_APPLICANT_REJECT
```lua
fun(charId: any)|nil
```


#### Field: EXPEDITION_LEVEL_UP
```lua
fun(level: any)|nil
```


#### Field: EXPEDITION_EXP
```lua
fun(amount: number, amountStr: string)|nil
```
> Event triggers when the player changes the guilds experience.

#### Field: EXPEDITION_HISTORY
```lua
fun(tabId: number)|nil
```
> Event triggers when the player accesses their guild history.

#### Field: EXPEDITION_APPLICANT_REJECT
```lua
fun(expeditionName: string)|nil
```
> Event triggers when the players application to a guild is rejected.

#### Field: EXPEDITION_BUFF_CHANGE
```lua
fun(expedition: number)|nil
```
> Event triggers when a guilds buff changes.

#### Field: EXPEDITION_WAR_DECLARATION_FAILED
```lua
fun(errorMsg: any, param: any)|nil
```


#### Field: EXPEDITION_MANAGEMENT_GUILD_FUNCTION_CHANGED
```lua
fun()|nil
```


#### Field: EXPEDITION_MANAGEMENT_MEMBER_NAME_CHANGED
```lua
fun()|nil
```
> Event triggers when a member of the players guild changes their name.

#### Field: EXPEDITION_MANAGEMENT_ROLE_CHANGED
```lua
fun()|nil
```


#### Field: EXPEDITION_MANAGEMENT_UPDATED
```lua
fun()|nil
```
> Event triggers when the guild prestige changes.

#### Field: EXPEDITION_RANKING
```lua
fun()|nil
```


#### Field: EXPEDITION_MANAGEMENT_MEMBERS_INFO
```lua
fun(totalCount: number, startIndex: number, memberInfos: MemberInfo[])|nil
```
> Event triggers when the player views the members tab in their guild.

#### Field: EXPEDITION_MANAGEMENT_RECRUITMENT_DEL
```lua
fun(expeditionId: any)|nil
```


#### Field: EXPEDITION_MANAGEMENT_RECRUITMENTS
```lua
fun(total: number, perPageItemCount: number, infos: GuildRecruitmentInfo[])|nil
```
> Event triggers when the player opens the guild recruitment tab.

#### Field: EXPEDITION_MANAGEMENT_RECRUITMENT_ADD
```lua
fun(info: any)|nil
```


#### Field: EXPEDITION_MANAGEMENT_MEMBER_STATUS_CHANGED
```lua
fun()|nil
```
> Event triggers when the prestige of a guild member changes.

#### Field: EXPEDITION_MANAGEMENT_POLICY_CHANGED
```lua
fun()|nil
```


#### Field: HERO_ALL_SCORE_UPDATED
```lua
fun(factionID: `101`|`102`|`103`|`104`|`105`...(+124))|nil
```
> Event triggers when the player tries to retrieve hero information or hero
> mission status.

#### Field: FAMILY_MEMBER_ADDED
```lua
fun(owner: any, member: any, title: any)|nil
```


#### Field: FAMILY_MEMBER_LEFT
```lua
fun(member: any)|nil
```


#### Field: GUARDTOWER_HEALTH_CHANGED
```lua
fun(arg1: string, arg2: string, arg3: string)|nil
```
> Event triggers when a guard tower health changes.

#### Field: GRADE_ENCHANT_RESULT
```lua
fun(resultCode: `IGER_BREAK`|`IGER_DISABLE`|`IGER_DOWNGRADE`|`IGER_FAIL`|`IGER_GREAT_SUCCESS`...(+2), itemLink: string, oldGrade: `0`|`10`|`11`|`12`|`1`...(+8), newGrade: `0`|`10`|`11`|`12`|`1`...(+8), breakRewardItemType: number, breakRewardItemCount: number, breakRewardByMail: boolean)|nil
```
> Event triggers when the player regrades an item.

#### Field: GUILD_BANK_INTERACTION_END
```lua
fun()|nil
```
> Event triggers when the player ends interacting with their guild bank.

#### Field: GUILD_BANK_INTERACTION_START
```lua
fun()|nil
```


#### Field: GUILD_BANK_INVEN_SHOW
```lua
fun()|nil
```
> Event triggers when the guild bank is shown to the player.

#### Field: GRADE_ENCHANT_BROADCAST
```lua
fun(characterName: string, resultCode: `IEBCT_ENCHANT_GREATE_SUCCESS`|`IEBCT_ENCHANT_SUCCESS`|`IEBCT_EVOVING`, itemLink: string, oldGrade: `0`|`10`|`11`|`12`|`1`...(+8), newGrade: `0`|`10`|`11`|`12`|`1`...(+8))|nil
```
> Event triggers when a player successfully enchants an item to a new grade.

#### Field: GOODS_MAIL_SENT_SUCCESS
```lua
fun()|nil
```


#### Field: GOODS_MAIL_WRITE_ITEM_UPDATE
```lua
fun()|nil
```


#### Field: GOODS_MAIL_RETURNED
```lua
fun()|nil
```


#### Field: GOODS_MAIL_SENTBOX_UPDATE
```lua
fun()|nil
```


#### Field: GOODS_MAIL_INBOX_UPDATE
```lua
fun(read: boolean, arg: number)|nil
```
> Event triggers when the players marketplace mail updates.

#### Field: GUILD_BANK_MONEY_UPDATE
```lua
fun()|nil
```


#### Field: GUILD_BANK_TAB_CREATED
```lua
fun()|nil
```
> Event triggers when the player creates a tab for their guild bank.

#### Field: HEIR_SKILL_ACTIVE_TYPE_MSG
```lua
fun(activeType: number, ability: number, text: string, pos: `1`|`2`|`3`|`4`|`5`...(+3))|nil
```


#### Field: HEIR_SKILL_LEARN
```lua
fun(text: string, pos: `1`|`2`|`3`|`4`|`5`...(+3))|nil
```
> Event triggers when the player changes an ancestral skill.

#### Field: HEIR_SKILL_RESET
```lua
fun(isAll: boolean, text: string, info: `1`|`2`|`3`|`4`|`5`...(+3))|nil
```
> Event triggers when the player resets an ancestral skill.

#### Field: GUILD_BANK_REAL_INDEX_SHOW
```lua
fun()|nil
```


#### Field: HEIR_LEVEL_UP
```lua
fun(myUnit: boolean, unitId: string)|nil
```
> Event triggers when a players acestral level increases.

#### Field: GUILD_BANK_TAB_SWITCHED
```lua
fun()|nil
```
> Event triggers when the player changes their guild bank tab.

#### Field: GUILD_BANK_UPDATE
```lua
fun(arg1: number, slot: number)|nil
```
> Event triggers when the player takes/places an item into their guild bank.

#### Field: GUILD_BANK_TAB_REMOVED
```lua
fun()|nil
```
> Event triggers when the player deletes a tab from their guild bank.

#### Field: GUILD_BANK_TAB_SORTED
```lua
fun()|nil
```
> Event triggers when the player sorts their guild bank.

#### Field: FAMILY_MEMBER_KICKED
```lua
fun(member: any)|nil
```


#### Field: GOODS_MAIL_INBOX_TAX_PAID
```lua
fun()|nil
```


#### Field: GOODS_MAIL_INBOX_ITEM_TAKEN
```lua
fun(index: any)|nil
```
> Event triggers when the player takes an item from their marketplace mailbox.

#### Field: FIND_FACTION_REZ_DISTRICT_COOLTIME_FAIL
```lua
fun(cooltime: number)|nil
```
> Event triggers when the player (as a hero) tries to activate a respawn location that is not available yet due to a cooltime.

#### Field: FAMILY_REMOVED
```lua
fun()|nil
```


#### Field: FIND_FACTION_REZ_DISTRICT_DURATION_FAIL
```lua
fun(remain: number)|nil
```
> Event triggers when the player (as a hero) tries to activate a respawn location that is already in use.

#### Field: FOLDER_STATE_CHANGED
```lua
fun(arg: string)|nil
```
> Event triggers when the player changes the state of a folder.

#### Field: FORCE_ATTACK_CHANGED
```lua
fun(uiserId: string, inBloodlust: boolean)|nil
```
> Event triggers when a player toggles bloodlust mode.

#### Field: FAMILY_REFRESH
```lua
fun()|nil
```


#### Field: FAMILY_NAME_CHANGED
```lua
fun(FAMILY_NAME_CHANGED: any)|nil
```


#### Field: FAMILY_OWNER_CHANGED
```lua
fun(owner: any)|nil
```


#### Field: FAMILY_MEMBER_ONLINE
```lua
fun()|nil
```


#### Field: FAMILY_MGR
```lua
fun()|nil
```


#### Field: GOODS_MAIL_INBOX_MONEY_TAKEN
```lua
fun()|nil
```


#### Field: FRIENDLIST
```lua
fun(msg: string)|nil
```
> Event triggers when the player sends a friend request.

#### Field: FRIENDLIST_UPDATE
```lua
fun(updateType: "delete"|"insert", dataField: string|FriendInfo)|nil
```
> Event triggers when the players friend list updates.

#### Field: GAME_SCHEDULE
```lua
fun()|nil
```


#### Field: GENDER_TRANSFERED
```lua
fun()|nil
```
> Event triggers when the player changes their characters gender.

#### Field: GLIDER_MOVED_INTO_BAG
```lua
fun()|nil
```
> Event triggers when the player picks up something that moves their glider
> into their bag.

#### Field: FRIENDLIST_INFO
```lua
fun(totalCount: number, memberInfos: FriendInfo[])|nil
```
> Event triggers when the player opens their friend list.

#### Field: GAME_EVENT_INFO_REQUESTED
```lua
fun()|nil
```
> Event triggers when the player opens the daily schedule window after loading into the world.

#### Field: GAME_EVENT_EMPTY
```lua
fun()|nil
```


#### Field: GAME_EVENT_INFO_LIST_UPDATED
```lua
fun()|nil
```
> Event triggers when the player opens the daily schedule window.

#### Field: GACHA_LOOT_PACK_LOG
```lua
fun(logs: GachaLootPackLog)|nil
```
> Event triggers when the player opens a locked crate.

#### Field: GACHA_LOOT_PACK_RESULT
```lua
fun(results: GachaLootPackResult)|nil
```
> Event triggers when the player opens a locked crate.

#### Field: ZONE_SCORE_UPDATED
```lua
fun(kind: any, info: any)|nil
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
`101`|`102`|`103`|`104`|`105`...(+124)
```
> api/Addon
> db > system_factions

### Class: FactionPointInfo
#### Field: factionId
```lua
`101`|`102`|`103`|`104`|`105`...(+124)
```
> api/Addon
> db > system_factions

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
> Ancestral Level

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
`101`|`102`|`103`|`104`|`105`...(+124)
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


### Class: GroupInfo
#### Field: anyTime
```lua
boolean
```


#### Field: toHH
```lua
number
```


#### Field: toMM
```lua
number
```


#### Field: fromMM
```lua
number
```


#### Field: fromHH
```lua
number
```


#### Field: weekInfoList
```lua
number[]
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


### Class: HousingTaxInfo
#### Field: base_tax
```lua
number
```


#### Field: tax_type
```lua
number
```


#### Field: deposit
```lua
number
```


#### Field: count
```lua
number
```


#### Field: total_tax
```lua
number
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

### Class: InstanceByKind
#### Field: globalArena
```lua
boolean
```


#### Field: showFestivalIcon
```lua
boolean
```


#### Field: type
```lua
number
```


#### Field: memberCount
```lua
number[]
```


#### Field: globalField
```lua
boolean
```


#### Field: uiKey
```lua
string
```


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


### Class: InstanceUiKind
#### Field: listButtonPath
```lua
string
```


#### Field: showHonorStore
```lua
boolean
```


#### Field: name
```lua
string
```


#### Field: type
```lua
number
```


### Class: InstanceZoneInfo
#### Field: uiKey
```lua
string
```


#### Field: zoneKey
```lua
number
```


#### Field: zoneName
```lua
string
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


#### Field: lookChanged
```lua
boolean
```


#### Field: lookType
```lua
number
```


#### Field: longitudeSec
```lua
number
```


#### Field: longitudeMin
```lua
number
```


#### Field: longitudeDir
```lua
"E"|"W"
```


#### Field: magicDps
```lua
number
```


#### Field: maxDamage
```lua
number
```


#### Field: maxStack
```lua
number
```


#### Field: magicResistance
```lua
number
```


#### Field: maxSetItemCount
```lua
number
```


#### Field: maxDurability
```lua
number
```


#### Field: minDamage
```lua
number
```


#### Field: longitudeDeg
```lua
number
```


#### Field: location_zone_name
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


#### Field: latitudeSec
```lua
number
```


#### Field: locked
```lua
boolean
```


#### Field: lifeSpan
```lua
number
```


#### Field: lifeSpanType
```lua
string
```


#### Field: location_world_name
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


#### Field: latitudeMin
```lua
number
```


#### Field: modifier
```lua
ModifireTable[]
```


#### Field: name
```lua
string
```


#### Field: socketInfo
```lua
SocketInfo
```


#### Field: soul_bind
```lua
string
```


#### Field: slotTypeNum
```lua
number
```


#### Field: slotType
```lua
string
```


#### Field: skillType
```lua
number
```


#### Field: soul_bind_type
```lua
number
```


#### Field: stack
```lua
number
```


#### Field: useAsStat
```lua
boolean
```


#### Field: soul_bound
```lua
number
```


#### Field: useAsSkin
```lua
boolean
```


#### Field: uccTooltip
```lua
string
```


#### Field: moveSpeed
```lua
number
```


#### Field: sideEffect
```lua
boolean
```


#### Field: sellable
```lua
boolean
```


#### Field: pinned
```lua
boolean
```


#### Field: processedState
```lua
string
```


#### Field: overIcon
```lua
string
```


#### Field: needsUnpack
```lua
boolean
```


#### Field: setItems
```lua
SetItemsInfo[]
```


#### Field: rechargeBuff
```lua
RechargeBuffInfo
```


#### Field: repairable
```lua
number
```


#### Field: securityState
```lua
`ITEM_SECURITY_INVALID`|`ITEM_SECURITY_LOCKED`|`ITEM_SECURITY_UNLOCKED`|`ITEM_SECURITY_UNLOCKING`
```
> api/X2Item

#### Field: refund
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


#### Field: useConsumeItem
```lua
boolean
```


#### Field: latitudeDir
```lua
"N"|"S"
```


#### Field: item_impl
```lua
"accessory"|"armor"|"butler_armor"|"enchanting_gem"|"itemGrade"...(+11)
```


#### Field: crafter
```lua
string
```


#### Field: dead
```lua
boolean
```


#### Field: craftedWorldName
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


#### Field: description
```lua
string
```


#### Field: element
```lua
string
```


#### Field: equiped
```lua
boolean
```


#### Field: durability
```lua
number
```


#### Field: equipSetInfo
```lua
EquipSetInfo
```


#### Field: elementName
```lua
string
```


#### Field: equippedSetItemCount
```lua
number
```


#### Field: convertibleItem
```lua
boolean
```


#### Field: checkUnitReq
```lua
boolean
```


#### Field: attackDelay
```lua
number
```


#### Field: auction_only
```lua
boolean
```


#### Field: armorType
```lua
string
```


#### Field: armor
```lua
number
```


#### Field: contributionPointPrice
```lua
number
```


#### Field: backpackType
```lua
number
```


#### Field: buffType
```lua
number
```


#### Field: category_id
```lua
number
```


#### Field: baseEquipment
```lua
boolean
```


#### Field: category
```lua
string
```


#### Field: canEvolve
```lua
boolean
```


#### Field: latitudeDeg
```lua
number
```


#### Field: evolvingCategory
```lua
boolean
```


#### Field: extraArmor
```lua
number
```


#### Field: isMyWorld
```lua
boolean
```


#### Field: isPetOnly
```lua
boolean
```


#### Field: isMaterial
```lua
boolean
```


#### Field: isEnchantDisable
```lua
boolean
```


#### Field: indestructible
```lua
boolean
```


#### Field: isStackable
```lua
boolean
```


#### Field: itemGrade
```lua
number
```


#### Field: item_flag_cannot_equip
```lua
boolean
```


#### Field: isUnderWaterCreature
```lua
boolean
```


#### Field: itemUsage
```lua
string
```


#### Field: itemType
```lua
number
```


#### Field: evolvingInfo
```lua
EvolvingInfo
```


#### Field: icon
```lua
string
```


#### Field: healDps
```lua
number
```


#### Field: gemInfo
```lua
number
```


#### Field: gemModifireTable
```lua
ModifireTable[]
```


#### Field: gearScore
```lua
GearScoreItemInfo
```


#### Field: extraDPS
```lua
number
```


#### Field: honorPrice
```lua
number
```


#### Field: gender
```lua
string
```


#### Field: gradeColor
```lua
string
```


#### Field: grade
```lua
string
```


#### Field: gradeIcon
```lua
string
```


#### Field: gradeEnchantable
```lua
boolean
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


### Class: ItemMaterialInfo
#### Field: count
```lua
number
```


#### Field: item
```lua
ItemInfo
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


### Class: LevelEffect
#### Field: attributeType
```lua
number
```


#### Field: unitModifierType
```lua
number
```


#### Field: triggerLevel
```lua
number
```


#### Field: isChangeable
```lua
boolean
```


#### Field: value
```lua
number
```


### Class: LevelEffectChangeUIInfo
#### Field: item
```lua
ItemInfo
```


#### Field: levelEffectList
```lua
LevelEffect[]
```


### Class: LevelEffectInfo
#### Field: attribute
```lua
number
```


#### Field: attributeKey
```lua
string
```


#### Field: value
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
table|Time
```
> Connection Status (last active date or could be empty if the player is online)

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


### Class: MutedCharacter
#### Field: name
```lua
string
```


#### Field: unitName
```lua
string
```


#### Field: worldName
```lua
string
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


### Class: QuestObjectiveText
#### Field: category
```lua
string
```


#### Field: npc_type
```lua
number
```


#### Field: status
```lua
string
```


#### Field: name
```lua
string
```


#### Field: done
```lua
number
```


#### Field: summary
```lua
string
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


### Class: RaidRecruitSubType
#### Field: name
```lua
string
```


#### Field: subType
```lua
number
```


### Class: RaidRecruitSubTypeInfo
#### Field: comment
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


#### Field: gearScoreLimitMax
```lua
number
```


#### Field: gearScore
```lua
number
```


#### Field: subType
```lua
number
```


### Class: RaidRecruitType
#### Field: iconKey
```lua
string
```


#### Field: name
```lua
string
```


#### Field: type
```lua
number
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

### Class: ReinforceInfo
#### Field: exp
```lua
number
```


#### Field: level
```lua
number
```


#### Field: isMaxLevel
```lua
boolean
```


#### Field: totalExp
```lua
number
```


### Class: RequiredConditionInfo
#### Field: equipSlotTypes
```lua
string[]
```


### Class: RequiredMaterialInfo
#### Field: currency
```lua
number
```


#### Field: itemList
```lua
ItemMaterialInfo[]
```


#### Field: materialType
```lua
number
```


#### Field: hasCashItem
```lua
boolean
```


#### Field: currencyValue
```lua
number
```


#### Field: gainExp
```lua
number
```


#### Field: name
```lua
string
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


### Class: SetEffect
#### Field: desc
```lua
string
```


#### Field: requiredLevel
```lua
number
```


#### Field: enable
```lua
boolean
```


#### Field: step
```lua
number
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
`10`|`11`|`12`|`14`|`1`...(+11)[]
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
`101`|`102`|`103`|`104`|`105`...(+124)
```
> api/Addon
> db > system_factions

#### Field: memberCnt
```lua
number
```


#### Field: zoneName
```lua
string
```
> TODO ZONE_NAME?

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
string|"appStamp"
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
number|`10`|`11`|`12`|`14`...(+12)
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
`101`|`102`|`103`|`104`|`105`...(+125)
```
> api/Addon
> db > system_factions

#### Field: factions
```lua
`101`|`102`|`103`|`104`|`105`...(+124)[]|nil
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
> Obtained from db zone_groups

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


### Class: UnitAttributeModifierInfo
#### Field: armor
```lua
number
```


#### Field: melee_parry_mul
```lua
number
```


#### Field: melee_parry_rate
```lua
number
```


#### Field: melee_min_dps
```lua
number
```


#### Field: melee_max_dps
```lua
number
```


#### Field: melee_dps
```lua
number
```


#### Field: melee_success_rate
```lua
number
```


#### Field: offhand_melee_speed
```lua
number
```


#### Field: move_speed
```lua
number
```


#### Field: persistent_mana_regen
```lua
number
```


#### Field: persistent_health_regen
```lua
number
```


#### Field: ranged_attack_speed_mul
```lua
number
```


#### Field: melee_damage_mul_anti_pc
```lua
number
```


#### Field: melee_damage_mul
```lua
number
```


#### Field: max_health
```lua
number
```


#### Field: mana_regen
```lua
number
```


#### Field: mainhand_melee_speed
```lua
number
```


#### Field: melee_damage_mul_anti_npc
```lua
number
```


#### Field: max_mana
```lua
number
```


#### Field: melee_critical_bonus
```lua
number
```


#### Field: melee_attack_speed_mul
```lua
number
```


#### Field: melee_critical_rate
```lua
number
```


#### Field: melee_critical_mul
```lua
number
```


#### Field: magic_resist
```lua
number
```


#### Field: ranged_critical_bonus
```lua
number
```


#### Field: ranged_critical_rate
```lua
number
```


#### Field: spell_damage_critical_mul
```lua
number
```


#### Field: spell_damage_mul
```lua
number
```


#### Field: spell_damage_critical_bonus
```lua
number
```


#### Field: spell_critical_rate
```lua
number
```


#### Field: spell_critical_mul
```lua
number
```


#### Field: spell_damage_mul_anti_npc
```lua
number
```


#### Field: spell_dps
```lua
number
```


#### Field: spell_damage_mul_anti_pc
```lua
number
```


#### Field: spi
```lua
number
```


#### Field: spell_success_rate
```lua
number
```


#### Field: ranged_critical_mul
```lua
number
```


#### Field: spell_critical_bonus
```lua
number
```


#### Field: ranged_speed
```lua
number
```


#### Field: ranged_damage_mul_anti_pc
```lua
number
```


#### Field: ranged_damage_mul_anti_npc
```lua
number
```


#### Field: ranged_damage_mul
```lua
number
```


#### Field: ranged_success_rate
```lua
number
```


#### Field: ranged_dps
```lua
number
```


#### Field: ranged_min_dps
```lua
number
```


#### Field: ranged_max_dps
```lua
number
```


#### Field: ranged_parry_rate
```lua
number
```


#### Field: ranged_parry_mul
```lua
number
```


#### Field: sta
```lua
number
```


#### Field: magic_penetration
```lua
number
```


#### Field: loot_gold_mul
```lua
number
```


#### Field: drop_rate_mul
```lua
number
```


#### Field: exp_mul
```lua
number
```


#### Field: dodge_rate
```lua
number
```


#### Field: dodge_mul
```lua
number
```


#### Field: dex
```lua
number
```


#### Field: flexibility
```lua
number
```


#### Field: heal_critical_bonus
```lua
number
```


#### Field: gear_score
```lua
number
```


#### Field: heal_critical_rate
```lua
number
```


#### Field: heal_critical_mul
```lua
number
```


#### Field: heal_damage_mul
```lua
number
```


#### Field: detect_stealth_range_mul
```lua
number
```


#### Field: casting_time
```lua
number
```


#### Field: backattack_ranged_damage_mul
```lua
number
```


#### Field: backattack_melee_damage_mul
```lua
number
```


#### Field: attack_anim_speed_mul
```lua
number
```


#### Field: casting_time_mul
```lua
number
```


#### Field: backattack_spell_damage_mul
```lua
number
```


#### Field: block_mul
```lua
number
```


#### Field: battle_resist
```lua
number
```


#### Field: bulls_eye
```lua
number
```


#### Field: block_rate
```lua
number
```


#### Field: magic_effect_resist_percentage
```lua
number
```


#### Field: heal_damage_mul_anti_npc
```lua
number
```


#### Field: heal_mul
```lua
number
```


#### Field: incoming_siege_damage_mul
```lua
number
```


#### Field: incoming_ranged_damage_val
```lua
number
```


#### Field: incoming_ranged_damage_mul
```lua
number
```


#### Field: incoming_ranged_damage_add_anti_npc
```lua
number
```


#### Field: incoming_siege_damage_val
```lua
number
```


#### Field: incoming_spell_damage_mul
```lua
number
```


#### Field: incoming_spell_damage_add_anti_npc
```lua
number
```


#### Field: int
```lua
number
```


#### Field: incoming_spell_damage_val
```lua
number
```


#### Field: heal_dps
```lua
number
```


#### Field: incoming_melee_damage_val
```lua
number
```


#### Field: incoming_melee_damage_add_anti_npc
```lua
number
```


#### Field: ignore_armor
```lua
number
```


#### Field: health_regen
```lua
number
```


#### Field: heal_mul_only_heal
```lua
number
```


#### Field: incoming_melee_damage_mul
```lua
number
```


#### Field: ignore_shield_bonus
```lua
number
```


#### Field: ignore_shield_chance
```lua
number
```


#### Field: ignore_shield_bonus_mul
```lua
number
```


#### Field: incoming_heal_mul
```lua
number
```


#### Field: incoming_damage_mul_anti_npc
```lua
number
```


#### Field: str
```lua
number
```


### Class: UnitAttributesInfo
#### Field: armor
```lua
number
```


#### Field: melee_damage_mul_anti_pc
```lua
number
```


#### Field: melee_damage_mul_anti_npc
```lua
number
```


#### Field: melee_damage_mul
```lua
number
```


#### Field: melee_critical_rate
```lua
number
```


#### Field: melee_dps
```lua
number
```


#### Field: melee_min_dps
```lua
number
```


#### Field: melee_max_dps
```lua
number
```


#### Field: melee_success_rate
```lua
number
```


#### Field: melee_parry_rate
```lua
number
```


#### Field: move_speed
```lua
number
```


#### Field: melee_critical_bonus
```lua
number
```


#### Field: mainhand_melee_speed
```lua
number
```


#### Field: int
```lua
number
```


#### Field: incoming_spell_damage_val
```lua
number
```


#### Field: incoming_spell_damage_mul
```lua
number
```


#### Field: mana_regen
```lua
number
```


#### Field: loot_gold_mul
```lua
number
```


#### Field: magic_penetration
```lua
number
```


#### Field: magic_effect_resist_percentage
```lua
number
```


#### Field: magic_resist_percentage
```lua
number
```


#### Field: magic_resist
```lua
number
```


#### Field: incoming_spell_damage_add_anti_npc
```lua
number
```


#### Field: move_speed_rate
```lua
number
```


#### Field: persistent_health_regen
```lua
number
```


#### Field: spell_damage_mul
```lua
number
```


#### Field: spell_critical_rate
```lua
number
```


#### Field: spell_critical_bonus
```lua
number
```


#### Field: ranged_success_rate
```lua
number
```


#### Field: spell_damage_mul_anti_npc
```lua
number
```


#### Field: spell_dps
```lua
number
```


#### Field: spell_damage_mul_anti_pc
```lua
number
```


#### Field: spi
```lua
number
```


#### Field: spell_success_rate
```lua
number
```


#### Field: offhand_melee_speed
```lua
number
```


#### Field: ranged_speed
```lua
number
```


#### Field: ranged_min_dps
```lua
number
```


#### Field: ranged_critical_rate
```lua
number
```


#### Field: ranged_critical_bonus
```lua
number
```


#### Field: persistent_mana_regen
```lua
number
```


#### Field: ranged_parry_rate
```lua
number
```


#### Field: ranged_damage_mul
```lua
number
```


#### Field: ranged_damage_mul_anti_pc
```lua
number
```


#### Field: ranged_damage_mul_anti_npc
```lua
number
```


#### Field: ranged_max_dps
```lua
number
```


#### Field: ranged_dps
```lua
number
```


#### Field: sta
```lua
number
```


#### Field: incoming_siege_damage_val
```lua
number
```


#### Field: incoming_ranged_damage_val
```lua
number
```


#### Field: detect_stealth_range_mul
```lua
number
```


#### Field: detect_stealth_range
```lua
number
```


#### Field: casting_time_mul
```lua
number
```


#### Field: casting_time
```lua
number
```


#### Field: dex
```lua
number
```


#### Field: drop_rate_mul
```lua
number
```


#### Field: dodge_rate
```lua
number
```


#### Field: flexibility
```lua
number
```


#### Field: exp_mul
```lua
number
```


#### Field: flexibility_bonus
```lua
number
```


#### Field: bulls_eye_rate
```lua
number
```


#### Field: block_rate
```lua
number
```


#### Field: attack_anim_speed_mul
```lua
number
```


#### Field: attack_anim_speed
```lua
number
```


#### Field: armor_percentage
```lua
number
```


#### Field: bulls_eye
```lua
number
```


#### Field: backattack_melee_damage_mul
```lua
number
```


#### Field: backattack_spell_damage_mul
```lua
number
```


#### Field: backattack_ranged_damage_mul
```lua
number
```


#### Field: battle_resist_rate
```lua
number
```


#### Field: battle_resist
```lua
number
```


#### Field: incoming_siege_damage_mul
```lua
number
```


#### Field: flexibility_ratio
```lua
number
```


#### Field: global_cooldown_mul
```lua
number
```


#### Field: incoming_heal_mul
```lua
number
```


#### Field: incoming_damage_mul_anti_npc
```lua
number
```


#### Field: ignore_shield_chance
```lua
number
```


#### Field: ignore_shield_bonus_mul
```lua
number
```


#### Field: incoming_melee_damage_add_anti_npc
```lua
number
```


#### Field: incoming_melee_damage_val
```lua
number
```


#### Field: incoming_melee_damage_mul
```lua
number
```


#### Field: incoming_ranged_damage_mul
```lua
number
```


#### Field: incoming_ranged_damage_add_anti_npc
```lua
number
```


#### Field: gear_score
```lua
number
```


#### Field: ignore_shield_bonus
```lua
number
```


#### Field: health_regen
```lua
number
```


#### Field: heal_damage_mul
```lua
number
```


#### Field: heal_critical_rate
```lua
number
```


#### Field: heal_critical_bonus
```lua
number
```


#### Field: ignore_armor
```lua
number
```


#### Field: heal_damage_mul_anti_npc
```lua
number
```


#### Field: heal_mul
```lua
number
```


#### Field: heal_dps
```lua
number
```


#### Field: heal_mul_only_heal
```lua
number
```


#### Field: str
```lua
number
```


### Class: UnitClass
#### Field: [1]
```lua
`10`|`11`|`12`|`14`|`1`...(+11)
```
> api/X2Ability

#### Field: [2]
```lua
`10`|`11`|`12`|`14`|`1`...(+11)
```
> api/X2Ability

#### Field: [3]
```lua
`10`|`11`|`12`|`14`|`1`...(+11)
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


### Class: UnitInSight
#### Field: id
```lua
number
```


#### Field: unit_owner
```lua
"character"|"housing"|"mate"|"npc"|"shipyard"...(+2)
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


