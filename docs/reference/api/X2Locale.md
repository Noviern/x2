# X2Locale
## Globals
**X2Locale**

`X2Locale`

## Classes
### Class: X2Locale
#### Method: GetKeyboardLayout
```lua
(method) X2Locale:GetKeyboardLayout()
  -> keyboardLayout: ""|"JAPANESE"|"KOREAN"
```
> Retrieves the current keyboard layout.
> 
> @*return* `keyboardLayout` — The current keyboard layout.
> 
> ```lua
> keyboardLayout:
>     | ""
>     | "KOREAN"
>     | "JAPANESE"
> ```

#### Method: LocalizeFormatUiText
```lua
(method) X2Locale:LocalizeFormatUiText()
```


#### Method: LocalizeNonUiText
```lua
(method) X2Locale:LocalizeNonUiText(text: string, ...string)
  -> localizedText: string
```
> Localizes non-UI text after replacing placeholders with provided arguments.
> 
> @*param* `text` — The text with placeholders (e.g., $1).
> 
> @*param* `...` — Arguments to replace placeholders (must match number of $).
> 
> @*return* `localizedText` — The localized text with placeholders replaced.
> 
> ```lua
> local localizedText = X2Locale:LocalizeNonUiText("$1 - the $1 ArcheAge Private Server", "Archerage.to", "first")
> -- Archerage.to - the first ArcheAge Private Server
> ```

#### Method: LocalizeUiText
```lua
(method) X2Locale:LocalizeUiText(category: `ABILITY_CATEGORY_DESCRIPTION_TEXT`|`ABILITY_CATEGORY_TEXT`|`ABILITY_CHANGER_TEXT`|`ATTRIBUTE_TEXT`|`ATTRIBUTE_VARIATION_TEXT`...(+117), key: string, ...string)
  -> localizedUiText: string
```
> Retrieves localized UI text for the specified category and key, replacing
> placeholders with provided arguments.
> 
> @*param* `category` — The UI text category.
> 
> @*param* `key` — The key from the database ui_texts table.
> 
> @*param* `...` — Arguments to replace placeholders (must match number of $).
> 
> @*return* `localizedUiText` — The localized UI text.
> 
> ```lua
> -- api/Addon
> category:
>     | `ABILITY_CATEGORY_DESCRIPTION_TEXT`
>     | `ABILITY_CATEGORY_TEXT`
>     | `ABILITY_CHANGER_TEXT`
>     | `ATTRIBUTE_TEXT`
>     | `ATTRIBUTE_VARIATION_TEXT`
>     | `AUCTION_TEXT`
>     | `BATTLE_FIELD_TEXT`
>     | `BEAUTYSHOP_TEXT`
>     | `BINDING`
>     | `BUTLER`
>     | `CASTING_BAR_TEXT`
>     | `CHARACTER_CREATE_TEXT`
>     | `CHARACTER_POPUP_SUBTITLE_TEXT`
>     | `CHARACTER_POPUP_SUBTITLE_TOOLTIP_TEXT`
>     | `CHARACTER_SELECT_TEXT`
>     | `CHARACTER_SUBTITLE_INFO_TOOLTIP_TEXT`
>     | `CHARACTER_SUBTITLE_TEXT`
>     | `CHARACTER_SUBTITLE_TOOLTIP_TEXT`
>     | `CHARACTER_TITLE_TEXT`
>     | `CHAT_CHANNEL_TEXT`
>     | `CHAT_COMBAT_LOG_TEXT`
>     | `CHAT_CREATE_TAB_TEXT`
>     | `CHAT_FILTERING`
>     | `CHAT_FORCE_ATTACK_TEXT`
>     | `CHAT_LIST_TEXT`
>     | `CHAT_SYSTEM_TEXT`
>     | `COMBAT_MESSAGE_TEXT`
>     | `COMBAT_TEXT`
>     | `COMBINED_ABILITY_NAME_TEXT`
>     | `COMMON_TEXT`
>     | `COMMUNITY_TEXT`
>     | `COMPOSITION_TEXT`
>     | `CRAFT_TEXT`
>     | `CUSTOMIZING_TEXT`
>     | `DATE_TIME_TEXT`
>     | `DOMINION`
>     | `DUEL_TEXT`
>     | `EQUIP_SLOT_TYPE_TEXT`
>     | `ERROR_MSG`
>     | `EXPEDITION_TEXT`
>     | `FACTION_TEXT`
>     | `FARM_TEXT`
>     | `GENDER_TEXT`
>     | `GRAVE_YARD_TEXT`
>     | `HERO_TEXT`
>     | `HONOR_POINT_WAR_TEXT`
>     | `HOUSING_PERMISSIONS_TEXT`
>     | `HOUSING_TEXT`
>     | `INFOBAR_MENU_TEXT`
>     | `INFOBAR_MENU_TIP_TEXT`
>     | `INGAMESHOP_TEXT`
>     | `INSTANT_GAME_TEXT`
>     | `INVEN_TEXT`
>     | `ITEM_GRADE`
>     | `ITEM_LOOK_CONVERT_TEXT`
>     | `KEY_BINDING_TEXT`
>     | `LEARNING_TEXT`
>     | `LEVEL_CHANGED_TEXT`
>     | `LOADING_TEXT`
>     | `LOGIN_CROWDED_TEXT`
>     | `LOGIN_DELETE_TEXT`
>     | `LOGIN_ERROR`
>     | `LOGIN_TEXT`
>     | `LOOT_METHOD_TEXT`
>     | `LOOT_TEXT`
>     | `MAIL_TEXT`
>     | `MAP_TEXT`
>     | `MONEY_TEXT`
>     | `MSG_BOX_BODY_TEXT`
>     | `MSG_BOX_BTN_TEXT`
>     | `MSG_BOX_TITLE_TEXT`
>     | `MUSIC_TEXT`
>     | `NATION_TEXT`
>     | `OPTION_TEXT`
>     | `PARTY_TEXT`
>     | `PERIOD_TIME_TEXT`
>     | `PET_TEXT`
>     | `PHYSICAL_ENCHANT_TEXT`
>     | `PLAYER_POPUP_TEXT`
>     | `PORTAL_TEXT`
>     | `PREMIUM_TEXT`
>     | `PRIEST_TEXT`
>     | `PROTECT_SENSITIVE_OPERATION_TEXT`
>     | `QUEST_ACT_OBJ_PTN_TEXT`
>     | `QUEST_ACT_OBJ_TEXT`
>     | `QUEST_CONDITION_TEXT`
>     | `QUEST_DISTANCE_TEXT`
>     | `QUEST_ERROR`
>     | `QUEST_INTERACTION_TEXT`
>     | `QUEST_OBJ_STATUS_TEXT`
>     | `QUEST_SPHERE_TEXT`
>     | `QUEST_STATUS_TEXT`
>     | `QUEST_TEXT`
>     | `RACE_DETAIL_DESCRIPTION_TEXT`
>     | `RACE_TEXT`
>     | `RAID_TEXT`
>     | `RANKING_TEXT`
>     | `REPAIR_TEXT`
>     | `RESTRICT_TEXT`
>     | `SECOND_PASSWORD_TEXT`
>     | `SERVER_TEXT`
>     | `SKILL_TEXT`
>     | `SKILL_TRAINING_MSG_TEXT`
>     | `SLAVE_KIND`
>     | `SLAVE_TEXT`
>     | `STABLER_TEXT`
>     | `STORE_TEXT`
>     | `TARGET_POPUP_TEXT`
>     | `TEAM_TEXT`
>     | `TERRITORY_TEXT`
>     | `TIME`
>     | `TOOLTIP_TEXT`
>     | `TRADE_TEXT`
>     | `TRIAL_TEXT`
>     | `TUTORIAL_TEXT`
>     | `UCC_TEXT`
>     | `UNIT_FRAME_TEXT`
>     | `UNIT_GRADE_TEXT`
>     | `UNIT_KIND_TEXT`
>     | `UTIL_TEXT`
>     | `WEB_TEXT`
>     | `WINDOW_TITLE_TEXT`
> ```

#### Method: HasLocalizeUiText
```lua
(method) X2Locale:HasLocalizeUiText(categoryId: `ABILITY_CATEGORY_DESCRIPTION_TEXT`|`ABILITY_CATEGORY_TEXT`|`ABILITY_CHANGER_TEXT`|`ATTRIBUTE_TEXT`|`ATTRIBUTE_VARIATION_TEXT`...(+117), key: string)
  -> localizeUiText: boolean
```
> Checks if the specified localization category and key exist.
> 
> @*param* `categoryId` — The UI text category.
> 
> @*param* `key` — The key from the database ui_texts table.
> 
> @*return* `localizeUiText` — `true` if the localization exists, `false` otherwise.
> 
> ```lua
> -- api/Addon
> categoryId:
>     | `ABILITY_CATEGORY_DESCRIPTION_TEXT`
>     | `ABILITY_CATEGORY_TEXT`
>     | `ABILITY_CHANGER_TEXT`
>     | `ATTRIBUTE_TEXT`
>     | `ATTRIBUTE_VARIATION_TEXT`
>     | `AUCTION_TEXT`
>     | `BATTLE_FIELD_TEXT`
>     | `BEAUTYSHOP_TEXT`
>     | `BINDING`
>     | `BUTLER`
>     | `CASTING_BAR_TEXT`
>     | `CHARACTER_CREATE_TEXT`
>     | `CHARACTER_POPUP_SUBTITLE_TEXT`
>     | `CHARACTER_POPUP_SUBTITLE_TOOLTIP_TEXT`
>     | `CHARACTER_SELECT_TEXT`
>     | `CHARACTER_SUBTITLE_INFO_TOOLTIP_TEXT`
>     | `CHARACTER_SUBTITLE_TEXT`
>     | `CHARACTER_SUBTITLE_TOOLTIP_TEXT`
>     | `CHARACTER_TITLE_TEXT`
>     | `CHAT_CHANNEL_TEXT`
>     | `CHAT_COMBAT_LOG_TEXT`
>     | `CHAT_CREATE_TAB_TEXT`
>     | `CHAT_FILTERING`
>     | `CHAT_FORCE_ATTACK_TEXT`
>     | `CHAT_LIST_TEXT`
>     | `CHAT_SYSTEM_TEXT`
>     | `COMBAT_MESSAGE_TEXT`
>     | `COMBAT_TEXT`
>     | `COMBINED_ABILITY_NAME_TEXT`
>     | `COMMON_TEXT`
>     | `COMMUNITY_TEXT`
>     | `COMPOSITION_TEXT`
>     | `CRAFT_TEXT`
>     | `CUSTOMIZING_TEXT`
>     | `DATE_TIME_TEXT`
>     | `DOMINION`
>     | `DUEL_TEXT`
>     | `EQUIP_SLOT_TYPE_TEXT`
>     | `ERROR_MSG`
>     | `EXPEDITION_TEXT`
>     | `FACTION_TEXT`
>     | `FARM_TEXT`
>     | `GENDER_TEXT`
>     | `GRAVE_YARD_TEXT`
>     | `HERO_TEXT`
>     | `HONOR_POINT_WAR_TEXT`
>     | `HOUSING_PERMISSIONS_TEXT`
>     | `HOUSING_TEXT`
>     | `INFOBAR_MENU_TEXT`
>     | `INFOBAR_MENU_TIP_TEXT`
>     | `INGAMESHOP_TEXT`
>     | `INSTANT_GAME_TEXT`
>     | `INVEN_TEXT`
>     | `ITEM_GRADE`
>     | `ITEM_LOOK_CONVERT_TEXT`
>     | `KEY_BINDING_TEXT`
>     | `LEARNING_TEXT`
>     | `LEVEL_CHANGED_TEXT`
>     | `LOADING_TEXT`
>     | `LOGIN_CROWDED_TEXT`
>     | `LOGIN_DELETE_TEXT`
>     | `LOGIN_ERROR`
>     | `LOGIN_TEXT`
>     | `LOOT_METHOD_TEXT`
>     | `LOOT_TEXT`
>     | `MAIL_TEXT`
>     | `MAP_TEXT`
>     | `MONEY_TEXT`
>     | `MSG_BOX_BODY_TEXT`
>     | `MSG_BOX_BTN_TEXT`
>     | `MSG_BOX_TITLE_TEXT`
>     | `MUSIC_TEXT`
>     | `NATION_TEXT`
>     | `OPTION_TEXT`
>     | `PARTY_TEXT`
>     | `PERIOD_TIME_TEXT`
>     | `PET_TEXT`
>     | `PHYSICAL_ENCHANT_TEXT`
>     | `PLAYER_POPUP_TEXT`
>     | `PORTAL_TEXT`
>     | `PREMIUM_TEXT`
>     | `PRIEST_TEXT`
>     | `PROTECT_SENSITIVE_OPERATION_TEXT`
>     | `QUEST_ACT_OBJ_PTN_TEXT`
>     | `QUEST_ACT_OBJ_TEXT`
>     | `QUEST_CONDITION_TEXT`
>     | `QUEST_DISTANCE_TEXT`
>     | `QUEST_ERROR`
>     | `QUEST_INTERACTION_TEXT`
>     | `QUEST_OBJ_STATUS_TEXT`
>     | `QUEST_SPHERE_TEXT`
>     | `QUEST_STATUS_TEXT`
>     | `QUEST_TEXT`
>     | `RACE_DETAIL_DESCRIPTION_TEXT`
>     | `RACE_TEXT`
>     | `RAID_TEXT`
>     | `RANKING_TEXT`
>     | `REPAIR_TEXT`
>     | `RESTRICT_TEXT`
>     | `SECOND_PASSWORD_TEXT`
>     | `SERVER_TEXT`
>     | `SKILL_TEXT`
>     | `SKILL_TRAINING_MSG_TEXT`
>     | `SLAVE_KIND`
>     | `SLAVE_TEXT`
>     | `STABLER_TEXT`
>     | `STORE_TEXT`
>     | `TARGET_POPUP_TEXT`
>     | `TEAM_TEXT`
>     | `TERRITORY_TEXT`
>     | `TIME`
>     | `TOOLTIP_TEXT`
>     | `TRADE_TEXT`
>     | `TRIAL_TEXT`
>     | `TUTORIAL_TEXT`
>     | `UCC_TEXT`
>     | `UNIT_FRAME_TEXT`
>     | `UNIT_GRADE_TEXT`
>     | `UNIT_KIND_TEXT`
>     | `UTIL_TEXT`
>     | `WEB_TEXT`
>     | `WINDOW_TITLE_TEXT`
> ```

#### Method: GetLocale
```lua
(method) X2Locale:GetLocale()
  -> locale: ""|"de"|"en_sg"|"en_us"|"fr"...(+7)
```
> Retrieves the current locale.
> 
> @*return* `locale` — The current locale.
> 
> ```lua
> locale:
>     | "" -- invalid
>     | "de" -- German (Germany)
>     | "en_sg" -- English (Singapore)
>     | "en_us" -- English (United States)
>     | "fr" -- French (France)
>     | "ind" -- Indonesian (Indonesia)
>     | "ja" -- Japanese(Japan)
>     | "ko" -- Korean (South Korea)
>     | "ru" -- Russian (Russia)
>     | "th" -- Thai (Thailand)
>     | "zh_cn" -- Chinese (Simplified, China)
>     | "zh_tw" -- Chinese(Traditional, Taiwan)
> ```

#### Method: GetLocaleIndex
```lua
(method) X2Locale:GetLocaleIndex()
  -> localeIndex: `-1`|`0`|`10`|`1`|`2`...(+7)
```
> Retrieves the locale index.
> 
> @*return* `localeIndex` — The locale index.
> 
> ```lua
> localeIndex:
>     | `-1` -- invalid
>     | `0` -- ko    - Korean (South Korea)
>     | `1` -- zh_cn - Chinese (Simplified, China)
>     | `2` -- en_us - English (United States)
>     | `3` -- ja    - Japanese(Japan)
>     | `4` -- zh_tw - Chinese (Traditional, Taiwan)
>     | `5` -- ru    - Russian (Russia)
>     | `6` -- de    - German (Germany)
>     | `7` -- fr    - French (France)
>     | `8` -- th    - Thai (Thailand)
>     | `9` -- ind   - Indonesian (Indonesia)
>     | `10` -- en_sg - English (Singapore)
> ```

#### Method: TextFormating
```lua
(method) X2Locale:TextFormating(text: string|"@ACHIEVEMENT_NAME(achievementId)"|"@AREA_SPHERE(sphereId)"|"@CONTENT_CONFIG(configId)"|"@DAY(days)"...(+63))
  -> textFormatted: string
```
> Formats the specified text.
> 
> @*param* `text` — The text to format.
> 
> @*return* `textFormatted` — The formatted text.
> 
> ```lua
> -- Example: @PC_NAME(0) is a @PC_GENDER(0) @PC_RACE(0) -> Noviern is a Male Dwarf.
> text:
>     | "@ACHIEVEMENT_NAME(achievementId)" -- achievements.id
>     | "@AREA_SPHERE(sphereId)" -- spheres.id
>     | "@CONTENT_CONFIG(configId)" -- content_configs.id
>     | "@DOODAD_NAME(doodadId)" -- doodad_almighties.id
>     | "@ITEM_NAME(itemId)" -- items.id
>     | "@NPC_GROUP_NAME(npcGroupId)" -- quest_monster_groups.id
>     | "@NPC_NAME(npcId)" -- npcs.id
>     | "@PC_CLASS(unitId)" -- X2Unit:GetUnitId or 0 for the player
>     | "@PC_GENDER(unitId)" -- X2Unit:GetUnitId or 0 for the player
>     | "@PC_NAME(unitId)" -- X2Unit:GetUnitId or 0 for the player
>     | "@PC_RACE(unitId)" -- X2Unit:GetUnitId or 0 for the player
>     | "@QUEST_NAME(questId)" -- quest_contexts.id
>     | "@SOURCE_NAME(0)" -- #
>     | "@TARGET_NAME(0)" -- #
>     | "@TARGET_SLAVE_REPAIR_COST(id?)" -- slaves.id or nothing for the current targets repair cost.
>     | "@SUB_ZONE_NAME(subZoneId)" -- sub_zones.id
>     | "@ZONE_NAME(zoneId)" -- zones.id
>     | "@MONTH(months)" -- #
>     | "@DAY(days)" -- #
>     | "@HOUR(hours)" -- #
>     | "@MINUTE(minutes)" -- #
>     | "@SECOND(seconds)" -- #
>     | "|nb; Steelblue |r" -- rgb(23, 119, 174)
>     | "|nc; Orange |r" -- rgb(255, 157, 40)
>     | "|nd; Lightskyblue |r" -- rgb(152, 214, 250)
>     | "|nf; Red |r" -- rgb(255, 0, 0)
>     | "|ng; Lime |r" -- rgb(0, 255, 70)
>     | "|nh; Steelblue |r" -- rgb(45, 101, 137)
>     | "|ni; khaki |r" -- rgb(246, 204, 102)
>     | "|nj; Royalblue |r" -- rgb(14, 97, 189)
>     | "|nn; Dark Orange |r" -- rgb(228, 113, 1)
>     | "|nr; Tomato |r" -- rgb(238, 74, 47)
>     | "|ns; Gainsboro |r" -- gb(221, 221, 221)
>     | "|nt; Gray |r" -- rgb(129, 129, 129)
>     | "|nu; Dimgray |r" -- rgb(106, 106, 106)
>     | "|ny; Lemonchiffon |r" -- rgb(255, 249, 200)
>     | "|cFF000000{string}|r" -- #
>     | "|bu{bulletCharacter};{string}|br" -- #
>     | "|q{questId};"
>     | "|i{itemType},{grade},{kind},{data}"
>     | "|if{craftId};"
>     | "|iu{data}" -- link
>     | "|a{data}" -- raid
>     | "|A{data}" -- dungeon
>     | "|ic{iconId}" -- db > icons.id
>     | "|m{moneyAmount};" -- ui/common/money_window.g > money_gold money_silver money_copper
>     | "|h{honor};" -- ui/common/money_window.g > money_honor
>     | "|d{amount};" -- ui/common/money_window.g > money_dishonor
>     | "|j{creditAmount};" -- ui/common/money_window.g > icon_aacash
>     | "|l{vocationAmount};" -- ui/common/money_window.g > point
>     | "|bm{amount};" -- ui/common/money_window.g > money_bmpoint
>     | "|se{gildaAmount};" -- ui/common/money_window.g > icon_depi
>     | "|ss{meritbadgeAmount?};" -- ui/common/money_window.g > icon_star
>     | "|sc{amount};" -- ui/common/money_window.g > icon_key
>     | "|sf{amount};" -- ui/common/money_window.g > icon_netcafe
>     | "|p{pointAmount};" -- ui/common/money_window.g > aa_point_gold aa_point_silver aa_point_copper
>     | "|x{taxAmount};" -- ui/common/money_window.g > tax
>     | "|u{amount};" -- ui/common/money_window.g > pouch
>     | "|w{contributionAmount};" -- ui/common/money_window.g > contributiveness
>     | "|e{level?};" -- ui/common/money_window.g > successor_small
>     | "|E{level?};" -- ui/common/money_window.g > successor_small_gray
>     | "|sa{amount};" -- ui/common/money_window.g > pass_coin icon_key
>     | "|sp{manastormAmount?};" -- ui/common/money_window.g > icon_palos
>     | "|sg{amount};" -- ui/common/money_window.g > icon_garnet
>     | "|v{level?};" -- ui/common/money_window.g > icon_equip_slot_star_small
>     | "|V{level?};" -- ui/common/money_window.g > icon_equip_slot_star
>     | "|g{gearScore};" -- ui/common/money_window.g > equipment_point
> ```

