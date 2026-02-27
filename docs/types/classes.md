# classes
## Classes
### Class: AAFormat
#### Field: desc
```lua
string
```


#### Field: quality
```lua
number
```


#### Field: samples
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


#### Field: canProgress
```lua
boolean
```


#### Field: categoryName
```lua
string
```


#### Field: complete
```lua
boolean
```


#### Field: completeDate
```lua
Time|nil
```
This is set if complete == true

#### Field: completeNum
```lua
number
```


#### Field: completeSubCount
```lua
number|nil
```
TODO: I think this is only set if highRank == true

#### Field: current
```lua
number
```


#### Field: desc
```lua
string
```


#### Field: grade
```lua
number
```


#### Field: highRank
```lua
boolean
```


#### Field: highRankAchievementType
```lua
number|nil
```
mainType @TODO: I think this is only set if highRank == false

#### Field: iconPath
```lua
string
```


#### Field: isHidden
```lua
boolean
```


#### Field: isParentComplete
```lua
boolean|nil
```
TODO: I think this is only set if highRank == false

#### Field: name
```lua
string
```


#### Field: objective
```lua
number|nil[]
```
TODO: I think this is only set if highRank == true

#### Field: reward
```lua
RewardInfo|nil
```
TODO: I think this is only set if highRank == true

#### Field: subCategoryName
```lua
string
```


#### Field: subCategoryType
```lua
number
```


#### Field: summary
```lua
string
```


#### Field: totalSubCount
```lua
number|nil
```
TODO: I think this is only set if highRank == true

#### Field: tracing
```lua
boolean
```


#### Field: type
```lua
number
```


### Class: AchievementLevelSubCategory
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
#### Field: grade
```lua
number
```


#### Field: modifyPoint
```lua
number
```


#### Field: name
```lua
string
```


#### Field: point
```lua
number
```


#### Field: type
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


#### Field: modifyPoint
```lua
number
```


#### Field: name
```lua
string
```


#### Field: point
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


#### Field: exp
```lua
string
```


#### Field: level
```lua
number
```


#### Field: levelPercent
```lua
number
```


#### Field: nextLevelTotalExp
```lua
string
```


#### Field: type
```lua
1|10|11|12|14...(+10)
```
api/X2Ability

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
TYPE

#### Field: [2]
```lua
string|nil
```
NAME

#### Field: [3]
```lua
number
```
GRADE

#### Field: [4]
```lua
number
```
ISHAVE

#### Field: [5]
```lua
number
```
ORDER

#### Field: [6]
```lua
AppellationBuffInfo|nil
```
BUFFINFO

### Class: AppellationBuffInfo
#### Field: buff_id
```lua
number
```


#### Field: category
```lua
string
```


#### Field: description
```lua
string
```


#### Field: name
```lua
string
```


#### Field: path
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


#### Field: has
```lua
number
```


#### Field: itemType
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


#### Field: level
```lua
number
```


#### Field: maxExp
```lua
number
```


#### Field: maxlevel
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


#### Field: routeDesc
```lua
string
```


#### Field: routePopup
```lua
number
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


#### Field: [2]
```lua
number
```


#### Field: [3]
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
unscaled height

#### Field: width
```lua
number
```
unscaled width

#### Field: x
```lua
number
```
scaled x

#### Field: y
```lua
number
```
scaled y

### Class: BuffInfo
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


### Class: BuffTooltip
#### Field: buff_id
```lua
number
```


#### Field: category
```lua
"Buff"|"Debuff"
```


#### Field: description
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


#### Field: name
```lua
string|nil
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


#### Field: tipType
```lua
"appStamp"|"buff"|"debuff"|"mate_skill"|"passive"...(+4)
```


### Class: CHAT_MESSAGE_INFO
#### Field: charId
```lua
string
```
the unqiue id associated with the character when it was created

#### Field: displayLocale
```lua
`LOCALE_DE`|`LOCALE_EN_SG`|`LOCALE_EN_US`|`LOCALE_FR`|`LOCALE_IND`...(+7)
```
api/X2Chat

#### Field: factionName
```lua
string
```


#### Field: isUserChat
```lua
boolean
```


#### Field: npcBubbleChat
```lua
boolean
```


#### Field: speakerInChatBound
```lua
boolean
```


#### Field: specifyName
```lua
string
```
specifyName or empty

#### Field: trialPosition
```lua
string
```
trial position or empty

#### Field: unitId
```lua
string
```
the units id or "0" if unknown

### Class: CastingInfo
#### Field: castingTime
```lua
number
```


#### Field: castingUseable
```lua
boolean
```


#### Field: currCastingTime
```lua
number
```


#### Field: showTargetCastingTime
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


#### Field: raceList
```lua
number[]
```


#### Field: skillType
```lua
number
```


#### Field: time
```lua
number
```


### Class: CharacterLinkInfo
#### Field: filter
```lua
number
```


#### Field: isOtherWorld
```lua
boolean
```


#### Field: linkType
```lua
"character"
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


#### Field: isUserChat
```lua
boolean
```
Creates a time stamp

#### Field: messageLocale
```lua
`LOCALE_DE`|`LOCALE_EN_SG`|`LOCALE_EN_US`|`LOCALE_FR`|`LOCALE_IND`...(+8)
```
api/X2Chat

#### Field: npcBubbleChat
```lua
boolean|nil
```


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
TODO:

### Class: CombatDamageSuffix
#### Field: damage
```lua
number
```


#### Field: elementDamage
```lua
number
```


#### Field: elementType
```lua
number
```


#### Field: hitType
```lua
"CRITICAL"|"HIT"
```
TODO: COMBAT_HIT_TYPE?

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


#### Field: synergy
```lua
boolean
```


### Class: CombatDrainSuffix
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
#### Field: damage
```lua
number
```


#### Field: elementDamage
```lua
number
```


#### Field: elementType
```lua
number
```


#### Field: hitType
```lua
"CRITICAL"|"HIT"
```
TODO: COMBAT_HIT_TYPE?

#### Field: mySlave
```lua
any
```
TODO:

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


#### Field: source
```lua
"COLLISION"|"DROWNING"|"FALLING"
```


#### Field: subType
```lua
`COLLISION_PART_BOTTOM`|`COLLISION_PART_FRONT`|`COLLISION_PART_REAR`|`COLLISION_PART_SIDE`|`COLLISION_PART_TOP`
```
api/X2Chat

#### Field: synergy
```lua
boolean
```


### Class: CombatEnvironmentalPrefix
#### Field: mySlave
```lua
any
```
TODO:

#### Field: source
```lua
"COLLISION"|"DROWNING"|"FALLING"
```


#### Field: subType
```lua
`COLLISION_PART_BOTTOM`|`COLLISION_PART_FRONT`|`COLLISION_PART_REAR`|`COLLISION_PART_SIDE`|`COLLISION_PART_TOP`
```
api/X2Chat

### Class: CombatHealedSuffix
#### Field: elementType
```lua
number
```


#### Field: heal
```lua
number
```


#### Field: hitType
```lua
"CRITICAL"|"HIT"
```


#### Field: showElementEffect
```lua
boolean
```


### Class: CombatLeechSuffix
#### Field: amount
```lua
any
```


#### Field: powerType
```lua
"HEALTH"|"MANA"
```


### Class: CombatMeleeDamage
#### Field: damage
```lua
number
```


#### Field: elementDamage
```lua
number
```


#### Field: elementType
```lua
number
```


#### Field: hitType
```lua
"CRITICAL"|"HIT"
```
TODO: COMBAT_HIT_TYPE?

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


#### Field: synergy
```lua
boolean
```


### Class: CombatMeleeMissed
#### Field: damage
```lua
number
```


#### Field: elementDamage
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


#### Field: reduced
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


#### Field: elementDamage
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


#### Field: reduced
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


#### Field: isDefaultResource
```lua
boolean
```


#### Field: recoveryResourceType
```lua
number
```


#### Field: resource1ColorKey
```lua
string
```


#### Field: resource1Current
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


#### Field: uiType
```lua
`CRU_DOUBLE_GAUGE_2`|`CRU_DOUBLE_GAUGE`|`CRU_GAUGE`|`CRU_OVERLAP`
```
api/X2CombatResource

### Class: CombatResourceInfo
#### Field: ability
```lua
number
```


#### Field: groupType
```lua
number
```


#### Field: iconPath
```lua
string
```


#### Field: isDefaultResource
```lua
boolean
```


#### Field: recoveryResourceType
```lua
number
```


#### Field: resource1ColorKey
```lua
string
```


#### Field: resource1Current
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


#### Field: tooltip
```lua
string
```


#### Field: uiType
```lua
`CRU_DOUBLE_GAUGE_2`|`CRU_DOUBLE_GAUGE`|`CRU_GAUGE`|`CRU_OVERLAP`
```
api/X2CombatResource

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
#### Field: auraType
```lua
"BUFF"|"DEBUFF"
```


#### Field: combatText
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
PHYSICAL|HOLY

### Class: CombatSpellAuraRemoved
#### Field: auraType
```lua
"BUFF"|"DEBUFF"
```


#### Field: combatText
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
PHYSICAL|HOLY

### Class: CombatSpellCastFailed
#### Field: failType
```lua
any
```
TODO:

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
PHYSICAL|HOLY

### Class: CombatSpellCastStart
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
PHYSICAL|HOLY

### Class: CombatSpellCastSuccess
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
PHYSICAL|HOLY

### Class: CombatSpellDamage
#### Field: damage
```lua
number
```


#### Field: elementDamage
```lua
number
```


#### Field: elementType
```lua
number
```


#### Field: hitType
```lua
"CRITICAL"|"HIT"
```
TODO: COMBAT_HIT_TYPE?

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
PHYSICAL|HOLY

#### Field: synergy
```lua
boolean
```


### Class: CombatSpellDotDamage
#### Field: damage
```lua
number
```


#### Field: elementDamage
```lua
number
```


#### Field: elementType
```lua
number
```


#### Field: hitType
```lua
"CRITICAL"|"HIT"
```
TODO: COMBAT_HIT_TYPE?

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
PHYSICAL|HOLY

#### Field: synergy
```lua
boolean
```


### Class: CombatSpellEnergize
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
PHYSICAL|HOLY

### Class: CombatSpellHealed
#### Field: elementType
```lua
number
```


#### Field: heal
```lua
number
```


#### Field: hitType
```lua
"CRITICAL"|"HIT"
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
PHYSICAL|HOLY

### Class: CombatSpellMissed
#### Field: damage
```lua
number
```


#### Field: elementDamage
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


#### Field: reduced
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
PHYSICAL|HOLY

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
PHYSICAL|HOLY

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
0|1|10|11|12...(+8)
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


#### Field: consume_lp
```lua
number
```


#### Field: cost
```lua
number
```


#### Field: cost_satisfied
```lua
boolean
```


#### Field: craft_type
```lua
number
```


#### Field: doodad_name
```lua
string
```


#### Field: laborpower_satisfied
```lua
boolean
```


#### Field: needed_lp
```lua
number
```


#### Field: orderable
```lua
boolean
```


#### Field: recommend_level
```lua
number
```


#### Field: require_doodad
```lua
number
```


#### Field: required_actability_name
```lua
string
```


#### Field: required_actability_point
```lua
number
```


#### Field: required_actability_type
```lua
number
```


#### Field: skill_type
```lua
number
```


#### Field: title
```lua
string
```


#### Field: use_only_actability
```lua
boolean
```


### Class: CraftLinkInfo
#### Field: craftType
```lua
number
```


#### Field: filter
```lua
number
```


#### Field: isOtherWorld
```lua
boolean
```


#### Field: linkType
```lua
"craft"
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


#### Field: [2]
```lua
CraftOrderEntry|nil
```


#### Field: [3]
```lua
CraftOrderEntry|nil
```


#### Field: [4]
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


#### Field: [8]
```lua
CraftOrderEntry|nil
```


### Class: CraftOrderEntry
#### Field: chargeFee
```lua
string
```


#### Field: consumeLp
```lua
number
```


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


#### Field: enableAct
```lua
boolean
```


#### Field: enableLp
```lua
boolean
```


#### Field: entryId
```lua
number
```


#### Field: entryIndex
```lua
number
```


#### Field: fee
```lua
string
```


#### Field: mine
```lua
number
```


#### Field: remainTime
```lua
number
```


#### Field: requireLp
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
0|1|10|11|12...(+8)
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


#### Field: itemType
```lua
number
```


#### Field: item_name
```lua
string
```


#### Field: productGrade
```lua
number
```


#### Field: success_rate
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
#### Field: defaultB
```lua
number
```
Basic Hair Color Blue. (min: `0`, max: `255`)

#### Field: defaultG
```lua
number
```
Basic Hair Color Green. (min: `0`, max: `255`)

#### Field: defaultR
```lua
number
```
Basic Hair Color Red. (min: `0`, max: `255`)

#### Field: firstWidth
```lua
number
```
Dye Length. (min: `0`, max: `1`)

#### Field: index
```lua
number|nil
```
Old Hair @TODO: If this is set by default on the model then rgb cant be used and vice versa, needs more testing.

#### Field: secondWidth
```lua
number
```
Highlights. (min: `0`, max: `1`)

#### Field: twoToneB
```lua
number
```
Highlight Color Blue. (min: `0`, max: `255`)

#### Field: twoToneG
```lua
number
```
Highlight Color Green. (min: `0`, max: `255`)

#### Field: twoToneR
```lua
number
```
Highlight Color Red. (min: `0`, max: `255`)

### Class: CustomizingHairDefaultColor
#### Field: defaultB
```lua
number
```
Basic Hair Color Blue. (min: `0`, max: `255`)

#### Field: defaultG
```lua
number
```
Basic Hair Color Green. (min: `0`, max: `255`)

#### Field: defaultR
```lua
number
```
Basic Hair Color Red. (min: `0`, max: `255`)

#### Field: index
```lua
number|nil
```
Old Hair @TODO: If this is set by default on the model then rgb cant be used and vice versa, needs more testing.

### Class: CustomizingHairTwoToneColor
#### Field: firstWidth
```lua
number
```
Dye Length. (min: `0`, max: `1`)

#### Field: secondWidth
```lua
number
```
Highlights. (min: `0`, max: `1`)

#### Field: twoToneB
```lua
number
```
Highlight Color Blue. (min: `0`, max: `255`)

#### Field: twoToneG
```lua
number
```
Highlight Color Green. (min: `0`, max: `255`)

#### Field: twoToneR
```lua
number
```
Highlight Color Red. (min: `0`, max: `255`)

### Class: DiagonalASRDailyInfo
#### Field: dailyAvg
```lua
string
```


#### Field: maxPrice
```lua
string
```


#### Field: minPrice
```lua
string
```


#### Field: volume
```lua
number
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


#### Field: [11]
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


#### Field: [14]
```lua
DiagonalASRDailyInfo
```


#### Field: [1]
```lua
DiagonalASRDailyInfo
```


#### Field: [2]
```lua
DiagonalASRDailyInfo
```


#### Field: [3]
```lua
DiagonalASRDailyInfo
```


#### Field: [4]
```lua
DiagonalASRDailyInfo
```


#### Field: [5]
```lua
DiagonalASRDailyInfo
```


#### Field: [6]
```lua
DiagonalASRDailyInfo
```


#### Field: [7]
```lua
DiagonalASRDailyInfo
```


#### Field: [8]
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
TODO:

#### Field: maxCount
```lua
any
```
TODO:

### Class: DoodadTooltipInfo
#### Field: alignLeft
```lua
boolean|nil
```


#### Field: catched
```lua
Time|nil
```


#### Field: chillRemainTime
```lua
Time|nil
```


#### Field: chillingPercent
```lua
any
```
TODO:

#### Field: chillingRate
```lua
any
```
TODO:

#### Field: crafterName
```lua
string|nil
```


#### Field: displayTime
```lua
number|nil
```


#### Field: dtype
```lua
any
```
TODO:

#### Field: expeditionOwn
```lua
boolean|nil
```


#### Field: explain
```lua
string|nil
```


#### Field: freshnessRemainTime
```lua
Time|nil
```


#### Field: freshnessTooltip
```lua
string|nil
```


#### Field: goodsValue
```lua
number|nil
```


#### Field: id
```lua
any
```
TODO:

#### Field: isFree
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


#### Field: name
```lua
string|nil
```


#### Field: owner
```lua
string|nil
```


#### Field: permission
```lua
1|2|3|4|5...(+2)
```


#### Field: progress
```lua
DoodadProgress|nil
```


#### Field: ptype
```lua
any
```
TODO:

#### Field: timeLabel
```lua
string|nil
```


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
1|2|3|4|5
```
Taken from db ui_esc_menu_categories

#### Field: iconKey
```lua
""|"achievement"|"auction"|"bag"|"butler"...(+26)
```
game/ui/common/esc_menu.g

#### Field: name
```lua
string
```


#### Field: uiContentType
```lua
`UIC_ABILITY_CHANGE`|`UIC_ACHIEVEMENT`|`UIC_ACTABILITY`|`UIC_ADDON`|`UIC_APPELLATION`...(+118)
```
api/Addon

### Class: EscMenuButtonData
#### Field: h
```lua
number
```
25

#### Field: path
```lua
string
```
Addon/{addonname}/example.dds

#### Field: w
```lua
number
```
25

#### Field: x
```lua
number|nil
```


#### Field: y
```lua
number|nil
```


### Class: EvolvingInfo
#### Field: evolveChance
```lua
number
```


#### Field: minExp
```lua
number
```


#### Field: minSectionExp
```lua
number
```


#### Field: modifier
```lua
EvolvingInfoModifier[]
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


#### Field: heirLevel
```lua
number
```


#### Field: level
```lua
number
```


#### Field: memo
```lua
string
```


#### Field: month
```lua
number
```


#### Field: name
```lua
string
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
api/Addon

### Class: FactionPointInfo
#### Field: factionId
```lua
`HARIHARA_FACTION_ID`|`MONSTER_FACTION_ID`|`NUIA_FACTION_ID`|`OUTLAW_FACTION_ID`|`PC_IN_ALL_FACTION_ID`
```
api/Addon

#### Field: point
```lua
number
```


### Class: FontSizeList
#### Field: cinema
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


#### Field: middle
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


#### Field: xxlarge
```lua
number
```


### Class: FrameInfo
#### Field: alpha
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
This can add multiple LINEAR_ANIMATION_TYPE

#### Field: h
```lua
number|nil
```


#### Field: moveX
```lua
number|nil
```


#### Field: moveY
```lua
number|nil
```


#### Field: scale
```lua
number|nil
```


#### Field: showTime
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


#### Field: y
```lua
number|nil
```


### Class: FriendInfo
#### Field: [10]
```lua
number|nil
```
CHK

#### Field: [1]
```lua
string
```
Name

#### Field: [2]
```lua
number
```
Basic Level

#### Field: [3]
```lua
UnitClass
```
Class

#### Field: [4]
```lua
Time
```
Last login

#### Field: [5]
```lua
`RACE_DARU`|`RACE_DWARF`|`RACE_ELF`|`RACE_FAIRY`|`RACE_FERRE`...(+5)
```
api/X2Unit

#### Field: [6]
```lua
boolean
```
Online

#### Field: [7]
```lua
boolean
```
Party

#### Field: [8]
```lua
number
```
Ancestral Level = 40,

#### Field: [9]
```lua
number
```
Faction

### Class: GachaLootPackItemLog
#### Field: itemGrade
```lua
0|1|10|11|12...(+8)
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
0|1|10|11|12...(+8)
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
Gold

#### Field: [2]
```lua
GachaLootPackItemLog
```
Item

### Class: GachaLootPackResult
#### Field: [1]
```lua
GachaLootPackItemResult
```
Gold

#### Field: [2]
```lua
GachaLootPackItemResult
```
Item

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
Dungeon

#### Field: [2]
```lua
number
```
War

#### Field: [3]
```lua
number
```
Naval Battles

#### Field: [4]
```lua
number
```
Raid

#### Field: [5]
```lua
number
```
Adventure

#### Field: [6]
```lua
number
```
Crafting

### Class: GuildRecruitmentInfo
#### Field: apply
```lua
boolean
```


#### Field: expeditionId
```lua
number
```


#### Field: expedition_level
```lua
number
```


#### Field: expedition_name
```lua
string
```


#### Field: interests
```lua
GuildInterests
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
Full

#### Field: remainTime
```lua
number
```


### Class: InsetData
#### Field: [1]
```lua
number|nil
```
Left

#### Field: [2]
```lua
number|nil
```
Top

#### Field: [3]
```lua
number|nil
```
Bottom

#### Field: [4]
```lua
number|nil
```
Right

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


#### Field: killerCorps
```lua
string
```


#### Field: killerCorpsKill
```lua
number
```


#### Field: killerKillstreak
```lua
number
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


#### Field: victimCorpsDeath
```lua
number
```


### Class: InvalidLinkInfo
#### Field: filter
```lua
number
```


#### Field: isOtherWorld
```lua
boolean
```


#### Field: linkType
```lua
"invalid"
```


#### Field: messageTimeStamp
```lua
number
```


### Class: ItemData
#### Field: child
```lua
ItemTree[]|nil
```


#### Field: color
```lua
RGBAColor|nil
```
Requires `useColor = true`.

#### Field: defaultColor
```lua
RGBAColor|nil
```
Requires `useColor = true`.

#### Field: disableColor
```lua
RGBAColor|nil
```
Requires `useColor = true`.

#### Field: enable
```lua
boolean|nil
```
`true` to enable, `false` to disable. (default: `true`)

#### Field: iconPath
```lua
string|nil
```


#### Field: indexing
```lua
number[]
```
{ parentIndex[, childIndex...] } (min: `0`)

#### Field: infoKey
```lua
string|nil
```


#### Field: opened
```lua
boolean|nil
```
(default: `false`)

#### Field: overColor
```lua
RGBAColor|nil
```
Requires `useColor = true`.

#### Field: selectColor
```lua
RGBAColor|nil
```
Requires `useColor = true`.

#### Field: subColor
```lua
RGBAColor|nil
```


#### Field: subtext
```lua
string|nil
```


#### Field: tailIconCoord
```lua
string|nil
```


#### Field: tailIconPath
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
if `true` defaultColor, selectColor, overColor, disableColor, and color need to all be set or they will be invisible.

#### Field: value
```lua
number|nil
```


### Class: ItemInfo
#### Field: DPS
```lua
number
```


#### Field: armor
```lua
number
```


#### Field: armorType
```lua
string
```


#### Field: attackDelay
```lua
number
```


#### Field: auction_only
```lua
boolean
```


#### Field: backpackType
```lua
number
```


#### Field: baseEquipment
```lua
boolean
```


#### Field: buffType
```lua
number
```


#### Field: canEvolve
```lua
boolean
```


#### Field: category
```lua
string
```


#### Field: checkUnitReq
```lua
boolean
```


#### Field: contributionPointPrice
```lua
number
```


#### Field: convertibleItem
```lua
boolean
```


#### Field: cost
```lua
number
```


#### Field: craftType
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


#### Field: dead
```lua
boolean
```


#### Field: description
```lua
string
```


#### Field: durability
```lua
number
```


#### Field: element
```lua
string
```


#### Field: elementName
```lua
string
```


#### Field: equipSetInfo
```lua
EquipSetInfo
```


#### Field: equiped
```lua
boolean
```


#### Field: equippedSetItemCount
```lua
number
```


#### Field: evolvingCategory
```lua
boolean
```


#### Field: evolvingInfo
```lua
EvolvingInfo
```


#### Field: extraArmor
```lua
number
```


#### Field: extraDPS
```lua
number
```


#### Field: gearScore
```lua
GearScoreItemInfo
```


#### Field: gemInfo
```lua
number
```


#### Field: gemModifireTable
```lua
ModifireTable[]
```


#### Field: gender
```lua
string
```


#### Field: grade
```lua
string
```


#### Field: gradeColor
```lua
string
```


#### Field: gradeEnchantable
```lua
boolean
```


#### Field: gradeIcon
```lua
string
```


#### Field: healDps
```lua
number
```


#### Field: honorPrice
```lua
number
```


#### Field: icon
```lua
string
```


#### Field: indestructible
```lua
boolean
```


#### Field: isEnchantDisable
```lua
boolean
```


#### Field: isMaterial
```lua
boolean
```


#### Field: isMyWorld
```lua
boolean
```


#### Field: isPetOnly
```lua
boolean
```


#### Field: isStackable
```lua
boolean
```


#### Field: isUnderWaterCreature
```lua
boolean
```


#### Field: itemGrade
```lua
number
```


#### Field: itemType
```lua
number
```


#### Field: itemUsage
```lua
string
```


#### Field: item_flag_cannot_equip
```lua
boolean
```


#### Field: item_impl
```lua
"accessory"|"armor"|"butler_armor"|"enchanting_gem"|"itemGrade"...(+11)
```


#### Field: level
```lua
number
```


#### Field: level_limit
```lua
number
```


#### Field: level_requirement
```lua
number
```


#### Field: lifeSpan
```lua
number
```


#### Field: lifeSpanDayOfWeek
```lua
boolean
```


#### Field: lifeSpanType
```lua
string
```


#### Field: linkKind
```lua
"auciton"|"coffer"|"guildBank"|nil
```


#### Field: livingPointPrice
```lua
number
```


#### Field: location_world_name
```lua
string
```


#### Field: location_zone_name
```lua
string
```


#### Field: locked
```lua
boolean
```


#### Field: lookChanged
```lua
boolean
```


#### Field: lookType
```lua
number
```


#### Field: magicDps
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


#### Field: maxDurability
```lua
number
```


#### Field: maxSetItemCount
```lua
number
```


#### Field: maxStack
```lua
number
```


#### Field: minDamage
```lua
number
```


#### Field: modifier
```lua
ModifireTable[]
```


#### Field: moveSpeed
```lua
number
```


#### Field: name
```lua
string
```


#### Field: needsUnpack
```lua
boolean
```


#### Field: overIcon
```lua
string
```


#### Field: processedState
```lua
string
```


#### Field: rechargeBuff
```lua
RechargeBuffInfo
```


#### Field: refund
```lua
number
```


#### Field: repairable
```lua
number
```


#### Field: requiredCondition
```lua
RequiredConditionInfo
```


#### Field: scalable
```lua
boolean
```


#### Field: securityState
```lua
`ITEM_SECURITY_INVALID`|`ITEM_SECURITY_LOCKED`|`ITEM_SECURITY_UNLOCKED`|`ITEM_SECURITY_UNLOCKING`
```
api/X2Item

#### Field: sellable
```lua
boolean
```


#### Field: setItems
```lua
SetItemsInfo[]
```


#### Field: sideEffect
```lua
boolean
```


#### Field: skillType
```lua
number
```


#### Field: slotType
```lua
string
```


#### Field: slotTypeNum
```lua
number
```


#### Field: socketInfo
```lua
SocketInfo
```


#### Field: soul_bind
```lua
string
```


#### Field: soul_bind_type
```lua
number
```


#### Field: soul_bound
```lua
number
```


#### Field: stack
```lua
number
```


#### Field: uccTooltip
```lua
string
```


#### Field: useAsSkin
```lua
boolean
```


#### Field: useAsStat
```lua
boolean
```


#### Field: useConsumeItem
```lua
boolean
```


#### Field: wear
```lua
boolean
```


### Class: ItemLinkInfo
#### Field: filter
```lua
number
```


#### Field: isOtherWorld
```lua
boolean
```


#### Field: itemGrade
```lua
0|1|10|11|12...(+8)
```


#### Field: itemLinkText
```lua
string
```


#### Field: linkKind
```lua
1|2|3
```


#### Field: linkType
```lua
"item"
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


#### Field: color
```lua
RGBAColor|nil
```
Requires `useColor = true`.

#### Field: defaultColor
```lua
RGBAColor|nil
```
Requires `useColor = true`.

#### Field: disableColor
```lua
RGBAColor|nil
```
Requires `useColor = true`.

#### Field: enable
```lua
boolean|nil
```
`true` to enable, `false` to disable. (default: `true`)

#### Field: iconPath
```lua
string|nil
```


#### Field: infoKey
```lua
string|nil
```


#### Field: opened
```lua
boolean|nil
```
(default: `false`)

#### Field: overColor
```lua
RGBAColor|nil
```
Requires `useColor = true`.

#### Field: selectColor
```lua
RGBAColor|nil
```
Requires `useColor = true`.

#### Field: subColor
```lua
RGBAColor|nil
```


#### Field: subtext
```lua
string|nil
```


#### Field: tailIconCoord
```lua
string|nil
```


#### Field: tailIconPath
```lua
string|nil
```


#### Field: text
```lua
string
```


#### Field: useColor
```lua
boolean|nil
```
if `true` defaultColor, selectColor, overColor, disableColor, and color need to all be set or they will be invisible.

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
{ parentIndex[, childIndex...] } (min: `0`)

#### Field: opened
```lua
boolean
```


#### Field: text
```lua
string
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


#### Field: killerKillStreak
```lua
number
```


#### Field: killerName
```lua
string
```


#### Field: param1
```lua
number
```


#### Field: param2
```lua
number
```
threeKillCount

#### Field: victimName
```lua
number
```


### Class: ListCtrlItem
#### Method: AddAnchor
```lua
(method) Uibounds:AddAnchor(anchor: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), x: number, y: number)
```
Aligns the UI bounds to the specified anchor point at the given coordinates.

**Although this variant implicitly uses the parent of the current object,
`AddAnchor(anchor, parentId, x, y)` is usually recommended** because it makes
the anchor relationship explicit and much easier for future readers to
understand which object this UI element is actually anchored to.

@*param* `anchor` — Sets both the anchor point and anchor origin. (default: `"TOPLEFT"`)

@*param* `x` — The x-coordinate offset. (default: `0`)

@*param* `y` — The y-coordinate offset. (default: `0`)

```lua
-- ○ = Anchor Point
-- ● = Anchor Origin (X,Y) ──► +X (right)
-- │      ●──────┐
-- ▼ +Y   │ obj1 │  Aligns obj1 TOPLEFT to the parent obj TOPLEFT at the offset of (0,0).
-- (down) └──────┘
obj1:AddAnchor("TOPLEFT", 0, 0)
```

```lua
anchor:
    | "TOPLEFT"
    | "TOP"
    | "TOPRIGHT"
    | "LEFT"
    | "CENTER"
    | "RIGHT"
    | "BOTTOMLEFT"
    | "BOTTOM"
    | "BOTTOMRIGHT"
```

#### Method: AddAnchor
```lua
(method) Uibounds:AddAnchor(anchor: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), parentId: "UIParent"|Drawablebase|Widget, x: number, y: number)
```
Aligns the UI bounds to the specified anchor point at the given coordinates.

@*param* `anchor` — Sets both the anchor point and anchor origin. (default: `"TOPLEFT"`)

@*param* `parentId` — The parent widget or UIParent.

@*param* `x` — The x-coordinate offset. (default: `0`)

@*param* `y` — The y-coordinate offset. (default: `0`)

```lua
-- ○ = Anchor Point
-- ● = Anchor Origin (X,Y) ──► +X (right)
-- │      ●──────┐
-- ▼ +Y   │ obj2 │  Aligns obj2 TOPLEFT to obj1 TOPLEFT at the offset of (0,0).
-- (down) └──────┘
obj2:AddAnchor("TOPLEFT", obj1, 0, 0)
```

```lua
anchor:
    | "TOPLEFT"
    | "TOP"
    | "TOPRIGHT"
    | "LEFT"
    | "CENTER"
    | "RIGHT"
    | "BOTTOMLEFT"
    | "BOTTOM"
    | "BOTTOMRIGHT"

parentId:
    | "UIParent"
```

See:
  * [Widget](../types/Widget.md#class-widget)
  * [Drawablebase](../types/Drawablebase.md#class-drawablebase)

#### Method: AddAnchor
```lua
(method) Uibounds:AddAnchor(anchorPoint: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), parentId: "UIParent"|Drawablebase|Widget, anchorOrigin: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), x: number, y: number)
```
Aligns the UI bounds' anchor point to the specified parent and origin at the
given coordinates.

@*param* `anchorPoint` — The anchor point of the UI bounds. (default: `"TOPLEFT"`)

@*param* `parentId` — The parent widget or UIParent.

@*param* `anchorOrigin` — The anchor origin on the parent. (default: `"TOPLEFT"`)

@*param* `x` — The x-coordinate offset. (default: `0`)

@*param* `y` — The y-coordinate offset. (default: `0`)

```lua
-- ○ = Anchor Point
-- ● = Anchor Origin (X,Y) ──► +X (right)
-- │      ┌──────┐
-- ▼ +Y   │ obj1 │ Aligns obj2 TOPLEFT to obj1 BOTTOMRIGHT at the offset of (0,0).
-- (down) └──────●○──────┐
--                │ obj2 │
--                └──────┘
obj2:AddAnchor("TOPLEFT", obj1, "BOTTOMRIGHT", 0, 0)
```

```lua
anchorPoint:
    | "TOPLEFT"
    | "TOP"
    | "TOPRIGHT"
    | "LEFT"
    | "CENTER"
    | "RIGHT"
    | "BOTTOMLEFT"
    | "BOTTOM"
    | "BOTTOMRIGHT"

parentId:
    | "UIParent"

anchorOrigin:
    | "TOPLEFT"
    | "TOP"
    | "TOPRIGHT"
    | "LEFT"
    | "CENTER"
    | "RIGHT"
    | "BOTTOMLEFT"
    | "BOTTOM"
    | "BOTTOMRIGHT"
```

See:
  * [Widget](../types/Widget.md#class-widget)
  * [Drawablebase](../types/Drawablebase.md#class-drawablebase)

#### Method: ApplyUIScale
```lua
(method) Widget:ApplyUIScale(apply: boolean)
```
Applies or removes UI scaling for the Widget.

@*param* `apply` — `true` to apply UI scale, `false` to remove. (default: `true`)

#### Method: AttachWidget
```lua
(method) Widget:AttachWidget(widget: Widget)
```
Attaches a widget to the current Widget.

@*param* `widget` — The widget to attach.

#### Method: BindWidth
```lua
(method) Uibounds:BindWidth(width: number)
```
Binds the width of the UI bounds.

@*param* `width` — The width to bind.

#### Method: CancelRequestCharacterCacheData
```lua
(method) Widget:CancelRequestCharacterCacheData()
```
Cancels the request for character cache data.

#### Method: ChangeChildAnchorByScrollValue
```lua
(method) Widget:ChangeChildAnchorByScrollValue(typeStr: "horz"|"vert", value: number)
```
Changes the child anchor based on scroll value for the specified direction.

@*param* `typeStr` — The scroll direction (horizontal or vertical).

@*param* `value` — The scroll value.

```lua
typeStr:
    | "horz"
    | "vert"
```

#### Method: CheckOutOfScreen
```lua
(method) Uibounds:CheckOutOfScreen()
  -> outsideOfScreen: boolean
```
Checks if the UI bounds is outside the screen.

@*return* `outsideOfScreen` — `true` if the UI bounds is outside the screen, `false` otherwise.

#### Method: Clickable
```lua
(method) Widget:Clickable(clickable: boolean)
```
Enables or disables clickability for the Widget. (default: `true`)

@*param* `clickable` — `true` to enable clicking, `false` to disable.

#### Method: CorrectOffsetByScreen
```lua
(method) Uibounds:CorrectOffsetByScreen()
  -> offX: number
  2. offY: number
```
Retrieves the offset coordinates of the UI bounds, constrained by screen
dimensions.

@*return* `offX` — The x-offset (min: `0`, max: `screen width - effective width`).

@*return* `offY` — The y-offset (min: `0`, max: `screen height - effective height`).

#### Method: CreateChildWidget
```lua
(method) Widget:CreateChildWidget(objectTypeStr: "avi"|"button"|"chatwindow"|"checkbutton"|"circlediagram"...(+35), name: string, index: number, reflectToScriptTable: boolean)
  -> widget: <T>
```
Creates and returns a child widget, attaching it as a property to the Widget,
and gives the widget a draw priority z-index.

@*param* `objectTypeStr` — The type of widget to create.

@*param* `name` — The name of the widget.

@*param* `index` — The index of the widget, `0` sets `widget.name` whereas any number above `0` sets `widget.name[index]`.

@*param* `reflectToScriptTable` — Whether to attach the widget to the script table under its `name`.

@*return* `widget` — The created child widget, empty table if the widget hasn't been imported, or `nil` if creation fails.

```lua
local button = widget:CreateChildWidget("button", "exampleButton", 0, true)
---widget.exampleButton This is automatically set by this method.
```

```lua
objectTypeStr:
    | "avi"
    | "button"
    | "chatwindow"
    | "checkbutton"
    | "circlediagram"
    | "colorpicker"
    | "combobox"
    | "cooldownbutton"
    | "cooldownconstantbutton"
    | "cooldowninventorybutton"
    | "damagedisplay"
    | "dynamiclist"
    | "editbox"
    | "editboxmultiline"
    | "emptywidget"
    | "folder"
    | "gametooltip"
    | "grid"
    | "label"
    | "line"
    | "listbox"
    | "listctrl"
    | "megaphonechatedit"
    | "message"
    | "modelview"
    | "pageable"
    | "paintcolorpicker"
    | "radiogroup"
    | "roadmap"
    | "slider"
    | "slot"
    | "statusbar"
    | "tab"
    | "textbox"
    | "unitframetooltip"
    | "webbrowser"
    | "window"
    | "worldmap"
    | "x2editbox"
```

See: [Widget](../types/Widget.md#class-widget)

#### Method: CreateChildWidgetByType
```lua
(method) Widget:CreateChildWidgetByType(objectType: 0|1|10|11|12...(+51), name: string, index: number, reflectToScriptTable: boolean)
  -> widget: Widget
```
Creates and returns a child widget by type and gives the widget a draw priority z-index.

@*param* `objectType` — The type of widget to create.

@*param* `name` — The name of the widget.

@*param* `index` — The index of the widget.

@*param* `reflectToScriptTable` — Whether to attach the widget to the script table.

@*return* `widget` — The created child widget, empty table if the widget hasn't been imported, or `nil` if creation fails.

```lua
local button = widget:CreateChildWidgetByType(OBJECT.Button, "exampleButton", 0, true)
---widget.exampleButton This is automatically set by this method.
```

---

```lua
objectType:
    | 0 -- Window
    | 1 -- Label
    | 2 -- Button
    | 3 -- Editbox
    | 4 -- EditboxMultiline
    | 5 -- Listbox
    | 6 -- Drawable
    | 7 -- ColorDrawable
    | 8 -- NinePartDrawable
    | 9 -- ThreePartDrawable
    | 10 -- ImageDrawable
    | 11 -- IconDrawable
    | 12 -- TextDrawable
    | 13 -- TextStyle
    | 14 -- ThreeColorDrawable
    | 15 -- EffectDrawable
    | 16 -- Message
    | 17 -- StatusBar
    | 18 -- GameTooltip
    | 19 -- UnitframeTooltip
    | 20 -- CooldownButton
    | 21 -- CooldownInventoryButton
    | 22 -- CooldownConstantButton
    | 23 -- CheckButton
    | 24 -- Slider
    | 25 -- Pageable
    | 26 -- WorldMap
    | 27 -- RoadMap
    | 28 -- Grid
    | 29 -- ModelView
    | 30 -- Webbrowser
    | 31 -- CircleDiagram
    | 32 -- ColorPicker
    | 33 -- PaintColorPicker
    | 34 -- Folder
    | 35 -- DamageDisplay
    | 36 -- Tab
    | 37 -- SliderTab
    | 38 -- ChatWindow
    | 39 -- Textbox
    | 40 -- Combobox
    | 41 -- ComboListButton
    | 42 -- ChatMessage
    | 43 -- ChatEdit
    | 44 -- MegaphoneChatEdit
    | 45 -- ListCtrl
    | 46 -- EmptyWidget
    | 47 -- Slot
    | 48 -- Line
    | 49 -- Root
    | 50 -- TextureDrawable
    | 51 -- Webview
    | 52 -- Avi
    | 53 -- X2Editbox
    | 54 -- DynamicList
    | 55 -- RadioGroup
```

See: [Widget](../types/Widget.md#class-widget)

#### Method: CreateColorDrawable
```lua
(method) Widget:CreateColorDrawable(r: number, g: number, b: number, a: number, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: ColorDrawable
```
**Requires `ADDON:ImportObject(OBJECT.ColorDrawable)`**

Creates a color drawable for the specified layer.

@*param* `r` — Red value (min: `0`, max: `1`).

@*param* `g` — Green value (min: `0`, max: `1`).

@*param* `b` — Blue value (min: `0`, max: `1`).

@*param* `a` — Alpha value (min: `0`, max: `1`).

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created color drawable, or an empty table if the object `ColorDrawable` hasn't been imported.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [ColorDrawable](../objects/ColorDrawable.md#class-colordrawable)

#### Method: CreateColorDrawableByKey
```lua
(method) Widget:CreateColorDrawableByKey(colorKey: "action_slot_state_img_able"|"action_slot_state_img_can_learn"|"action_slot_state_img_cant_or_not_learn"|"action_slot_state_img_disable"|"common_black_bg"...(+27), nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: ColorDrawable
```
**Requires `ADDON:ImportObject(OBJECT.ColorDrawable)`**

Creates a color drawable using a color key for the specified layer.

@*param* `colorKey` — The color key to use.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created color drawable, or an empty table if the object `ColorDrawable` hasn't been imported.

```lua
-- game/ui/setting/etc_color.g
colorKey:
    | "action_slot_state_img_able"
    | "action_slot_state_img_can_learn"
    | "action_slot_state_img_cant_or_not_learn"
    | "action_slot_state_img_disable"
    | "common_black_bg"
    | "common_white_bg"
    | "craft_step_disable"
    | "craft_step_enable"
    | "editbox_cursor_default"
    | "editbox_cursor_light"
    | "icon_button_overlay_black"
    | "icon_button_overlay_none"
    | "icon_button_overlay_red"
    | "icon_button_overlay_yellow"
    | "login_stage_black_bg"
    | "map_hp_bar_bg"
    | "map_hp_bar"
    | "market_price_column_over"
    | "market_price_last_column"
    | "market_price_line_daily"
    | "market_price_line_weekly"
    | "market_price_volume"
    | "market_prict_cell"
    | "quest_content_directing_fade_in"
    | "quest_content_directing_fade_out"
    | "quest_content_directing_under_panel"
    | "quick_slot_bg"
    | "texture_check_window_bg"
    | "texture_check_window_data_label"
    | "texture_check_window_rect"
    | "texture_check_window_tooltip_bg"
    | "web_browser_background"

-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [ColorDrawable](../objects/ColorDrawable.md#class-colordrawable)

#### Method: CreateDrawable
```lua
(method) Widget:CreateDrawable(texturePath: string, textureKey: string, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: DrawableDDS
```
**Requires `ADDON:ImportObject(OBJECT.{drawableType})`**

Creates a drawable from the specified texture path and key. The key's `type`
will define what `drawableType` object needs to be imported. Casting the
return to the appropriate type may be neccessary.

@*param* `texturePath` — The texture path.

@*param* `textureKey` — The texture key taken from the `path` `*.g` file.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created drawable, or an empty table if the object `DrawableDDS` hasn't been imported.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: CreateEffectDrawable
```lua
(method) Widget:CreateEffectDrawable(texturePath: string, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: EffectDrawable|nil
```
**Requires `ADDON:ImportObject(OBJECT.EffectDrawable)`**

Creates an effect drawable for the specified texture and layer.

@*param* `texturePath` — The texture name.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created effect drawable, an empty table if the object `EffectDrawable` hasn't been imported, or `nil` if the texture doesn't exist.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [EffectDrawable](../objects/EffectDrawable.md#class-effectdrawable)

#### Method: CreateEffectDrawableByKey
```lua
(method) Widget:CreateEffectDrawableByKey(texturePath: string, textureKey: string, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: EffectDrawable
```
**Requires `ADDON:ImportObject(OBJECT.EffectDrawable)`**

Creates an effect drawable using a key for the specified texture and layer.

@*param* `texturePath` — The texture name.

@*param* `textureKey` — The texture key.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created effect drawable, or an empty table if the object `EffectDrawable` hasn't been imported.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [EffectDrawable](../objects/EffectDrawable.md#class-effectdrawable)

#### Method: CreateIconDrawable
```lua
(method) Widget:CreateIconDrawable(nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: IconDrawable
```
**Requires `ADDON:ImportObject(OBJECT.IconDrawable)`**

Creates an icon drawable for the specified layer.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created icon drawable, or an empty table if the object `IconDrawable` hasn't been imported.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [IconDrawable](../objects/IconDrawable.md#class-icondrawable)

#### Method: CreateImageDrawable
```lua
(method) Widget:CreateImageDrawable(texturePath: string, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: ImageDrawable|nil
```
***Requires `ADDON:ImportObject(OBJECT.ImageDrawable)`**

Creates an image drawable for the specified texture and layer. Addon images
can be used `Addon/{addonname}/example.dds`

@*param* `texturePath` — The texture path.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created image drawable, an empty table if the object `ImageDrawable` hasn't been imported, or `nil` if the texture doesn't exist.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [ImageDrawable](../objects/ImageDrawable.md#class-imagedrawable)

#### Method: CreateNinePartDrawable
```lua
(method) Widget:CreateNinePartDrawable(texturePath: string, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: NinePartDrawable
```
**Requires `ADDON:ImportObject(OBJECT.NinePartDrawable)`**

Creates a nine-part drawable for the specified texture and layer.

@*param* `texturePath` — The texture path.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created nine-part drawable, or an empty table if the object `NinePartDrawable` hasn't been imported.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [NinePartDrawable](../objects/NinePartDrawable.md#class-ninepartdrawable)

#### Method: CreateTextDrawable
```lua
(method) Widget:CreateTextDrawable(fontPath: "font_combat"|"font_main"|"font_sub", fontSize: number, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: TextDrawable
```
**Requires `ADDON:ImportObject(OBJECT.TextDrawable)`**

Creates a text drawable for the specified font and size.

@*param* `fontPath` — The font path.

@*param* `fontSize` — The font size.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created text drawable, or an empty table if the object `TextDrawable` hasn't been imported.

```lua
fontPath:
    | "font_main"
    | "font_sub"
    | "font_combat"

-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [TextDrawable](../objects/TextDrawable.md#class-textdrawable)

#### Method: CreateThreeColorDrawable
```lua
(method) Widget:CreateThreeColorDrawable(width: number, height: number, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: ThreeColorDrawable
```
**Requires `ADDON:ImportObject(OBJECT.ThreeColorDrawable)`**

Creates a three-color drawable for the specified dimensions and layer.

@*param* `width` — The width of the drawable.

@*param* `height` — The height of the drawable.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created three-color drawable, or an empty table if the object `ThreeColorDrawable` hasn't been imported.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [ThreeColorDrawable](../objects/ThreeColorDrawable.md#class-threecolordrawable)

#### Method: CreateThreePartDrawable
```lua
(method) Widget:CreateThreePartDrawable(texturePath: string, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: ThreePartDrawable
```
**Requires `ADDON:ImportObject(OBJECT.ThreePartDrawable)`**

Creates a three-part drawable for the specified texture and layer.

@*param* `texturePath` — The texture path.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created three-part drawable, or an empty table if the object `ThreePartDrawable` hasn't been imported.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [ThreePartDrawable](../objects/ThreePartDrawable.md#class-threepartdrawable)

#### Method: DetachWidget
```lua
(method) Widget:DetachWidget()
```
Detaches the Widget from its parent.

#### Method: DisableDrawables
```lua
(method) Widget:DisableDrawables(nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
```
Disables drawables for the specified layer.

@*param* `nameLayer` — The layer to disable.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: DisableDrawablesWithChildren
```lua
(method) Widget:DisableDrawablesWithChildren(nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
```
Disables drawables for the specified layer and its children.

@*param* `nameLayer` — The layer to disable.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: Enable
```lua
(method) Widget:Enable(enable: boolean)
```
Enables or disables the Widget and its handler actions `"OnClick"`.

@*param* `enable` — `true` to enable, `false` to disable. (default: `true`)

#### Method: EnableDrag
```lua
(method) Widget:EnableDrag(enable: boolean)
```
Enables or disables the Widget handler actions `"OnDragStart"` and `"OnDragStop"`.

@*param* `enable` — `true` to enable dragging, `false` to disable. (default: `false`)

#### Method: EnableDrawables
```lua
(method) Widget:EnableDrawables(nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
```
Enables drawables for the specified layer.

@*param* `nameLayer` — The layer to enable.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: EnableDrawablesWithChildren
```lua
(method) Widget:EnableDrawablesWithChildren(nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
```
Enables drawables for the specified layer and its children.

@*param* `nameLayer` — The layer to enable.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: EnableFocus
```lua
(method) Widget:EnableFocus(enable: boolean)
```
Enables or disables focus for the Widget.

@*param* `enable` — `true` to enable focus, `false` to disable.

#### Method: EnableHidingIsRemove
```lua
(method) Widget:EnableHidingIsRemove(enable: boolean)
```
Enables or disables `Widget:SetDeletedHandler` and when the widget is hidden
fires that event and then removes the Widget from the Widget Pool but doesn't remove all references.

@*param* `enable` — `true` to enable removal on hide, `false` to disable. (default: `false`)

#### Method: EnableKeyboard
```lua
(method) Widget:EnableKeyboard(enable: boolean)
```
Enables or disables the Widget handler actions `"OnKeyUp"` and `"OnKeyDown"`.

@*param* `enable` — `true` to enable keyboard input, `false` to disable.

#### Method: EnablePick
```lua
(method) Widget:EnablePick(enable: boolean)
```
Enables or disables the Widget handler action `"OnClick"`.

@*param* `enable` — `true` to enable picking, `false` to disable. (default: `true`)

#### Method: EnableScroll
```lua
(method) Widget:EnableScroll(enable: boolean)
```
Enables or disables scrolling for the Widget. Children widgets outside of the
parent widget will not render.

@*param* `enable` — `true` to enable scrolling, `false` to disable.

#### Method: GetAlpha
```lua
(method) Widget:GetAlpha()
  -> alpha: number
```
Retrieves the alpha value of the Widget.

@*return* `alpha` — The alpha value (min: `0`, max: `1`).

#### Method: GetAttachedWidget
```lua
(method) Widget:GetAttachedWidget()
  -> attachedWidget: Widget|nil
```
Retrieves the last attached widget of the Widget. Casting the return to the
appropriate type may be neccessary.

@*return* `attachedWidget` — The attached widget, or `nil` if none.

See: [Widget](../types/Widget.md#class-widget)

#### Method: GetEffectiveExtent
```lua
(method) Uibounds:GetEffectiveExtent()
  -> effectiveWidth: number
  2. effectiveHeight: number
```
Retrieves the effective width and height of the UI bounds, scaled if
ApplyUIScale is true.

@*return* `effectiveWidth` — The effective width.

@*return* `effectiveHeight` — The effective height.

#### Method: GetEffectiveOffset
```lua
(method) Uibounds:GetEffectiveOffset()
  -> effectiveOffX: number
  2. effectiveOffY: number
```
Retrieves the effective offset (left, top) of the UI bounds.

@*return* `effectiveOffX` — The effective x-offset.

@*return* `effectiveOffY` — The effective y-offset.

#### Method: GetExtent
```lua
(method) Uibounds:GetExtent()
  -> width: number
  2. height: number
```
Retrieves the unscaled width and height of the UI bounds.

@*return* `width` — The unscaled width.

@*return* `height` — The unscaled height.

#### Method: GetHeight
```lua
(method) Uibounds:GetHeight()
  -> height: number
```
Retrieves the unscaled height of the UI bounds.

@*return* `height` — The unscaled height.

#### Method: GetId
```lua
(method) Uiobject:GetId()
  -> id: string
```
Retrieves the ID of the UI object.

@*return* `id` — The UI object's ID.

#### Method: GetName
```lua
(method) Uiobject:GetName()
  -> name: string
```
Retrieves the name of the UI object.

#### Method: GetObjectType
```lua
(method) Uiobject:GetObjectType()
  -> objectType: "avi"|"button"|"chatwindow"|"checkbutton"|"circlediagram"...(+34)
```
Retrieves the object type of the UI object.

@*return* `objectType` — The UI object's type.

```lua
objectType:
    | "avi"
    | "button"
    | "chatwindow"
    | "checkbutton"
    | "circlediagram"
    | "colorpicker"
    | "combobox"
    | "cooldownbutton"
    | "cooldownconstantbutton"
    | "cooldowninventorybutton"
    | "damagedisplay"
    | "dynamiclist"
    | "editbox"
    | "editboxmultiline"
    | "emptywidget"
    | "folder"
    | "gametooltip"
    | "grid"
    | "label"
    | "line"
    | "listbox"
    | "listctrl"
    | "megaphonechatedit"
    | "message"
    | "modelview"
    | "pageable"
    | "paintcolorpicker"
    | "radiogroup"
    | "roadmap"
    | "slider"
    | "slot"
    | "statusbar"
    | "tab"
    | "textbox"
    | "unitframetooltip"
    | "webbrowser"
    | "window"
    | "worldmap"
    | "x2editbox"
```

#### Method: GetOffset
```lua
(method) Uibounds:GetOffset()
  -> offX: number
  2. offY: number
```
Retrieves the UI scaled offset (right, center) of the UI bounds.

@*return* `offX` — The x-offset, scaled up by 1 / UI scale.

@*return* `offY` — The y-offset, scaled up by 1 / UI scale.

#### Method: GetParent
```lua
(method) Widget:GetParent()
  -> parentWidget: Widget
```
Retrieves the parent widget of the Widget. Returns the current widget if no
parent exists. Casting the return to the appropriate type may be neccessary.

@*return* `parentWidget` — The parent widget.

#### Method: GetRotation
```lua
(method) Widget:GetRotation()
  -> rotation: string|nil
```
Retrieves the rotation of the widget.

#### Method: GetText
```lua
(method) Widget:GetText()
  -> text: string
```
Retrieves the text of the Widget.

@*return* `text` — The text content.

#### Method: GetUILayer
```lua
(method) Widget:GetUILayer()
  -> uiLayer: "background"|"dialog"|"game"|"hud"|"normal"...(+3)
```
Retrieves the UI layer of the Widget.

@*return* `uiLayer` — The UI layer. (default: `"normal"`)

```lua
-- Widgets with layers of the same level and parent can overlap based on focus.
uiLayer:
    | "background" -- Layer 0 (invisible)
    | "game" -- Layer 1
   -> "normal" -- Layer 2 (default)
    | "hud" -- Layer 3
    | "questdirecting" -- Layer 4
    | "dialog" -- Layer 5
    | "tooltip" -- Layer 6
    | "system" -- Layer 7
```

#### Method: GetValue
```lua
(method) Widget:GetValue(typeStr: string)
  -> value: number
```
Retrieves the value for the specified type.

@*param* `typeStr` — The type to query.

@*return* `value` — The value associated with the type.

```lua
local value = widget:GetValue("state")
```

#### Method: GetWidth
```lua
(method) Uibounds:GetWidth()
  -> width: number
```
Retrieves the unscaled width of the UI bounds.

@*return* `width` — The unscaled width.

#### Method: HasHandler
```lua
(method) Widget:HasHandler(actionName: "OnAcceptFocus"|"OnAlphaAnimeEnd"|"OnBoundChanged"|"OnChangedAnchor"|"OnCheckChanged"...(+44))
  -> handlerExists: boolean
```
Checks if the Widget has a handler for the specified action.

@*param* `actionName` — The action name to check.

@*return* `handlerExists` — `true` if a handler exists, `false` otherwise.

```lua
actionName:
    | "OnAcceptFocus"
    | "OnAlphaAnimeEnd"
    | "OnBoundChanged"
    | "OnChangedAnchor"
    | "OnCheckChanged"
    | "OnClick"
    | "OnCloseByEsc"
    | "OnContentUpdated"
    | "OnCursorMoved"
    | "OnDragReceive"
    | "OnDragStart"
    | "OnDragStop"
    | "OnDynamicListUpdatedView"
    | "OnEffect"
    | "OnEnableChanged"
    | "OnEndFadeIn"
    | "OnEndFadeOut"
    | "OnEnter"
    | "OnEnterPressed"
    | "OnEscapePressed"
    | "OnEvent"
    | "OnHide"
    | "OnKeyDown"
    | "OnKeyUp"
    | "OnLeave"
    | "OnListboxToggled"
    | "OnModelChanged"
    | "OnMouseDown"
    | "OnMouseMove"
    | "OnMouseUp"
    | "OnMovedPosition"
    | "OnPageChanged"
    | "OnPermissionChanged"
    | "OnRadioChanged"
    | "OnRestricted"
    | "OnScale"
    | "OnScaleAnimeEnd"
    | "OnSelChanged"
    | "OnShow"
    | "OnSliderChanged"
    | "OnTabChanged"
    | "OnTextChanged"
    | "OnTooltip"
    | "OnUpdate"
    | "OnVisibleChanged"
    | "OnWheelDown"
    | "OnWheelUp"
    | "PreClick"
    | "PreUse"
```

#### Method: InheritAnimationData
```lua
(method) Widget:InheritAnimationData(widget: Widget)
```
Inherits animation data from the specified widget.

@*param* `widget` — The widget to inherit animation data from.

#### Method: IsDescendantWidget
```lua
(method) Widget:IsDescendantWidget(id: string)
  -> descendantWidget: boolean
```
Checks if the specified ID is a descendant of the Widget.

@*param* `id` — The ID to check.

@*return* `descendantWidget` — `true` if the ID is a descendant, `false` otherwise.

```lua
local button = widget:CreateChildWidget("button", "exampleButton", 0, true)
local descendantWidget = widget:IsDescendantWidget(button:GetId())
```

#### Method: IsEnabled
```lua
(method) Widget:IsEnabled()
  -> enabled: boolean
```
Checks if the Widget is enabled.

@*return* `enabled` — `true` if enabled, `false` otherwise.

#### Method: IsMouseOver
```lua
(method) Widget:IsMouseOver()
  -> mouseOver: boolean
```
Checks if the mouse is over the Widget.

@*return* `mouseOver` — `true` if the mouse is over, `false` otherwise.

#### Method: IsNowAnimation
```lua
(method) Widget:IsNowAnimation()
  -> nowAnimation: boolean
```
Checks if the Widget is currently animating.

@*return* `nowAnimation` — `true` if animating, `false` otherwise.

#### Method: IsValidUIObject
```lua
(method) Uiobject:IsValidUIObject()
  -> validUiobject: boolean
```
Checks if the UI object is still valid. A UI object can become invalid if it
has been removed from the games Widget Pool through
`Widget:EnableHidingIsRemove(true)`

@*return* `validUiobject` — `true` if the UI object is valid, `false` otherwise.

#### Method: IsVisible
```lua
(method) Widget:IsVisible()
  -> visible: boolean
```
Checks if the Widget is visible.

@*return* `visible` — `true` if visible, `false` otherwise.

#### Method: Lower
```lua
(method) Widget:Lower()
```
Lowers the Widget in the UI hierarchy.

#### Method: MoveTo
```lua
(method) Widget:MoveTo(x: number, y: number)
```
Moves the Widget to the specified coordinates from the TOPLEFT corner.

@*param* `x` — The x-coordinate.

@*param* `y` — The y-coordinate.

#### Method: Raise
```lua
(method) Widget:Raise()
```
Raises the Widget in the UI hierarchy.

#### Method: RegisterEvent
```lua
(method) Widget:RegisterEvent(eventName: "ABILITY_CHANGED"|"ABILITY_EXP_CHANGED"|"ABILITY_SET_CHANGED"|"ABILITY_SET_USABLE_SLOT_COUNT_CHANGED"|"ACCOUNT_ATTENDANCE_ADDED"...(+874))
```
Registers an event for the Widget to be accessible by the OnEvent handler
action.

@*param* `eventName` — The event to register.

```lua
eventName:
    | "ABILITY_CHANGED"
    | "ABILITY_EXP_CHANGED"
    | "ABILITY_SET_CHANGED"
    | "ABILITY_SET_USABLE_SLOT_COUNT_CHANGED"
    | "ACCOUNT_ATTENDANCE_ADDED"
    | "ACCOUNT_ATTENDANCE_LOADED"
    | "ACCOUNT_ATTRIBUTE_UPDATED"
    | "ACCOUNT_RESTRICT_NOTICE"
    | "ACHIEVEMENT_UPDATE"
    | "ACQUAINTANCE_LOGIN"
    | "ACTABILITY_EXPERT_CHANGED"
    | "ACTABILITY_EXPERT_EXPANDED"
    | "ACTABILITY_EXPERT_GRADE_CHANGED"
    | "ACTABILITY_MODIFIER_UPDATE"
    | "ACTABILITY_REFRESH_ALL"
    | "ACTION_BAR_AUTO_REGISTERED"
    | "ACTION_BAR_PAGE_CHANGED"
    | "ACTIONS_UPDATE"
    | "ADD_GIVEN_QUEST_INFO"
    | "ADD_NOTIFY_QUEST_INFO"
    | "ADDED_ITEM"
    | "ADDON_LOADED"
    | "AGGRO_METER_CLEARED"
    | "AGGRO_METER_UPDATED"
    | "ALL_SIEGE_RAID_TEAM_INFOS"
    | "ANTIBOT_PUNISH"
    | "APPELLATION_CHANGED"
    | "APPELLATION_GAINED"
    | "APPELLATION_STAMP_SET"
    | "ARCHE_PASS_BUY"
    | "ARCHE_PASS_COMPLETED"
    | "ARCHE_PASS_DROPPED"
    | "ARCHE_PASS_EXPIRED"
    | "ARCHE_PASS_LOADED"
    | "ARCHE_PASS_MISSION_CHANGED"
    | "ARCHE_PASS_MISSION_COMPLETED"
    | "ARCHE_PASS_OWNED"
    | "ARCHE_PASS_RESETED"
    | "ARCHE_PASS_STARTED"
    | "ARCHE_PASS_UPDATE_POINT"
    | "ARCHE_PASS_UPDATE_REWARD_ITEM"
    | "ARCHE_PASS_UPDATE_TIER"
    | "ARCHE_PASS_UPGRADE_PREMIUM"
    | "ASK_BUY_LABOR_POWER_POTION"
    | "ASK_FORCE_ATTACK"
    | "AUCTION_BIDDED"
    | "AUCTION_BIDDEN"
    | "AUCTION_BOUGHT"
    | "AUCTION_BOUGHT_BY_SOMEONE"
    | "AUCTION_CANCELED"
    | "AUCTION_CHARACTER_LEVEL_TOO_LOW"
    | "AUCTION_ITEM_ATTACHMENT_STATE_CHANGED"
    | "AUCTION_ITEM_PUT_UP"
    | "AUCTION_ITEM_SEARCH"
    | "AUCTION_ITEM_SEARCHED"
    | "AUCTION_LOWEST_PRICE"
    | "AUCTION_PERMISSION_BY_CRAFT"
    | "AUCTION_TOGGLE"
    | "AUDIENCE_JOINED"
    | "AUDIENCE_LEFT"
    | "BAD_USER_LIST_UPDATE"
    | "BADWORD_USER_REPORED_RESPONE_MSG"
    | "BAG_EXPANDED"
    | "BAG_ITEM_CONFIRMED"
    | "BAG_REAL_INDEX_SHOW"
    | "BAG_TAB_CREATED"
    | "BAG_TAB_REMOVED"
    | "BAG_TAB_SORTED"
    | "BAG_TAB_SWITCHED"
    | "BAG_UPDATE"
    | "BAN_PLAYER_RESULT"
    | "BANK_EXPANDED"
    | "BANK_REAL_INDEX_SHOW"
    | "BANK_TAB_CREATED"
    | "BANK_TAB_REMOVED"
    | "BANK_TAB_SORTED"
    | "BANK_TAB_SWITCHED"
    | "BANK_UPDATE"
    | "BEAUTYSHOP_CLOSE_BY_SYSTEM"
    | "BLESS_UTHSTIN_EXTEND_MAX_STATS"
    | "BLESS_UTHSTIN_ITEM_SLOT_CLEAR"
    | "BLESS_UTHSTIN_ITEM_SLOT_SET"
    | "BLESS_UTHSTIN_MESSAGE"
    | "BLESS_UTHSTIN_UPDATE_STATS"
    | "BLESS_UTHSTIN_WILL_APPLY_STATS"
    | "BLOCKED_USER_LIST"
    | "BLOCKED_USER_UPDATE"
    | "BLOCKED_USERS_INFO"
    | "BOT_SUSPECT_REPORTED"
    | "BUFF_SKILL_CHANGED"
    | "BUFF_UPDATE"
    | "BUILD_CONDITION"
    | "BUILDER_END"
    | "BUILDER_STEP"
    | "BUTLER_INFO_UPDATED"
    | "BUTLER_UI_COMMAND"
    | "BUY_RESULT_AA_POINT"
    | "BUY_SPECIALTY_CONTENT_INFO"
    | "CANCEL_CRAFT_ORDER"
    | "CANCEL_REBUILD_HOUSE_CAMERA_MODE"
    | "CANDIDATE_LIST_CHANGED"
    | "CANDIDATE_LIST_HIDE"
    | "CANDIDATE_LIST_SELECTION_CHANGED"
    | "CANDIDATE_LIST_SHOW"
    | "CHANGE_ACTABILITY_DECO_NUM"
    | "CHANGE_CONTRIBUTION_POINT_TO_PLAYER"
    | "CHANGE_CONTRIBUTION_POINT_TO_STORE"
    | "CHANGE_MY_LANGUAGE"
    | "CHANGE_OPTION"
    | "CHANGE_PAY_INFO"
    | "CHANGE_VISUAL_RACE_ENDED"
    | "CHANGED_AUTO_USE_AAPOINT"
    | "CHANGED_MSG"
    | "CHAT_DICE_VALUE"
    | "CHAT_EMOTION"
    | "CHAT_FAILED"
    | "CHAT_JOINED_CHANNEL"
    | "CHAT_LEAVED_CHANNEL"
    | "CHAT_MESSAGE"
    | "CHAT_MSG_ALARM"
    | "CHAT_MSG_DOODAD"
    | "CHAT_MSG_QUEST"
    | "CHECK_TEXTURE"
    | "CLEAR_BOSS_TELESCOPE_INFO"
    | "CLEAR_CARRYING_BACKPACK_SLAVE_INFO"
    | "CLEAR_COMPLETED_QUEST_INFO"
    | "CLEAR_CORPSE_INFO"
    | "CLEAR_DOODAD_INFO"
    | "CLEAR_FISH_SCHOOL_INFO"
    | "CLEAR_GIVEN_QUEST_STATIC_INFO"
    | "CLEAR_HOUSING_INFO"
    | "CLEAR_MY_SLAVE_POS_INFO"
    | "CLEAR_NOTIFY_QUEST_INFO"
    | "CLEAR_NPC_INFO"
    | "CLEAR_SHIP_TELESCOPE_INFO"
    | "CLEAR_TRANSFER_TELESCOPE_INFO"
    | "CLOSE_CRAFT_ORDER"
    | "CLOSE_MUSIC_SHEET"
    | "COFFER_INTERACTION_END"
    | "COFFER_INTERACTION_START"
    | "COFFER_REAL_INDEX_SHOW"
    | "COFFER_TAB_CREATED"
    | "COFFER_TAB_REMOVED"
    | "COFFER_TAB_SORTED"
    | "COFFER_TAB_SWITCHED"
    | "COFFER_UPDATE"
    | "COMBAT_MSG"
    | "COMBAT_TEXT"
    | "COMBAT_TEXT_COLLISION"
    | "COMBAT_TEXT_SYNERGY"
    | "COMMON_FARM_UPDATED"
    | "COMMUNITY_ERROR"
    | "COMPLETE_ACHIEVEMENT"
    | "COMPLETE_CRAFT_ORDER"
    | "COMPLETE_QUEST_CONTEXT_DOODAD"
    | "COMPLETE_QUEST_CONTEXT_NPC"
    | "CONSOLE_WRITE"
    | "CONVERT_TO_RAID_TEAM"
    | "COPY_RAID_MEMBERS_TO_CLIPBOARD"
    | "CRAFT_DOODAD_INFO"
    | "CRAFT_ENDED"
    | "CRAFT_FAILED"
    | "CRAFT_ORDER_ENTRY_SEARCHED"
    | "CRAFT_RECIPE_ADDED"
    | "CRAFT_STARTED"
    | "CRAFT_TRAINED"
    | "CRAFTING_END"
    | "CRAFTING_START"
    | "CREATE_ORIGIN_UCC_ITEM"
    | "CRIME_REPORTED"
    | "DEBUFF_UPDATE"
    | "DELETE_CRAFT_ORDER"
    | "DELETE_PORTAL"
    | "DESTROY_PAPER"
    | "DIAGONAL_ASR"
    | "DIAGONAL_LINE"
    | "DICE_BID_RULE_CHANGED"
    | "DISCONNECT_FROM_AUTH"
    | "DISCONNECTED_BY_WORLD"
    | "DISMISS_PET"
    | "DIVE_END"
    | "DIVE_START"
    | "DOMINION"
    | "DOMINION_GUARD_TOWER_STATE_NOTICE"
    | "DOMINION_GUARD_TOWER_UPDATE_TOOLTIP"
    | "DOMINION_SIEGE_PARTICIPANT_COUNT_CHANGED"
    | "DOMINION_SIEGE_PERIOD_CHANGED"
    | "DOMINION_SIEGE_SYSTEM_NOTICE"
    | "DOMINION_SIEGE_UPDATE_TIMER"
    | "DOODAD_LOGIC"
    | "DOODAD_PHASE_MSG"
    | "DOODAD_PHASE_UI_MSG"
    | "DRAW_DOODAD_SIGN_TAG"
    | "DRAW_DOODAD_TOOLTIP"
    | "DYEING_END"
    | "DYEING_START"
    | "DYNAMIC_ACTION_BAR_HIDE"
    | "DYNAMIC_ACTION_BAR_SHOW"
    | "ENABLE_TEAM_AREA_INVITATION"
    | "ENCHANT_EXAMINE"
    | "ENCHANT_RESULT"
    | "ENCHANT_SAY_ABILITY"
    | "END_HERO_ELECTION_PERIOD"
    | "END_QUEST_CHAT_BUBBLE"
    | "ENDED_DUEL"
    | "ENTER_ANOTHER_ZONEGROUP"
    | "ENTER_ENCHANT_ITEM_MODE"
    | "ENTER_GACHA_LOOT_MODE"
    | "ENTER_ITEM_LOOK_CONVERT_MODE"
    | "ENTER_WORLD_CANCELLED"
    | "ENTERED_INSTANT_GAME_ZONE"
    | "ENTERED_LOADING"
    | "ENTERED_LOGIN"
    | "ENTERED_SCREEN_SHOT_CAMERA_MODE"
    | "ENTERED_SUBZONE"
    | "ENTERED_WORLD"
    | "ENTERED_WORLD_SELECT"
    | "EQUIP_SLOT_REINFORCE_MSG_CHAGNE_LEVEL_EFFECT"
    | "EQUIP_SLOT_REINFORCE_EXPAND_PAGE"
    | "EQUIP_SLOT_REINFORCE_MSG_LEVEL_EFFECT"
    | "EQUIP_SLOT_REINFORCE_MSG_LEVEL_UP"
    | "EQUIP_SLOT_REINFORCE_MSG_SET_EFFECT"
    | "EQUIP_SLOT_REINFORCE_SELECT_PAGE"
    | "EQUIP_SLOT_REINFORCE_UPDATE"
    | "ESC_MENU_ADD_BUTTON"
    | "ESCAPE_END"
    | "ESCAPE_START"
    | "EVENT_SCHEDULE_START"
    | "EVENT_SCHEDULE_STOP"
    | "EXP_CHANGED"
    | "EXPEDITION_APPLICANT_ACCEPT"
    | "EXPEDITION_APPLICANT_REJECT"
    | "EXPEDITION_BUFF_CHANGE"
    | "EXPEDITION_EXP"
    | "EXPEDITION_HISTORY"
    | "EXPEDITION_LEVEL_UP"
    | "EXPEDITION_MANAGEMENT_APPLICANT_ACCEPT"
    | "EXPEDITION_MANAGEMENT_APPLICANT_ADD"
    | "EXPEDITION_MANAGEMENT_APPLICANT_DEL"
    | "EXPEDITION_MANAGEMENT_APPLICANT_REJECT"
    | "EXPEDITION_MANAGEMENT_APPLICANTS"
    | "EXPEDITION_MANAGEMENT_GUILD_FUNCTION_CHANGED"
    | "EXPEDITION_MANAGEMENT_MEMBER_NAME_CHANGED"
    | "EXPEDITION_MANAGEMENT_MEMBER_STATUS_CHANGED"
    | "EXPEDITION_MANAGEMENT_MEMBERS_INFO"
    | "EXPEDITION_MANAGEMENT_POLICY_CHANGED"
    | "EXPEDITION_MANAGEMENT_RECRUITMENT_ADD"
    | "EXPEDITION_MANAGEMENT_RECRUITMENT_DEL"
    | "EXPEDITION_MANAGEMENT_RECRUITMENTS"
    | "EXPEDITION_MANAGEMENT_ROLE_CHANGED"
    | "EXPEDITION_MANAGEMENT_UPDATED"
    | "EXPEDITION_RANKING"
    | "EXPEDITION_SUMMON_SUGGEST"
    | "EXPEDITION_WAR_DECLARATION_FAILED"
    | "EXPEDITION_WAR_DECLARATION_MONEY"
    | "EXPEDITION_WAR_KILL_SCORE"
    | "EXPEDITION_WAR_SET_PROTECT_DATE"
    | "EXPEDITION_WAR_STATE"
    | "EXPIRED_ITEM"
    | "FACTION_CHANGED"
    | "FACTION_COMPETITION_INFO"
    | "FACTION_COMPETITION_RESULT"
    | "FACTION_COMPETITION_UPDATE_POINT"
    | "FACTION_RELATION_ACCEPTED"
    | "FACTION_RELATION_CHANGED"
    | "FACTION_RELATION_COUNT"
    | "FACTION_RELATION_DENIED"
    | "FACTION_RELATION_HISTORY"
    | "FACTION_RELATION_REQUESTED"
    | "FACTION_RELATION_WILL_CHANGE"
    | "FACTION_RENAMED"
    | "FADE_INOUT_DONE"
    | "FAIL_WEB_PLAY_DIARY_INSTANT"
    | "FAILED_TO_SET_PET_AUTO_SKILL"
    | "FAMILY_ERROR"
    | "FAMILY_EXP_ADD"
    | "FAMILY_INFO_REFRESH"
    | "FAMILY_LEVEL_UP"
    | "FAMILY_MEMBER"
    | "FAMILY_MEMBER_ADDED"
    | "FAMILY_MEMBER_KICKED"
    | "FAMILY_MEMBER_LEFT"
    | "FAMILY_MEMBER_ONLINE"
    | "FAMILY_MGR"
    | "FAMILY_NAME_CHANGED"
    | "FAMILY_OWNER_CHANGED"
    | "FAMILY_REFRESH"
    | "FAMILY_REMOVED"
    | "FIND_FACTION_REZ_DISTRICT_COOLTIME_FAIL"
    | "FIND_FACTION_REZ_DISTRICT_DURATION_FAIL"
    | "FOLDER_STATE_CHANGED"
    | "FORCE_ATTACK_CHANGED"
    | "FRIENDLIST"
    | "FRIENDLIST_INFO"
    | "FRIENDLIST_UPDATE"
    | "GACHA_LOOT_PACK_LOG"
    | "GACHA_LOOT_PACK_RESULT"
    | "GAME_EVENT_EMPTY"
    | "GAME_EVENT_INFO_LIST_UPDATED"
    | "GAME_EVENT_INFO_REQUESTED"
    | "GAME_SCHEDULE"
    | "GENDER_TRANSFERED"
    | "GLIDER_MOVED_INTO_BAG"
    | "GOODS_MAIL_INBOX_ITEM_TAKEN"
    | "GOODS_MAIL_INBOX_MONEY_TAKEN"
    | "GOODS_MAIL_INBOX_TAX_PAID"
    | "GOODS_MAIL_INBOX_UPDATE"
    | "GOODS_MAIL_RETURNED"
    | "GOODS_MAIL_SENT_SUCCESS"
    | "GOODS_MAIL_SENTBOX_UPDATE"
    | "GOODS_MAIL_WRITE_ITEM_UPDATE"
    | "GRADE_ENCHANT_BROADCAST"
    | "GRADE_ENCHANT_RESULT"
    | "GUARDTOWER_HEALTH_CHANGED"
    | "GUILD_BANK_INTERACTION_END"
    | "GUILD_BANK_INTERACTION_START"
    | "GUILD_BANK_INVEN_SHOW"
    | "GUILD_BANK_MONEY_UPDATE"
    | "GUILD_BANK_REAL_INDEX_SHOW"
    | "GUILD_BANK_TAB_CREATED"
    | "GUILD_BANK_TAB_REMOVED"
    | "GUILD_BANK_TAB_SORTED"
    | "GUILD_BANK_TAB_SWITCHED"
    | "GUILD_BANK_UPDATE"
    | "HEIR_LEVEL_UP"
    | "HEIR_SKILL_ACTIVE_TYPE_MSG"
    | "HEIR_SKILL_LEARN"
    | "HEIR_SKILL_RESET"
    | "HEIR_SKILL_UPDATE"
    | "HERO_ALL_SCORE_UPDATED"
    | "HERO_ANNOUNCE_REMAIN_TIME"
    | "HERO_CANDIDATE_NOTI"
    | "HERO_CANDIDATES_ANNOUNCED"
    | "HERO_ELECTION"
    | "HERO_ELECTION_DAY_ALERT"
    | "HERO_ELECTION_RESULT"
    | "HERO_ELECTION_VOTED"
    | "HERO_NOTI"
    | "HERO_RANK_DATA_RETRIEVED"
    | "HERO_RANK_DATA_TIMEOUT"
    | "HERO_SCORE_UPDATED"
    | "HERO_SEASON_OFF"
    | "HERO_SEASON_UPDATED"
    | "HIDE_ROADMAP_TOOLTIP"
    | "HIDE_SKILL_MAP_EFFECT"
    | "HIDE_WORLDMAP_TOOLTIP"
    | "HOUSE_BUILD_INFO"
    | "HOUSE_BUY_FAIL"
    | "HOUSE_BUY_SUCCESS"
    | "HOUSE_CANCEL_SELL_FAIL"
    | "HOUSE_CANCEL_SELL_SUCCESS"
    | "HOUSE_DECO_UPDATED"
    | "HOUSE_FARM_MSG"
    | "HOUSE_INFO_UPDATED"
    | "HOUSE_INTERACTION_END"
    | "HOUSE_INTERACTION_START"
    | "HOUSE_PERMISSION_UPDATED"
    | "HOUSE_REBUILD_TAX_INFO"
    | "HOUSE_ROTATE_CONFIRM"
    | "HOUSE_SALE_SUCCESS"
    | "HOUSE_SET_SELL_FAIL"
    | "HOUSE_SET_SELL_SUCCESS"
    | "HOUSE_STEP_INFO_UPDATED"
    | "HOUSE_TAX_INFO"
    | "HOUSING_UCC_CLOSE"
    | "HOUSING_UCC_ITEM_SLOT_CLEAR"
    | "HOUSING_UCC_ITEM_SLOT_SET"
    | "HOUSING_UCC_LEAVE"
    | "HOUSING_UCC_UPDATED"
    | "HPW_ZONE_STATE_CHANGE"
    | "HPW_ZONE_STATE_WAR_END"
    | "IME_STATUS_CHANGED"
    | "INDUN_INITAL_ROUND_INFO"
    | "INDUN_ROUND_END"
    | "INDUN_ROUND_START"
    | "INDUN_UPDATE_ROUND_INFO"
    | "INGAME_SHOP_BUY_RESULT"
    | "INIT_CHRONICLE_INFO"
    | "INSERT_CRAFT_ORDER"
    | "INSTANCE_ENTERABLE_MSG"
    | "INSTANT_GAME_BEST_RATING_REWARD"
    | "INSTANT_GAME_END"
    | "INSTANT_GAME_JOIN_APPLY"
    | "INSTANT_GAME_JOIN_CANCEL"
    | "INSTANT_GAME_KILL"
    | "INSTANT_GAME_PICK_BUFFS"
    | "INSTANT_GAME_READY"
    | "INSTANT_GAME_RETIRE"
    | "INSTANT_GAME_ROUND_RESULT"
    | "INSTANT_GAME_START"
    | "INSTANT_GAME_START_POINT_RETURN_MSG"
    | "INSTANT_GAME_UNEARNED_WIN_REMAIN_TIME"
    | "INSTANT_GAME_VISIT_COUNT_RESET"
    | "INSTANT_GAME_WAIT"
    | "INTERACTION_END"
    | "INTERACTION_START"
    | "INVALID_NAME_POLICY"
    | "INVEN_SLOT_SPLIT"
    | "ITEM_ACQUISITION_BY_LOOT"
    | "ITEM_CHANGE_MAPPING_RESULT"
    | "ITEM_ENCHANT_MAGICAL_RESULT"
    | "ITEM_EQUIP_RESULT"
    | "ITEM_LOOK_CONVERTED"
    | "ITEM_LOOK_CONVERTED_EFFECT"
    | "ITEM_REFURBISHMENT_RESULT"
    | "ITEM_SMELTING_RESULT"
    | "ITEM_SOCKET_UPGRADE"
    | "ITEM_SOCKETING_RESULT"
    | "JURY_OK_COUNT"
    | "JURY_WAITING_NUMBER"
    | "LABORPOWER_CHANGED"
    | "LEAVE_ENCHANT_ITEM_MODE"
    | "LEAVE_GACHA_LOOT_MODE"
    | "LEAVE_ITEM_LOOK_CONVERT_MODE"
    | "LEAVED_INSTANT_GAME_ZONE"
    | "LEAVING_WORLD_CANCELED"
    | "LEAVING_WORLD_STARTED"
    | "LEFT_LOADING"
    | "LEFT_LOGIN"
    | "LEFT_SCREEN_SHOT_CAMERA_MODE"
    | "LEFT_SUBZONE"
    | "LEFT_WORLD"
    | "LEVEL_CHANGED"
    | "LOGIN_CHARACTER_UPDATED"
    | "LOGIN_DENIED"
    | "LOOT_BAG_CHANGED"
    | "LOOT_BAG_CLOSE"
    | "LOOT_DICE"
    | "LOOT_PACK_ITEM_BROADCAST"
    | "LOOTING_RULE_BOP_CHANGED"
    | "LOOTING_RULE_GRADE_CHANGED"
    | "LOOTING_RULE_MASTER_CHANGED"
    | "LOOTING_RULE_METHOD_CHANGED"
    | "LP_MANAGE_CHARACTER_CHANGED"
    | "MAIL_INBOX_ATTACHMENT_TAKEN_ALL"
    | "MAIL_INBOX_ITEM_TAKEN"
    | "MAIL_INBOX_MONEY_TAKEN"
    | "MAIL_INBOX_TAX_PAID"
    | "MAIL_INBOX_UPDATE"
    | "MAIL_RETURNED"
    | "MAIL_SENT_SUCCESS"
    | "MAIL_SENTBOX_UPDATE"
    | "MAIL_WRITE_ITEM_UPDATE"
    | "MAP_EVENT_CHANGED"
    | "MATE_SKILL_LEARNED"
    | "MATE_STATE_UPDATE"
    | "MEGAPHONE_MESSAGE"
    | "MIA_MAIL_INBOX_ITEM_TAKEN"
    | "MIA_MAIL_INBOX_MONEY_TAKEN"
    | "MIA_MAIL_INBOX_TAX_PAID"
    | "MIA_MAIL_INBOX_UPDATE"
    | "MIA_MAIL_RETURNED"
    | "MIA_MAIL_SENT_SUCCESS"
    | "MIA_MAIL_SENTBOX_UPDATE"
    | "MIA_MAIL_WRITE_ITEM_UPDATE"
    | "MINE_AMOUNT"
    | "MINI_SCOREBOARD_CHANGED"
    | "MODE_ACTIONS_UPDATE"
    | "MONEY_ACQUISITION_BY_LOOT"
    | "MOUNT_BAG_UPDATE"
    | "MOUNT_PET"
    | "MOUNT_SLOT_CHANGED"
    | "MOUSE_CLICK"
    | "MOUSE_DOWN"
    | "MOUSE_UP"
    | "MOVE_SPEED_CHANGE"
    | "MOVIE_ABORT"
    | "MOVIE_LOAD"
    | "MOVIE_START"
    | "MOVIE_STOP"
    | "MULTI_QUEST_CONTEXT_SELECT"
    | "MULTI_QUEST_CONTEXT_SELECT_LIST"
    | "NAME_TAG_MODE_CHANGED_MSG"
    | "NATION_DOMINION"
    | "NAVI_MARK_POS_TO_MAP"
    | "NAVI_MARK_REMOVE"
    | "NEW_DAY_STARTED"
    | "NEW_SKILL_POINT"
    | "NEXT_SIEGE_INFO"
    | "NOTICE_MESSAGE"
    | "NOTIFY_AUTH_ADVERTISING_MESSAGE"
    | "NOTIFY_AUTH_BILLING_MESSAGE"
    | "NOTIFY_AUTH_DISCONNECTION_MESSAGE"
    | "NOTIFY_AUTH_FATIGUE_MESSAGE"
    | "NOTIFY_AUTH_NOTICE_MESSAGE"
    | "NOTIFY_AUTH_TC_FATIGUE_MESSAGE"
    | "NOTIFY_WEB_TRANSFER_STATE"
    | "NPC_CRAFT_ERROR"
    | "NPC_CRAFT_UPDATE"
    | "NPC_INTERACTION_END"
    | "NPC_INTERACTION_START"
    | "UNIT_NPC_EQUIPMENT_CHANGED"
    | "NUONS_ARROW_SHOW"
    | "NUONS_ARROW_UI_MSG"
    | "NUONS_ARROW_UPDATE"
    | "ONE_AND_ONE_CHAT_ADD_MESSAGE"
    | "ONE_AND_ONE_CHAT_END"
    | "ONE_AND_ONE_CHAT_START"
    | "OPEN_ARS"
    | "OPEN_CHAT"
    | "OPEN_COMMON_FARM_INFO"
    | "OPEN_CONFIG"
    | "OPEN_CRAFT_ORDER_BOARD"
    | "OPEN_EMBLEM_IMPRINT_UI"
    | "OPEN_EMBLEM_UPLOAD_UI"
    | "OPEN_EXPEDITION_PORTAL_LIST"
    | "OPEN_MUSIC_SHEET"
    | "OPEN_NAVI_DOODAD_NAMING_DIALOG"
    | "OPEN_OTP"
    | "OPEN_PAPER"
    | "OPEN_PCCERT"
    | "OPEN_PROMOTION_EVENT_URL"
    | "OPEN_SECURE_CARD"
    | "OPEN_WORLD_QUEUE"
    | "OPTIMIZATION_RESULT_MESSAGE"
    | "OPTION_RESET"
    | "PASSENGER_MOUNT_PET"
    | "PASSENGER_UNMOUNT_PET"
    | "PET_AUTO_SKILL_CHANGED"
    | "PET_FOLLOWING_MASTER"
    | "PET_STOP_BY_MASTER"
    | "PETMATE_BOUND"
    | "PETMATE_UNBOUND"
    | "PLAYER_AA_POINT"
    | "PLAYER_ABILITY_LEVEL_CHANGED"
    | "PLAYER_BANK_AA_POINT"
    | "PLAYER_BANK_MONEY"
    | "PLAYER_BM_POINT"
    | "PLAYER_GEAR_POINT"
    | "PLAYER_HONOR_POINT"
    | "PLAYER_HONOR_POINT_CHANGED_IN_HPW"
    | "PLAYER_JURY_POINT"
    | "PLAYER_LEADERSHIP_POINT"
    | "PLAYER_LIVING_POINT"
    | "PLAYER_MONEY"
    | "PLAYER_RESURRECTED"
    | "PLAYER_RESURRECTION"
    | "PLAYER_VISUAL_RACE"
    | "POST_CRAFT_ORDER"
    | "PRELIMINARY_EQUIP_UPDATE"
    | "PREMIUM_FIRST_BUY_BONUS"
    | "PREMIUM_GRADE_CHANGE"
    | "PREMIUM_LABORPOWER_CHANGED"
    | "PREMIUM_POINT_CHANGE"
    | "PREMIUM_SERVICE_BUY_RESULT"
    | "PREMIUM_SERVICE_LIST_UPDATED"
    | "PROCESS_CRAFT_ORDER"
    | "PROGRESS_TALK_QUEST_CONTEXT"
    | "QUEST_CHAT_LET_IT_DONE"
    | "QUEST_CHAT_RESTART"
    | "QUEST_CONTEXT_CONDITION_EVENT"
    | "QUEST_CONTEXT_OBJECTIVE_EVENT"
    | "QUEST_CONTEXT_UPDATED"
    | "QUEST_DIRECTING_MODE_END"
    | "QUEST_DIRECTING_MODE_HOT_KEY"
    | "QUEST_ERROR_INFO"
    | "QUEST_HIDDEN_COMPLETE"
    | "QUEST_HIDDEN_READY"
    | "QUEST_LEFT_TIME_UPDATED"
    | "QUEST_MSG"
    | "QUEST_NOTIFIER_START"
    | "QUEST_QUICK_CLOSE_EVENT"
    | "RAID_APPLICANT_LIST"
    | "RAID_FRAME_SIMPLE_VIEW"
    | "RAID_RECRUIT_DETAIL"
    | "RAID_RECRUIT_HUD"
    | "RAID_RECRUIT_LIST"
    | "RANDOM_SHOP_INFO"
    | "RANDOM_SHOP_UPDATE"
    | "RANK_ALARM_MSG"
    | "RANK_DATA_RECEIVED"
    | "RANK_LOCK"
    | "RANK_PERSONAL_DATA"
    | "RANK_RANKER_APPEARANCE"
    | "RANK_REWARD_SNAPSHOTS"
    | "RANK_SEASON_RESULT_RECEIVED"
    | "RANK_SNAPSHOTS"
    | "RANK_UNLOCK"
    | "READY_TO_CONNECT_WORLD"
    | "RECOVERABLE_EXP"
    | "RECOVERED_EXP"
    | "REENTRY_NOTIFY_DISABLE"
    | "REENTRY_NOTIFY_ENABLE"
    | "REFRESH_COMBAT_RESOURCE"
    | "REFRESH_COMBAT_RESOURCE_UPDATE_TIME"
    | "REFRESH_SQUAD_LIST"
    | "REFRESH_STORE_MERCHANT_GOOD_LIMIT_PURCHASE"
    | "REFRESH_WORLD_QUEUE"
    | "RELOAD_CASH"
    | "REMOVE_BOSS_TELESCOPE_INFO"
    | "REMOVE_CARRYING_BACKPACK_SLAVE_INFO"
    | "REMOVE_FISH_SCHOOL_INFO"
    | "REMOVE_GIVEN_QUEST_INFO"
    | "REMOVE_NOTIFY_QUEST_INFO"
    | "REMOVE_PING"
    | "REMOVE_SHIP_TELESCOPE_INFO"
    | "REMOVE_TRANSFER_TELESCOPE_INFO"
    | "REMOVED_ITEM"
    | "RENAME_CHARACTER_FAILED"
    | "RENAME_PORTAL"
    | "RENEW_ITEM_SUCCEEDED"
    | "BAD_USER_LIST_UPDATE"
    | "REPORT_CRIME"
    | "REPRESENT_CHARACTER_RESULT"
    | "REPUTATION_GIVEN"
    | "REQUIRE_DELAY_TO_CHAT"
    | "REQUIRE_ITEM_TO_CHAT"
    | "RESET_INGAME_SHOP_MODELVIEW"
    | "RESIDENT_BOARD_TYPE"
    | "RESIDENT_HOUSING_TRADE_LIST"
    | "RESIDENT_MEMBER_LIST"
    | "RESIDENT_SERVICE_POINT_CHANGED"
    | "RESIDENT_TOWNHALL"
    | "RESIDENT_ZONE_STATE_CHANGE"
    | "ROLLBACK_FAVORITE_CRAFTS"
    | "RULING_CLOSED"
    | "RULING_STATUS"
    | "SAVE_PORTAL"
    | "SAVE_SCREEN_SHOT"
    | "SCALE_ENCHANT_BROADCAST"
    | "SCHEDULE_ITEM_SENT"
    | "SCHEDULE_ITEM_UPDATED"
    | "SECOND_PASSWORD_ACCOUNT_LOCKED"
    | "SECOND_PASSWORD_CHANGE_COMPLETED"
    | "SECOND_PASSWORD_CHECK_COMPLETED"
    | "SECOND_PASSWORD_CHECK_OVER_FAILED"
    | "SECOND_PASSWORD_CLEAR_COMPLETED"
    | "SECOND_PASSWORD_CREATION_COMPLETED"
    | "SELECT_SQUAD_LIST"
    | "SELECTED_INSTANCE_DIFFICULT"
    | "SELL_SPECIALTY"
    | "SELL_SPECIALTY_CONTENT_INFO"
    | "SENSITIVE_OPERATION_VERIFY"
    | "SENSITIVE_OPERATION_VERIFY_SUCCESS"
    | "SET_DEFAULT_EXPAND_RATIO"
    | "SET_EFFECT_ICON_VISIBLE"
    | "SET_LOGIN_BROWSER_URL"
    | "SET_OVERHEAD_MARK"
    | "SET_PING_MODE"
    | "SET_REBUILD_HOUSE_CAMERA_MODE"
    | "SET_ROADMAP_PICKABLE"
    | "SET_UI_MESSAGE"
    | "SET_WEB_MESSENGE_COUNT"
    | "SHOW_ACCUMULATE_HONOR_POINT_DURING_HPW"
    | "SHOW_ADD_TAB_WINDOW"
    | "SHOW_ADDED_ITEM"
    | "SHOW_BANNER"
    | "SHOW_CHARACTER_ABILITY_WINDOW"
    | "SHOW_CHARACTER_CREATE_WINDOW"
    | "SHOW_CHARACTER_CUSTOMIZE_WINDOW"
    | "SHOW_CHARACTER_SELECT_WINDOW"
    | "SHOW_CHAT_TAB_CONTEXT"
    | "SHOW_CRIME_RECORDS"
    | "SHOW_DEPENDANT_WAIT_JURY"
    | "SHOW_DEPENDANT_WAIT_TRIAL"
    | "SHOW_GAME_RATING"
    | "SHOW_HEALTH_NOTICE"
    | "SHOW_HIDDEN_BUFF"
    | "SHOW_LOGIN_WINDOW"
    | "SHOW_PRIVACY_POLICY_WINDOW"
    | "SHOW_RAID_FRAME_SETTINGS"
    | "SHOW_RECOMMEND_USING_SECOND_PASSWORD"
    | "SHOW_RENAME_EXPEIDITON"
    | "SHOW_ROADMAP_TOOLTIP"
    | "SHOW_SERVER_SELECT_WINDOW"
    | "SHOW_SEXTANT_POS"
    | "SHOW_SLAVE_INFO"
    | "SHOW_VERDICTS"
    | "SHOW_WORLDMAP_LOCATION"
    | "SHOW_WORLDMAP_TOOLTIP"
    | "SIEGE_APPOINT_RESULT"
    | "SIEGE_RAID_REGISTER_LIST"
    | "SIEGE_RAID_TEAM_INFO"
    | "SIEGE_WAR_ENDED"
    | "SIEGEWEAPON_BOUND"
    | "SIEGEWEAPON_UNBOUND"
    | "SIM_DOODAD_MSG"
    | "SKILL_ALERT_ADD"
    | "SKILL_ALERT_REMOVE"
    | "SKILL_CHANGED"
    | "SKILL_DEBUG_MSG"
    | "SKILL_LEARNED"
    | "SKILL_MAP_EFFECT"
    | "SKILL_MSG"
    | "SKILL_SELECTIVE_ITEM"
    | "SKILL_SELECTIVE_ITEM_NOT_AVAILABLE"
    | "SKILL_SELECTIVE_ITEM_READY_STATUS"
    | "SKILL_UPGRADED"
    | "SKILLS_RESET"
    | "SLAVE_SHIP_BOARDING"
    | "SLAVE_SHIP_UNBOARDING"
    | "SLAVE_SPAWN"
    | "SPAWN_PET"
    | "SPECIAL_ABILITY_LEARNED"
    | "SPECIALTY_CONTENT_RECIPE_INFO"
    | "SPECIALTY_RATIO_BETWEEN_INFO"
    | "SPELLCAST_START"
    | "SPELLCAST_STOP"
    | "SPELLCAST_SUCCEEDED"
    | "START_CHAT_BUBBLE"
    | "START_HERO_ELECTION_PERIOD"
    | "START_QUEST_CONTEXT"
    | "START_QUEST_CONTEXT_DOODAD"
    | "START_QUEST_CONTEXT_NPC"
    | "START_QUEST_CONTEXT_SPHERE"
    | "START_SENSITIVE_OPERATION"
    | "START_TALK_QUEST_CONTEXT"
    | "START_TODAY_ASSIGNMENT"
    | "STARTED_DUEL"
    | "STARTING_QUEST_COMPLETED"
    | "STICKED_MSG"
    | "STILL_LOADING"
    | "STORE_ADD_BUY_ITEM"
    | "STORE_ADD_SELL_ITEM"
    | "STORE_BUY"
    | "STORE_FULL"
    | "STORE_SELL"
    | "STORE_SOLD_LIST"
    | "STORE_TRADE_FAILED"
    | "SURVEY_FORM_UPDATE"
    | "SWITCH_ENCHANT_ITEM_MODE"
    | "SYNC_PORTAL"
    | "SYS_INDUN_STAT_UPDATED"
    | "SYSMSG"
    | "TARGET_CHANGED"
    | "TARGET_NPC_HEALTH_CHANGED_FOR_DEFENCE_INFO"
    | "TARGET_NPC_HEALTH_CHANGED_FOR_VERSUS_FACTION"
    | "TARGET_OVER"
    | "TARGET_TO_TARGET_CHANGED"
    | "TEAM_JOINT_BREAK"
    | "TEAM_JOINT_BROKEN"
    | "TEAM_JOINT_CHAT"
    | "TEAM_JOINT_RESPONSE"
    | "TEAM_JOINT_TARGET"
    | "TEAM_JOINTED"
    | "TEAM_MEMBER_DISCONNECTED"
    | "TEAM_MEMBER_UNIT_ID_CHANGED"
    | "TEAM_MEMBERS_CHANGED"
    | "TEAM_ROLE_CHANGED"
    | "TEAM_SUMMON_SUGGEST"
    | "TENCENT_HEALTH_CARE_URL"
    | "TIME_MESSAGE"
    | "TOGGLE_CHANGE_VISUAL_RACE"
    | "TOGGLE_COMMUNITY"
    | "TOGGLE_CRAFT"
    | "TOGGLE_FACTION"
    | "TOGGLE_FOLLOW"
    | "TOGGLE_IN_GAME_NOTICE"
    | "TOGGLE_MEGAPHONE_CHAT"
    | "TOGGLE_PARTY_FRAME"
    | "TOGGLE_PET_MANAGE"
    | "TOGGLE_PORTAL_DIALOG"
    | "TOGGLE_RAID_FRAME"
    | "TOGGLE_RAID_FRAME_PARTY"
    | "TOGGLE_RAID_FRAME2"
    | "TOGGLE_ROADMAP"
    | "TOGGLE_WALK"
    | "TOWER_DEF_INFO_UPDATE"
    | "TOWER_DEF_MSG"
    | "TRADE_CAN_START"
    | "TRADE_CANCELED"
    | "TRADE_ITEM_PUTUP"
    | "TRADE_ITEM_TOOKDOWN"
    | "TRADE_ITEM_UPDATED"
    | "TRADE_LOCKED"
    | "TRADE_MADE"
    | "TRADE_MONEY_PUTUP"
    | "TRADE_OK"
    | "TRADE_OTHER_ITEM_PUTUP"
    | "TRADE_OTHER_ITEM_TOOKDOWN"
    | "TRADE_OTHER_LOCKED"
    | "TRADE_OTHER_MONEY_PUTUP"
    | "TRADE_OTHER_OK"
    | "TRADE_STARTED"
    | "TRADE_UI_TOGGLE"
    | "TRADE_UNLOCKED"
    | "TRANSFORM_COMBAT_RESOURCE"
    | "TRIAL_CANCELED"
    | "TRIAL_CLOSED"
    | "TRIAL_MESSAGE"
    | "TRIAL_STATUS"
    | "TRIAL_TIMER"
    | "TRY_LOOT_DICE"
    | "TUTORIAL_EVENT"
    | "TUTORIAL_HIDE_FROM_OPTION"
    | "UCC_IMPRINT_SUCCEEDED"
    | "UI_ADDON"
    | "UI_PERMISSION_UPDATE"
    | "UI_RELOADED"
    | "ULC_ACTIVATE"
    | "ULC_SKILL_MSG"
    | "UNFINISHED_BUILD_HOUSE"
    | "UNIT_COMBAT_STATE_CHANGED"
    | "UNIT_DEAD"
    | "UNIT_DEAD_NOTICE"
    | "UNIT_ENTERED_SIGHT"
    | "UNIT_EQUIPMENT_CHANGED"
    | "UNIT_KILL_STREAK"
    | "UNIT_LEAVED_SIGHT"
    | "UNIT_NAME_CHANGED"
    | "UNIT_NPC_EQUIPMENT_CHANGED"
    | "UNITFRAME_ABILITY_UPDATE"
    | "UNMOUNT_PET"
    | "UPDATE_BINDINGS"
    | "UPDATE_BOSS_TELESCOPE_AREA"
    | "UPDATE_BOSS_TELESCOPE_INFO"
    | "UPDATE_BOT_CHECK_INFO"
    | "BUBBLE_UPDATE"
    | "UPDATE_CARRYING_BACKPACK_SLAVE_INFO"
    | "UPDATE_CHANGE_VISUAL_RACE_WND"
    | "UPDATE_CHRONICLE_INFO"
    | "UPDATE_CHRONICLE_NOTIFIER"
    | "UPDATE_CLIENT_DRIVEN_INFO"
    | "UPDATE_COMPLETED_QUEST_INFO"
    | "UPDATE_CONTENT_ROSTER_WINDOW"
    | "UPDATE_CORPSE_INFO"
    | "UPDATE_CRAFT_ORDER_ITEM_FEE"
    | "UPDATE_CRAFT_ORDER_ITEM_SLOT"
    | "UPDATE_CRAFT_ORDER_SKILL"
    | "UPDATE_DEFENCE_INFO"
    | "UPDATE_DOMINION_INFO"
    | "UPDATE_DOODAD_INFO"
    | "UPDATE_DURABILITY_STATUS"
    | "UPDATE_DYEING_EXCUTABLE"
    | "UPDATE_ENCHANT_ITEM_MODE"
    | "UPDATE_EXPEDITION_PORTAL"
    | "UPDATE_EXPEDITION_TODAY_ASSIGNMENT_RESET_COUNT"
    | "UPDATE_FACTION_REZ_DISTRICT"
    | "UPDATE_FISH_SCHOOL_AREA"
    | "UPDATE_FISH_SCHOOL_INFO"
    | "UPDATE_GACHA_LOOT_MODE"
    | "UPDATE_GIVEN_QUEST_STATIC_INFO"
    | "UPDATE_HERO_ELECTION_CONDITION"
    | "UPDATE_HOUSING_INFO"
    | "UPDATE_HOUSING_TOOLTIP"
    | "UPDATE_INGAME_BEAUTYSHOP_STATUS"
    | "UPDATE_INGAME_SHOP"
    | "UPDATE_INGAME_SHOP_VIEW"
    | "UPDATE_INSTANT_GAME_INVITATION_COUNT"
    | "UPDATE_INSTANT_GAME_KILLSTREAK"
    | "UPDATE_INSTANT_GAME_KILLSTREAK_COUNT"
    | "UPDATE_INSTANT_GAME_SCORES"
    | "UPDATE_INSTANT_GAME_STATE"
    | "UPDATE_INSTANT_GAME_TIME"
    | "UPDATE_ITEM_LOOK_CONVERT_MODE"
    | "UPDATE_MONITOR_NPC"
    | "UPDATE_MY_SLAVE_POS_INFO"
    | "UPDATE_NPC_INFO"
    | "UPDATE_NPC_INFO_BROADCASTING"
    | "UPDATE_OPTION_BINDINGS"
    | "UPDATE_PING_INFO"
    | "UPDATE_RESTORE_CRAFT_ORDER_ITEM_MATERIAL"
    | "UPDATE_RESTORE_CRAFT_ORDER_ITEM_SLOT"
    | "UPDATE_RETURN_ACCOUNT_STATUS"
    | "UPDATE_ROADMAP_ANCHOR"
    | "UPDATE_ROSTER_MEMBER_INFO"
    | "UPDATE_ROUTE_MAP"
    | "UPDATE_SHIP_TELESCOPE_INFO"
    | "UPDATE_SHORTCUT_SKILLS"
    | "UPDATE_SIEGE_SCORE"
    | "UPDATE_SKILL_ACTIVE_TYPE"
    | "UPDATE_SLAVE_EQUIPMENT_SLOT"
    | "UPDATE_SPECIALTY_RATIO"
    | "UPDATE_SQUAD"
    | "UPDATE_TELESCOPE_AREA"
    | "UPDATE_TODAY_ASSIGNMENT"
    | "UPDATE_TODAY_ASSIGNMENT_RESET_COUNT"
    | "UPDATE_TRANSFER_TELESCOPE_AREA"
    | "UPDATE_TRANSFER_TELESCOPE_INFO"
    | "UPDATE_ZONE_INFO"
    | "UPDATE_ZONE_LEVEL_INFO"
    | "UPDATE_ZONE_PERMISSION"
    | "VIEW_CASH_BUY_WINDOW"
    | "WAIT_FRIEND_ADD_ALARM"
    | "WAIT_FRIENDLIST_UPDATE"
    | "WAIT_REPLY_FROM_SERVER"
    | "WATCH_TARGET_CHANGED"
    | "WEB_BROWSER_ESC_EVENT"
    | "WORLD_MESSAGE"
    | "ZONE_SCORE_CONTENT_STATE"
    | "ZONE_SCORE_UPDATED"
```

#### Method: ReleaseDeletedHandler
```lua
(method) Widget:ReleaseDeletedHandler()
```
Releases the deleted handler for the Widget.

#### Method: ReleaseHandler
```lua
(method) Widget:ReleaseHandler(actionName: "OnAcceptFocus"|"OnAlphaAnimeEnd"|"OnBoundChanged"|"OnChangedAnchor"|"OnCheckChanged"...(+44))
```
Releases a handler for the specified action.

@*param* `actionName` — The action name to release.

```lua
actionName:
    | "OnAcceptFocus"
    | "OnAlphaAnimeEnd"
    | "OnBoundChanged"
    | "OnChangedAnchor"
    | "OnCheckChanged"
    | "OnClick"
    | "OnCloseByEsc"
    | "OnContentUpdated"
    | "OnCursorMoved"
    | "OnDragReceive"
    | "OnDragStart"
    | "OnDragStop"
    | "OnDynamicListUpdatedView"
    | "OnEffect"
    | "OnEnableChanged"
    | "OnEndFadeIn"
    | "OnEndFadeOut"
    | "OnEnter"
    | "OnEnterPressed"
    | "OnEscapePressed"
    | "OnEvent"
    | "OnHide"
    | "OnKeyDown"
    | "OnKeyUp"
    | "OnLeave"
    | "OnListboxToggled"
    | "OnModelChanged"
    | "OnMouseDown"
    | "OnMouseMove"
    | "OnMouseUp"
    | "OnMovedPosition"
    | "OnPageChanged"
    | "OnPermissionChanged"
    | "OnRadioChanged"
    | "OnRestricted"
    | "OnScale"
    | "OnScaleAnimeEnd"
    | "OnSelChanged"
    | "OnShow"
    | "OnSliderChanged"
    | "OnTabChanged"
    | "OnTextChanged"
    | "OnTooltip"
    | "OnUpdate"
    | "OnVisibleChanged"
    | "OnWheelDown"
    | "OnWheelUp"
    | "PreClick"
    | "PreUse"
```

#### Method: RemoveAllAnchors
```lua
(method) Uibounds:RemoveAllAnchors()
```
Removes all anchors from the UI bounds, excluding anchor origin.

#### Method: RemoveAllDrawables
```lua
(method) Widget:RemoveAllDrawables(nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
```
Removes all drawables for the specified layer.

@*param* `nameLayer` — The layer to clear.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: RemoveDrawable
```lua
(method) Widget:RemoveDrawable(drawableTable: Drawablebase)
```
Removes a specific drawable table from the widget.

@*param* `drawableTable` — The drawable table to remove.

See: [Drawablebase](../types/Drawablebase.md#class-drawablebase)

#### Method: RequestCharacterCacheData
```lua
(method) Widget:RequestCharacterCacheData(cacheQueryId: string)
```
Requests character cache data.

@*param* `cacheQueryId` — The cache query ID.

#### Method: SetAlpha
```lua
(method) Widget:SetAlpha(alpha: number)
```
Sets the alpha value of the Widget.

@*param* `alpha` — The alpha value (min: `0`, max: `1`).

#### Method: SetAlphaAnimation
```lua
(method) Widget:SetAlphaAnimation(initialAlpha: number, finalAlpha: number, velocityTime: number, accelerationTime: number)
```
Sets an alpha animation for the Widget.

@*param* `initialAlpha` — The starting alpha (min: `0`, max: `1`).

@*param* `finalAlpha` — The ending alpha (min: `0`, max: `1`).

@*param* `velocityTime` — Duration in seconds for velocity.

@*param* `accelerationTime` — Duration in seconds for acceleration.

#### Method: SetCategory
```lua
(method) Widget:SetCategory(category: string)
```
Sets the category for the Widget.

@*param* `category` — The category to set.

#### Method: SetCharacterCacheDataHandler
```lua
(method) Widget:SetCharacterCacheDataHandler(handler: fun(self: unknown, data: CacheData))
```
Sets a handler for character cache data.

@*param* `handler` — The handler function.

See: [CharacterCacheDataHandler](../types/Widget.md#class-charactercachedatahandler)

#### Method: SetCloseOnEscape
```lua
(method) Window:SetCloseOnEscape(escape: boolean)
```
Enables or disables closing the Window when the Escape key is pressed.

@*param* `escape` — `true` to enable close on Escape, `false` to disable. (default: `false`)

#### Method: SetDelegator
```lua
(method) Widget:SetDelegator(action: "OnAcceptFocus"|"OnAlphaAnimeEnd"|"OnBoundChanged"|"OnChangedAnchor"|"OnCheckChanged"...(+44), delegator: Widget, handler: fun(delegator: Widget, callbacker: Widget, mbt: "LeftButton"|"RightButton"))
```
Sets a handler for a specific action on a delegator widget.

@*param* `action` — The action name.

@*param* `delegator` — The delegator widget.

@*param* `handler` — The handler function.

```lua
action:
    | "OnAcceptFocus"
    | "OnAlphaAnimeEnd"
    | "OnBoundChanged"
    | "OnChangedAnchor"
    | "OnCheckChanged"
    | "OnClick"
    | "OnCloseByEsc"
    | "OnContentUpdated"
    | "OnCursorMoved"
    | "OnDragReceive"
    | "OnDragStart"
    | "OnDragStop"
    | "OnDynamicListUpdatedView"
    | "OnEffect"
    | "OnEnableChanged"
    | "OnEndFadeIn"
    | "OnEndFadeOut"
    | "OnEnter"
    | "OnEnterPressed"
    | "OnEscapePressed"
    | "OnEvent"
    | "OnHide"
    | "OnKeyDown"
    | "OnKeyUp"
    | "OnLeave"
    | "OnListboxToggled"
    | "OnModelChanged"
    | "OnMouseDown"
    | "OnMouseMove"
    | "OnMouseUp"
    | "OnMovedPosition"
    | "OnPageChanged"
    | "OnPermissionChanged"
    | "OnRadioChanged"
    | "OnRestricted"
    | "OnScale"
    | "OnScaleAnimeEnd"
    | "OnSelChanged"
    | "OnShow"
    | "OnSliderChanged"
    | "OnTabChanged"
    | "OnTextChanged"
    | "OnTooltip"
    | "OnUpdate"
    | "OnVisibleChanged"
    | "OnWheelDown"
    | "OnWheelUp"
    | "PreClick"
    | "PreUse"
```

See: [DelegatorHandler](../types/Widget.md#class-delegatorhandler)

#### Method: SetDeletedHandler
```lua
(method) Widget:SetDeletedHandler(handler: function)
```
Sets a handler for the Widget deletion event. This executes right before the
widget is deleted from the widget pool and should be used to set any variable
that referenced the widget as `nil`, otherwise the widget will become an
invalid object.

@*param* `handler` — The handler function.

#### Method: SetDragCondition
```lua
(method) Widget:SetDragCondition(dragCondition: `DC_ALWAYS`|`DC_SHIFT_KEY_DOWN`)
```
Sets the drag condition for the Widget. This restricts when the events
`OnDragReceive`, `OnDragStart`, and `OnDragStop` are fired.

@*param* `dragCondition` — The drag condition. (default: `DC_ALWAYS`)

```lua
-- types/Widget
dragCondition:
    | `DC_ALWAYS`
    | `DC_SHIFT_KEY_DOWN`
```

#### Method: SetDrawPriority
```lua
(method) Widget:SetDrawPriority(drawPriority: number)
```
Sets the draw priority for the Widget relative to its sibling Widgets.

@*param* `drawPriority` — The draw priority (z-index) value.

#### Method: SetDrawableLayerAlpha
```lua
(method) Widget:SetDrawableLayerAlpha(alpha: number, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
```
Sets the alpha for a specific drawable layer.

@*param* `alpha` — Alpha value (min: `0`, max: `1`). (default: `1`)

@*param* `nameLayer` — The layer to apply the alpha to.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: SetExtent
```lua
(method) Uibounds:SetExtent(width: number, height: number)
```
Sets the width and height of the UI bounds.

@*param* `width` — The width to set.

@*param* `height` — The height to set.

#### Method: SetHandler
```lua
(method) Widget:SetHandler(actionName: string, handler: function)
```
Sets a handler for the specified action.

@*param* `actionName` — The action name.

@*param* `handler` — The handler function.

#### Method: SetHeight
```lua
(method) Uibounds:SetHeight(height: number)
```
Sets the height of the UI bounds.

@*param* `height` — The height to set.

#### Method: SetLText
```lua
(method) Widget:SetLText(key: string, ...string)
```
Sets localized text for the Widget with multiple optional parameters.

@*param* `key` — The key from the database ui_texts table under the `COMMON_TEXT` category.

@*param* `...` — Arguments to replace placeholders (must match number of $).

#### Method: SetLText
```lua
(method) Widget:SetLText(category: `ABILITY_CATEGORY_DESCRIPTION_TEXT`|`ABILITY_CATEGORY_TEXT`|`ABILITY_CHANGER_TEXT`|`ATTRIBUTE_TEXT`|`ATTRIBUTE_VARIATION_TEXT`...(+117), key: string, ...string)
```
Sets localized text for the Widget with multiple optional parameters.

@*param* `category` — The UI text category. (default: `COMMON_TEXT`)

@*param* `key` — The key from the database ui_texts table.

@*param* `...` — Arguments to replace placeholders (must match number of $).

```lua
-- api/Addon
category:
    | `ABILITY_CATEGORY_DESCRIPTION_TEXT`
    | `ABILITY_CATEGORY_TEXT`
    | `ABILITY_CHANGER_TEXT`
    | `ATTRIBUTE_TEXT`
    | `ATTRIBUTE_VARIATION_TEXT`
    | `AUCTION_TEXT`
    | `BATTLE_FIELD_TEXT`
    | `BEAUTYSHOP_TEXT`
    | `BINDING`
    | `BUTLER`
    | `CASTING_BAR_TEXT`
    | `CHARACTER_CREATE_TEXT`
    | `CHARACTER_POPUP_SUBTITLE_TEXT`
    | `CHARACTER_POPUP_SUBTITLE_TOOLTIP_TEXT`
    | `CHARACTER_SELECT_TEXT`
    | `CHARACTER_SUBTITLE_INFO_TOOLTIP_TEXT`
    | `CHARACTER_SUBTITLE_TEXT`
    | `CHARACTER_SUBTITLE_TOOLTIP_TEXT`
    | `CHARACTER_TITLE_TEXT`
    | `CHAT_CHANNEL_TEXT`
    | `CHAT_COMBAT_LOG_TEXT`
    | `CHAT_CREATE_TAB_TEXT`
    | `CHAT_FILTERING`
    | `CHAT_FORCE_ATTACK_TEXT`
    | `CHAT_LIST_TEXT`
    | `CHAT_SYSTEM_TEXT`
    | `COMBAT_MESSAGE_TEXT`
    | `COMBAT_TEXT`
    | `COMBINED_ABILITY_NAME_TEXT`
    | `COMMON_TEXT`
    | `COMMUNITY_TEXT`
    | `COMPOSITION_TEXT`
    | `CRAFT_TEXT`
    | `CUSTOMIZING_TEXT`
    | `DATE_TIME_TEXT`
    | `DOMINION`
    | `DUEL_TEXT`
    | `EQUIP_SLOT_TYPE_TEXT`
    | `ERROR_MSG`
    | `EXPEDITION_TEXT`
    | `FACTION_TEXT`
    | `FARM_TEXT`
    | `GENDER_TEXT`
    | `GRAVE_YARD_TEXT`
    | `HERO_TEXT`
    | `HONOR_POINT_WAR_TEXT`
    | `HOUSING_PERMISSIONS_TEXT`
    | `HOUSING_TEXT`
    | `INFOBAR_MENU_TEXT`
    | `INFOBAR_MENU_TIP_TEXT`
    | `INGAMESHOP_TEXT`
    | `INSTANT_GAME_TEXT`
    | `INVEN_TEXT`
    | `ITEM_GRADE`
    | `ITEM_LOOK_CONVERT_TEXT`
    | `KEY_BINDING_TEXT`
    | `LEARNING_TEXT`
    | `LEVEL_CHANGED_TEXT`
    | `LOADING_TEXT`
    | `LOGIN_CROWDED_TEXT`
    | `LOGIN_DELETE_TEXT`
    | `LOGIN_ERROR`
    | `LOGIN_TEXT`
    | `LOOT_METHOD_TEXT`
    | `LOOT_TEXT`
    | `MAIL_TEXT`
    | `MAP_TEXT`
    | `MONEY_TEXT`
    | `MSG_BOX_BODY_TEXT`
    | `MSG_BOX_BTN_TEXT`
    | `MSG_BOX_TITLE_TEXT`
    | `MUSIC_TEXT`
    | `NATION_TEXT`
    | `OPTION_TEXT`
    | `PARTY_TEXT`
    | `PERIOD_TIME_TEXT`
    | `PET_TEXT`
    | `PHYSICAL_ENCHANT_TEXT`
    | `PLAYER_POPUP_TEXT`
    | `PORTAL_TEXT`
    | `PREMIUM_TEXT`
    | `PRIEST_TEXT`
    | `PROTECT_SENSITIVE_OPERATION_TEXT`
    | `QUEST_ACT_OBJ_PTN_TEXT`
    | `QUEST_ACT_OBJ_TEXT`
    | `QUEST_CONDITION_TEXT`
    | `QUEST_DISTANCE_TEXT`
    | `QUEST_ERROR`
    | `QUEST_INTERACTION_TEXT`
    | `QUEST_OBJ_STATUS_TEXT`
    | `QUEST_SPHERE_TEXT`
    | `QUEST_STATUS_TEXT`
    | `QUEST_TEXT`
    | `RACE_DETAIL_DESCRIPTION_TEXT`
    | `RACE_TEXT`
    | `RAID_TEXT`
    | `RANKING_TEXT`
    | `REPAIR_TEXT`
    | `RESTRICT_TEXT`
    | `SECOND_PASSWORD_TEXT`
    | `SERVER_TEXT`
    | `SKILL_TEXT`
    | `SKILL_TRAINING_MSG_TEXT`
    | `SLAVE_KIND`
    | `SLAVE_TEXT`
    | `STABLER_TEXT`
    | `STORE_TEXT`
    | `TARGET_POPUP_TEXT`
    | `TEAM_TEXT`
    | `TERRITORY_TEXT`
    | `TIME`
    | `TOOLTIP_TEXT`
    | `TRADE_TEXT`
    | `TRIAL_TEXT`
    | `TUTORIAL_TEXT`
    | `UCC_TEXT`
    | `UNIT_FRAME_TEXT`
    | `UNIT_GRADE_TEXT`
    | `UNIT_KIND_TEXT`
    | `UTIL_TEXT`
    | `WEB_TEXT`
    | `WINDOW_TITLE_TEXT`
```

#### Method: SetLayerColor
```lua
(method) Widget:SetLayerColor(r: number, g: number, b: number, a: number, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
```
Sets the color for the specified layer.

@*param* `r` — Red value (min: `0`, max: `1`).

@*param* `g` — Green value (min: `0`, max: `1`).

@*param* `b` — Blue value (min: `0`, max: `1`).

@*param* `a` — Alpha value (min: `0`, max: `1`).

@*param* `nameLayer` — The layer to apply the color to.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: SetMaxResizingExtent
```lua
(method) Widget:SetMaxResizingExtent(width: number, height: number)
```
Sets the maximum resizing extent for the Widget.

@*param* `width` — The maximum width.

@*param* `height` — The maximum height.

#### Method: SetMinResizingExtent
```lua
(method) Widget:SetMinResizingExtent(width: number, height: number)
```
Sets the minimum resizing extent for the Widget.

@*param* `width` — The minimum width.

@*param* `height` — The minimum height.

#### Method: SetMoveAnimation
```lua
(method) Widget:SetMoveAnimation(direction: string, delta: number, time: number, repeatAnimation: number)
```
Sets a move animation for the Widget.

@*param* `direction` — The direction of the animation.

@*param* `delta` — The movement distance.

@*param* `time` — The duration in seconds.

@*param* `repeatAnimation` — The number of animation repetitions.

#### Method: SetResizingBorderSize
```lua
(method) Widget:SetResizingBorderSize(left: number, top: number, right: number, bottom: number)
```
Sets the resizing border size for the Widget. `SetMinResizingExtent` and
`SetMaxResizingExtent` must be called or this can cause a crash!

@*param* `left` — The left border size.

@*param* `top` — The top border size.

@*param* `right` — The right border size.

@*param* `bottom` — The bottom border size.

```lua
widget:SetResizingBorderSize(10, 10, 10, 10)
widget:SetMinResizingExtent(345, 160)
widget:SetMaxResizingExtent(1050, 1020)
```

#### Method: SetRotation
```lua
(method) Widget:SetRotation(rs: string)
```
Sets the rotation of the widget.

@*param* `rs` — The rotation value.

#### Method: SetScale
```lua
(method) Widget:SetScale(scale: number)
```
Sets the scale of the Widget.

@*param* `scale` — The scale value.

#### Method: SetScaleAnimation
```lua
(method) Widget:SetScaleAnimation(initialScale: number, finalScale: number, velocityTime: number, accelerationTime: number, scaleAnchor: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4))
```
Sets a scale animation for the Widget.

@*param* `initialScale` — The starting scale (must be greater than 0).

@*param* `finalScale` — The ending scale.

@*param* `velocityTime` — Duration in seconds for velocity.

@*param* `accelerationTime` — Duration in seconds for acceleration.

@*param* `scaleAnchor` — The anchor point for scaling.

```lua
scaleAnchor:
    | "TOPLEFT"
    | "TOP"
    | "TOPRIGHT"
    | "LEFT"
    | "CENTER"
    | "RIGHT"
    | "BOTTOMLEFT"
    | "BOTTOM"
    | "BOTTOMRIGHT"
```

#### Method: SetSounds
```lua
(method) Widget:SetSounds(name: "ability_change"|"achievement"|"auction"|"auction_put_up"|"bag"...(+45))
```
Sets the sounds to play for the Widget, this plays differently for each
type of widget, for instance a button will play its sound when clicked, and
a window will play its sound when shown/hidden.

@*param* `name` — The sound name.

```lua
name:
    | "ability_change"
    | "achievement"
    | "auction"
    | "auction_put_up"
    | "bag"
    | "bank"
    | "battlefield_entrance"
    | "character_info"
    | "coffer"
    | "common_farm_info"
    | "community"
    | "composition_score"
    | "config"
    | "cosmetic_details"
    | "craft"
    | "crime_records"
    | "default_r"
    | "dialog_common"
    | "dialog_enter_beautyshop"
    | "dialog_gender_transfer"
    | "dyeing"
    | "edit_box"
    | "item_enchant"
    | "loot"
    | "mail"
    | "mail_read"
    | "mail_write"
    | "my_farm_info"
    | "option"
    | "pet_info"
    | "portal"
    | "prelim_equipment"
    | "quest_context_list"
    | "quest_directing_mode"
    | "raid_team"
    | "ranking"
    | "ranking_reward"
    | "skill_book"
    | "store"
    | "store_drain"
    | "submenu"
    | "trade"
    | "tutorial"
    | "ucc"
    | "wash"
    | "web_messenger"
    | "web_note"
    | "web_play_diary"
    | "web_wiki"
    | "world_map"
```

#### Method: SetStartAnimation
```lua
(method) Widget:SetStartAnimation(alpha: boolean, scale: boolean)
```
Enables or disables start animations for alpha and scale.

@*param* `alpha` — `true` to enable **alpha** animation, `false` to disable. (default: `false`)

@*param* `scale` — `true` to enable **scale** animation, `false` to disable. (default: `false`)

#### Method: SetText
```lua
(method) Widget:SetText(text: string)
```
Sets the text for the Widget.

@*param* `text` — The text to set.

#### Method: SetTitleInset
```lua
(method) Window:SetTitleInset(left: number, top: number, right: number, bottom: number)
```
Sets the inset for the title of the Window.

@*param* `left` — The left inset.

@*param* `top` — The top inset.

@*param* `right` — The right inset.

@*param* `bottom` — The bottom inset.

#### Method: SetTitleText
```lua
(method) Window:SetTitleText(title: string)
```
Sets the title text for the Window.

@*param* `title` — The title text to set.

#### Method: SetUILayer
```lua
(method) Window:SetUILayer(layerName: "background"|"dialog"|"game"|"hud"|"normal"...(+3))
```
Sets the UI layer for the Window. If the window is a child then the layer is
relative to the parents layer.

@*param* `layerName` — The name of the UI layer. (default: `"normal"`)

```lua
-- Widgets with layers of the same level and parent can overlap based on focus.
layerName:
    | "background" -- Layer 0 (invisible)
    | "game" -- Layer 1
   -> "normal" -- Layer 2 (default)
    | "hud" -- Layer 3
    | "questdirecting" -- Layer 4
    | "dialog" -- Layer 5
    | "tooltip" -- Layer 6
    | "system" -- Layer 7
```

#### Method: SetWidth
```lua
(method) Uibounds:SetWidth(width: number)
```
Sets the width of the UI bounds.

@*param* `width` — The width to set.

#### Method: SetWindowModal
```lua
(method) Window:SetWindowModal(enable: boolean)
```
Enables or disables modal behavior for the Window.

@*param* `enable` — `true` to make the Window modal, `false` to disable. (default: `false`)

#### Method: Show
```lua
(method) Widget:Show(show: boolean, fadeTime?: number)
```
Shows or hides the widget and enables/disables its `"OnUpdate"` handler. Showing before the extents and anchors are set can cause issues.

@*param* `show` — `true` to show, `false` to hide. (default: `false`)

@*param* `fadeTime` — The optional fade duration in milliseconds.

#### Method: StartMoving
```lua
(method) Widget:StartMoving()
```
Starts moving the Widget. Should be used in conjunction with
`Widget:StopMovingOrSizing`.
```lua
widget:SetHandler("OnDragStart", function(self)
  self:StartMoving()
end)

widget:SetHandler("OnDragStop", function(self)
  self:StopMovingOrSizing()
end)
```

#### Method: StartSizing
```lua
(method) Widget:StartSizing(anchorPoint: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4))
```
Starts resizing the Widget from the specified anchor point.

@*param* `anchorPoint` — The anchor point for resizing.

```lua
anchorPoint:
    | "TOPLEFT"
    | "TOP"
    | "TOPRIGHT"
    | "LEFT"
    | "CENTER"
    | "RIGHT"
    | "BOTTOMLEFT"
    | "BOTTOM"
    | "BOTTOMRIGHT"
```

#### Method: StopMovingOrSizing
```lua
(method) Widget:StopMovingOrSizing()
```
Stops moving or resizing the Widget.
```lua
widget:SetHandler("OnDragStop", function(self)
  self:StopMovingOrSizing()
end)
```

#### Method: TriggerMoveAnimation
```lua
(method) Widget:TriggerMoveAnimation(on: boolean)
```
Triggers or stops the move animation of the Widget.

@*param* `on` — `true` to start the animation, `false` to stop.

#### Method: UseDynamicContentState
```lua
(method) Widget:UseDynamicContentState(use: boolean)
```
Enables or disables dynamic content state for the widget.

@*param* `use` — `true` to enable, `false` to disable.

#### Method: UseDynamicDrawableState
```lua
(method) Widget:UseDynamicDrawableState(nameLayer: "artwork"|"background"|"overlay"|"overoverlay", use: boolean)
```
Enables or disables dynamic drawable state for the specified layer.

@*param* `nameLayer` — The layer to modify.

@*param* `use` — `true` to enable, `false` to disable.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: UseResizing
```lua
(method) Widget:UseResizing(use: boolean)
```
Enables or disables resizing for the Widget.

@*param* `use` — `true` to enable resizing, `false` to disable. (default: `false`)

#### Field: eventWindow
```lua
Window
```
objects/Window

#### Field: modalBackgroundWindow
```lua
EmptyWidget
```
objects/EmptyWidget

#### Field: subItems
```lua
table|Button|Textbox|Window[]
```


#### Field: titleStyle
```lua
TextStyle
```
objects/TextStyle

### Class: MemberInfo
#### Field: [10]
```lua
number
```
Ancestral Level

#### Field: [11]
```lua
number
```
Weekly Contribution Points

#### Field: [12]
```lua
any
```
CHK

#### Field: [1]
```lua
string
```
Name

#### Field: [2]
```lua
number
```
Basic Level

#### Field: [3]
```lua
UnitClassNames
```
Class

#### Field: [4]
```lua
number
```
Guild Role

#### Field: [5]
```lua
table
```
Connection Status (empty)

#### Field: [6]
```lua
string
```
Memo

#### Field: [7]
```lua
boolean
```
Online

#### Field: [8]
```lua
boolean
```
Party

#### Field: [9]
```lua
number
```
Contribution Points

### Class: MiniScoreBoardInfo
#### Field: footer
```lua
string
```


#### Field: footerGuide
```lua
string
```


#### Field: rows
```lua
MiniScoreBoardRowInfo[]
```


#### Field: type
```lua
number
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


#### Field: maxHp
```lua
number
```


#### Field: moduleType
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


#### Field: min
```lua
number
```


#### Field: week
```lua
string
```


#### Field: zoneGroupName
```lua
"Abyssal Library"|"Aegis Island"|"Ahnimar Event Arena"|"Ahnimar"|"Airain Rock"...(+143)
```


### Class: NoneLinkInfo
#### Field: linkType
```lua
"none"
```


### Class: NpcBroadcastingInfo
#### Field: broadcastingType
```lua
`NIBC_BUFF_LEFT_TIME`|`NIBC_BUFF_STACK`
```
api/X2BattleField

#### Field: buffName
```lua
string
```


#### Field: buffType
```lua
number
```


#### Field: iconPath
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


#### Field: name
```lua
"Abyssal Library"|"Aegis Island"|"Ahnimar Event Arena"|"Ahnimar"|"Airain Rock"...(+143)
```


#### Field: step
```lua
string
```


#### Field: zoneGroup
```lua
0|1|10|100|101...(+151)
```
Obtained from db zone_groups

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


#### Field: iconKey
```lua
string
```


#### Field: msg
```lua
string
```


#### Field: titleColor
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


#### Field: beginY
```lua
number
```


#### Field: endX
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
api/X2Quest

#### Field: qtype
```lua
number
```


### Class: QuestLinkInfo
#### Field: filter
```lua
number
```


#### Field: isOtherWorld
```lua
boolean
```


#### Field: linkType
```lua
"quest"
```


#### Field: messageTimeStamp
```lua
number
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


#### Field: b
```lua
number
```


#### Field: g
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
Red (min: `0`, max: `1`)

#### Field: [2]
```lua
number
```
Green (min: `0`, max: `1`)

#### Field: [3]
```lua
number
```
Blue (min: `0`, max: `1`)

#### Field: [4]
```lua
number
```
Alpha (min: `0`, max: `1`)

### Class: RadioItem
#### Method: AddAnchor
```lua
(method) Uibounds:AddAnchor(anchor: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), x: number, y: number)
```
Aligns the UI bounds to the specified anchor point at the given coordinates.

**Although this variant implicitly uses the parent of the current object,
`AddAnchor(anchor, parentId, x, y)` is usually recommended** because it makes
the anchor relationship explicit and much easier for future readers to
understand which object this UI element is actually anchored to.

@*param* `anchor` — Sets both the anchor point and anchor origin. (default: `"TOPLEFT"`)

@*param* `x` — The x-coordinate offset. (default: `0`)

@*param* `y` — The y-coordinate offset. (default: `0`)

```lua
-- ○ = Anchor Point
-- ● = Anchor Origin (X,Y) ──► +X (right)
-- │      ●──────┐
-- ▼ +Y   │ obj1 │  Aligns obj1 TOPLEFT to the parent obj TOPLEFT at the offset of (0,0).
-- (down) └──────┘
obj1:AddAnchor("TOPLEFT", 0, 0)
```

```lua
anchor:
    | "TOPLEFT"
    | "TOP"
    | "TOPRIGHT"
    | "LEFT"
    | "CENTER"
    | "RIGHT"
    | "BOTTOMLEFT"
    | "BOTTOM"
    | "BOTTOMRIGHT"
```

#### Method: AddAnchor
```lua
(method) Uibounds:AddAnchor(anchor: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), parentId: "UIParent"|Drawablebase|Widget, x: number, y: number)
```
Aligns the UI bounds to the specified anchor point at the given coordinates.

@*param* `anchor` — Sets both the anchor point and anchor origin. (default: `"TOPLEFT"`)

@*param* `parentId` — The parent widget or UIParent.

@*param* `x` — The x-coordinate offset. (default: `0`)

@*param* `y` — The y-coordinate offset. (default: `0`)

```lua
-- ○ = Anchor Point
-- ● = Anchor Origin (X,Y) ──► +X (right)
-- │      ●──────┐
-- ▼ +Y   │ obj2 │  Aligns obj2 TOPLEFT to obj1 TOPLEFT at the offset of (0,0).
-- (down) └──────┘
obj2:AddAnchor("TOPLEFT", obj1, 0, 0)
```

```lua
anchor:
    | "TOPLEFT"
    | "TOP"
    | "TOPRIGHT"
    | "LEFT"
    | "CENTER"
    | "RIGHT"
    | "BOTTOMLEFT"
    | "BOTTOM"
    | "BOTTOMRIGHT"

parentId:
    | "UIParent"
```

See:
  * [Widget](../types/Widget.md#class-widget)
  * [Drawablebase](../types/Drawablebase.md#class-drawablebase)

#### Method: AddAnchor
```lua
(method) Uibounds:AddAnchor(anchorPoint: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), parentId: "UIParent"|Drawablebase|Widget, anchorOrigin: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), x: number, y: number)
```
Aligns the UI bounds' anchor point to the specified parent and origin at the
given coordinates.

@*param* `anchorPoint` — The anchor point of the UI bounds. (default: `"TOPLEFT"`)

@*param* `parentId` — The parent widget or UIParent.

@*param* `anchorOrigin` — The anchor origin on the parent. (default: `"TOPLEFT"`)

@*param* `x` — The x-coordinate offset. (default: `0`)

@*param* `y` — The y-coordinate offset. (default: `0`)

```lua
-- ○ = Anchor Point
-- ● = Anchor Origin (X,Y) ──► +X (right)
-- │      ┌──────┐
-- ▼ +Y   │ obj1 │ Aligns obj2 TOPLEFT to obj1 BOTTOMRIGHT at the offset of (0,0).
-- (down) └──────●○──────┐
--                │ obj2 │
--                └──────┘
obj2:AddAnchor("TOPLEFT", obj1, "BOTTOMRIGHT", 0, 0)
```

```lua
anchorPoint:
    | "TOPLEFT"
    | "TOP"
    | "TOPRIGHT"
    | "LEFT"
    | "CENTER"
    | "RIGHT"
    | "BOTTOMLEFT"
    | "BOTTOM"
    | "BOTTOMRIGHT"

parentId:
    | "UIParent"

anchorOrigin:
    | "TOPLEFT"
    | "TOP"
    | "TOPRIGHT"
    | "LEFT"
    | "CENTER"
    | "RIGHT"
    | "BOTTOMLEFT"
    | "BOTTOM"
    | "BOTTOMRIGHT"
```

See:
  * [Widget](../types/Widget.md#class-widget)
  * [Drawablebase](../types/Drawablebase.md#class-drawablebase)

#### Method: ApplyUIScale
```lua
(method) Widget:ApplyUIScale(apply: boolean)
```
Applies or removes UI scaling for the Widget.

@*param* `apply` — `true` to apply UI scale, `false` to remove. (default: `true`)

#### Method: AttachWidget
```lua
(method) Widget:AttachWidget(widget: Widget)
```
Attaches a widget to the current Widget.

@*param* `widget` — The widget to attach.

#### Method: BindWidth
```lua
(method) Uibounds:BindWidth(width: number)
```
Binds the width of the UI bounds.

@*param* `width` — The width to bind.

#### Method: CancelRequestCharacterCacheData
```lua
(method) Widget:CancelRequestCharacterCacheData()
```
Cancels the request for character cache data.

#### Method: ChangeChildAnchorByScrollValue
```lua
(method) Widget:ChangeChildAnchorByScrollValue(typeStr: "horz"|"vert", value: number)
```
Changes the child anchor based on scroll value for the specified direction.

@*param* `typeStr` — The scroll direction (horizontal or vertical).

@*param* `value` — The scroll value.

```lua
typeStr:
    | "horz"
    | "vert"
```

#### Method: CheckOutOfScreen
```lua
(method) Uibounds:CheckOutOfScreen()
  -> outsideOfScreen: boolean
```
Checks if the UI bounds is outside the screen.

@*return* `outsideOfScreen` — `true` if the UI bounds is outside the screen, `false` otherwise.

#### Method: Clickable
```lua
(method) Widget:Clickable(clickable: boolean)
```
Enables or disables clickability for the Widget. (default: `true`)

@*param* `clickable` — `true` to enable clicking, `false` to disable.

#### Method: CorrectOffsetByScreen
```lua
(method) Uibounds:CorrectOffsetByScreen()
  -> offX: number
  2. offY: number
```
Retrieves the offset coordinates of the UI bounds, constrained by screen
dimensions.

@*return* `offX` — The x-offset (min: `0`, max: `screen width - effective width`).

@*return* `offY` — The y-offset (min: `0`, max: `screen height - effective height`).

#### Method: CreateChildWidget
```lua
(method) Widget:CreateChildWidget(objectTypeStr: "avi"|"button"|"chatwindow"|"checkbutton"|"circlediagram"...(+35), name: string, index: number, reflectToScriptTable: boolean)
  -> widget: <T>
```
Creates and returns a child widget, attaching it as a property to the Widget,
and gives the widget a draw priority z-index.

@*param* `objectTypeStr` — The type of widget to create.

@*param* `name` — The name of the widget.

@*param* `index` — The index of the widget, `0` sets `widget.name` whereas any number above `0` sets `widget.name[index]`.

@*param* `reflectToScriptTable` — Whether to attach the widget to the script table under its `name`.

@*return* `widget` — The created child widget, empty table if the widget hasn't been imported, or `nil` if creation fails.

```lua
local button = widget:CreateChildWidget("button", "exampleButton", 0, true)
---widget.exampleButton This is automatically set by this method.
```

```lua
objectTypeStr:
    | "avi"
    | "button"
    | "chatwindow"
    | "checkbutton"
    | "circlediagram"
    | "colorpicker"
    | "combobox"
    | "cooldownbutton"
    | "cooldownconstantbutton"
    | "cooldowninventorybutton"
    | "damagedisplay"
    | "dynamiclist"
    | "editbox"
    | "editboxmultiline"
    | "emptywidget"
    | "folder"
    | "gametooltip"
    | "grid"
    | "label"
    | "line"
    | "listbox"
    | "listctrl"
    | "megaphonechatedit"
    | "message"
    | "modelview"
    | "pageable"
    | "paintcolorpicker"
    | "radiogroup"
    | "roadmap"
    | "slider"
    | "slot"
    | "statusbar"
    | "tab"
    | "textbox"
    | "unitframetooltip"
    | "webbrowser"
    | "window"
    | "worldmap"
    | "x2editbox"
```

See: [Widget](../types/Widget.md#class-widget)

#### Method: CreateChildWidgetByType
```lua
(method) Widget:CreateChildWidgetByType(objectType: 0|1|10|11|12...(+51), name: string, index: number, reflectToScriptTable: boolean)
  -> widget: Widget
```
Creates and returns a child widget by type and gives the widget a draw priority z-index.

@*param* `objectType` — The type of widget to create.

@*param* `name` — The name of the widget.

@*param* `index` — The index of the widget.

@*param* `reflectToScriptTable` — Whether to attach the widget to the script table.

@*return* `widget` — The created child widget, empty table if the widget hasn't been imported, or `nil` if creation fails.

```lua
local button = widget:CreateChildWidgetByType(OBJECT.Button, "exampleButton", 0, true)
---widget.exampleButton This is automatically set by this method.
```

---

```lua
objectType:
    | 0 -- Window
    | 1 -- Label
    | 2 -- Button
    | 3 -- Editbox
    | 4 -- EditboxMultiline
    | 5 -- Listbox
    | 6 -- Drawable
    | 7 -- ColorDrawable
    | 8 -- NinePartDrawable
    | 9 -- ThreePartDrawable
    | 10 -- ImageDrawable
    | 11 -- IconDrawable
    | 12 -- TextDrawable
    | 13 -- TextStyle
    | 14 -- ThreeColorDrawable
    | 15 -- EffectDrawable
    | 16 -- Message
    | 17 -- StatusBar
    | 18 -- GameTooltip
    | 19 -- UnitframeTooltip
    | 20 -- CooldownButton
    | 21 -- CooldownInventoryButton
    | 22 -- CooldownConstantButton
    | 23 -- CheckButton
    | 24 -- Slider
    | 25 -- Pageable
    | 26 -- WorldMap
    | 27 -- RoadMap
    | 28 -- Grid
    | 29 -- ModelView
    | 30 -- Webbrowser
    | 31 -- CircleDiagram
    | 32 -- ColorPicker
    | 33 -- PaintColorPicker
    | 34 -- Folder
    | 35 -- DamageDisplay
    | 36 -- Tab
    | 37 -- SliderTab
    | 38 -- ChatWindow
    | 39 -- Textbox
    | 40 -- Combobox
    | 41 -- ComboListButton
    | 42 -- ChatMessage
    | 43 -- ChatEdit
    | 44 -- MegaphoneChatEdit
    | 45 -- ListCtrl
    | 46 -- EmptyWidget
    | 47 -- Slot
    | 48 -- Line
    | 49 -- Root
    | 50 -- TextureDrawable
    | 51 -- Webview
    | 52 -- Avi
    | 53 -- X2Editbox
    | 54 -- DynamicList
    | 55 -- RadioGroup
```

See: [Widget](../types/Widget.md#class-widget)

#### Method: CreateColorDrawable
```lua
(method) Widget:CreateColorDrawable(r: number, g: number, b: number, a: number, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: ColorDrawable
```
**Requires `ADDON:ImportObject(OBJECT.ColorDrawable)`**

Creates a color drawable for the specified layer.

@*param* `r` — Red value (min: `0`, max: `1`).

@*param* `g` — Green value (min: `0`, max: `1`).

@*param* `b` — Blue value (min: `0`, max: `1`).

@*param* `a` — Alpha value (min: `0`, max: `1`).

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created color drawable, or an empty table if the object `ColorDrawable` hasn't been imported.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [ColorDrawable](../objects/ColorDrawable.md#class-colordrawable)

#### Method: CreateColorDrawableByKey
```lua
(method) Widget:CreateColorDrawableByKey(colorKey: "action_slot_state_img_able"|"action_slot_state_img_can_learn"|"action_slot_state_img_cant_or_not_learn"|"action_slot_state_img_disable"|"common_black_bg"...(+27), nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: ColorDrawable
```
**Requires `ADDON:ImportObject(OBJECT.ColorDrawable)`**

Creates a color drawable using a color key for the specified layer.

@*param* `colorKey` — The color key to use.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created color drawable, or an empty table if the object `ColorDrawable` hasn't been imported.

```lua
-- game/ui/setting/etc_color.g
colorKey:
    | "action_slot_state_img_able"
    | "action_slot_state_img_can_learn"
    | "action_slot_state_img_cant_or_not_learn"
    | "action_slot_state_img_disable"
    | "common_black_bg"
    | "common_white_bg"
    | "craft_step_disable"
    | "craft_step_enable"
    | "editbox_cursor_default"
    | "editbox_cursor_light"
    | "icon_button_overlay_black"
    | "icon_button_overlay_none"
    | "icon_button_overlay_red"
    | "icon_button_overlay_yellow"
    | "login_stage_black_bg"
    | "map_hp_bar_bg"
    | "map_hp_bar"
    | "market_price_column_over"
    | "market_price_last_column"
    | "market_price_line_daily"
    | "market_price_line_weekly"
    | "market_price_volume"
    | "market_prict_cell"
    | "quest_content_directing_fade_in"
    | "quest_content_directing_fade_out"
    | "quest_content_directing_under_panel"
    | "quick_slot_bg"
    | "texture_check_window_bg"
    | "texture_check_window_data_label"
    | "texture_check_window_rect"
    | "texture_check_window_tooltip_bg"
    | "web_browser_background"

-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [ColorDrawable](../objects/ColorDrawable.md#class-colordrawable)

#### Method: CreateDrawable
```lua
(method) Widget:CreateDrawable(texturePath: string, textureKey: string, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: DrawableDDS
```
**Requires `ADDON:ImportObject(OBJECT.{drawableType})`**

Creates a drawable from the specified texture path and key. The key's `type`
will define what `drawableType` object needs to be imported. Casting the
return to the appropriate type may be neccessary.

@*param* `texturePath` — The texture path.

@*param* `textureKey` — The texture key taken from the `path` `*.g` file.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created drawable, or an empty table if the object `DrawableDDS` hasn't been imported.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: CreateEffectDrawable
```lua
(method) Widget:CreateEffectDrawable(texturePath: string, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: EffectDrawable|nil
```
**Requires `ADDON:ImportObject(OBJECT.EffectDrawable)`**

Creates an effect drawable for the specified texture and layer.

@*param* `texturePath` — The texture name.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created effect drawable, an empty table if the object `EffectDrawable` hasn't been imported, or `nil` if the texture doesn't exist.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [EffectDrawable](../objects/EffectDrawable.md#class-effectdrawable)

#### Method: CreateEffectDrawableByKey
```lua
(method) Widget:CreateEffectDrawableByKey(texturePath: string, textureKey: string, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: EffectDrawable
```
**Requires `ADDON:ImportObject(OBJECT.EffectDrawable)`**

Creates an effect drawable using a key for the specified texture and layer.

@*param* `texturePath` — The texture name.

@*param* `textureKey` — The texture key.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created effect drawable, or an empty table if the object `EffectDrawable` hasn't been imported.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [EffectDrawable](../objects/EffectDrawable.md#class-effectdrawable)

#### Method: CreateIconDrawable
```lua
(method) Widget:CreateIconDrawable(nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: IconDrawable
```
**Requires `ADDON:ImportObject(OBJECT.IconDrawable)`**

Creates an icon drawable for the specified layer.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created icon drawable, or an empty table if the object `IconDrawable` hasn't been imported.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [IconDrawable](../objects/IconDrawable.md#class-icondrawable)

#### Method: CreateImageDrawable
```lua
(method) Widget:CreateImageDrawable(texturePath: string, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: ImageDrawable|nil
```
***Requires `ADDON:ImportObject(OBJECT.ImageDrawable)`**

Creates an image drawable for the specified texture and layer. Addon images
can be used `Addon/{addonname}/example.dds`

@*param* `texturePath` — The texture path.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created image drawable, an empty table if the object `ImageDrawable` hasn't been imported, or `nil` if the texture doesn't exist.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [ImageDrawable](../objects/ImageDrawable.md#class-imagedrawable)

#### Method: CreateNinePartDrawable
```lua
(method) Widget:CreateNinePartDrawable(texturePath: string, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: NinePartDrawable
```
**Requires `ADDON:ImportObject(OBJECT.NinePartDrawable)`**

Creates a nine-part drawable for the specified texture and layer.

@*param* `texturePath` — The texture path.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created nine-part drawable, or an empty table if the object `NinePartDrawable` hasn't been imported.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [NinePartDrawable](../objects/NinePartDrawable.md#class-ninepartdrawable)

#### Method: CreateTextDrawable
```lua
(method) Widget:CreateTextDrawable(fontPath: "font_combat"|"font_main"|"font_sub", fontSize: number, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: TextDrawable
```
**Requires `ADDON:ImportObject(OBJECT.TextDrawable)`**

Creates a text drawable for the specified font and size.

@*param* `fontPath` — The font path.

@*param* `fontSize` — The font size.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created text drawable, or an empty table if the object `TextDrawable` hasn't been imported.

```lua
fontPath:
    | "font_main"
    | "font_sub"
    | "font_combat"

-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [TextDrawable](../objects/TextDrawable.md#class-textdrawable)

#### Method: CreateThreeColorDrawable
```lua
(method) Widget:CreateThreeColorDrawable(width: number, height: number, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: ThreeColorDrawable
```
**Requires `ADDON:ImportObject(OBJECT.ThreeColorDrawable)`**

Creates a three-color drawable for the specified dimensions and layer.

@*param* `width` — The width of the drawable.

@*param* `height` — The height of the drawable.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created three-color drawable, or an empty table if the object `ThreeColorDrawable` hasn't been imported.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [ThreeColorDrawable](../objects/ThreeColorDrawable.md#class-threecolordrawable)

#### Method: CreateThreePartDrawable
```lua
(method) Widget:CreateThreePartDrawable(texturePath: string, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
  -> drawable: ThreePartDrawable
```
**Requires `ADDON:ImportObject(OBJECT.ThreePartDrawable)`**

Creates a three-part drawable for the specified texture and layer.

@*param* `texturePath` — The texture path.

@*param* `nameLayer` — The layer to apply the drawable to.

@*return* `drawable` — The created three-part drawable, or an empty table if the object `ThreePartDrawable` hasn't been imported.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

See: [ThreePartDrawable](../objects/ThreePartDrawable.md#class-threepartdrawable)

#### Method: DetachWidget
```lua
(method) Widget:DetachWidget()
```
Detaches the Widget from its parent.

#### Method: DisableDrawables
```lua
(method) Widget:DisableDrawables(nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
```
Disables drawables for the specified layer.

@*param* `nameLayer` — The layer to disable.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: DisableDrawablesWithChildren
```lua
(method) Widget:DisableDrawablesWithChildren(nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
```
Disables drawables for the specified layer and its children.

@*param* `nameLayer` — The layer to disable.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: Enable
```lua
(method) Widget:Enable(enable: boolean)
```
Enables or disables the Widget and its handler actions `"OnClick"`.

@*param* `enable` — `true` to enable, `false` to disable. (default: `true`)

#### Method: EnableDrag
```lua
(method) Widget:EnableDrag(enable: boolean)
```
Enables or disables the Widget handler actions `"OnDragStart"` and `"OnDragStop"`.

@*param* `enable` — `true` to enable dragging, `false` to disable. (default: `false`)

#### Method: EnableDrawables
```lua
(method) Widget:EnableDrawables(nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
```
Enables drawables for the specified layer.

@*param* `nameLayer` — The layer to enable.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: EnableDrawablesWithChildren
```lua
(method) Widget:EnableDrawablesWithChildren(nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
```
Enables drawables for the specified layer and its children.

@*param* `nameLayer` — The layer to enable.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: EnableFocus
```lua
(method) Widget:EnableFocus(enable: boolean)
```
Enables or disables focus for the Widget.

@*param* `enable` — `true` to enable focus, `false` to disable.

#### Method: EnableHidingIsRemove
```lua
(method) Widget:EnableHidingIsRemove(enable: boolean)
```
Enables or disables `Widget:SetDeletedHandler` and when the widget is hidden
fires that event and then removes the Widget from the Widget Pool but doesn't remove all references.

@*param* `enable` — `true` to enable removal on hide, `false` to disable. (default: `false`)

#### Method: EnableKeyboard
```lua
(method) Widget:EnableKeyboard(enable: boolean)
```
Enables or disables the Widget handler actions `"OnKeyUp"` and `"OnKeyDown"`.

@*param* `enable` — `true` to enable keyboard input, `false` to disable.

#### Method: EnablePick
```lua
(method) Widget:EnablePick(enable: boolean)
```
Enables or disables the Widget handler action `"OnClick"`.

@*param* `enable` — `true` to enable picking, `false` to disable. (default: `true`)

#### Method: EnableScroll
```lua
(method) Widget:EnableScroll(enable: boolean)
```
Enables or disables scrolling for the Widget. Children widgets outside of the
parent widget will not render.

@*param* `enable` — `true` to enable scrolling, `false` to disable.

#### Method: GetAlpha
```lua
(method) Widget:GetAlpha()
  -> alpha: number
```
Retrieves the alpha value of the Widget.

@*return* `alpha` — The alpha value (min: `0`, max: `1`).

#### Method: GetAttachedWidget
```lua
(method) Widget:GetAttachedWidget()
  -> attachedWidget: Widget|nil
```
Retrieves the last attached widget of the Widget. Casting the return to the
appropriate type may be neccessary.

@*return* `attachedWidget` — The attached widget, or `nil` if none.

See: [Widget](../types/Widget.md#class-widget)

#### Method: GetEffectiveExtent
```lua
(method) Uibounds:GetEffectiveExtent()
  -> effectiveWidth: number
  2. effectiveHeight: number
```
Retrieves the effective width and height of the UI bounds, scaled if
ApplyUIScale is true.

@*return* `effectiveWidth` — The effective width.

@*return* `effectiveHeight` — The effective height.

#### Method: GetEffectiveOffset
```lua
(method) Uibounds:GetEffectiveOffset()
  -> effectiveOffX: number
  2. effectiveOffY: number
```
Retrieves the effective offset (left, top) of the UI bounds.

@*return* `effectiveOffX` — The effective x-offset.

@*return* `effectiveOffY` — The effective y-offset.

#### Method: GetExtent
```lua
(method) Uibounds:GetExtent()
  -> width: number
  2. height: number
```
Retrieves the unscaled width and height of the UI bounds.

@*return* `width` — The unscaled width.

@*return* `height` — The unscaled height.

#### Method: GetHeight
```lua
(method) Uibounds:GetHeight()
  -> height: number
```
Retrieves the unscaled height of the UI bounds.

@*return* `height` — The unscaled height.

#### Method: GetId
```lua
(method) Uiobject:GetId()
  -> id: string
```
Retrieves the ID of the UI object.

@*return* `id` — The UI object's ID.

#### Method: GetName
```lua
(method) Uiobject:GetName()
  -> name: string
```
Retrieves the name of the UI object.

#### Method: GetObjectType
```lua
(method) Uiobject:GetObjectType()
  -> objectType: "avi"|"button"|"chatwindow"|"checkbutton"|"circlediagram"...(+34)
```
Retrieves the object type of the UI object.

@*return* `objectType` — The UI object's type.

```lua
objectType:
    | "avi"
    | "button"
    | "chatwindow"
    | "checkbutton"
    | "circlediagram"
    | "colorpicker"
    | "combobox"
    | "cooldownbutton"
    | "cooldownconstantbutton"
    | "cooldowninventorybutton"
    | "damagedisplay"
    | "dynamiclist"
    | "editbox"
    | "editboxmultiline"
    | "emptywidget"
    | "folder"
    | "gametooltip"
    | "grid"
    | "label"
    | "line"
    | "listbox"
    | "listctrl"
    | "megaphonechatedit"
    | "message"
    | "modelview"
    | "pageable"
    | "paintcolorpicker"
    | "radiogroup"
    | "roadmap"
    | "slider"
    | "slot"
    | "statusbar"
    | "tab"
    | "textbox"
    | "unitframetooltip"
    | "webbrowser"
    | "window"
    | "worldmap"
    | "x2editbox"
```

#### Method: GetOffset
```lua
(method) Uibounds:GetOffset()
  -> offX: number
  2. offY: number
```
Retrieves the UI scaled offset (right, center) of the UI bounds.

@*return* `offX` — The x-offset, scaled up by 1 / UI scale.

@*return* `offY` — The y-offset, scaled up by 1 / UI scale.

#### Method: GetParent
```lua
(method) Widget:GetParent()
  -> parentWidget: Widget
```
Retrieves the parent widget of the Widget. Returns the current widget if no
parent exists. Casting the return to the appropriate type may be neccessary.

@*return* `parentWidget` — The parent widget.

#### Method: GetRotation
```lua
(method) Widget:GetRotation()
  -> rotation: string|nil
```
Retrieves the rotation of the widget.

#### Method: GetText
```lua
(method) Widget:GetText()
  -> text: string
```
Retrieves the text of the Widget.

@*return* `text` — The text content.

#### Method: GetUILayer
```lua
(method) Widget:GetUILayer()
  -> uiLayer: "background"|"dialog"|"game"|"hud"|"normal"...(+3)
```
Retrieves the UI layer of the Widget.

@*return* `uiLayer` — The UI layer. (default: `"normal"`)

```lua
-- Widgets with layers of the same level and parent can overlap based on focus.
uiLayer:
    | "background" -- Layer 0 (invisible)
    | "game" -- Layer 1
   -> "normal" -- Layer 2 (default)
    | "hud" -- Layer 3
    | "questdirecting" -- Layer 4
    | "dialog" -- Layer 5
    | "tooltip" -- Layer 6
    | "system" -- Layer 7
```

#### Method: GetValue
```lua
(method) Widget:GetValue(typeStr: string)
  -> value: number
```
Retrieves the value for the specified type.

@*param* `typeStr` — The type to query.

@*return* `value` — The value associated with the type.

```lua
local value = widget:GetValue("state")
```

#### Method: GetWidth
```lua
(method) Uibounds:GetWidth()
  -> width: number
```
Retrieves the unscaled width of the UI bounds.

@*return* `width` — The unscaled width.

#### Method: HasHandler
```lua
(method) Widget:HasHandler(actionName: "OnAcceptFocus"|"OnAlphaAnimeEnd"|"OnBoundChanged"|"OnChangedAnchor"|"OnCheckChanged"...(+44))
  -> handlerExists: boolean
```
Checks if the Widget has a handler for the specified action.

@*param* `actionName` — The action name to check.

@*return* `handlerExists` — `true` if a handler exists, `false` otherwise.

```lua
actionName:
    | "OnAcceptFocus"
    | "OnAlphaAnimeEnd"
    | "OnBoundChanged"
    | "OnChangedAnchor"
    | "OnCheckChanged"
    | "OnClick"
    | "OnCloseByEsc"
    | "OnContentUpdated"
    | "OnCursorMoved"
    | "OnDragReceive"
    | "OnDragStart"
    | "OnDragStop"
    | "OnDynamicListUpdatedView"
    | "OnEffect"
    | "OnEnableChanged"
    | "OnEndFadeIn"
    | "OnEndFadeOut"
    | "OnEnter"
    | "OnEnterPressed"
    | "OnEscapePressed"
    | "OnEvent"
    | "OnHide"
    | "OnKeyDown"
    | "OnKeyUp"
    | "OnLeave"
    | "OnListboxToggled"
    | "OnModelChanged"
    | "OnMouseDown"
    | "OnMouseMove"
    | "OnMouseUp"
    | "OnMovedPosition"
    | "OnPageChanged"
    | "OnPermissionChanged"
    | "OnRadioChanged"
    | "OnRestricted"
    | "OnScale"
    | "OnScaleAnimeEnd"
    | "OnSelChanged"
    | "OnShow"
    | "OnSliderChanged"
    | "OnTabChanged"
    | "OnTextChanged"
    | "OnTooltip"
    | "OnUpdate"
    | "OnVisibleChanged"
    | "OnWheelDown"
    | "OnWheelUp"
    | "PreClick"
    | "PreUse"
```

#### Method: InheritAnimationData
```lua
(method) Widget:InheritAnimationData(widget: Widget)
```
Inherits animation data from the specified widget.

@*param* `widget` — The widget to inherit animation data from.

#### Method: IsDescendantWidget
```lua
(method) Widget:IsDescendantWidget(id: string)
  -> descendantWidget: boolean
```
Checks if the specified ID is a descendant of the Widget.

@*param* `id` — The ID to check.

@*return* `descendantWidget` — `true` if the ID is a descendant, `false` otherwise.

```lua
local button = widget:CreateChildWidget("button", "exampleButton", 0, true)
local descendantWidget = widget:IsDescendantWidget(button:GetId())
```

#### Method: IsEnabled
```lua
(method) Widget:IsEnabled()
  -> enabled: boolean
```
Checks if the Widget is enabled.

@*return* `enabled` — `true` if enabled, `false` otherwise.

#### Method: IsMouseOver
```lua
(method) Widget:IsMouseOver()
  -> mouseOver: boolean
```
Checks if the mouse is over the Widget.

@*return* `mouseOver` — `true` if the mouse is over, `false` otherwise.

#### Method: IsNowAnimation
```lua
(method) Widget:IsNowAnimation()
  -> nowAnimation: boolean
```
Checks if the Widget is currently animating.

@*return* `nowAnimation` — `true` if animating, `false` otherwise.

#### Method: IsValidUIObject
```lua
(method) Uiobject:IsValidUIObject()
  -> validUiobject: boolean
```
Checks if the UI object is still valid. A UI object can become invalid if it
has been removed from the games Widget Pool through
`Widget:EnableHidingIsRemove(true)`

@*return* `validUiobject` — `true` if the UI object is valid, `false` otherwise.

#### Method: IsVisible
```lua
(method) Widget:IsVisible()
  -> visible: boolean
```
Checks if the Widget is visible.

@*return* `visible` — `true` if visible, `false` otherwise.

#### Method: Lower
```lua
(method) Widget:Lower()
```
Lowers the Widget in the UI hierarchy.

#### Method: MoveTo
```lua
(method) Widget:MoveTo(x: number, y: number)
```
Moves the Widget to the specified coordinates from the TOPLEFT corner.

@*param* `x` — The x-coordinate.

@*param* `y` — The y-coordinate.

#### Method: Raise
```lua
(method) Widget:Raise()
```
Raises the Widget in the UI hierarchy.

#### Method: RegisterEvent
```lua
(method) Widget:RegisterEvent(eventName: "ABILITY_CHANGED"|"ABILITY_EXP_CHANGED"|"ABILITY_SET_CHANGED"|"ABILITY_SET_USABLE_SLOT_COUNT_CHANGED"|"ACCOUNT_ATTENDANCE_ADDED"...(+874))
```
Registers an event for the Widget to be accessible by the OnEvent handler
action.

@*param* `eventName` — The event to register.

```lua
eventName:
    | "ABILITY_CHANGED"
    | "ABILITY_EXP_CHANGED"
    | "ABILITY_SET_CHANGED"
    | "ABILITY_SET_USABLE_SLOT_COUNT_CHANGED"
    | "ACCOUNT_ATTENDANCE_ADDED"
    | "ACCOUNT_ATTENDANCE_LOADED"
    | "ACCOUNT_ATTRIBUTE_UPDATED"
    | "ACCOUNT_RESTRICT_NOTICE"
    | "ACHIEVEMENT_UPDATE"
    | "ACQUAINTANCE_LOGIN"
    | "ACTABILITY_EXPERT_CHANGED"
    | "ACTABILITY_EXPERT_EXPANDED"
    | "ACTABILITY_EXPERT_GRADE_CHANGED"
    | "ACTABILITY_MODIFIER_UPDATE"
    | "ACTABILITY_REFRESH_ALL"
    | "ACTION_BAR_AUTO_REGISTERED"
    | "ACTION_BAR_PAGE_CHANGED"
    | "ACTIONS_UPDATE"
    | "ADD_GIVEN_QUEST_INFO"
    | "ADD_NOTIFY_QUEST_INFO"
    | "ADDED_ITEM"
    | "ADDON_LOADED"
    | "AGGRO_METER_CLEARED"
    | "AGGRO_METER_UPDATED"
    | "ALL_SIEGE_RAID_TEAM_INFOS"
    | "ANTIBOT_PUNISH"
    | "APPELLATION_CHANGED"
    | "APPELLATION_GAINED"
    | "APPELLATION_STAMP_SET"
    | "ARCHE_PASS_BUY"
    | "ARCHE_PASS_COMPLETED"
    | "ARCHE_PASS_DROPPED"
    | "ARCHE_PASS_EXPIRED"
    | "ARCHE_PASS_LOADED"
    | "ARCHE_PASS_MISSION_CHANGED"
    | "ARCHE_PASS_MISSION_COMPLETED"
    | "ARCHE_PASS_OWNED"
    | "ARCHE_PASS_RESETED"
    | "ARCHE_PASS_STARTED"
    | "ARCHE_PASS_UPDATE_POINT"
    | "ARCHE_PASS_UPDATE_REWARD_ITEM"
    | "ARCHE_PASS_UPDATE_TIER"
    | "ARCHE_PASS_UPGRADE_PREMIUM"
    | "ASK_BUY_LABOR_POWER_POTION"
    | "ASK_FORCE_ATTACK"
    | "AUCTION_BIDDED"
    | "AUCTION_BIDDEN"
    | "AUCTION_BOUGHT"
    | "AUCTION_BOUGHT_BY_SOMEONE"
    | "AUCTION_CANCELED"
    | "AUCTION_CHARACTER_LEVEL_TOO_LOW"
    | "AUCTION_ITEM_ATTACHMENT_STATE_CHANGED"
    | "AUCTION_ITEM_PUT_UP"
    | "AUCTION_ITEM_SEARCH"
    | "AUCTION_ITEM_SEARCHED"
    | "AUCTION_LOWEST_PRICE"
    | "AUCTION_PERMISSION_BY_CRAFT"
    | "AUCTION_TOGGLE"
    | "AUDIENCE_JOINED"
    | "AUDIENCE_LEFT"
    | "BAD_USER_LIST_UPDATE"
    | "BADWORD_USER_REPORED_RESPONE_MSG"
    | "BAG_EXPANDED"
    | "BAG_ITEM_CONFIRMED"
    | "BAG_REAL_INDEX_SHOW"
    | "BAG_TAB_CREATED"
    | "BAG_TAB_REMOVED"
    | "BAG_TAB_SORTED"
    | "BAG_TAB_SWITCHED"
    | "BAG_UPDATE"
    | "BAN_PLAYER_RESULT"
    | "BANK_EXPANDED"
    | "BANK_REAL_INDEX_SHOW"
    | "BANK_TAB_CREATED"
    | "BANK_TAB_REMOVED"
    | "BANK_TAB_SORTED"
    | "BANK_TAB_SWITCHED"
    | "BANK_UPDATE"
    | "BEAUTYSHOP_CLOSE_BY_SYSTEM"
    | "BLESS_UTHSTIN_EXTEND_MAX_STATS"
    | "BLESS_UTHSTIN_ITEM_SLOT_CLEAR"
    | "BLESS_UTHSTIN_ITEM_SLOT_SET"
    | "BLESS_UTHSTIN_MESSAGE"
    | "BLESS_UTHSTIN_UPDATE_STATS"
    | "BLESS_UTHSTIN_WILL_APPLY_STATS"
    | "BLOCKED_USER_LIST"
    | "BLOCKED_USER_UPDATE"
    | "BLOCKED_USERS_INFO"
    | "BOT_SUSPECT_REPORTED"
    | "BUFF_SKILL_CHANGED"
    | "BUFF_UPDATE"
    | "BUILD_CONDITION"
    | "BUILDER_END"
    | "BUILDER_STEP"
    | "BUTLER_INFO_UPDATED"
    | "BUTLER_UI_COMMAND"
    | "BUY_RESULT_AA_POINT"
    | "BUY_SPECIALTY_CONTENT_INFO"
    | "CANCEL_CRAFT_ORDER"
    | "CANCEL_REBUILD_HOUSE_CAMERA_MODE"
    | "CANDIDATE_LIST_CHANGED"
    | "CANDIDATE_LIST_HIDE"
    | "CANDIDATE_LIST_SELECTION_CHANGED"
    | "CANDIDATE_LIST_SHOW"
    | "CHANGE_ACTABILITY_DECO_NUM"
    | "CHANGE_CONTRIBUTION_POINT_TO_PLAYER"
    | "CHANGE_CONTRIBUTION_POINT_TO_STORE"
    | "CHANGE_MY_LANGUAGE"
    | "CHANGE_OPTION"
    | "CHANGE_PAY_INFO"
    | "CHANGE_VISUAL_RACE_ENDED"
    | "CHANGED_AUTO_USE_AAPOINT"
    | "CHANGED_MSG"
    | "CHAT_DICE_VALUE"
    | "CHAT_EMOTION"
    | "CHAT_FAILED"
    | "CHAT_JOINED_CHANNEL"
    | "CHAT_LEAVED_CHANNEL"
    | "CHAT_MESSAGE"
    | "CHAT_MSG_ALARM"
    | "CHAT_MSG_DOODAD"
    | "CHAT_MSG_QUEST"
    | "CHECK_TEXTURE"
    | "CLEAR_BOSS_TELESCOPE_INFO"
    | "CLEAR_CARRYING_BACKPACK_SLAVE_INFO"
    | "CLEAR_COMPLETED_QUEST_INFO"
    | "CLEAR_CORPSE_INFO"
    | "CLEAR_DOODAD_INFO"
    | "CLEAR_FISH_SCHOOL_INFO"
    | "CLEAR_GIVEN_QUEST_STATIC_INFO"
    | "CLEAR_HOUSING_INFO"
    | "CLEAR_MY_SLAVE_POS_INFO"
    | "CLEAR_NOTIFY_QUEST_INFO"
    | "CLEAR_NPC_INFO"
    | "CLEAR_SHIP_TELESCOPE_INFO"
    | "CLEAR_TRANSFER_TELESCOPE_INFO"
    | "CLOSE_CRAFT_ORDER"
    | "CLOSE_MUSIC_SHEET"
    | "COFFER_INTERACTION_END"
    | "COFFER_INTERACTION_START"
    | "COFFER_REAL_INDEX_SHOW"
    | "COFFER_TAB_CREATED"
    | "COFFER_TAB_REMOVED"
    | "COFFER_TAB_SORTED"
    | "COFFER_TAB_SWITCHED"
    | "COFFER_UPDATE"
    | "COMBAT_MSG"
    | "COMBAT_TEXT"
    | "COMBAT_TEXT_COLLISION"
    | "COMBAT_TEXT_SYNERGY"
    | "COMMON_FARM_UPDATED"
    | "COMMUNITY_ERROR"
    | "COMPLETE_ACHIEVEMENT"
    | "COMPLETE_CRAFT_ORDER"
    | "COMPLETE_QUEST_CONTEXT_DOODAD"
    | "COMPLETE_QUEST_CONTEXT_NPC"
    | "CONSOLE_WRITE"
    | "CONVERT_TO_RAID_TEAM"
    | "COPY_RAID_MEMBERS_TO_CLIPBOARD"
    | "CRAFT_DOODAD_INFO"
    | "CRAFT_ENDED"
    | "CRAFT_FAILED"
    | "CRAFT_ORDER_ENTRY_SEARCHED"
    | "CRAFT_RECIPE_ADDED"
    | "CRAFT_STARTED"
    | "CRAFT_TRAINED"
    | "CRAFTING_END"
    | "CRAFTING_START"
    | "CREATE_ORIGIN_UCC_ITEM"
    | "CRIME_REPORTED"
    | "DEBUFF_UPDATE"
    | "DELETE_CRAFT_ORDER"
    | "DELETE_PORTAL"
    | "DESTROY_PAPER"
    | "DIAGONAL_ASR"
    | "DIAGONAL_LINE"
    | "DICE_BID_RULE_CHANGED"
    | "DISCONNECT_FROM_AUTH"
    | "DISCONNECTED_BY_WORLD"
    | "DISMISS_PET"
    | "DIVE_END"
    | "DIVE_START"
    | "DOMINION"
    | "DOMINION_GUARD_TOWER_STATE_NOTICE"
    | "DOMINION_GUARD_TOWER_UPDATE_TOOLTIP"
    | "DOMINION_SIEGE_PARTICIPANT_COUNT_CHANGED"
    | "DOMINION_SIEGE_PERIOD_CHANGED"
    | "DOMINION_SIEGE_SYSTEM_NOTICE"
    | "DOMINION_SIEGE_UPDATE_TIMER"
    | "DOODAD_LOGIC"
    | "DOODAD_PHASE_MSG"
    | "DOODAD_PHASE_UI_MSG"
    | "DRAW_DOODAD_SIGN_TAG"
    | "DRAW_DOODAD_TOOLTIP"
    | "DYEING_END"
    | "DYEING_START"
    | "DYNAMIC_ACTION_BAR_HIDE"
    | "DYNAMIC_ACTION_BAR_SHOW"
    | "ENABLE_TEAM_AREA_INVITATION"
    | "ENCHANT_EXAMINE"
    | "ENCHANT_RESULT"
    | "ENCHANT_SAY_ABILITY"
    | "END_HERO_ELECTION_PERIOD"
    | "END_QUEST_CHAT_BUBBLE"
    | "ENDED_DUEL"
    | "ENTER_ANOTHER_ZONEGROUP"
    | "ENTER_ENCHANT_ITEM_MODE"
    | "ENTER_GACHA_LOOT_MODE"
    | "ENTER_ITEM_LOOK_CONVERT_MODE"
    | "ENTER_WORLD_CANCELLED"
    | "ENTERED_INSTANT_GAME_ZONE"
    | "ENTERED_LOADING"
    | "ENTERED_LOGIN"
    | "ENTERED_SCREEN_SHOT_CAMERA_MODE"
    | "ENTERED_SUBZONE"
    | "ENTERED_WORLD"
    | "ENTERED_WORLD_SELECT"
    | "EQUIP_SLOT_REINFORCE_MSG_CHAGNE_LEVEL_EFFECT"
    | "EQUIP_SLOT_REINFORCE_EXPAND_PAGE"
    | "EQUIP_SLOT_REINFORCE_MSG_LEVEL_EFFECT"
    | "EQUIP_SLOT_REINFORCE_MSG_LEVEL_UP"
    | "EQUIP_SLOT_REINFORCE_MSG_SET_EFFECT"
    | "EQUIP_SLOT_REINFORCE_SELECT_PAGE"
    | "EQUIP_SLOT_REINFORCE_UPDATE"
    | "ESC_MENU_ADD_BUTTON"
    | "ESCAPE_END"
    | "ESCAPE_START"
    | "EVENT_SCHEDULE_START"
    | "EVENT_SCHEDULE_STOP"
    | "EXP_CHANGED"
    | "EXPEDITION_APPLICANT_ACCEPT"
    | "EXPEDITION_APPLICANT_REJECT"
    | "EXPEDITION_BUFF_CHANGE"
    | "EXPEDITION_EXP"
    | "EXPEDITION_HISTORY"
    | "EXPEDITION_LEVEL_UP"
    | "EXPEDITION_MANAGEMENT_APPLICANT_ACCEPT"
    | "EXPEDITION_MANAGEMENT_APPLICANT_ADD"
    | "EXPEDITION_MANAGEMENT_APPLICANT_DEL"
    | "EXPEDITION_MANAGEMENT_APPLICANT_REJECT"
    | "EXPEDITION_MANAGEMENT_APPLICANTS"
    | "EXPEDITION_MANAGEMENT_GUILD_FUNCTION_CHANGED"
    | "EXPEDITION_MANAGEMENT_MEMBER_NAME_CHANGED"
    | "EXPEDITION_MANAGEMENT_MEMBER_STATUS_CHANGED"
    | "EXPEDITION_MANAGEMENT_MEMBERS_INFO"
    | "EXPEDITION_MANAGEMENT_POLICY_CHANGED"
    | "EXPEDITION_MANAGEMENT_RECRUITMENT_ADD"
    | "EXPEDITION_MANAGEMENT_RECRUITMENT_DEL"
    | "EXPEDITION_MANAGEMENT_RECRUITMENTS"
    | "EXPEDITION_MANAGEMENT_ROLE_CHANGED"
    | "EXPEDITION_MANAGEMENT_UPDATED"
    | "EXPEDITION_RANKING"
    | "EXPEDITION_SUMMON_SUGGEST"
    | "EXPEDITION_WAR_DECLARATION_FAILED"
    | "EXPEDITION_WAR_DECLARATION_MONEY"
    | "EXPEDITION_WAR_KILL_SCORE"
    | "EXPEDITION_WAR_SET_PROTECT_DATE"
    | "EXPEDITION_WAR_STATE"
    | "EXPIRED_ITEM"
    | "FACTION_CHANGED"
    | "FACTION_COMPETITION_INFO"
    | "FACTION_COMPETITION_RESULT"
    | "FACTION_COMPETITION_UPDATE_POINT"
    | "FACTION_RELATION_ACCEPTED"
    | "FACTION_RELATION_CHANGED"
    | "FACTION_RELATION_COUNT"
    | "FACTION_RELATION_DENIED"
    | "FACTION_RELATION_HISTORY"
    | "FACTION_RELATION_REQUESTED"
    | "FACTION_RELATION_WILL_CHANGE"
    | "FACTION_RENAMED"
    | "FADE_INOUT_DONE"
    | "FAIL_WEB_PLAY_DIARY_INSTANT"
    | "FAILED_TO_SET_PET_AUTO_SKILL"
    | "FAMILY_ERROR"
    | "FAMILY_EXP_ADD"
    | "FAMILY_INFO_REFRESH"
    | "FAMILY_LEVEL_UP"
    | "FAMILY_MEMBER"
    | "FAMILY_MEMBER_ADDED"
    | "FAMILY_MEMBER_KICKED"
    | "FAMILY_MEMBER_LEFT"
    | "FAMILY_MEMBER_ONLINE"
    | "FAMILY_MGR"
    | "FAMILY_NAME_CHANGED"
    | "FAMILY_OWNER_CHANGED"
    | "FAMILY_REFRESH"
    | "FAMILY_REMOVED"
    | "FIND_FACTION_REZ_DISTRICT_COOLTIME_FAIL"
    | "FIND_FACTION_REZ_DISTRICT_DURATION_FAIL"
    | "FOLDER_STATE_CHANGED"
    | "FORCE_ATTACK_CHANGED"
    | "FRIENDLIST"
    | "FRIENDLIST_INFO"
    | "FRIENDLIST_UPDATE"
    | "GACHA_LOOT_PACK_LOG"
    | "GACHA_LOOT_PACK_RESULT"
    | "GAME_EVENT_EMPTY"
    | "GAME_EVENT_INFO_LIST_UPDATED"
    | "GAME_EVENT_INFO_REQUESTED"
    | "GAME_SCHEDULE"
    | "GENDER_TRANSFERED"
    | "GLIDER_MOVED_INTO_BAG"
    | "GOODS_MAIL_INBOX_ITEM_TAKEN"
    | "GOODS_MAIL_INBOX_MONEY_TAKEN"
    | "GOODS_MAIL_INBOX_TAX_PAID"
    | "GOODS_MAIL_INBOX_UPDATE"
    | "GOODS_MAIL_RETURNED"
    | "GOODS_MAIL_SENT_SUCCESS"
    | "GOODS_MAIL_SENTBOX_UPDATE"
    | "GOODS_MAIL_WRITE_ITEM_UPDATE"
    | "GRADE_ENCHANT_BROADCAST"
    | "GRADE_ENCHANT_RESULT"
    | "GUARDTOWER_HEALTH_CHANGED"
    | "GUILD_BANK_INTERACTION_END"
    | "GUILD_BANK_INTERACTION_START"
    | "GUILD_BANK_INVEN_SHOW"
    | "GUILD_BANK_MONEY_UPDATE"
    | "GUILD_BANK_REAL_INDEX_SHOW"
    | "GUILD_BANK_TAB_CREATED"
    | "GUILD_BANK_TAB_REMOVED"
    | "GUILD_BANK_TAB_SORTED"
    | "GUILD_BANK_TAB_SWITCHED"
    | "GUILD_BANK_UPDATE"
    | "HEIR_LEVEL_UP"
    | "HEIR_SKILL_ACTIVE_TYPE_MSG"
    | "HEIR_SKILL_LEARN"
    | "HEIR_SKILL_RESET"
    | "HEIR_SKILL_UPDATE"
    | "HERO_ALL_SCORE_UPDATED"
    | "HERO_ANNOUNCE_REMAIN_TIME"
    | "HERO_CANDIDATE_NOTI"
    | "HERO_CANDIDATES_ANNOUNCED"
    | "HERO_ELECTION"
    | "HERO_ELECTION_DAY_ALERT"
    | "HERO_ELECTION_RESULT"
    | "HERO_ELECTION_VOTED"
    | "HERO_NOTI"
    | "HERO_RANK_DATA_RETRIEVED"
    | "HERO_RANK_DATA_TIMEOUT"
    | "HERO_SCORE_UPDATED"
    | "HERO_SEASON_OFF"
    | "HERO_SEASON_UPDATED"
    | "HIDE_ROADMAP_TOOLTIP"
    | "HIDE_SKILL_MAP_EFFECT"
    | "HIDE_WORLDMAP_TOOLTIP"
    | "HOUSE_BUILD_INFO"
    | "HOUSE_BUY_FAIL"
    | "HOUSE_BUY_SUCCESS"
    | "HOUSE_CANCEL_SELL_FAIL"
    | "HOUSE_CANCEL_SELL_SUCCESS"
    | "HOUSE_DECO_UPDATED"
    | "HOUSE_FARM_MSG"
    | "HOUSE_INFO_UPDATED"
    | "HOUSE_INTERACTION_END"
    | "HOUSE_INTERACTION_START"
    | "HOUSE_PERMISSION_UPDATED"
    | "HOUSE_REBUILD_TAX_INFO"
    | "HOUSE_ROTATE_CONFIRM"
    | "HOUSE_SALE_SUCCESS"
    | "HOUSE_SET_SELL_FAIL"
    | "HOUSE_SET_SELL_SUCCESS"
    | "HOUSE_STEP_INFO_UPDATED"
    | "HOUSE_TAX_INFO"
    | "HOUSING_UCC_CLOSE"
    | "HOUSING_UCC_ITEM_SLOT_CLEAR"
    | "HOUSING_UCC_ITEM_SLOT_SET"
    | "HOUSING_UCC_LEAVE"
    | "HOUSING_UCC_UPDATED"
    | "HPW_ZONE_STATE_CHANGE"
    | "HPW_ZONE_STATE_WAR_END"
    | "IME_STATUS_CHANGED"
    | "INDUN_INITAL_ROUND_INFO"
    | "INDUN_ROUND_END"
    | "INDUN_ROUND_START"
    | "INDUN_UPDATE_ROUND_INFO"
    | "INGAME_SHOP_BUY_RESULT"
    | "INIT_CHRONICLE_INFO"
    | "INSERT_CRAFT_ORDER"
    | "INSTANCE_ENTERABLE_MSG"
    | "INSTANT_GAME_BEST_RATING_REWARD"
    | "INSTANT_GAME_END"
    | "INSTANT_GAME_JOIN_APPLY"
    | "INSTANT_GAME_JOIN_CANCEL"
    | "INSTANT_GAME_KILL"
    | "INSTANT_GAME_PICK_BUFFS"
    | "INSTANT_GAME_READY"
    | "INSTANT_GAME_RETIRE"
    | "INSTANT_GAME_ROUND_RESULT"
    | "INSTANT_GAME_START"
    | "INSTANT_GAME_START_POINT_RETURN_MSG"
    | "INSTANT_GAME_UNEARNED_WIN_REMAIN_TIME"
    | "INSTANT_GAME_VISIT_COUNT_RESET"
    | "INSTANT_GAME_WAIT"
    | "INTERACTION_END"
    | "INTERACTION_START"
    | "INVALID_NAME_POLICY"
    | "INVEN_SLOT_SPLIT"
    | "ITEM_ACQUISITION_BY_LOOT"
    | "ITEM_CHANGE_MAPPING_RESULT"
    | "ITEM_ENCHANT_MAGICAL_RESULT"
    | "ITEM_EQUIP_RESULT"
    | "ITEM_LOOK_CONVERTED"
    | "ITEM_LOOK_CONVERTED_EFFECT"
    | "ITEM_REFURBISHMENT_RESULT"
    | "ITEM_SMELTING_RESULT"
    | "ITEM_SOCKET_UPGRADE"
    | "ITEM_SOCKETING_RESULT"
    | "JURY_OK_COUNT"
    | "JURY_WAITING_NUMBER"
    | "LABORPOWER_CHANGED"
    | "LEAVE_ENCHANT_ITEM_MODE"
    | "LEAVE_GACHA_LOOT_MODE"
    | "LEAVE_ITEM_LOOK_CONVERT_MODE"
    | "LEAVED_INSTANT_GAME_ZONE"
    | "LEAVING_WORLD_CANCELED"
    | "LEAVING_WORLD_STARTED"
    | "LEFT_LOADING"
    | "LEFT_LOGIN"
    | "LEFT_SCREEN_SHOT_CAMERA_MODE"
    | "LEFT_SUBZONE"
    | "LEFT_WORLD"
    | "LEVEL_CHANGED"
    | "LOGIN_CHARACTER_UPDATED"
    | "LOGIN_DENIED"
    | "LOOT_BAG_CHANGED"
    | "LOOT_BAG_CLOSE"
    | "LOOT_DICE"
    | "LOOT_PACK_ITEM_BROADCAST"
    | "LOOTING_RULE_BOP_CHANGED"
    | "LOOTING_RULE_GRADE_CHANGED"
    | "LOOTING_RULE_MASTER_CHANGED"
    | "LOOTING_RULE_METHOD_CHANGED"
    | "LP_MANAGE_CHARACTER_CHANGED"
    | "MAIL_INBOX_ATTACHMENT_TAKEN_ALL"
    | "MAIL_INBOX_ITEM_TAKEN"
    | "MAIL_INBOX_MONEY_TAKEN"
    | "MAIL_INBOX_TAX_PAID"
    | "MAIL_INBOX_UPDATE"
    | "MAIL_RETURNED"
    | "MAIL_SENT_SUCCESS"
    | "MAIL_SENTBOX_UPDATE"
    | "MAIL_WRITE_ITEM_UPDATE"
    | "MAP_EVENT_CHANGED"
    | "MATE_SKILL_LEARNED"
    | "MATE_STATE_UPDATE"
    | "MEGAPHONE_MESSAGE"
    | "MIA_MAIL_INBOX_ITEM_TAKEN"
    | "MIA_MAIL_INBOX_MONEY_TAKEN"
    | "MIA_MAIL_INBOX_TAX_PAID"
    | "MIA_MAIL_INBOX_UPDATE"
    | "MIA_MAIL_RETURNED"
    | "MIA_MAIL_SENT_SUCCESS"
    | "MIA_MAIL_SENTBOX_UPDATE"
    | "MIA_MAIL_WRITE_ITEM_UPDATE"
    | "MINE_AMOUNT"
    | "MINI_SCOREBOARD_CHANGED"
    | "MODE_ACTIONS_UPDATE"
    | "MONEY_ACQUISITION_BY_LOOT"
    | "MOUNT_BAG_UPDATE"
    | "MOUNT_PET"
    | "MOUNT_SLOT_CHANGED"
    | "MOUSE_CLICK"
    | "MOUSE_DOWN"
    | "MOUSE_UP"
    | "MOVE_SPEED_CHANGE"
    | "MOVIE_ABORT"
    | "MOVIE_LOAD"
    | "MOVIE_START"
    | "MOVIE_STOP"
    | "MULTI_QUEST_CONTEXT_SELECT"
    | "MULTI_QUEST_CONTEXT_SELECT_LIST"
    | "NAME_TAG_MODE_CHANGED_MSG"
    | "NATION_DOMINION"
    | "NAVI_MARK_POS_TO_MAP"
    | "NAVI_MARK_REMOVE"
    | "NEW_DAY_STARTED"
    | "NEW_SKILL_POINT"
    | "NEXT_SIEGE_INFO"
    | "NOTICE_MESSAGE"
    | "NOTIFY_AUTH_ADVERTISING_MESSAGE"
    | "NOTIFY_AUTH_BILLING_MESSAGE"
    | "NOTIFY_AUTH_DISCONNECTION_MESSAGE"
    | "NOTIFY_AUTH_FATIGUE_MESSAGE"
    | "NOTIFY_AUTH_NOTICE_MESSAGE"
    | "NOTIFY_AUTH_TC_FATIGUE_MESSAGE"
    | "NOTIFY_WEB_TRANSFER_STATE"
    | "NPC_CRAFT_ERROR"
    | "NPC_CRAFT_UPDATE"
    | "NPC_INTERACTION_END"
    | "NPC_INTERACTION_START"
    | "UNIT_NPC_EQUIPMENT_CHANGED"
    | "NUONS_ARROW_SHOW"
    | "NUONS_ARROW_UI_MSG"
    | "NUONS_ARROW_UPDATE"
    | "ONE_AND_ONE_CHAT_ADD_MESSAGE"
    | "ONE_AND_ONE_CHAT_END"
    | "ONE_AND_ONE_CHAT_START"
    | "OPEN_ARS"
    | "OPEN_CHAT"
    | "OPEN_COMMON_FARM_INFO"
    | "OPEN_CONFIG"
    | "OPEN_CRAFT_ORDER_BOARD"
    | "OPEN_EMBLEM_IMPRINT_UI"
    | "OPEN_EMBLEM_UPLOAD_UI"
    | "OPEN_EXPEDITION_PORTAL_LIST"
    | "OPEN_MUSIC_SHEET"
    | "OPEN_NAVI_DOODAD_NAMING_DIALOG"
    | "OPEN_OTP"
    | "OPEN_PAPER"
    | "OPEN_PCCERT"
    | "OPEN_PROMOTION_EVENT_URL"
    | "OPEN_SECURE_CARD"
    | "OPEN_WORLD_QUEUE"
    | "OPTIMIZATION_RESULT_MESSAGE"
    | "OPTION_RESET"
    | "PASSENGER_MOUNT_PET"
    | "PASSENGER_UNMOUNT_PET"
    | "PET_AUTO_SKILL_CHANGED"
    | "PET_FOLLOWING_MASTER"
    | "PET_STOP_BY_MASTER"
    | "PETMATE_BOUND"
    | "PETMATE_UNBOUND"
    | "PLAYER_AA_POINT"
    | "PLAYER_ABILITY_LEVEL_CHANGED"
    | "PLAYER_BANK_AA_POINT"
    | "PLAYER_BANK_MONEY"
    | "PLAYER_BM_POINT"
    | "PLAYER_GEAR_POINT"
    | "PLAYER_HONOR_POINT"
    | "PLAYER_HONOR_POINT_CHANGED_IN_HPW"
    | "PLAYER_JURY_POINT"
    | "PLAYER_LEADERSHIP_POINT"
    | "PLAYER_LIVING_POINT"
    | "PLAYER_MONEY"
    | "PLAYER_RESURRECTED"
    | "PLAYER_RESURRECTION"
    | "PLAYER_VISUAL_RACE"
    | "POST_CRAFT_ORDER"
    | "PRELIMINARY_EQUIP_UPDATE"
    | "PREMIUM_FIRST_BUY_BONUS"
    | "PREMIUM_GRADE_CHANGE"
    | "PREMIUM_LABORPOWER_CHANGED"
    | "PREMIUM_POINT_CHANGE"
    | "PREMIUM_SERVICE_BUY_RESULT"
    | "PREMIUM_SERVICE_LIST_UPDATED"
    | "PROCESS_CRAFT_ORDER"
    | "PROGRESS_TALK_QUEST_CONTEXT"
    | "QUEST_CHAT_LET_IT_DONE"
    | "QUEST_CHAT_RESTART"
    | "QUEST_CONTEXT_CONDITION_EVENT"
    | "QUEST_CONTEXT_OBJECTIVE_EVENT"
    | "QUEST_CONTEXT_UPDATED"
    | "QUEST_DIRECTING_MODE_END"
    | "QUEST_DIRECTING_MODE_HOT_KEY"
    | "QUEST_ERROR_INFO"
    | "QUEST_HIDDEN_COMPLETE"
    | "QUEST_HIDDEN_READY"
    | "QUEST_LEFT_TIME_UPDATED"
    | "QUEST_MSG"
    | "QUEST_NOTIFIER_START"
    | "QUEST_QUICK_CLOSE_EVENT"
    | "RAID_APPLICANT_LIST"
    | "RAID_FRAME_SIMPLE_VIEW"
    | "RAID_RECRUIT_DETAIL"
    | "RAID_RECRUIT_HUD"
    | "RAID_RECRUIT_LIST"
    | "RANDOM_SHOP_INFO"
    | "RANDOM_SHOP_UPDATE"
    | "RANK_ALARM_MSG"
    | "RANK_DATA_RECEIVED"
    | "RANK_LOCK"
    | "RANK_PERSONAL_DATA"
    | "RANK_RANKER_APPEARANCE"
    | "RANK_REWARD_SNAPSHOTS"
    | "RANK_SEASON_RESULT_RECEIVED"
    | "RANK_SNAPSHOTS"
    | "RANK_UNLOCK"
    | "READY_TO_CONNECT_WORLD"
    | "RECOVERABLE_EXP"
    | "RECOVERED_EXP"
    | "REENTRY_NOTIFY_DISABLE"
    | "REENTRY_NOTIFY_ENABLE"
    | "REFRESH_COMBAT_RESOURCE"
    | "REFRESH_COMBAT_RESOURCE_UPDATE_TIME"
    | "REFRESH_SQUAD_LIST"
    | "REFRESH_STORE_MERCHANT_GOOD_LIMIT_PURCHASE"
    | "REFRESH_WORLD_QUEUE"
    | "RELOAD_CASH"
    | "REMOVE_BOSS_TELESCOPE_INFO"
    | "REMOVE_CARRYING_BACKPACK_SLAVE_INFO"
    | "REMOVE_FISH_SCHOOL_INFO"
    | "REMOVE_GIVEN_QUEST_INFO"
    | "REMOVE_NOTIFY_QUEST_INFO"
    | "REMOVE_PING"
    | "REMOVE_SHIP_TELESCOPE_INFO"
    | "REMOVE_TRANSFER_TELESCOPE_INFO"
    | "REMOVED_ITEM"
    | "RENAME_CHARACTER_FAILED"
    | "RENAME_PORTAL"
    | "RENEW_ITEM_SUCCEEDED"
    | "BAD_USER_LIST_UPDATE"
    | "REPORT_CRIME"
    | "REPRESENT_CHARACTER_RESULT"
    | "REPUTATION_GIVEN"
    | "REQUIRE_DELAY_TO_CHAT"
    | "REQUIRE_ITEM_TO_CHAT"
    | "RESET_INGAME_SHOP_MODELVIEW"
    | "RESIDENT_BOARD_TYPE"
    | "RESIDENT_HOUSING_TRADE_LIST"
    | "RESIDENT_MEMBER_LIST"
    | "RESIDENT_SERVICE_POINT_CHANGED"
    | "RESIDENT_TOWNHALL"
    | "RESIDENT_ZONE_STATE_CHANGE"
    | "ROLLBACK_FAVORITE_CRAFTS"
    | "RULING_CLOSED"
    | "RULING_STATUS"
    | "SAVE_PORTAL"
    | "SAVE_SCREEN_SHOT"
    | "SCALE_ENCHANT_BROADCAST"
    | "SCHEDULE_ITEM_SENT"
    | "SCHEDULE_ITEM_UPDATED"
    | "SECOND_PASSWORD_ACCOUNT_LOCKED"
    | "SECOND_PASSWORD_CHANGE_COMPLETED"
    | "SECOND_PASSWORD_CHECK_COMPLETED"
    | "SECOND_PASSWORD_CHECK_OVER_FAILED"
    | "SECOND_PASSWORD_CLEAR_COMPLETED"
    | "SECOND_PASSWORD_CREATION_COMPLETED"
    | "SELECT_SQUAD_LIST"
    | "SELECTED_INSTANCE_DIFFICULT"
    | "SELL_SPECIALTY"
    | "SELL_SPECIALTY_CONTENT_INFO"
    | "SENSITIVE_OPERATION_VERIFY"
    | "SENSITIVE_OPERATION_VERIFY_SUCCESS"
    | "SET_DEFAULT_EXPAND_RATIO"
    | "SET_EFFECT_ICON_VISIBLE"
    | "SET_LOGIN_BROWSER_URL"
    | "SET_OVERHEAD_MARK"
    | "SET_PING_MODE"
    | "SET_REBUILD_HOUSE_CAMERA_MODE"
    | "SET_ROADMAP_PICKABLE"
    | "SET_UI_MESSAGE"
    | "SET_WEB_MESSENGE_COUNT"
    | "SHOW_ACCUMULATE_HONOR_POINT_DURING_HPW"
    | "SHOW_ADD_TAB_WINDOW"
    | "SHOW_ADDED_ITEM"
    | "SHOW_BANNER"
    | "SHOW_CHARACTER_ABILITY_WINDOW"
    | "SHOW_CHARACTER_CREATE_WINDOW"
    | "SHOW_CHARACTER_CUSTOMIZE_WINDOW"
    | "SHOW_CHARACTER_SELECT_WINDOW"
    | "SHOW_CHAT_TAB_CONTEXT"
    | "SHOW_CRIME_RECORDS"
    | "SHOW_DEPENDANT_WAIT_JURY"
    | "SHOW_DEPENDANT_WAIT_TRIAL"
    | "SHOW_GAME_RATING"
    | "SHOW_HEALTH_NOTICE"
    | "SHOW_HIDDEN_BUFF"
    | "SHOW_LOGIN_WINDOW"
    | "SHOW_PRIVACY_POLICY_WINDOW"
    | "SHOW_RAID_FRAME_SETTINGS"
    | "SHOW_RECOMMEND_USING_SECOND_PASSWORD"
    | "SHOW_RENAME_EXPEIDITON"
    | "SHOW_ROADMAP_TOOLTIP"
    | "SHOW_SERVER_SELECT_WINDOW"
    | "SHOW_SEXTANT_POS"
    | "SHOW_SLAVE_INFO"
    | "SHOW_VERDICTS"
    | "SHOW_WORLDMAP_LOCATION"
    | "SHOW_WORLDMAP_TOOLTIP"
    | "SIEGE_APPOINT_RESULT"
    | "SIEGE_RAID_REGISTER_LIST"
    | "SIEGE_RAID_TEAM_INFO"
    | "SIEGE_WAR_ENDED"
    | "SIEGEWEAPON_BOUND"
    | "SIEGEWEAPON_UNBOUND"
    | "SIM_DOODAD_MSG"
    | "SKILL_ALERT_ADD"
    | "SKILL_ALERT_REMOVE"
    | "SKILL_CHANGED"
    | "SKILL_DEBUG_MSG"
    | "SKILL_LEARNED"
    | "SKILL_MAP_EFFECT"
    | "SKILL_MSG"
    | "SKILL_SELECTIVE_ITEM"
    | "SKILL_SELECTIVE_ITEM_NOT_AVAILABLE"
    | "SKILL_SELECTIVE_ITEM_READY_STATUS"
    | "SKILL_UPGRADED"
    | "SKILLS_RESET"
    | "SLAVE_SHIP_BOARDING"
    | "SLAVE_SHIP_UNBOARDING"
    | "SLAVE_SPAWN"
    | "SPAWN_PET"
    | "SPECIAL_ABILITY_LEARNED"
    | "SPECIALTY_CONTENT_RECIPE_INFO"
    | "SPECIALTY_RATIO_BETWEEN_INFO"
    | "SPELLCAST_START"
    | "SPELLCAST_STOP"
    | "SPELLCAST_SUCCEEDED"
    | "START_CHAT_BUBBLE"
    | "START_HERO_ELECTION_PERIOD"
    | "START_QUEST_CONTEXT"
    | "START_QUEST_CONTEXT_DOODAD"
    | "START_QUEST_CONTEXT_NPC"
    | "START_QUEST_CONTEXT_SPHERE"
    | "START_SENSITIVE_OPERATION"
    | "START_TALK_QUEST_CONTEXT"
    | "START_TODAY_ASSIGNMENT"
    | "STARTED_DUEL"
    | "STARTING_QUEST_COMPLETED"
    | "STICKED_MSG"
    | "STILL_LOADING"
    | "STORE_ADD_BUY_ITEM"
    | "STORE_ADD_SELL_ITEM"
    | "STORE_BUY"
    | "STORE_FULL"
    | "STORE_SELL"
    | "STORE_SOLD_LIST"
    | "STORE_TRADE_FAILED"
    | "SURVEY_FORM_UPDATE"
    | "SWITCH_ENCHANT_ITEM_MODE"
    | "SYNC_PORTAL"
    | "SYS_INDUN_STAT_UPDATED"
    | "SYSMSG"
    | "TARGET_CHANGED"
    | "TARGET_NPC_HEALTH_CHANGED_FOR_DEFENCE_INFO"
    | "TARGET_NPC_HEALTH_CHANGED_FOR_VERSUS_FACTION"
    | "TARGET_OVER"
    | "TARGET_TO_TARGET_CHANGED"
    | "TEAM_JOINT_BREAK"
    | "TEAM_JOINT_BROKEN"
    | "TEAM_JOINT_CHAT"
    | "TEAM_JOINT_RESPONSE"
    | "TEAM_JOINT_TARGET"
    | "TEAM_JOINTED"
    | "TEAM_MEMBER_DISCONNECTED"
    | "TEAM_MEMBER_UNIT_ID_CHANGED"
    | "TEAM_MEMBERS_CHANGED"
    | "TEAM_ROLE_CHANGED"
    | "TEAM_SUMMON_SUGGEST"
    | "TENCENT_HEALTH_CARE_URL"
    | "TIME_MESSAGE"
    | "TOGGLE_CHANGE_VISUAL_RACE"
    | "TOGGLE_COMMUNITY"
    | "TOGGLE_CRAFT"
    | "TOGGLE_FACTION"
    | "TOGGLE_FOLLOW"
    | "TOGGLE_IN_GAME_NOTICE"
    | "TOGGLE_MEGAPHONE_CHAT"
    | "TOGGLE_PARTY_FRAME"
    | "TOGGLE_PET_MANAGE"
    | "TOGGLE_PORTAL_DIALOG"
    | "TOGGLE_RAID_FRAME"
    | "TOGGLE_RAID_FRAME_PARTY"
    | "TOGGLE_RAID_FRAME2"
    | "TOGGLE_ROADMAP"
    | "TOGGLE_WALK"
    | "TOWER_DEF_INFO_UPDATE"
    | "TOWER_DEF_MSG"
    | "TRADE_CAN_START"
    | "TRADE_CANCELED"
    | "TRADE_ITEM_PUTUP"
    | "TRADE_ITEM_TOOKDOWN"
    | "TRADE_ITEM_UPDATED"
    | "TRADE_LOCKED"
    | "TRADE_MADE"
    | "TRADE_MONEY_PUTUP"
    | "TRADE_OK"
    | "TRADE_OTHER_ITEM_PUTUP"
    | "TRADE_OTHER_ITEM_TOOKDOWN"
    | "TRADE_OTHER_LOCKED"
    | "TRADE_OTHER_MONEY_PUTUP"
    | "TRADE_OTHER_OK"
    | "TRADE_STARTED"
    | "TRADE_UI_TOGGLE"
    | "TRADE_UNLOCKED"
    | "TRANSFORM_COMBAT_RESOURCE"
    | "TRIAL_CANCELED"
    | "TRIAL_CLOSED"
    | "TRIAL_MESSAGE"
    | "TRIAL_STATUS"
    | "TRIAL_TIMER"
    | "TRY_LOOT_DICE"
    | "TUTORIAL_EVENT"
    | "TUTORIAL_HIDE_FROM_OPTION"
    | "UCC_IMPRINT_SUCCEEDED"
    | "UI_ADDON"
    | "UI_PERMISSION_UPDATE"
    | "UI_RELOADED"
    | "ULC_ACTIVATE"
    | "ULC_SKILL_MSG"
    | "UNFINISHED_BUILD_HOUSE"
    | "UNIT_COMBAT_STATE_CHANGED"
    | "UNIT_DEAD"
    | "UNIT_DEAD_NOTICE"
    | "UNIT_ENTERED_SIGHT"
    | "UNIT_EQUIPMENT_CHANGED"
    | "UNIT_KILL_STREAK"
    | "UNIT_LEAVED_SIGHT"
    | "UNIT_NAME_CHANGED"
    | "UNIT_NPC_EQUIPMENT_CHANGED"
    | "UNITFRAME_ABILITY_UPDATE"
    | "UNMOUNT_PET"
    | "UPDATE_BINDINGS"
    | "UPDATE_BOSS_TELESCOPE_AREA"
    | "UPDATE_BOSS_TELESCOPE_INFO"
    | "UPDATE_BOT_CHECK_INFO"
    | "BUBBLE_UPDATE"
    | "UPDATE_CARRYING_BACKPACK_SLAVE_INFO"
    | "UPDATE_CHANGE_VISUAL_RACE_WND"
    | "UPDATE_CHRONICLE_INFO"
    | "UPDATE_CHRONICLE_NOTIFIER"
    | "UPDATE_CLIENT_DRIVEN_INFO"
    | "UPDATE_COMPLETED_QUEST_INFO"
    | "UPDATE_CONTENT_ROSTER_WINDOW"
    | "UPDATE_CORPSE_INFO"
    | "UPDATE_CRAFT_ORDER_ITEM_FEE"
    | "UPDATE_CRAFT_ORDER_ITEM_SLOT"
    | "UPDATE_CRAFT_ORDER_SKILL"
    | "UPDATE_DEFENCE_INFO"
    | "UPDATE_DOMINION_INFO"
    | "UPDATE_DOODAD_INFO"
    | "UPDATE_DURABILITY_STATUS"
    | "UPDATE_DYEING_EXCUTABLE"
    | "UPDATE_ENCHANT_ITEM_MODE"
    | "UPDATE_EXPEDITION_PORTAL"
    | "UPDATE_EXPEDITION_TODAY_ASSIGNMENT_RESET_COUNT"
    | "UPDATE_FACTION_REZ_DISTRICT"
    | "UPDATE_FISH_SCHOOL_AREA"
    | "UPDATE_FISH_SCHOOL_INFO"
    | "UPDATE_GACHA_LOOT_MODE"
    | "UPDATE_GIVEN_QUEST_STATIC_INFO"
    | "UPDATE_HERO_ELECTION_CONDITION"
    | "UPDATE_HOUSING_INFO"
    | "UPDATE_HOUSING_TOOLTIP"
    | "UPDATE_INGAME_BEAUTYSHOP_STATUS"
    | "UPDATE_INGAME_SHOP"
    | "UPDATE_INGAME_SHOP_VIEW"
    | "UPDATE_INSTANT_GAME_INVITATION_COUNT"
    | "UPDATE_INSTANT_GAME_KILLSTREAK"
    | "UPDATE_INSTANT_GAME_KILLSTREAK_COUNT"
    | "UPDATE_INSTANT_GAME_SCORES"
    | "UPDATE_INSTANT_GAME_STATE"
    | "UPDATE_INSTANT_GAME_TIME"
    | "UPDATE_ITEM_LOOK_CONVERT_MODE"
    | "UPDATE_MONITOR_NPC"
    | "UPDATE_MY_SLAVE_POS_INFO"
    | "UPDATE_NPC_INFO"
    | "UPDATE_NPC_INFO_BROADCASTING"
    | "UPDATE_OPTION_BINDINGS"
    | "UPDATE_PING_INFO"
    | "UPDATE_RESTORE_CRAFT_ORDER_ITEM_MATERIAL"
    | "UPDATE_RESTORE_CRAFT_ORDER_ITEM_SLOT"
    | "UPDATE_RETURN_ACCOUNT_STATUS"
    | "UPDATE_ROADMAP_ANCHOR"
    | "UPDATE_ROSTER_MEMBER_INFO"
    | "UPDATE_ROUTE_MAP"
    | "UPDATE_SHIP_TELESCOPE_INFO"
    | "UPDATE_SHORTCUT_SKILLS"
    | "UPDATE_SIEGE_SCORE"
    | "UPDATE_SKILL_ACTIVE_TYPE"
    | "UPDATE_SLAVE_EQUIPMENT_SLOT"
    | "UPDATE_SPECIALTY_RATIO"
    | "UPDATE_SQUAD"
    | "UPDATE_TELESCOPE_AREA"
    | "UPDATE_TODAY_ASSIGNMENT"
    | "UPDATE_TODAY_ASSIGNMENT_RESET_COUNT"
    | "UPDATE_TRANSFER_TELESCOPE_AREA"
    | "UPDATE_TRANSFER_TELESCOPE_INFO"
    | "UPDATE_ZONE_INFO"
    | "UPDATE_ZONE_LEVEL_INFO"
    | "UPDATE_ZONE_PERMISSION"
    | "VIEW_CASH_BUY_WINDOW"
    | "WAIT_FRIEND_ADD_ALARM"
    | "WAIT_FRIENDLIST_UPDATE"
    | "WAIT_REPLY_FROM_SERVER"
    | "WATCH_TARGET_CHANGED"
    | "WEB_BROWSER_ESC_EVENT"
    | "WORLD_MESSAGE"
    | "ZONE_SCORE_CONTENT_STATE"
    | "ZONE_SCORE_UPDATED"
```

#### Method: ReleaseDeletedHandler
```lua
(method) Widget:ReleaseDeletedHandler()
```
Releases the deleted handler for the Widget.

#### Method: ReleaseHandler
```lua
(method) Widget:ReleaseHandler(actionName: "OnAcceptFocus"|"OnAlphaAnimeEnd"|"OnBoundChanged"|"OnChangedAnchor"|"OnCheckChanged"...(+44))
```
Releases a handler for the specified action.

@*param* `actionName` — The action name to release.

```lua
actionName:
    | "OnAcceptFocus"
    | "OnAlphaAnimeEnd"
    | "OnBoundChanged"
    | "OnChangedAnchor"
    | "OnCheckChanged"
    | "OnClick"
    | "OnCloseByEsc"
    | "OnContentUpdated"
    | "OnCursorMoved"
    | "OnDragReceive"
    | "OnDragStart"
    | "OnDragStop"
    | "OnDynamicListUpdatedView"
    | "OnEffect"
    | "OnEnableChanged"
    | "OnEndFadeIn"
    | "OnEndFadeOut"
    | "OnEnter"
    | "OnEnterPressed"
    | "OnEscapePressed"
    | "OnEvent"
    | "OnHide"
    | "OnKeyDown"
    | "OnKeyUp"
    | "OnLeave"
    | "OnListboxToggled"
    | "OnModelChanged"
    | "OnMouseDown"
    | "OnMouseMove"
    | "OnMouseUp"
    | "OnMovedPosition"
    | "OnPageChanged"
    | "OnPermissionChanged"
    | "OnRadioChanged"
    | "OnRestricted"
    | "OnScale"
    | "OnScaleAnimeEnd"
    | "OnSelChanged"
    | "OnShow"
    | "OnSliderChanged"
    | "OnTabChanged"
    | "OnTextChanged"
    | "OnTooltip"
    | "OnUpdate"
    | "OnVisibleChanged"
    | "OnWheelDown"
    | "OnWheelUp"
    | "PreClick"
    | "PreUse"
```

#### Method: RemoveAllAnchors
```lua
(method) Uibounds:RemoveAllAnchors()
```
Removes all anchors from the UI bounds, excluding anchor origin.

#### Method: RemoveAllDrawables
```lua
(method) Widget:RemoveAllDrawables(nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
```
Removes all drawables for the specified layer.

@*param* `nameLayer` — The layer to clear.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: RemoveDrawable
```lua
(method) Widget:RemoveDrawable(drawableTable: Drawablebase)
```
Removes a specific drawable table from the widget.

@*param* `drawableTable` — The drawable table to remove.

See: [Drawablebase](../types/Drawablebase.md#class-drawablebase)

#### Method: RequestCharacterCacheData
```lua
(method) Widget:RequestCharacterCacheData(cacheQueryId: string)
```
Requests character cache data.

@*param* `cacheQueryId` — The cache query ID.

#### Method: SetAlpha
```lua
(method) Widget:SetAlpha(alpha: number)
```
Sets the alpha value of the Widget.

@*param* `alpha` — The alpha value (min: `0`, max: `1`).

#### Method: SetAlphaAnimation
```lua
(method) Widget:SetAlphaAnimation(initialAlpha: number, finalAlpha: number, velocityTime: number, accelerationTime: number)
```
Sets an alpha animation for the Widget.

@*param* `initialAlpha` — The starting alpha (min: `0`, max: `1`).

@*param* `finalAlpha` — The ending alpha (min: `0`, max: `1`).

@*param* `velocityTime` — Duration in seconds for velocity.

@*param* `accelerationTime` — Duration in seconds for acceleration.

#### Method: SetCategory
```lua
(method) Widget:SetCategory(category: string)
```
Sets the category for the Widget.

@*param* `category` — The category to set.

#### Method: SetCharacterCacheDataHandler
```lua
(method) Widget:SetCharacterCacheDataHandler(handler: fun(self: unknown, data: CacheData))
```
Sets a handler for character cache data.

@*param* `handler` — The handler function.

See: [CharacterCacheDataHandler](../types/Widget.md#class-charactercachedatahandler)

#### Method: SetDelegator
```lua
(method) Widget:SetDelegator(action: "OnAcceptFocus"|"OnAlphaAnimeEnd"|"OnBoundChanged"|"OnChangedAnchor"|"OnCheckChanged"...(+44), delegator: Widget, handler: fun(delegator: Widget, callbacker: Widget, mbt: "LeftButton"|"RightButton"))
```
Sets a handler for a specific action on a delegator widget.

@*param* `action` — The action name.

@*param* `delegator` — The delegator widget.

@*param* `handler` — The handler function.

```lua
action:
    | "OnAcceptFocus"
    | "OnAlphaAnimeEnd"
    | "OnBoundChanged"
    | "OnChangedAnchor"
    | "OnCheckChanged"
    | "OnClick"
    | "OnCloseByEsc"
    | "OnContentUpdated"
    | "OnCursorMoved"
    | "OnDragReceive"
    | "OnDragStart"
    | "OnDragStop"
    | "OnDynamicListUpdatedView"
    | "OnEffect"
    | "OnEnableChanged"
    | "OnEndFadeIn"
    | "OnEndFadeOut"
    | "OnEnter"
    | "OnEnterPressed"
    | "OnEscapePressed"
    | "OnEvent"
    | "OnHide"
    | "OnKeyDown"
    | "OnKeyUp"
    | "OnLeave"
    | "OnListboxToggled"
    | "OnModelChanged"
    | "OnMouseDown"
    | "OnMouseMove"
    | "OnMouseUp"
    | "OnMovedPosition"
    | "OnPageChanged"
    | "OnPermissionChanged"
    | "OnRadioChanged"
    | "OnRestricted"
    | "OnScale"
    | "OnScaleAnimeEnd"
    | "OnSelChanged"
    | "OnShow"
    | "OnSliderChanged"
    | "OnTabChanged"
    | "OnTextChanged"
    | "OnTooltip"
    | "OnUpdate"
    | "OnVisibleChanged"
    | "OnWheelDown"
    | "OnWheelUp"
    | "PreClick"
    | "PreUse"
```

See: [DelegatorHandler](../types/Widget.md#class-delegatorhandler)

#### Method: SetDeletedHandler
```lua
(method) Widget:SetDeletedHandler(handler: function)
```
Sets a handler for the Widget deletion event. This executes right before the
widget is deleted from the widget pool and should be used to set any variable
that referenced the widget as `nil`, otherwise the widget will become an
invalid object.

@*param* `handler` — The handler function.

#### Method: SetDragCondition
```lua
(method) Widget:SetDragCondition(dragCondition: `DC_ALWAYS`|`DC_SHIFT_KEY_DOWN`)
```
Sets the drag condition for the Widget. This restricts when the events
`OnDragReceive`, `OnDragStart`, and `OnDragStop` are fired.

@*param* `dragCondition` — The drag condition. (default: `DC_ALWAYS`)

```lua
-- types/Widget
dragCondition:
    | `DC_ALWAYS`
    | `DC_SHIFT_KEY_DOWN`
```

#### Method: SetDrawBorder
```lua
(method) EmptyWidget:SetDrawBorder(draw: boolean, r: number, g: number, b: number, a: number)
```
Sets whether to draw the border for the EmptyWidget and specifies its color.

@*param* `draw` — `true` to draw the border, `false` to hide it.

@*param* `r` — The red color component (min: `0`, max: `1`).

@*param* `g` — The green color component (min: `0`, max: `1`).

@*param* `b` — The blue color component (min: `0`, max: `1`).

@*param* `a` — The alpha (opacity) component (min: `0`, max: `1`).

#### Method: SetDrawPriority
```lua
(method) Widget:SetDrawPriority(drawPriority: number)
```
Sets the draw priority for the Widget relative to its sibling Widgets.

@*param* `drawPriority` — The draw priority (z-index) value.

#### Method: SetDrawableLayerAlpha
```lua
(method) Widget:SetDrawableLayerAlpha(alpha: number, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
```
Sets the alpha for a specific drawable layer.

@*param* `alpha` — Alpha value (min: `0`, max: `1`). (default: `1`)

@*param* `nameLayer` — The layer to apply the alpha to.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: SetExtent
```lua
(method) Uibounds:SetExtent(width: number, height: number)
```
Sets the width and height of the UI bounds.

@*param* `width` — The width to set.

@*param* `height` — The height to set.

#### Method: SetHandler
```lua
(method) Widget:SetHandler(actionName: string, handler: function)
```
Sets a handler for the specified action.

@*param* `actionName` — The action name.

@*param* `handler` — The handler function.

#### Method: SetHeight
```lua
(method) Uibounds:SetHeight(height: number)
```
Sets the height of the UI bounds.

@*param* `height` — The height to set.

#### Method: SetLText
```lua
(method) Widget:SetLText(key: string, ...string)
```
Sets localized text for the Widget with multiple optional parameters.

@*param* `key` — The key from the database ui_texts table under the `COMMON_TEXT` category.

@*param* `...` — Arguments to replace placeholders (must match number of $).

#### Method: SetLText
```lua
(method) Widget:SetLText(category: `ABILITY_CATEGORY_DESCRIPTION_TEXT`|`ABILITY_CATEGORY_TEXT`|`ABILITY_CHANGER_TEXT`|`ATTRIBUTE_TEXT`|`ATTRIBUTE_VARIATION_TEXT`...(+117), key: string, ...string)
```
Sets localized text for the Widget with multiple optional parameters.

@*param* `category` — The UI text category. (default: `COMMON_TEXT`)

@*param* `key` — The key from the database ui_texts table.

@*param* `...` — Arguments to replace placeholders (must match number of $).

```lua
-- api/Addon
category:
    | `ABILITY_CATEGORY_DESCRIPTION_TEXT`
    | `ABILITY_CATEGORY_TEXT`
    | `ABILITY_CHANGER_TEXT`
    | `ATTRIBUTE_TEXT`
    | `ATTRIBUTE_VARIATION_TEXT`
    | `AUCTION_TEXT`
    | `BATTLE_FIELD_TEXT`
    | `BEAUTYSHOP_TEXT`
    | `BINDING`
    | `BUTLER`
    | `CASTING_BAR_TEXT`
    | `CHARACTER_CREATE_TEXT`
    | `CHARACTER_POPUP_SUBTITLE_TEXT`
    | `CHARACTER_POPUP_SUBTITLE_TOOLTIP_TEXT`
    | `CHARACTER_SELECT_TEXT`
    | `CHARACTER_SUBTITLE_INFO_TOOLTIP_TEXT`
    | `CHARACTER_SUBTITLE_TEXT`
    | `CHARACTER_SUBTITLE_TOOLTIP_TEXT`
    | `CHARACTER_TITLE_TEXT`
    | `CHAT_CHANNEL_TEXT`
    | `CHAT_COMBAT_LOG_TEXT`
    | `CHAT_CREATE_TAB_TEXT`
    | `CHAT_FILTERING`
    | `CHAT_FORCE_ATTACK_TEXT`
    | `CHAT_LIST_TEXT`
    | `CHAT_SYSTEM_TEXT`
    | `COMBAT_MESSAGE_TEXT`
    | `COMBAT_TEXT`
    | `COMBINED_ABILITY_NAME_TEXT`
    | `COMMON_TEXT`
    | `COMMUNITY_TEXT`
    | `COMPOSITION_TEXT`
    | `CRAFT_TEXT`
    | `CUSTOMIZING_TEXT`
    | `DATE_TIME_TEXT`
    | `DOMINION`
    | `DUEL_TEXT`
    | `EQUIP_SLOT_TYPE_TEXT`
    | `ERROR_MSG`
    | `EXPEDITION_TEXT`
    | `FACTION_TEXT`
    | `FARM_TEXT`
    | `GENDER_TEXT`
    | `GRAVE_YARD_TEXT`
    | `HERO_TEXT`
    | `HONOR_POINT_WAR_TEXT`
    | `HOUSING_PERMISSIONS_TEXT`
    | `HOUSING_TEXT`
    | `INFOBAR_MENU_TEXT`
    | `INFOBAR_MENU_TIP_TEXT`
    | `INGAMESHOP_TEXT`
    | `INSTANT_GAME_TEXT`
    | `INVEN_TEXT`
    | `ITEM_GRADE`
    | `ITEM_LOOK_CONVERT_TEXT`
    | `KEY_BINDING_TEXT`
    | `LEARNING_TEXT`
    | `LEVEL_CHANGED_TEXT`
    | `LOADING_TEXT`
    | `LOGIN_CROWDED_TEXT`
    | `LOGIN_DELETE_TEXT`
    | `LOGIN_ERROR`
    | `LOGIN_TEXT`
    | `LOOT_METHOD_TEXT`
    | `LOOT_TEXT`
    | `MAIL_TEXT`
    | `MAP_TEXT`
    | `MONEY_TEXT`
    | `MSG_BOX_BODY_TEXT`
    | `MSG_BOX_BTN_TEXT`
    | `MSG_BOX_TITLE_TEXT`
    | `MUSIC_TEXT`
    | `NATION_TEXT`
    | `OPTION_TEXT`
    | `PARTY_TEXT`
    | `PERIOD_TIME_TEXT`
    | `PET_TEXT`
    | `PHYSICAL_ENCHANT_TEXT`
    | `PLAYER_POPUP_TEXT`
    | `PORTAL_TEXT`
    | `PREMIUM_TEXT`
    | `PRIEST_TEXT`
    | `PROTECT_SENSITIVE_OPERATION_TEXT`
    | `QUEST_ACT_OBJ_PTN_TEXT`
    | `QUEST_ACT_OBJ_TEXT`
    | `QUEST_CONDITION_TEXT`
    | `QUEST_DISTANCE_TEXT`
    | `QUEST_ERROR`
    | `QUEST_INTERACTION_TEXT`
    | `QUEST_OBJ_STATUS_TEXT`
    | `QUEST_SPHERE_TEXT`
    | `QUEST_STATUS_TEXT`
    | `QUEST_TEXT`
    | `RACE_DETAIL_DESCRIPTION_TEXT`
    | `RACE_TEXT`
    | `RAID_TEXT`
    | `RANKING_TEXT`
    | `REPAIR_TEXT`
    | `RESTRICT_TEXT`
    | `SECOND_PASSWORD_TEXT`
    | `SERVER_TEXT`
    | `SKILL_TEXT`
    | `SKILL_TRAINING_MSG_TEXT`
    | `SLAVE_KIND`
    | `SLAVE_TEXT`
    | `STABLER_TEXT`
    | `STORE_TEXT`
    | `TARGET_POPUP_TEXT`
    | `TEAM_TEXT`
    | `TERRITORY_TEXT`
    | `TIME`
    | `TOOLTIP_TEXT`
    | `TRADE_TEXT`
    | `TRIAL_TEXT`
    | `TUTORIAL_TEXT`
    | `UCC_TEXT`
    | `UNIT_FRAME_TEXT`
    | `UNIT_GRADE_TEXT`
    | `UNIT_KIND_TEXT`
    | `UTIL_TEXT`
    | `WEB_TEXT`
    | `WINDOW_TITLE_TEXT`
```

#### Method: SetLayerColor
```lua
(method) Widget:SetLayerColor(r: number, g: number, b: number, a: number, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
```
Sets the color for the specified layer.

@*param* `r` — Red value (min: `0`, max: `1`).

@*param* `g` — Green value (min: `0`, max: `1`).

@*param* `b` — Blue value (min: `0`, max: `1`).

@*param* `a` — Alpha value (min: `0`, max: `1`).

@*param* `nameLayer` — The layer to apply the color to.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: SetMaxResizingExtent
```lua
(method) Widget:SetMaxResizingExtent(width: number, height: number)
```
Sets the maximum resizing extent for the Widget.

@*param* `width` — The maximum width.

@*param* `height` — The maximum height.

#### Method: SetMinResizingExtent
```lua
(method) Widget:SetMinResizingExtent(width: number, height: number)
```
Sets the minimum resizing extent for the Widget.

@*param* `width` — The minimum width.

@*param* `height` — The minimum height.

#### Method: SetMoveAnimation
```lua
(method) Widget:SetMoveAnimation(direction: string, delta: number, time: number, repeatAnimation: number)
```
Sets a move animation for the Widget.

@*param* `direction` — The direction of the animation.

@*param* `delta` — The movement distance.

@*param* `time` — The duration in seconds.

@*param* `repeatAnimation` — The number of animation repetitions.

#### Method: SetResizingBorderSize
```lua
(method) Widget:SetResizingBorderSize(left: number, top: number, right: number, bottom: number)
```
Sets the resizing border size for the Widget. `SetMinResizingExtent` and
`SetMaxResizingExtent` must be called or this can cause a crash!

@*param* `left` — The left border size.

@*param* `top` — The top border size.

@*param* `right` — The right border size.

@*param* `bottom` — The bottom border size.

```lua
widget:SetResizingBorderSize(10, 10, 10, 10)
widget:SetMinResizingExtent(345, 160)
widget:SetMaxResizingExtent(1050, 1020)
```

#### Method: SetRotation
```lua
(method) Widget:SetRotation(rs: string)
```
Sets the rotation of the widget.

@*param* `rs` — The rotation value.

#### Method: SetScale
```lua
(method) Widget:SetScale(scale: number)
```
Sets the scale of the Widget.

@*param* `scale` — The scale value.

#### Method: SetScaleAnimation
```lua
(method) Widget:SetScaleAnimation(initialScale: number, finalScale: number, velocityTime: number, accelerationTime: number, scaleAnchor: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4))
```
Sets a scale animation for the Widget.

@*param* `initialScale` — The starting scale (must be greater than 0).

@*param* `finalScale` — The ending scale.

@*param* `velocityTime` — Duration in seconds for velocity.

@*param* `accelerationTime` — Duration in seconds for acceleration.

@*param* `scaleAnchor` — The anchor point for scaling.

```lua
scaleAnchor:
    | "TOPLEFT"
    | "TOP"
    | "TOPRIGHT"
    | "LEFT"
    | "CENTER"
    | "RIGHT"
    | "BOTTOMLEFT"
    | "BOTTOM"
    | "BOTTOMRIGHT"
```

#### Method: SetSounds
```lua
(method) Widget:SetSounds(name: "ability_change"|"achievement"|"auction"|"auction_put_up"|"bag"...(+45))
```
Sets the sounds to play for the Widget, this plays differently for each
type of widget, for instance a button will play its sound when clicked, and
a window will play its sound when shown/hidden.

@*param* `name` — The sound name.

```lua
name:
    | "ability_change"
    | "achievement"
    | "auction"
    | "auction_put_up"
    | "bag"
    | "bank"
    | "battlefield_entrance"
    | "character_info"
    | "coffer"
    | "common_farm_info"
    | "community"
    | "composition_score"
    | "config"
    | "cosmetic_details"
    | "craft"
    | "crime_records"
    | "default_r"
    | "dialog_common"
    | "dialog_enter_beautyshop"
    | "dialog_gender_transfer"
    | "dyeing"
    | "edit_box"
    | "item_enchant"
    | "loot"
    | "mail"
    | "mail_read"
    | "mail_write"
    | "my_farm_info"
    | "option"
    | "pet_info"
    | "portal"
    | "prelim_equipment"
    | "quest_context_list"
    | "quest_directing_mode"
    | "raid_team"
    | "ranking"
    | "ranking_reward"
    | "skill_book"
    | "store"
    | "store_drain"
    | "submenu"
    | "trade"
    | "tutorial"
    | "ucc"
    | "wash"
    | "web_messenger"
    | "web_note"
    | "web_play_diary"
    | "web_wiki"
    | "world_map"
```

#### Method: SetStartAnimation
```lua
(method) Widget:SetStartAnimation(alpha: boolean, scale: boolean)
```
Enables or disables start animations for alpha and scale.

@*param* `alpha` — `true` to enable **alpha** animation, `false` to disable. (default: `false`)

@*param* `scale` — `true` to enable **scale** animation, `false` to disable. (default: `false`)

#### Method: SetText
```lua
(method) Widget:SetText(text: string)
```
Sets the text for the Widget.

@*param* `text` — The text to set.

#### Method: SetWidth
```lua
(method) Uibounds:SetWidth(width: number)
```
Sets the width of the UI bounds.

@*param* `width` — The width to set.

#### Method: Show
```lua
(method) Widget:Show(show: boolean, fadeTime?: number)
```
Shows or hides the widget and enables/disables its `"OnUpdate"` handler. Showing before the extents and anchors are set can cause issues.

@*param* `show` — `true` to show, `false` to hide. (default: `false`)

@*param* `fadeTime` — The optional fade duration in milliseconds.

#### Method: StartMoving
```lua
(method) Widget:StartMoving()
```
Starts moving the Widget. Should be used in conjunction with
`Widget:StopMovingOrSizing`.
```lua
widget:SetHandler("OnDragStart", function(self)
  self:StartMoving()
end)

widget:SetHandler("OnDragStop", function(self)
  self:StopMovingOrSizing()
end)
```

#### Method: StartSizing
```lua
(method) Widget:StartSizing(anchorPoint: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4))
```
Starts resizing the Widget from the specified anchor point.

@*param* `anchorPoint` — The anchor point for resizing.

```lua
anchorPoint:
    | "TOPLEFT"
    | "TOP"
    | "TOPRIGHT"
    | "LEFT"
    | "CENTER"
    | "RIGHT"
    | "BOTTOMLEFT"
    | "BOTTOM"
    | "BOTTOMRIGHT"
```

#### Method: StopMovingOrSizing
```lua
(method) Widget:StopMovingOrSizing()
```
Stops moving or resizing the Widget.
```lua
widget:SetHandler("OnDragStop", function(self)
  self:StopMovingOrSizing()
end)
```

#### Method: TriggerMoveAnimation
```lua
(method) Widget:TriggerMoveAnimation(on: boolean)
```
Triggers or stops the move animation of the Widget.

@*param* `on` — `true` to start the animation, `false` to stop.

#### Method: UseDynamicContentState
```lua
(method) Widget:UseDynamicContentState(use: boolean)
```
Enables or disables dynamic content state for the widget.

@*param* `use` — `true` to enable, `false` to disable.

#### Method: UseDynamicDrawableState
```lua
(method) Widget:UseDynamicDrawableState(nameLayer: "artwork"|"background"|"overlay"|"overoverlay", use: boolean)
```
Enables or disables dynamic drawable state for the specified layer.

@*param* `nameLayer` — The layer to modify.

@*param* `use` — `true` to enable, `false` to disable.

```lua
-- Drawables with layers of the same level and parent can overlap based on focus.
nameLayer:
    | "background" -- Layer 1
    | "artwork" -- Layer 2
    | "overlay" -- Layer 3
    | "overoverlay" -- Layer 4
```

#### Method: UseResizing
```lua
(method) Widget:UseResizing(use: boolean)
```
Enables or disables resizing for the Widget.

@*param* `use` — `true` to enable resizing, `false` to disable. (default: `false`)

#### Field: check
```lua
Checkbutton
```
objects/CheckButton

### Class: RaidApplicant
#### Field: abilities
```lua
UnitClass
```


#### Field: gearPoint
```lua
number
```


#### Field: level
```lua
number
```


#### Field: name
```lua
string
```


#### Field: role
```lua
`TMROLE_DEALER`|`TMROLE_HEALER`|`TMROLE_NONE`|`TMROLE_RANGED_DEALER`|`TMROLE_TANKER`
```
api/X2Team

### Class: RaidApplicantData
#### Field: applicantList
```lua
RaidApplicant[]
```


#### Field: autoJoin
```lua
boolean
```


#### Field: createTime
```lua
string
```


#### Field: headcount
```lua
number
```


#### Field: memberCount
```lua
number
```


### Class: RaidLinkInfo
#### Field: createTime
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


#### Field: linkType
```lua
"raid"
```


#### Field: messageTimeStamp
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


#### Field: hour
```lua
number
```


#### Field: limitGearPoint
```lua
number
```


#### Field: limitLevel
```lua
number
```


#### Field: minute
```lua
number
```


#### Field: msg
```lua
string
```


#### Field: ownerExpedition
```lua
string
```


#### Field: ownerId
```lua
string
```


#### Field: ownerLevel
```lua
number
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


#### Field: type
```lua
number
```


### Class: RaidRecruitInfo
#### Field: hour
```lua
number
```


#### Field: isRecruiter
```lua
boolean
```


#### Field: minute
```lua
number
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
reentry

#### Field: [2]
```lua
number
```
timeLeft in milliseconds

#### Field: [3]
```lua
string|nil
```
instanceName

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


#### Field: [2]
```lua
string|nil
```


#### Field: [3]
```lua
string|nil
```


#### Field: [4]
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


#### Field: title
```lua
string
```


### Class: ResidentHousing
#### Field: decoextendnum
```lua
number
```


#### Field: decolimitnum
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


#### Field: posx
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


#### Field: zoneId
```lua
0|1|10|100|101...(+151)
```
Obtained from db zone_groups

### Class: ResidentInfo
#### Field: huntingCharge
```lua
number
```


#### Field: isResident
```lua
boolean
```


#### Field: localCharge
```lua
string|nil
```


#### Field: localEffect
```lua
string
```


#### Field: localFaction
```lua
string
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


#### Field: servicePoint
```lua
number|nil
```


### Class: ResidentMember
#### Field: [1]
```lua
string
```
Name

#### Field: [2]
```lua
number
```
Basic Level

#### Field: [3]
```lua
number
```
Contribution

#### Field: [4]
```lua
number
```
Family

#### Field: [5]
```lua
boolean
```
Online

#### Field: [6]
```lua
boolean
```
Party

#### Field: [7]
```lua
boolean
```
CHK

#### Field: [8]
```lua
number
```
Ancestral Level

#### Field: [9]
```lua
number
```
Contribution Rank

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


#### Field: deg_long
```lua
number
```


#### Field: latitude
```lua
"N"|"S"
```


#### Field: longitude
```lua
"E"|"W"
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
width of screen

#### Field: y
```lua
number
```
height of screen

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


#### Field: freshnessRatio
```lua
number
```


#### Field: item
```lua
ItemInfo
```


#### Field: noEventRefund
```lua
string
```


#### Field: ratio
```lua
number
```


#### Field: refund
```lua
string
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
0|1|10|100|101...(+151)
```
Obtained from db zone_groups

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


#### Field: defenseName
```lua
string
```


#### Field: isMyInfo
```lua
boolean
```


#### Field: offenseName
```lua
string
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


#### Field: zoneGroupType
```lua
0|1|10|100|101...(+151)
```
Obtained from db zone_groups

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
1|10|11|12|14...(+10)[]
```


#### Field: gearScore
```lua
number
```


#### Field: heirLevel
```lua
number
```


#### Field: level
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


#### Field: endMin
```lua
number
```


#### Field: startHour
```lua
number
```


#### Field: startMin
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


#### Field: fName
```lua
string
```


#### Field: isWaitWar
```lua
boolean
```


#### Field: membetCount
```lua
number
```
xlgames misspelt this

#### Field: ownerName
```lua
string
```


#### Field: period
```lua
string
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


#### Field: factionId
```lua
number
```


#### Field: memberCnt
```lua
number
```


#### Field: memberMax
```lua
number
```


#### Field: scheduleInfo
```lua
SiegeRaidScheduleInfo
```


#### Field: siegeState
```lua
string
```
= "siege_state_ready_to_siege",

#### Field: zoneName
```lua
string
```
TODO: ZONE_NAME?

### Class: SkillInfo
#### Field: abilityName
```lua
string
```


#### Field: castingTime
```lua
number
```


#### Field: cooldownTime
```lua
number
```


#### Field: description
```lua
string
```


#### Field: firstLearnLevel
```lua
number
```


#### Field: hasRange
```lua
boolean
```


#### Field: iconPath
```lua
string
```


#### Field: isHarmful
```lua
boolean
```


#### Field: isHelpful
```lua
boolean
```


#### Field: isMeleeAttack
```lua
boolean
```


#### Field: learnLeavel
```lua
number
```


#### Field: levelStep
```lua
number
```


#### Field: manaCost
```lua
number
```


#### Field: maxRange
```lua
number
```


#### Field: minRange
```lua
number
```


#### Field: name
```lua
string
```


#### Field: nextLearnLevel
```lua
number
```


#### Field: show
```lua
boolean
```


#### Field: skillPoints
```lua
number
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


#### Field: b
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


#### Field: r
```lua
number
```


#### Field: radius
```lua
number
```


#### Field: textureKey
```lua
string
```


#### Field: texturePath
```lua
string
```


#### Field: time
```lua
number
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


#### Field: z
```lua
number
```


### Class: SkillSelectiveItemList
#### Field: is_multi
```lua
boolean
```


#### Field: itemTables
```lua
SkillSelectiveItemTable[]
```


#### Field: maxTryCount
```lua
number
```


#### Field: popup_text
```lua
string
```


#### Field: select
```lua
number
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


#### Field: grade
```lua
number
```


#### Field: idx
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


#### Field: type
```lua
number
```


### Class: SkillTooltip
#### Field: ability
```lua
string
```


#### Field: abilityLevel
```lua
number
```


#### Field: casting
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


#### Field: cooldown
```lua
number
```


#### Field: description
```lua
string
```


#### Field: firstLearnLevel
```lua
number
```


#### Field: heirSkillName
```lua
number
```


#### Field: isRaceSkill
```lua
boolean
```


#### Field: learnLevel
```lua
number
```


#### Field: levelStep
```lua
number
```


#### Field: mana
```lua
number
```


#### Field: maxCombatResource
```lua
number
```


#### Field: maxRange
```lua
number|nil
```


#### Field: meleeDpsMultiplier
```lua
number|nil
```


#### Field: minCombatResource
```lua
number
```


#### Field: minRange
```lua
number|nil
```


#### Field: name
```lua
string
```


#### Field: path
```lua
string
```


#### Field: show
```lua
boolean
```


#### Field: skillLevel
```lua
number
```


#### Field: skillPoints
```lua
number
```


#### Field: synergyIconInfo
```lua
SynergyIconInfo[]|nil
```


#### Field: targetAreaRadius
```lua
number|nil
```


#### Field: tipType
```lua
string
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


#### Field: noEventRefund
```lua
string
```


#### Field: ratio
```lua
number
```


#### Field: refund
```lua
string
```


#### Field: supply
```lua
SpecialtySupplyInfo
```


### Class: SpecialtyContentInfo
#### Field: item
```lua
ItemInfo
```


#### Field: noEventRefund
```lua
string
```


#### Field: ratio
```lua
number
```


#### Field: refund
```lua
string
```


#### Field: stock
```lua
number
```


#### Field: supply
```lua
SpecialtySupplyInfo
```


### Class: SpecialtyInfo
#### Field: count
```lua
number
```


#### Field: delay
```lua
number
```


#### Field: item
```lua
ItemInfo
```


#### Field: noEventRefund
```lua
string
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
0|1|10|100|101...(+151)
```
Obtained from db zone_groups

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


#### Field: iconPath
```lua
string
```


#### Field: label
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


#### Field: buttonType
```lua
number
```


#### Field: curMemberCount
```lua
number
```


#### Field: explanationText
```lua
string
```


#### Field: fieldType
```lua
number
```


#### Field: isMySquad
```lua
boolean
```


#### Field: limitGearScore
```lua
number
```


#### Field: limitLevel
```lua
number
```


#### Field: maxMemberCount
```lua
number
```


#### Field: nameCacheQueryId
```lua
string|nil
```


#### Field: openType
```lua
number
```


#### Field: ownerLevel
```lua
number
```


#### Field: squadId
```lua
number
```


#### Field: worldName
```lua
string
```


#### Field: zoneGroupType
```lua
0|1|10|100|101...(+151)
```
Obtained from db zone_groups

### Class: SquadLinkInfo
#### Field: battleFieldType
```lua
number
```


#### Field: filter
```lua
number
```


#### Field: isOtherWorld
```lua
boolean
```


#### Field: joinKey
```lua
string
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


#### Field: zoneGroupType
```lua
number
```


### Class: StampChangeItemInfo
#### Field: enough
```lua
boolean
```


#### Field: has
```lua
number
```


#### Field: itemType
```lua
number
```


#### Field: need
```lua
number
```


### Class: StampInfo
#### Field: canEquip
```lua
number
```


#### Field: effectDescription
```lua
string
```


#### Field: id
```lua
number
```


#### Field: modifier
```lua
table
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


#### Field: desc
```lua
string
```


#### Field: isHeirLevelCategory
```lua
boolean
```


#### Field: name
```lua
string
```


#### Field: rewardAchievementType
```lua
number
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


#### Field: conditionicon
```lua
string
```


#### Field: desc
```lua
string
```


#### Field: resultbuffkind
```lua
boolean
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
number
```


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


#### Field: jointOrder
```lua
number
```
1 or 2

#### Field: memberIndex
```lua
number
```


#### Field: name
```lua
string
```


#### Field: teamRoleType
```lua
string
```


### Class: TextureColorKey
#### Field: [1]
```lua
number
```
Red (min: `0`, max: `1`)

#### Field: [2]
```lua
number
```
Green (min: `0`, max: `1`)

#### Field: [3]
```lua
number
```
Blue (min: `0`, max: `1`)

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
x

#### Field: [2]
```lua
number
```
y

#### Field: [3]
```lua
number
```
width

#### Field: [4]
```lua
number
```
height

### Class: TextureData
#### Field: colorKey
```lua
TextureColorKey
```


#### Field: colors
```lua
TextureColors
```
TODO: could be nil?

#### Field: coords
```lua
TextureCoords
```


#### Field: extent
```lua
TextureDimensions
```


#### Field: inset
```lua
TextureInset
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
resized width

#### Field: [2]
```lua
number
```
resized height

### Class: TextureInset
#### Field: [1]
```lua
number
```
leftPadding

#### Field: [2]
```lua
number
```
topPadding

#### Field: [3]
```lua
number
```
rightPadding

#### Field: [4]
```lua
number
```
bottomPadding

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


#### Field: hour
```lua
number
```


#### Field: minute
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


#### Field: iconPath
```lua
string
```


#### Field: init
```lua
boolean
```


#### Field: levelMax
```lua
number
```


#### Field: levelMin
```lua
number
```


#### Field: questType
```lua
number
```


#### Field: realStep
```lua
number
```


#### Field: requireItem
```lua
number|nil
```


#### Field: requireItemCount
```lua
number|nil
```


#### Field: requireLevel
```lua
number
```


#### Field: satisfy
```lua
boolean
```


#### Field: sort
```lua
number
```


#### Field: status
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


#### Field: count
```lua
number|nil
```


#### Field: enemy
```lua
boolean|nil
```


#### Field: expedition
```lua
string|nil
```


#### Field: factionId
```lua
`HARIHARA_FACTION_ID`|`MONSTER_FACTION_ID`|`NUIA_FACTION_ID`|`OUTLAW_FACTION_ID`|`PC_IN_ALL_FACTION_ID`...(+1)
```
api/Addon

#### Field: factionName
```lua
string|nil
```


#### Field: factions
```lua
`HARIHARA_FACTION_ID`|`MONSTER_FACTION_ID`|`NUIA_FACTION_ID`|`OUTLAW_FACTION_ID`|`PC_IN_ALL_FACTION_ID`[]|nil
```


#### Field: hp
```lua
string|number|nil
```


#### Field: id
```lua
number|nil
```


#### Field: kind
```lua
"big_sailing_ship"|"boat"|"fishboat"|"gubuk"|"leviathan"...(+8)
```
db ui_texts category_id 100

#### Field: list
```lua
CommonFarmItem[]|nil
```


#### Field: maxHp
```lua
string|number|nil
```


#### Field: name
```lua
string|nil
```


#### Field: owner
```lua
string|nil
```


#### Field: possible
```lua
boolean|nil
```
`true` if the player can use the ezi light

#### Field: territoryName
```lua
string|nil
```


#### Field: text
```lua
string
```


#### Field: tooltipType
```lua
"carrying_backpack_slave"|"commonFarm"|"common_farm"|"conquest"|"corpse"...(+7)
```


#### Field: zoneId
```lua
0|1|10|100|101...(+152)
```
Obtained from db zone_groups

### Class: TowerDefInfo
#### Field: color
```lua
string
```


#### Field: iconKey
```lua
string
```


#### Field: msg
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


#### Field: zoneGroup
```lua
0|1|10|100|101...(+151)
```
TODO: Might not be ZONE_GROUP_ID

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
1|10|11|12|14...(+10)
```
api/X2Ability

#### Field: [2]
```lua
1|10|11|12|14...(+10)
```
api/X2Ability

#### Field: [3]
```lua
1|10|11|12|14...(+10)
```
api/X2Ability

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
#### Field: class
```lua
UnitClass
```


#### Field: expeditionName
```lua
string|nil
```


#### Field: faction
```lua
string
```


#### Field: family_name
```lua
string
```


#### Field: heirLevel
```lua
number
```


#### Field: hp
```lua
string
```


#### Field: level
```lua
number
```


#### Field: maxHp
```lua
string
```


#### Field: name
```lua
string
```


#### Field: type
```lua
"character"|"housing"|"mate"|"npc"|"shipyard"...(+2)
```


### Class: UrlLinkInfo
#### Field: addr
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


#### Field: linkType
```lua
"url"
```


#### Field: messageTimeStamp
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
x

#### Field: [2]
```lua
number|nil
```
y

#### Field: [3]
```lua
number|nil
```
z

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
Obtained from db system_factions.name

#### Field: motherFactionName
```lua
"170906 DO NOT TRANSLATE"|"184394 DO NOT TRANSLATE"|"27499 DO NOT TRANSLATE"|"27500 DO NOT TRANSLATE"|"27501 DO NOT TRANSLATE"...(+115)
```
Obtained from db system_factions.name

#### Field: name
```lua
string
```


#### Field: sextant
```lua
SEXTANT
```


#### Field: trgFactionName
```lua
"170906 DO NOT TRANSLATE"|"184394 DO NOT TRANSLATE"|"27499 DO NOT TRANSLATE"|"27500 DO NOT TRANSLATE"|"27501 DO NOT TRANSLATE"...(+115)
```
Obtained from db system_factions.name

#### Field: trgMotherFactionName
```lua
"170906 DO NOT TRANSLATE"|"184394 DO NOT TRANSLATE"|"27499 DO NOT TRANSLATE"|"27500 DO NOT TRANSLATE"|"27501 DO NOT TRANSLATE"...(+115)
```
Obtained from db system_factions.name

#### Field: trgName
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
api/X2Dominion

#### Field: dropRate
```lua
number|nil
```


#### Field: festivalName
```lua
string|nil
```


#### Field: goldRate
```lua
number|nil
```


#### Field: isConflictZone
```lua
boolean
```


#### Field: isCurrentZone
```lua
boolean
```


#### Field: isFestivalZone
```lua
boolean
```


#### Field: isHariharaProtectedZone
```lua
boolean
```


#### Field: isInstanceZone
```lua
boolean
```


#### Field: isLocalDevelopment
```lua
boolean
```


#### Field: isNuiaProtectedZone
```lua
boolean
```


#### Field: isPeaceZone
```lua
boolean
```


#### Field: isSiegeZone
```lua
boolean
```


#### Field: localDevelopmentName
```lua
string|nil
```


#### Field: localDevelopmentStep
```lua
number|nil
```


#### Field: lockTime
```lua
number|nil
```


#### Field: nonPeaceState
```lua
boolean
```


#### Field: nonRate
```lua
boolean|nil
```


#### Field: remainTime
```lua
number|nil
```


#### Field: warChaos
```lua
boolean
```


#### Field: zoneName
```lua
"Abyssal Library"|"Aegis Island"|"Ahnimar Event Arena"|"Ahnimar"|"Airain Rock"...(+143)
```


