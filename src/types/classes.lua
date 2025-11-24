---@class ComboboxDropDown: Listbox
---@field downBtn Button
---@field upBtn Button
---@field vslider Vslider
local ComboboxDropDown = {}

---@class Vslider: Slider
---@field thumb Button
local Vslider = {}

---objects/RadioGroup
---@class RadioItem: EmptyWidget
---@field check Checkbutton

---objects/ListCtrl
---@class ListCtrlItem: Window
---@field subItems Button[]|Window[]|Textbox[]|table[] --@TODO: table is LCCIT_STRING but is a table with just a style field and nothing else
---@field eventWindow Window

---api/Addon
---@class EscMenuButtonData
---@field path string Addon/{addonname}/example.dds
---@field x number|nil
---@field y number|nil
---@field w number 25
---@field h number 25

---api/Addon
---@class AddonInfo
---@field name string
---@field enable boolean

---api/Addon
---@class RGBAColor
---@field [1] number Red (min: `0`, max: `1`)
---@field [2] number Green (min: `0`, max: `1`)
---@field [3] number Blue (min: `0`, max: `1`)
---@field [4] number Alpha (min: `0`, max: `1`)

---api/Addon
---@class Time
---@field year number
---@field month number
---@field day number
---@field hour number
---@field minute number
---@field second number

---api/Addon
---@class TextureColors
---@field [string] RGBAColor

---api/Addon
---@class TextureColorKey
---@field [1] number Red (min: `0`, max: `1`)
---@field [2] number Green (min: `0`, max: `1`)
---@field [3] number Blue (min: `0`, max: `1`)

---api/Addon
---@class TextureCoords
---@field [1] number x
---@field [2] number y
---@field [3] number width
---@field [4] number height

---api/Addon
---@class TextureInset
---@field [1] number leftPadding
---@field [2] number topPadding
---@field [3] number rightPadding
---@field [4] number bottomPadding

---api/Addon
---@class TextureDimensions
---@field [1] number resized width
---@field [2] number resized height

---api/Addon
---@class TextureData
---@field offset number[]
---@field colors TextureColors
---@field colorKey TextureColorKey
---@field coords TextureCoords
---@field inset TextureInset
---@field extent TextureDimensions

---api/Addon
---@class TextureKeyData
---@field width number
---@field height number
---@field keys string[]

---api/Addon
---@class ScreenResolution
---@field x number width of screen
---@field y number height of screen
---@field scale number

---api/Addon
---@class Bound
---@field x number
---@field y number
---@field width number unscaled width
---@field height number unscaled height

---api/Addon
---@class UIBound
---@field screenResolution ScreenResolution
---@field bound Bound

---@TODO: search for this and replace with Vec3Array if neccessary
---api/Addon
---@class Vec3
---@field x number|nil
---@field y number|nil
---@field z number|nil

---@class Vec3Array
---@field [1] number|nil x
---@field [2] number|nil y
---@field [3] number|nil z

---api/Addon
---@class VirtualMemoryStats
---@field workingSet number
---@field usage number

---api/Addon
---@class FontSizeList
---@field default number
---@field small number
---@field middle number
---@field large number
---@field cinema number
---@field xlarge number
---@field xxlarge number

---api/Addon
---@class AppellationBuffInfo
---@field buff_id number
---@field category string
---@field description string
---@field name string
---@field path string
---@field tipType string

---api/X2Ability
---@class ActabilityInfo
---@field name string
---@field type number
---@field point number
---@field modifyPoint number
---@field grade number

---api/X2Chat
---@class ChatMessageOption
---@field isOtherWorldMessage boolean|nil
---@field isUserChat boolean
---@field messageLocale LOCALE|nil
---@field npcBubbleChat boolean|nil
---@field specifyName string|nil

---api/X2Achievement
---@class RewardItemInfo
---@field count number
---@field itemType number

---api/X2Achievement
---@class RewardInfo
---@field appellation AppellationInfo
---@field item RewardItemInfo

---api/X2Achievement
---@class AppellationInfo
---@field iconPath string
---@field name string

---api/X2Achievement
---@class AchievementInfo
---@field achievementKind number
---@field canProgress boolean
---@field categoryName string
---@field complete boolean
---@field completeDate Time|nil This is set if complete == true
---@field completeNum number
---@field completeSubCount number|nil @TODO: I think this is only set if highRank == true
---@field current number
---@field desc string
---@field grade number
---@field highRank boolean
---@field highRankAchievementType number|nil mainType @TODO: I think this is only set if highRank == false
---@field iconPath string
---@field isHidden boolean
---@field isParentComplete boolean|nil @TODO: I think this is only set if highRank == false
---@field name string
---@field objective number|nil[] @TODO: I think this is only set if highRank == true
---@field reward RewardInfo|nil @TODO: I think this is only set if highRank == true
---@field subCategoryName string
---@field subCategoryType number
---@field summary string
---@field totalSubCount number|nil @TODO: I think this is only set if highRank == true
---@field tracing boolean
---@field type number

---api/X2Achievement
---@class AchievementSubCategory
---@field name string
---@field subCategoryType number

---api/X2Achievement
---@class AchievementLevelSubCategory: AchievementSubCategory
---@field isHeirLevelCategory boolean

---api/X2Achievement
---@class AchievementCategory
---@field categoryType number
---@field name string
---@field subCategories AchievementSubCategory[]

---api/X2Achievement
---@class SubcategoryInfo
---@field completedCount number
---@field desc string
---@field isHeirLevelCategory boolean
---@field name string
---@field rewardAchievementType number
---@field totalCount number

---api/X2Achievement
---@class TodayAssignmentGoal
---@field goal number
---@field itemCount number
---@field itemType number

---api/X2Achievement
---@class TodayAssignmentInfo
---@field desc string
---@field iconPath string
---@field init boolean
---@field levelMax number
---@field levelMin number
---@field questType number
---@field realStep number
---@field requireItem number|nil
---@field requireItemCount number|nil
---@field requireLevel number
---@field satisfy boolean
---@field sort number
---@field status number
---@field title string

---api/X2Achievement
---@class AchievementSubList
---@field key number

---api/X2Chat
---@class CHAT_MESSAGE_INFO
---@field charId string
---@field displayLocale number
---@field factionName string
---@field isUserChat boolean
---@field npcBubbleChat boolean
---@field speakerInChatBound boolean
---@field specifyName string
---@field trialPosition string
---@field unitId string

---api/X2CombatResource
---@class CombatResource
---@field ability number
---@field isDefaultResource boolean
---@field recoveryResourceType number
---@field resource1ColorKey string
---@field resource1Current number
---@field resource1Max number
---@field resource2ColorKey string|nil
---@field resource2Current number|nil
---@field resource2Max number|nil
---@field uiType CRU

---api/X2CombatResource
---@class CombatResourceInfo: CombatResource
---@field groupType number
---@field iconPath string
---@field tooltip string

---@class CombatResources
---@field [1] CombatResourceInfo
---@field [2] CombatResourceInfo
---@field [3] CombatResourceInfo

---api/X2Craft
---@class CraftBaseInfo
---@field actability_satisfied boolean
---@field consume_lp number
---@field cost number
---@field cost_satisfied boolean
---@field craft_type number
---@field doodad_name string
---@field laborpower_satisfied boolean
---@field needed_lp number
---@field orderable boolean
---@field recommend_level number
---@field require_doodad number
---@field required_actability_name string
---@field required_actability_point number
---@field required_actability_type number
---@field skill_type number
---@field title string
---@field use_only_actability boolean

---api/X2Craft
---@class CraftProductInfo
---@field amount number
---@field item_name string
---@field itemType number
---@field productGrade number
---@field success_rate number
---@field useGrade boolean

---api/X2Map
---@class ZoneStateInfo
---@field conflictState ZONE_STATE
---@field dropRate number|nil
---@field goldRate number|nil
---@field festivalName string|nil
---@field isConflictZone boolean
---@field isCurrentZone boolean
---@field isFestivalZone boolean
---@field isHariharaProtectedZone boolean
---@field isInstanceZone boolean
---@field isLocalDevelopment boolean
---@field isNuiaProtectedZone boolean
---@field isPeaceZone boolean
---@field isSiegeZone boolean
---@field localDevelopmentName string|nil
---@field localDevelopmentStep number|nil
---@field lockTime number|nil
---@field nonPeaceState boolean
---@field nonRate boolean|nil
---@field remainTime number|nil
---@field warChaos boolean
---@field zoneName string

---api/X2Option
---@class AAFormat
---@field desc string
---@field quality number
---@field samples number
---@field txaa number

---@class BasicCursorShape
---@field [1] number
---@field [2] number
---@field [3] number
---@field [4] number
---@field [5] number
---@field [6] number

---@class CursorSize
---@field [1] number
---@field [2] number
---@field [3] number

---api/X2Option
---@class OptionInfo
---@field restart boolean
---@field title string
---@field tooltip string

---api/X2Option
---@class SubOptionItem
---@field optionId number
---@field value number

---api/X2Player
---@class AppellationChangeItemInfo
---@field enough boolean
---@field has number
---@field itemType number
---@field need number

---api/X2Player
---@class AppellationMyLevelInfo
---@field exp number
---@field level number
---@field maxExp number
---@field maxlevel number
---@field minExp number

---api/X2Player
---@class AppellationMyStamp
---@field id number
---@field path string

---api/X2Player
---@class StampInfo: AppellationMyStamp
---@field canEquip number
---@field effectDescription string
---@field modifier table
---@field name string
---@field reqLevel number

---api/X2Player
---@class AppellationRouteInfo
---@field kind number
---@field routeDesc string
---@field routePopup number
---@field type number

---api/X2Player
---@class Appellation
---@field [1] number TYPE
---@field [2] string|nil NAME
---@field [3] number GRADE
---@field [4] number ISHAVE
---@field [5] number ORDER
---@field [6] AppellationBuffInfo|nil BUFFINFO

---api/X2Player
---@class StampChangeItemInfo
---@field enough boolean
---@field has number
---@field itemType number
---@field need number

---api/X2Player
---@class UnitAppellationRoute
---@field key number
---@field value string

---api/X2Resident
---@class ResidentBoardContent
---@field [1] string|nil
---@field [2] string|nil
---@field [3] string|nil
---@field [4] string|nil
---@field contents ResidentBoardContent
---@field faction string
---@field title string

---@TODO: Slot:GetExtraInfo() returns only skillPoints
---api/X2Skill
---@class SkillInfo
---@field abilityName string
---@field castingTime number
---@field cooldownTime number
---@field description string
---@field firstLearnLevel number
---@field hasRange boolean
---@field iconPath string
---@field isHarmful boolean
---@field isHelpful boolean
---@field isMeleeAttack boolean
---@field learnLeavel number
---@field levelStep number
---@field manaCost number
---@field maxRange number
---@field minRange number
---@field name string
---@field nextLearnLevel number
---@field show boolean
---@field skillPoints number
---@field upgradeCost number

---api/X2Skill
---@class SynergyIconInfo
---@field conditionbuffkind boolean
---@field conditionicon string
---@field desc string
---@field resultbuffkind boolean
---@field resulticon string

---api/X2Skill [SkillTooltip](lua://SkillTooltip)
---@class SkillTooltip
---@field ability string
---@field abilityLevel number
---@field casting number
---@field category string
---@field channeling number
---@field cooldown number
---@field description string
---@field firstLearnLevel number
---@field heirSkillName number
---@field isRaceSkill boolean
---@field learnLevel number
---@field levelStep number
---@field mana number
---@field maxCombatResource number
---@field maxRange number|nil
---@field meleeDpsMultiplier number|nil
---@field minCombatResource number
---@field minRange number|nil
---@field name string
---@field path string
---@field show boolean
---@field skillLevel number
---@field skillPoints number
---@field synergyIconInfo SynergyIconInfo[]|nil
---@field targetAreaRadius number|nil
---@field tipType string
---@field type number

---api/X2Store
---@class ZoneInfo
---@field continentName string
---@field id number
---@field zoneGroupName string

---api/X2Unit
---@class TargetAbilityTemplate
---@field index number
---@field level number
---@field name string

---api/X2Unit
---@class TargetAbility
---@field [1] TargetAbilityTemplate
---@field [2] TargetAbilityTemplate
---@field [3] TargetAbilityTemplate

---api/X2Unit
---@class UnitClass
---@field [1] ABILITY_TYPE
---@field [2] ABILITY_TYPE
---@field [3] ABILITY_TYPE

---api/X2Unit
---@class UnitInfo
---@field class UnitClass
---@field expeditionName string
---@field faction string
---@field family_name string
---@field heirLevel number
---@field hp string
---@field level number
---@field maxHp string
---@field name string
---@field type string

---api/X2Unit
---@class BuffInfo
---@field buff_id number
---@field path string
---@field stack number
---@field timeLeft number|nil
---@field timeUnit "msec"|"sec"|nil

---api/X2Unit
---@class BuffTooltip: BuffInfo
---@field category "Buff"|"Debuff"
---@field description string|nil
---@field duration number|nil
---@field mine boolean|nil
---@field name string|nil
---@field tipType "skill"|"mate_skill"|"siege_weapon_skill"|"buff"|"debuff"|"passive"|"appStamp"|"preview"|nil

---api/X2Unit
---@class CastingInfo
---@field castingTime number
---@field castingUseable boolean
---@field currCastingTime number
---@field showTargetCastingTime boolean
---@field spellName string

---api/X2Unit
---@class UnitDistance
---@field distance number
---@field over_distance boolean

---@class RGBA
---@field r number
---@field g number
---@field b number
---@field a number

---@TODO: each animType has it own fields
---May not be accurate.
---@class FrameInfo
---@field alpha number|nil
---@field animTime number|nil
---@field animType DAT|LAT|nil This can add multiple LAT
---@field h number|nil
---@field moveX number|nil
---@field moveY number|nil
---@field scale number|nil
---@field showTime number|nil
---@field time number|nil
---@field w number|nil
---@field x number|nil
---@field y number|nil

---@class Point
---@field beginX number
---@field beginY number
---@field endX number
---@field endY number

---@TODO: this may not be accurate, child doesnt appear to work
---@class ItemData: ItemTree
---@field indexing number[] { parentIndex[, childIndex...] } (min: `0`)
---@field text string|nil
---@field value number|nil

---@class ItemsInfo
---@field indexing number[] { parentIndex[, childIndex...] } (min: `0`)
---@field opened boolean
---@field text string
---@field value number

---@class ItemTree
---@field enable boolean|nil `true` to enable, `false` to disable. (default: `true`)
---@field text string
---@field value number
---@field subtext string|nil
---@field subColor RGBAColor|nil
---@field defaultColor RGBAColor|nil Requires `useColor = true`.
---@field selectColor RGBAColor|nil Requires `useColor = true`.
---@field overColor RGBAColor|nil Requires `useColor = true`.
---@field disableColor RGBAColor|nil Requires `useColor = true`.
---@field color RGBAColor|nil Requires `useColor = true`.
---@field useColor boolean|nil if `true` defaultColor, selectColor, overColor, disableColor, and color need to all be set or they will be invisible.
---@field iconPath string|nil
---@field infoKey string|nil
---@field child ItemTree[]|nil
---@field tailIconPath string|nil
---@field tailIconCoord string|nil
---@field opened boolean|nil (default: `false`)

---objects/Listbox
---@class ItemTreeValue
---@field value number

---objects/Listbox
---@class ItemTreeInfos
---@field itemInfos ItemTreeValue[]

---@class BaseLinkInfo
---@field linkType LINKTYPE

---@class CommonLinkFields
---@field filter number
---@field isOtherWorld boolean
---@field messageTimeStamp number

---@class CharacterLinkInfo: BaseLinkInfo, CommonLinkFields
---@field linkType "character"

---@class CraftLinkInfo: BaseLinkInfo, CommonLinkFields
---@field linkType "craft"
---@field craftType number

---@class InvalidLinkInfo: BaseLinkInfo, CommonLinkFields
---@field linkType "invalid"

---@class ItemLinkInfo: BaseLinkInfo, CommonLinkFields
---@field linkType "item"
---@field itemGrade ITEM_GRADE_TYPE
---@field itemLinkText string
---@field linkKind LINKKIND_NUM

---@class NoneLinkInfo: BaseLinkInfo
---@field linkType "none"

---@class QuestLinkInfo: BaseLinkInfo, CommonLinkFields
---@field linkType "quest"
---@field questType number

---@class RaidLinkInfo: BaseLinkInfo, CommonLinkFields
---@field linkType "raid"
---@field createTime string
---@field ownerId string

---@class SquadLinkInfo: BaseLinkInfo, CommonLinkFields
---@field linkType "squad"
---@field battleFieldType number
---@field joinKey string
---@field squadId number
---@field zoneGroupType number

---@class UrlLinkInfo: BaseLinkInfo, CommonLinkFields
---@field linkType "url"
---@field addr string
---@field text string

---@class CustomizingHairDefaultColor
---@field defaultR number Basic Hair Color Red. (min: `0`, max: `255`)
---@field defaultG number Basic Hair Color Green. (min: `0`, max: `255`)
---@field defaultB number Basic Hair Color Blue. (min: `0`, max: `255`)
---@field index number|nil Old Hair @TODO: If this is set by default on the model then rgb cant be used and vice versa, needs more testing.

---@class CustomizingHairTwoToneColor
---@field twoToneR number Highlight Color Red. (min: `0`, max: `255`)
---@field twoToneG number Highlight Color Green. (min: `0`, max: `255`)
---@field twoToneB number Highlight Color Blue. (min: `0`, max: `255`)
---@field firstWidth number Dye Length. (min: `0`, max: `1`)
---@field secondWidth number Highlights. (min: `0`, max: `1`)

---@class CustomHairColor: CustomizingHairDefaultColor, CustomizingHairTwoToneColor

---@class SEXTANT
---@field deg_lat number
---@field deg_long number
---@field latitude "W"|"N"|"E"|"S"
---@field longitude "W"|"N"|"E"|"S"
---@field min_lat number
---@field min_long number
---@field sec_lat number
---@field sec_long number

---@class InsetData: number[]
---@field [1] number|nil Left
---@field [2] number|nil Top
---@field [3] number|nil Bottom
---@field [4] number|nil Right

---@class SiegeRaidTeam
---@field defense boolean
---@field fName string
---@field isWaitWar boolean
---@field membetCount number xlgames misspelt this
---@field ownerName string
---@field period string 
---@field ranking number

---@class SiegeRaidTeamInfos
---@field [1] SiegeRaidTeam
---@field [2] SiegeRaidTeam
---@field [3] SiegeRaidTeam

---@class CraftOrderEntry
---@field chargeFee string
---@field consumeLp number
---@field craftCount number
---@field craftGrade number
---@field craftType number
---@field enableAct boolean
---@field enableLp boolean
---@field entryId number
---@field entryIndex number
---@field fee string
---@field mine number
---@field remainTime number
---@field requireLp number
---@field totalFee string

---@class CraftOrderEntries
---@field [1] CraftOrderEntry|nil
---@field [2] CraftOrderEntry|nil
---@field [3] CraftOrderEntry|nil
---@field [4] CraftOrderEntry|nil
---@field [5] CraftOrderEntry|nil
---@field [6] CraftOrderEntry|nil
---@field [7] CraftOrderEntry|nil
---@field [8] CraftOrderEntry|nil

---@class DiagonalASRDailyInfo
---@field dailyAvg string
---@field maxPrice string
---@field minPrice string
---@field volume number
---@field weeklyAvg string

---@class DiagonalASRInfo
---@field [1] DiagonalASRDailyInfo
---@field [2] DiagonalASRDailyInfo
---@field [3] DiagonalASRDailyInfo
---@field [4] DiagonalASRDailyInfo
---@field [5] DiagonalASRDailyInfo
---@field [6] DiagonalASRDailyInfo
---@field [7] DiagonalASRDailyInfo
---@field [8] DiagonalASRDailyInfo
---@field [9] DiagonalASRDailyInfo
---@field [10] DiagonalASRDailyInfo
---@field [11] DiagonalASRDailyInfo
---@field [12] DiagonalASRDailyInfo
---@field [13] DiagonalASRDailyInfo
---@field [14] DiagonalASRDailyInfo

---@class SiegeInfo
---@field action SIEGE_ACTION
---@field defenseName string
---@field isMyInfo boolean
---@field offenseName string
---@field periodName SIEGE_PERIOD_NAME
---@field team string
---@field zoneGroupName ZONE_NAME
---@field zoneGroupType ZONE_ID

---@class PhaseMsgInfo
---@field color string
---@field iconKey string
---@field msg string
---@field titleColor string
---@field titleMsg string

---@class EscMenuAddButtonInfo
---@field categoryId ESC_MENU_CATEGORY_ID
---@field uiContentType UIC
---@field iconKey ESC_MENU_ICON_KEY
---@field name string

---@class UnitClassNames
---@field [1] ABILITY_TYPE_NAME
---@field [2] ABILITY_TYPE_NAME
---@field [3] ABILITY_TYPE_NAME

---@class MemberInfo
---@field [1] string Name
---@field [2] number Basic Level
---@field [3] UnitClassNames Class
---@field [4] number Guild Role
---@field [5] table Connection Status (empty)
---@field [6] string Memo
---@field [7] boolean Online
---@field [8] boolean Party
---@field [9] number Contribution Points
---@field [10] number Ancestral Level
---@field [11] number Weekly Contribution Points
---@field [12] any|nil CHK

---@class GuildInterests
---@field [1] number Dungeon
---@field [2] number War
---@field [3] number Naval Battles
---@field [4] number Raid
---@field [5] number Adventure
---@field [6] number Crafting

---@class GuildRecruitmentInfo
---@field apply boolean
---@field expeditionId number
---@field expedition_level number
---@field expedition_name string
---@field interests GuildInterests
---@field introduce string
---@field memberCount number
---@field owner_name string
---@field pull boolean Full
---@field remainTime number

---@TODO: Enum for faction. this provides a different faction id? nuia returns 104 X2Unit:GetTopLevelFactionNameById
---@class FriendInfo
---@field [1] string Name
---@field [2] number Basic Level
---@field [3] UnitClass Class
---@field [4] Time Last login
---@field [5] RACE_ID
---@field [6] boolean Online
---@field [7] boolean Party
---@field [8] number Ancestral Level = 40,
---@field [9] number Faction
---@field [10] number|nil CHK

---@class InstanceEnterableInfo
---@field content string
---@field iconKey string
---@field title string

---@class InstanceGameKillInfo
---@field killer string
---@field killerCorps string
---@field killerCorpsKill number
---@field killerKillstreak number
---@field ruleMode number
---@field victim string
---@field victimCorps string
---@field victimCorpsDeath number

---@class QuestItem
---@field order QUEST_MARK_ORDER
---@field qtype number

---@class QuestSelectList
---@field gives QuestItem[]
---@TODO: letItDones? completes? gives?

---@class NextSiegeInfo
---@field hour number
---@field min number
---@field week string
---@field zoneGroupName ZONE_NAME

---@class RaidRecruitDetailInfo
---@field createTime string
---@field hour number
---@field limitGearPoint number
---@field limitLevel number
---@field minute number
---@field msg string
---@field ownerExpedition string
---@field ownerId string
---@field ownerLevel number
---@field ownerName string
---@field subType number
---@field subTypeName string
---@field type number

---@class RaidRecruitListInfo
---@field recruiter boolean
---@field subRecruiter boolean

---@class ResidentHousing
---@field decoextendnum number
---@field decolimitnum number
---@field division string
---@field kind string
---@field posx number
---@field posy number
---@field posz number
---@field price number
---@field sellername string
---@field zoneId ZONE_ID

---@class ResidentMember
---@field [1] string Name
---@field [2] number Basic Level
---@field [3] number Contribution
---@field [4] number Family
---@field [5] boolean Online
---@field [6] boolean Party
---@field [7] boolean CHK
---@field [8] number Ancestral Level
---@field [9] number Contribution Rank

---@class ResidentInfo
---@field huntingCharge number
---@field isResident boolean
---@field localCharge string|nil
---@field localEffect string
---@field localFaction string
---@field localFactionIcon string
---@field memberCount number|nil
---@field name string
---@field refreshRemain number|nil
---@field servicePoint number|nil

---@class SquadInfo
---@field buttonEnable boolean
---@field buttonType number
---@field curMemberCount number
---@field explanationText string
---@field fieldType number
---@field isMySquad boolean
---@field limitGearScore number
---@field limitLevel number
---@field maxMemberCount number
---@field nameCacheQueryId string|nil
---@field openType number
---@field ownerLevel number
---@field squadId number
---@field worldName string
---@field zoneGroupType ZONE_ID

---@class SelectSquadList
---@field curPage number
---@field listInfo SquadInfo[]
---@field maxCount number

---@class CommonFarmItem
---@field growthDone boolean
---@field name string

---@class TooltipInfo
---@field buff boolean|nil
---@field count number|nil
---@field enemy boolean|nil
---@field expedition string|nil
---@field factionId FACTION_TYPE|nil
---@field factionName string|nil
---@field factions FACTION_TYPE[]|nil
---@field hp string|number|nil
---@field id number|nil
---@field list CommonFarmItem[]|nil
---@field kind TOOLTIP_KIND|nil
---@field maxHp string|number|nil
---@field name string|nil
---@field owner string|nil
---@field possible boolean|nil `true` if the player can use the ezi light
---@field text string
---@field territoryName string|nil
---@field tooltipType TOOLTIP_TYPE
---@field zoneId ZONE_ID|nil

---@class SiegeRaidMemberInfo
---@field ability ABILITY_TYPE[]
---@field gearScore number
---@field heirLevel number
---@field level number
---@field name string

---@class SiegeRaidScheduleInfo
---@field endHour number
---@field endMin number
---@field startHour number
---@field startMin number
---@field weekDay string

---@class SiegeRaidZoneInfo
---@field commanderName string
---@field factionId number
---@field memberCnt number
---@field memberMax number
---@field scheduleInfo SiegeRaidScheduleInfo
---@field siegeState string = "siege_state_ready_to_siege",
---@field zoneName string @TODO: ZONE_NAME?

---@class SiegeRaidInfo
---@field memberInfo SiegeRaidMemberInfo[]
---@field zoneInfo SiegeRaidZoneInfo

---@class SkillMapEffectInfo
---@field a number
---@field b number
---@field g number
---@field index number
---@field r number
---@field radius number
---@field textureKey string
---@field texturePath string
---@field time number
---@field useEffect boolean
---@field x number
---@field y number
---@field z number

---@class SkillSelectiveItemTable
---@field count number
---@field grade number
---@field idx number
---@field name string
---@field selectable boolean
---@field type number

---@class SkillSelectiveItemList
---@field is_multi boolean
---@field itemTables SkillSelectiveItemTable[]
---@field maxTryCount number
---@field popup_text string
---@field select number
---@field srcItem ItemInfo

---@class TeamMember
---@field isParty boolean
---@field jointOrder number 1 or 2
---@field memberIndex number
---@field name string
---@field teamRoleType string

---@class TowerDefInfo
---@field color string
---@field iconKey string
---@field msg string
---@field step string
---@field titleMsg string
---@field zoneGroup ZONE_ID @TODO: Might not be ZONE_ID

---@class KillStreakInfo
---@field gameType number
---@field killerKillStreak number
---@field killerName string
---@field param1 number
---@field param2 number threeKillCount
---@field victimName number

---@class CraftOrderItemFee
---@field defaultFee string
---@field maxFee string
---@field minFee string

---@class CraftOrderItemSlot
---@field craftCount number
---@field craftGrade number
---@field craftType number

---@class CraftOrderInfo
---@field craftCount number
---@field craftGrade ITEM_GRADE_TYPE
---@field craftType number

---@class WorldMessageInfo
---@field factionName string
---@field motherFactionName string
---@field name string
---@field sextant SEXTANT
---@field trgFactionName string
---@field trgMotherFactionName string
---@field trgName string
---@field zoneGroupName ZONE_NAME

---@class ActabilityGroupTypeInfo: ActabilityInfo
---@field viewGroupType number

---@class ActiveAbility
---@field bool boolean
---@field exp string
---@field level number
---@field levelPercent number
---@field nextLevelTotalExp string
---@field type ABILITY_TYPE

---@class ActiveAbilities
---@field [1] ActiveAbility
---@field [2] ActiveAbility|nil
---@field [3] ActiveAbility|nil

---@class ChangeVisualRace
---@field itemId number
---@field raceList number[]
---@field skillType number
---@field time number

---@class GachaLootPackItemLog
---@field itemGrade ITEM_GRADE_TYPE
---@field itemType number
---@field stackSize number

---@class GachaLootPackLog
---@field [1] GachaLootPackItemLog Gold
---@field [2] GachaLootPackItemLog Item

---@class GachaLootPackItemResult
---@field grade ITEM_GRADE_TYPE
---@field linkText string
---@field stackSize number

---@class GachaLootPackResult
---@field [1] GachaLootPackItemResult Gold
---@field [2] GachaLootPackItemResult Item

---@class TutorialInfo
---@field [1] { title: string }
---@field [2] { [1]: string }

---@class FactionPointInfo
---@field factionId FACTION_TYPE
---@field point number

---@class FactionCompetitionPointInfo
---@field pointList FactionPointInfo[]

---@class CompleteCraftOrderInfo
---@field craftCount number
---@field craftGrade ITEM_GRADE_TYPE
---@field craftType number

---@class SpecialtySupplyInfo
---@field iconCoord string
---@field iconPath string
---@field label string
---@field priceIndex number

---@class SpecialtyBaseInfo
---@field item ItemInfo
---@field noEventRefund string
---@field ratio number
---@field refund string
---@field supply SpecialtySupplyInfo

---@class SpecialtyInfo: SpecialtyBaseInfo
---@field count number
---@field delay number
---@field specialtyZone ZONE_ID

---@class SpecialtyContentInfo: SpecialtyBaseInfo
---@field stock number

---@class SellSpecialtyInfo
---@field count number
---@field freshnessRatio number
---@field item ItemInfo
---@field noEventRefund string
---@field ratio number
---@field refund string
---@field refundItemCount number
---@field refundItemType number
---@field sellerRatio number
---@field specialtyZone ZONE_ID
---@field supply SpecialtySupplyInfo

---@class ChronicleInfo
---@field mainKey number
---@field openKey number
---@field status "active"|"complete"|string

---@class ChangeOptionInfo
---@field display false

------

---@TODO: Rewrite these

---@class CombatSpellPrefix
---@field spellId number
---@field spellName string
---@field spellSchool string PHYSICAL|HOLY

---@class CombatEnvironmentalPrefix
---@field source COLLISION_SOURCE
---@field subType COLLISION_PART
---@field mySlave any|nil @TODO:

---@class CombatDamageSuffix
---@field damage number
---@field powerType POWER_TYPE
---@field hitType "HIT"|"CRITICAL" @TODO: COMBAT_HIT_TYPE?
---@field reduced number
---@field elementDamage number
---@field showElementEffect boolean
---@field elementType number
---@field synergy boolean

---@class CombatMissSuffix
---@field missType "MISS"|"DODGE"|"BLOCK"|"PARRY"|"IMMUNE"|"RESIST"
---@field damage number
---@field reduced number
---@field elementDamage number
---@field showElementEffect boolean
---@field elementType number

---@class CombatAuraSuffix
---@field auraType "BUFF"|"DEBUFF"
---@field combatText boolean

---@class CombatHealedSuffix
---@field heal number
---@field hitType "HIT"|"CRITICAL"
---@field showElementEffect boolean
---@field elementType number

---@class CombatCastFailedSuffix
---@field failType any @TODO:

---@class CombatEnergizeSuffix
---@field amount any
---@field powerType POWER_TYPE

---@class CombatDrainSuffix: CombatEnergizeSuffix

---@class CombatLeechSuffix: CombatEnergizeSuffix

---@class CombatEnvironmentalDamage: CombatEnvironmentalPrefix, CombatDamageSuffix

---@class CombatMeleeDamage: CombatDamageSuffix

---@class CombatMeleeMissed: CombatMissSuffix

---@class CombatSpellAuraApplied: CombatSpellPrefix, CombatAuraSuffix

---@class CombatSpellAuraRemoved: CombatSpellPrefix, CombatAuraSuffix

---@class CombatSpellCastFailed: CombatSpellPrefix, CombatCastFailedSuffix

---@class CombatSpellCastStart: CombatSpellPrefix

---@class CombatSpellCastSuccess: CombatSpellPrefix

---@class CombatSpellDamage: CombatSpellPrefix, CombatDamageSuffix

---@class CombatSpellDotDamage: CombatSpellPrefix, CombatDamageSuffix

---@class CombatSpellEnergize: CombatSpellPrefix

---@class CombatSpellHealed: CombatSpellPrefix, CombatHealedSuffix

---@class CombatSpellMissed: CombatSpellPrefix, CombatMissSuffix

---@TODO: 
---X <- I dont know if it exists.
---X CombatEnvironmentalAuraApplied: CombatEnvironmentalPrefix, CombatAuraSuffix
---X CombatEnvironmentalAuraRemoved: CombatEnvironmentalPrefix, CombatAuraSuffix
---X CombatEnvironmentalCastFailed: CombatEnvironmentalPrefix, CombatCastFailedSuffix
---X CombatEnvironmentalCastStart: CombatEnvironmentalPrefix
---X CombatEnvironmentalCastSuccess: CombatEnvironmentalPrefix
---CombatEnvironmentalDamage: CombatEnvironmentalPrefix, CombatDamageSuffix
---X CombatEnvironmentalDotDamage: CombatEnvironmentalPrefix, CombatDamageSuffix
---CombatEnvironmentalDrain: CombatEnvironmentalPrefix, CombatDrainSuffix
---CombatEnvironmentalEnergize: CombatEnvironmentalPrefix, CombatEnergizeSuffix
---CombatEnvironmentalHealed: CombatEnvironmentalPrefix, CombatHealedSuffix
---CombatEnvironmentalLeech: CombatEnvironmentalPrefix, CombatLeechSuffix
---X CombatEnvironmentalMissed: CombatEnvironmentalPrefix,CombatMissSuffix
---X CombatMeleeAuraApplied: CombatAuraSuffix
---X CombatMeleeAuraRemoved: CombatAuraSuffix
---X CombatMeleeCastFailed: CombatCastFailedSuffix
---X CombatMeleeCastStart:
---X CombatMeleeCastSuccess:
---CombatMeleeDamage: CombatDamageSuffix
---X CombatMeleeDotDamage: CombatDamageSuffix
---X CombatMeleeDrain: CombatDrainSuffix
---X CombatMeleeEnergize: CombatEnergizeSuffix
---X CombatMeleeHealed: CombatHealedSuffix
---X CombatMeleeLeech: CombatLeechSuffix
---CombatMeleeMissed: CombatMissSuffix
---CombatSpellAuraApplied: CombatSpellPrefix, CombatAuraSuffix
---CombatSpellAuraRemoved: CombatSpellPrefix, CombatAuraSuffix
---CombatSpellCastFailed: CombatSpellPrefix, CombatCastFailedSuffix
---CombatSpellCastStart: CombatSpellPrefix
---CombatSpellCastSuccess: CombatSpellPrefix
---CombatSpellDamage: CombatSpellPrefix, CombatDamageSuffix
---CombatSpellDotDamage: CombatSpellPrefix,CombatDamageSuffix
---CombatSpellDrain: CombatSpellPrefix, CombatDrainSuffix
---CombatSpellEnergize: CombatSpellPrefix, CombatEnergizeSuffix
---CombatSpellHealed: CombatSpellPrefix, CombatHealedSuffix
---CombatSpellLeech: CombatSpellPrefix, CombatLeechSuffix
---CombatSpellMissed: CombatSpellPrefix, CombatMissSuffix

----

---@class FactionCompetitionInfo
---@field zoneIn boolean

---@class FactionCompetitionResultInfos
---@field pointList FactionPointInfo[]
---@field winFaction FACTION_TYPE

---@class SpecialtyRatioInfo
---@field itemInfo ItemInfo
---@field ratio number

---@class NpcBroadcastingInfo
---@field broadcastingType NIBC
---@field buffName string
---@field buffType number
---@field iconPath string
---@field stack number

---@class ReentryParam
---@field [1] boolean reentry
---@field [2] number timeLeft in milliseconds
---@field [3] string|nil instanceName

---@class MiniScoreBoardRowInfo
---@field curHp number
---@field maxHp number
---@field moduleType number
---@field name string
---@field type number
---@field visibleOrder number

---@class MiniScoreBoardInfo
---@field footer string
---@field footerGuide string
---@field rows MiniScoreBoardRowInfo[]
---@field type number
---@field visibleOrder number

---@class GearScoreItemInfo
---@field total number
---@field equipSlotReinforce number
---@field bare number

---@class SocketInfo
---@field maxSocket number
---@field socketItem number[]

---@class EvolvingInfoModifier
---@field value number
---@field type number
---@field gsNum number

---@class EvolvingInfo
---@field minExp number
---@field evolveChance number
---@field minSectionExp number
---@field percent number
---@field modifier EvolvingInfoModifier[]

---@class ModifireTable
---@field value number
---@field type number
---@field name string

---@class BonusesInfo
---@field bufDesc string
---@field satisfied boolean
---@field numPieces number

---@class EquipSetInfo
---@field equipSetItemInfoDesc string
---@field bonuses BonusesInfo[]

---@class SetItemsInfo
---@field item_name string
---@field equipped boolean
---@field item_type number

---@class RechargeBuffInfo
---@field chargeLifetime Time
---@field remainTime Time

---@class RequiredConditionInfo
---@field equipSlotTypes string[]

---@TODO: This may not be complete. Should probably add ? to each field. Maybe convert this into a ItemBase and then make different classes?
---@class ItemInfo
---@field armor number
---@field armorType string
---@field attackDelay number
---@field auction_only boolean
---@field backpackType number
---@field baseEquipment boolean
---@field buffType number
---@field canEvolve boolean
---@field category string
---@field checkUnitReq boolean
---@field contributionPointPrice number
---@field convertibleItem boolean
---@field cost number
---@field craftedWorldName string
---@field crafter string
---@field craftType number
---@field dead boolean
---@field description string
---@field DPS number
---@field durability number
---@field element string
---@field elementName string
---@field equiped boolean
---@field equippedSetItemCount number
---@field equipSetInfo EquipSetInfo
---@field evolvingCategory boolean
---@field evolvingInfo EvolvingInfo
---@field extraArmor number
---@field extraDPS number
---@field gearScore GearScoreItemInfo
---@field gemInfo number
---@field gemModifireTable ModifireTable[]
---@field gender string
---@field grade string
---@field gradeColor string
---@field gradeEnchantable boolean
---@field gradeIcon string
---@field healDps number
---@field honorPrice number
---@field icon string
---@field indestructible boolean
---@field isEnchantDisable boolean
---@field isMaterial boolean
---@field isMyWorld boolean
---@field isPetOnly boolean
---@field isStackable boolean
---@field isUnderWaterCreature boolean
---@field item_flag_cannot_equip boolean
---@field item_impl "accessory"|"armor"|"butler_armor"|"enchanting_gem"|"itemGrade"|"itemInfo"|"learn_lock"|"local"|"mate_armor"|"open_paper"|"slave_equipment"|"socket"|"summon_mate"|"summon_slave"|"weapon"|nil
---@field itemGrade number
---@field itemType number
---@field itemUsage string
---@field level number
---@field level_limit number
---@field level_requirement number
---@field lifeSpan number
---@field lifeSpanDayOfWeek boolean
---@field lifeSpanType string
---@field livingPointPrice number
---@field location_world_name string
---@field location_zone_name string
---@field locked boolean
---@field lookChanged boolean
---@field lookType number
---@field magicDps number
---@field magicResistance number
---@field maxDamage number
---@field maxDurability number
---@field maxSetItemCount number
---@field maxStack number
---@field minDamage number
---@field modifier ModifireTable[]
---@field moveSpeed number
---@field name string
---@field needsUnpack boolean
---@field overIcon string
---@field processedState string
---@field rechargeBuff RechargeBuffInfo
---@field refund number
---@field repairable number
---@field requiredCondition RequiredConditionInfo
---@field scalable boolean
---@field securityState ITEM_SECURITY
---@field sellable boolean
---@field setItems SetItemsInfo[]
---@field sideEffect boolean
---@field skillType number
---@field slotType string
---@field slotTypeNum number
---@field socketInfo SocketInfo
---@field soul_bind string
---@field soul_bind_type number
---@field soul_bound number
---@field stack number
---@field uccTooltip string
---@field useAsSkin boolean
---@field useAsStat boolean
---@field useConsumeItem boolean
---@field wear boolean
---@field linkKind LINKKIND_STR|nil
