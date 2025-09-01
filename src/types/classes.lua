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
---@field subItems Label[]

---api/Addon
---@class EscMenuButtonData
---@field path string
---@field x? number
---@field y? number
---@field w number 25
---@field h number 25

---api/Addon
---@class AddonInfo
---@field name string
---@field enabled boolean

---api/Addon
---@class RGBAColor : number[]
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

---api/Addon
---@class Vec3
---@field x? number
---@field y? number
---@field z? number
---@field [1]? number x
---@field [2]? number y
---@field [3]? number z

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

---@TODO: this is similar to BuffTooltip
---api/X2Ability
---@class ActabilityInfo
---@field name string
---@field type number
---@field point number
---@field modifyPoint number
---@field grade number

---api/X2Chat
---@class CHAT_MESSAGE_OPTION
---@field isOtherWorldMessage? boolean
---@field isUserChat boolean
---@field messageLocale? LOCALE
---@field npcBubbleChat? boolean
---@field specifyName? string

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
---@field completeDate? Time TODO: This is set if complete == true
---@field completeNum number
---@field completeSubCount? number TODO: I think this is only set if highRank == true
---@field current number
---@field desc string
---@field grade number
---@field highRank boolean
---@field highRankAchievementType? number mainType TODO: I think this is only set if highRank == false
---@field iconPath string
---@field isHidden boolean
---@field isParentComplete? boolean TODO: I think this is only set if highRank == false
---@field name string
---@field objective? number[] TODO: I think this is only set if highRank == true
---@field reward? RewardInfo TODO: I think this is only set if highRank == true
---@field subCategoryName string
---@field subCategoryType number
---@field summary string
---@field totalSubCount? number TODO: I think this is only set if highRank == true
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
---@field requireItem? number
---@field requireItemCount? number
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
---@field resource2ColorKey? string
---@field resource2Current? number
---@field resource2Max? number
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
---@field dropRate? number
---@field goldRate? number
---@field festivalName? string
---@field isConflictZone boolean
---@field isCurrentZone boolean
---@field isFestivalZone boolean
---@field isHariharaProtectedZone boolean
---@field isInstanceZone boolean
---@field isLocalDevelopment boolean
---@field isNuiaProtectedZone boolean
---@field isPeaceZone boolean
---@field isSiegeZone boolean
---@field localDevelopmentName? string
---@field localDevelopmentStep? number
---@field lockTime? number
---@field nonPeaceState boolean
---@field nonRate? boolean
---@field remainTime? number
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
---@field [1] number APPELLATION_INFO.TYPE
---@field [2]? string APPELLATION_INFO.NAME
---@field [3] number APPELLATION_INFO.GRADE
---@field [4] number APPELLATION_INFO.ISHAVE
---@field [5] number APPELLATION_INFO.ORDER
---@field [6]? AppellationBuffInfo APPELLATION_INFO.BUFF_INFO

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
---@field [1] string?
---@field [2] string?
---@field [3] string?
---@field [4] string?
---@field contents ResidentBoardContent
---@field faction string
---@field title string

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

---@TODO: Should SkillTooltip be moved to Addon because its also used in Slot:GetTooltip()

---api/X2Skill
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
---@field maxRange? number
---@field meleeDpsMultiplier? number
---@field minCombatResource number
---@field minRange? number
---@field name string
---@field path string
---@field show boolean
---@field skillLevel number
---@field skillPoints number
---@field synergyIconInfo? SynergyIconInfo[]
---@field targetAreaRadius? number
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

---@TODO: Dont I have something similar to this already?
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
---@field timeLeft? number
---@field timeUnit? "msec"|"sec"

---api/X2Unit
---@class BuffTooltip: BuffInfo
---@field category "Buff"|"Debuff"
---@field description? string
---@field duration? number
---@field mine? boolean
---@field name? string
---@field tipType? "buff"|"debuff"

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
---@field alpha? number
---@field animTime? number
---@field animType? LAT This can add multiple LAT
---@field h? number
---@field moveX? number
---@field moveY? number
---@field scale? number
---@field showTime? number
---@field time? number
---@field w? number
---@field x? number
---@field y? number

---@class Point
---@field beginX number
---@field beginY number
---@field endX number
---@field endY number

---@class ItemsInfo
---@field childCount number
---@field indexing number[]
---@field opened boolean
---@field text string
---@field value number

---@TODO: this may not be complete
---@class ItemTree
---@field enable? boolean
---@field text string
---@field value? number
---@field subtext? string
---@field subColor? RGBAColor
---@field defaultColor? RGBAColor Requires `useColor = true`.
---@field selectColor? RGBAColor Requires `useColor = true`.
---@field overColor? RGBAColor Requires `useColor = true`.
---@field disableColor? RGBAColor @TODO: Unsure if this exists. Couldnt get it to work but its in the scriptsbin.
---@field color? RGBAColor @TODO: Unsure if this exists. Couldnt get it to work but its in the scriptsbin.
---@field useColor? boolean
---@field iconPath? TEXTURE_PATH
---@field infoKey? string
---@field child? ItemTree
---@field tailIconPath? TEXTURE_PATH
---@field tailIconCoord? string

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

---@class CharacterLinkInfo : BaseLinkInfo, CommonLinkFields
---@field linkType "character"

---@class CraftLinkInfo : BaseLinkInfo, CommonLinkFields
---@field linkType "craft"
---@field craftType number

---@class InvalidLinkInfo : BaseLinkInfo, CommonLinkFields
---@field linkType "invalid"

---@class ItemLinkInfo : BaseLinkInfo, CommonLinkFields
---@field linkType "item"
---@field itemGrade ITEM_GRADE_TYPE
---@field itemLinkText string
---@field linkKind number LINKKIND but as a number not a string

---@class NoneLinkInfo : BaseLinkInfo
---@field linkType "none"

---@class QuestLinkInfo : BaseLinkInfo, CommonLinkFields
---@field linkType "quest"
---@field questType number

---@class RaidLinkInfo : BaseLinkInfo, CommonLinkFields
---@field linkType "raid"
---@field createTime string
---@field ownerId string

---@class SquadLinkInfo : BaseLinkInfo, CommonLinkFields
---@field linkType "squad"
---@field battleFieldType number
---@field joinKey string
---@field squadId number
---@field zoneGroupType number

---@class UrlLinkInfo : BaseLinkInfo, CommonLinkFields
---@field linkType "url"
---@field addr string
---@field text string

---@class CustomizingHairDefaultColor
---@field defaultR number Basic Hair Color Red. (min: `0`, max: `255`)
---@field defaultG number Basic Hair Color Green. (min: `0`, max: `255`)
---@field defaultB number Basic Hair Color Blue. (min: `0`, max: `255`)
---@field index? number Old Hair @TODO: If this is set by default on the model then rgb cant be used and vice versa, needs more testing.

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
---@field [1]? number Left
---@field [2]? number Top
---@field [3]? number Bottom
---@field [4]? number Right
