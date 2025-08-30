---@meta _

---@class X2Locale
X2Locale = {} -- api/X2Locale

---@enum KEYBOARD_LAYOUT
local KEYBOARD_LAYOUT = {
  NONE     = "",
  KOREAN   = "KOREAN",
  JAPANESE = "JAPANESE"
}

---@enum (key) LOCALE_INDEX
local LOCALE_INDEX = {
  [-1] = "INVALID",
  [0]  = "KO",
  [1]  = "ZH_CN",
  [2]  = "EN_US",
  [3]  = "JA",
  [4]  = "ZH_TW",
  [5]  = "RU",
  [6]  = "DE",
  [7]  = "FR",
  [8]  = "TH",
  [9]  = "IND",
  [10] = "EN_SG",
}

---@enum LOCALE
local LOCALE = {
  INVALID = "", -- TODO: No idea what this would be.
  KO      = "ko",
  ZH_CN   = "zh_cn",
  EN_US   = "en_us",
  JA      = "ja",
  ZH_TW   = "zh_tw",
  RU      = "ru",
  DE      = "de",
  FR      = "fr",
  TH      = "th",
  IND     = "ind",
  EN_SG   = "en_sg",
}

---api/X2Locale
---@alias UI_TEXT_CATEGORY_ID
---| `ABILITY_CATEGORY_DESCRIPTION_TEXT`
---| `ABILITY_CATEGORY_TEXT`
---| `ABILITY_CHANGER_TEXT`
---| `ATTRIBUTE_TEXT`
---| `ATTRIBUTE_VARIATION_TEXT`
---| `AUCTION_TEXT`
---| `BATTLE_FIELD_TEXT`
---| `BEAUTYSHOP_TEXT`
---| `CASTING_BAR_TEXT`
---| `CHARACTER_CREATE_TEXT`
---| `CHARACTER_POPUP_SUBTITLE_TEXT`
---| `CHARACTER_POPUP_SUBTITLE_TOOLTIP_TEXT`
---| `CHARACTER_SELECT_TEXT`
---| `CHARACTER_SUBTITLE_INFO_TOOLTIP_TEXT`
---| `CHARACTER_SUBTITLE_TEXT`
---| `CHARACTER_SUBTITLE_TOOLTIP_TEXT`
---| `CHARACTER_TITLE_TEXT`
---| `CHAT_CHANNEL_TEXT`
---| `CHAT_COMBAT_LOG_TEXT`
---| `CHAT_CREATE_TAB_TEXT`
---| `CHAT_FORCE_ATTACK_TEXT`
---| `CHAT_LIST_TEXT`
---| `CHAT_SYSTEM_TEXT`
---| `COMBAT_MESSAGE_TEXT`
---| `COMBAT_TEXT`
---| `COMBINED_ABILITY_NAME_TEXT`
---| `COMMON_TEXT`
---| `COMMUNITY_TEXT`
---| `COMPOSITION_TEXT`
---| `CRAFT_TEXT`
---| `CUSTOMIZING_TEXT`
---| `DATE_TIME_TEXT`
---| `DUEL_TEXT`
---| `EQUIP_SLOT_TYPE_TEXT`
---| `EXPEDITION_TEXT`
---| `FACTION_TEXT`
---| `FARM_TEXT`
---| `GENDER_TEXT`
---| `GRAVE_YARD_TEXT`
---| `HERO_TEXT`
---| `HONOR_POINT_WAR_TEXT`
---| `HOUSING_PERMISSIONS_TEXT`
---| `HOUSING_TEXT`
---| `INFOBAR_MENU_TEXT`
---| `INFOBAR_MENU_TIP_TEXT`
---| `INGAMESHOP_TEXT`
---| `INSTANT_GAME_TEXT`
---| `INVEN_TEXT`
---| `ITEM_LOOK_CONVERT_TEXT`
---| `KEY_BINDING_TEXT`
---| `LEARNING_TEXT`
---| `LEVEL_CHANGED_TEXT`
---| `LOADING_TEXT`
---| `LOGIN_CROWDED_TEXT`
---| `LOGIN_DELETE_TEXT`
---| `LOGIN_TEXT`
---| `LOOT_METHOD_TEXT`
---| `LOOT_TEXT`
---| `MAIL_TEXT`
---| `MAP_TEXT`
---| `MONEY_TEXT`
---| `MSG_BOX_BODY_TEXT`
---| `MSG_BOX_BTN_TEXT`
---| `MSG_BOX_TITLE_TEXT`
---| `MUSIC_TEXT`
---| `NATION_TEXT`
---| `OPTION_TEXT`
---| `PARTY_TEXT`
---| `PERIOD_TIME_TEXT`
---| `PET_TEXT`
---| `PHYSICAL_ENCHANT_TEXT`
---| `PLAYER_POPUP_TEXT`
---| `PORTAL_TEXT`
---| `PREMIUM_TEXT`
---| `PRIEST_TEXT`
---| `PROTECT_SENSITIVE_OPERATION_TEXT`
---| `QUEST_ACT_OBJ_PTN_TEXT`
---| `QUEST_ACT_OBJ_TEXT`
---| `QUEST_CONDITION_TEXT`
---| `QUEST_DISTANCE_TEXT`
---| `QUEST_INTERACTION_TEXT`
---| `QUEST_OBJ_STATUS_TEXT`
---| `QUEST_SPHERE_TEXT`
---| `QUEST_STATUS_TEXT`
---| `QUEST_TEXT`
---| `RACE_DETAIL_DESCRIPTION_TEXT`
---| `RACE_TEXT`
---| `RAID_TEXT`
---| `RANKING_TEXT`
---| `REPAIR_TEXT`
---| `RESTRICT_TEXT`
---| `SECOND_PASSWORD_TEXT`
---| `SERVER_TEXT`
---| `SKILL_TEXT`
---| `SKILL_TRAINING_MSG_TEXT`
---| `SLAVE_TEXT`
---| `STABLER_TEXT`
---| `STORE_TEXT`
---| `TARGET_POPUP_TEXT`
---| `TEAM_TEXT`
---| `TERRITORY_TEXT`
---| `TOOLTIP_TEXT`
---| `TRADE_TEXT`
---| `TRIAL_TEXT`
---| `TUTORIAL_TEXT`
---| `UCC_TEXT`
---| `UNIT_FRAME_TEXT`
---| `UNIT_GRADE_TEXT`
---| `UNIT_KIND_TEXT`
---| `UTIL_TEXT`
---| `WEB_TEXT`
---| `WINDOW_TITLE_TEXT`

---Retrieves the current keyboard layout.
---@return KEYBOARD_LAYOUT keyboardLayout The current keyboard layout.
---@nodiscard
---@usage
---```lua
---local keyboardLayout = X2Locale:GetKeyboardLayout()
---```
---@see KEYBOARD_LAYOUT
function X2Locale:GetKeyboardLayout() end

---Retrieves the current locale.
---@return LOCALE locale The current locale.
---@nodiscard
---@usage
---```lua
---local locale = X2Locale:GetLocale()
---```
---@see LOCALE
function X2Locale:GetLocale() end

---Retrieves the locale index.
---@return LOCALE_INDEX localeIndex The locale index.
---@nodiscard
---@usage
---```lua
---local localeIndex = X2Locale:GetLocaleIndex()
---```
---@see LOCALE_INDEX
function X2Locale:GetLocaleIndex() end

---Checks if the specified localization category and key exist.
---@param categoryId UI_TEXT_CATEGORY_ID The UI text category.
---@param key string The key from the ui_texts database table.
---@return boolean localizeUiText `true` if the localization exists, `false` otherwise.
---@nodiscard
---@usage
---```lua
---local localizeUiText = X2Locale:HasLocalizeUiText(MONEY_TEXT, "silver")
---```
---@see UI_TEXT_CATEGORY_ID
function X2Locale:HasLocalizeUiText(categoryId, key) end

---@TODO: Clarify if this triggers an event or how this works.
function X2Locale:LocalizeFormatUiText() end

---Localizes non-UI text after replacing placeholders with provided arguments.
---@param text string The text with placeholders (e.g., $1).
---@param ... string Arguments to replace placeholders (must match number of $).
---@return string localizedText The localized text with placeholders replaced.
---@nodiscard
---@usage
---```lua
---local localizedText = X2Locale:LocalizeNonUiText("$1 - the $1 ArcheAge Private Server", "Archerage.to", "first")
----- Archerage.to - the first ArcheAge Private Server
---```
function X2Locale:LocalizeNonUiText(text, ...) end

---Retrieves localized UI text for the specified category and key, replacing
---placeholders with provided arguments.
---@param category UI_TEXT_CATEGORY_ID The UI text category.
---@param key string The key from the ui_texts database table.
---@param ... string Arguments to replace placeholders.
---@return string localizedUiText The localized UI text.
---@nodiscard
---@usage
---```lua
---local localizedUiText = X2Locale:LocalizeUiText(MONEY_TEXT, "silver", tostring(50))
----- 50 Silver
---```
---@see UI_TEXT_CATEGORY_ID
function X2Locale:LocalizeUiText(category, key, ...) end

---@TODO: Not sure how this works.
---Formats the specified text.
---@param text string The text to format.
---@return string textFormatted The formatted text.
---@nodiscard
function X2Locale:TextFormating(text) end
