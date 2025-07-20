---@meta _

X2Locale = {} -- api/X2Locale

---api/X2Locale
---@alias UI_TEXT
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

---Returns the current keyboard layout.
---@return string keyboardLayout
function X2Locale:GetKeyboardLayout() end

---TODO: Create a locale enum for the return.
---Returns the current locale.
---@return string locale this may not be accurate: de, en_sg, en_us, fr, ind, ja, ko, ru, th, zh_cn, zh_tw
function X2Locale:GetLocale() end

---TODO: Create a locale index enum for the return.
---Returns the locale index. [LOCALE](lua://LOCALE)
---@return number
function X2Locale:GetLocaleIndex() end

---Returns a boolean indicating if the localization `category` and `key` exists.
---@param category UI_TEXT
---@param key string can be obtained from ui_texts table in the database.
---@return boolean HasLocalizeUiText
function X2Locale:HasLocalizeUiText(category, key) end

---TODO:
---This may trigger an event
function X2Locale:LocalizeFormatUiText() end

---Returns localized non ui text after replacing placeholders of `text` with the provided arguments.
---@usage
---```
---X2Locale:LocalizeNonUiText("$2 - the $1 ArcheAge Private Server", "first", "Archerage.to")
----- Archerage.to - the first ArcheAge Private Server
---```
---@param text string
---@param ... string this has to match as many as $
---@return string
function X2Locale:LocalizeNonUiText(text, ...) end

---TODO:
---Returns `localizedUiText` for the `category` `key` after replacing placeholders with the provided arguments `...`.
---@usuage
---```
---X2Locale:LocalizeUiText(MONEY_TEXT, "silver", tostring(50)) -- 50 Silver
---```
---@param category UI_TEXT [UI_TEXT](lua://UI_TEXT)
---@param key string can be obtained from ui_texts table in the database.
---@param ... string
---@return string localizedUiText
function X2Locale:LocalizeUiText(category, key, ...) end

---TODO:
---@param text string
---@return string TextFormatted
function X2Locale:TextFormating(text) end
