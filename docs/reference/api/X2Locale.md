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
>     | `ABILITY_CATEGORY_DESCRIPTION_TEXT` -- 54
>     | `ABILITY_CATEGORY_TEXT` -- 49
>     | `ABILITY_CHANGER_TEXT` -- 20
>     | `ATTRIBUTE_TEXT` -- 44
>     | `ATTRIBUTE_VARIATION_TEXT` -- 135
>     | `AUCTION_TEXT` -- 107
>     | `BATTLE_FIELD_TEXT` -- 35
>     | `BEAUTYSHOP_TEXT` -- 124
>     | `BINDING` -- 96
>     | `BUTLER` -- 136
>     | `CASTING_BAR_TEXT` -- 64
>     | `CHARACTER_CREATE_TEXT` -- 51
>     | `CHARACTER_POPUP_SUBTITLE_TEXT` -- 42
>     | `CHARACTER_POPUP_SUBTITLE_TOOLTIP_TEXT` -- 43
>     | `CHARACTER_SELECT_TEXT` -- 24
>     | `CHARACTER_SUBTITLE_INFO_TOOLTIP_TEXT` -- 77
>     | `CHARACTER_SUBTITLE_TEXT` -- 40
>     | `CHARACTER_SUBTITLE_TOOLTIP_TEXT` -- 41
>     | `CHARACTER_TITLE_TEXT` -- 39
>     | `CHAT_CHANNEL_TEXT` -- 88
>     | `CHAT_COMBAT_LOG_TEXT` -- 90
>     | `CHAT_CREATE_TAB_TEXT` -- 108
>     | `CHAT_FILTERING` -- 109
>     | `CHAT_FORCE_ATTACK_TEXT` -- 63
>     | `CHAT_LIST_TEXT` -- 62
>     | `CHAT_SYSTEM_TEXT` -- 89
>     | `COMBAT_MESSAGE_TEXT` -- 87
>     | `COMBAT_TEXT` -- 78
>     | `COMBINED_ABILITY_NAME_TEXT` -- 86
>     | `COMMON_TEXT` -- 45
>     | `COMMUNITY_TEXT` -- 92
>     | `COMPOSITION_TEXT` -- 121
>     | `CRAFT_TEXT` -- 74
>     | `CUSTOMIZING_TEXT` -- 99
>     | `DATE_TIME_TEXT` -- 102
>     | `DOMINION` -- 97
>     | `DUEL_TEXT` -- 115
>     | `EQUIP_SLOT_TYPE_TEXT` -- 50
>     | `ERROR_MSG` -- 1
>     | `EXPEDITION_TEXT` -- 95
>     | `FACTION_TEXT` -- 91
>     | `FARM_TEXT` -- 110
>     | `GENDER_TEXT` -- 48
>     | `GRAVE_YARD_TEXT` -- 72
>     | `HERO_TEXT` -- 133
>     | `HONOR_POINT_WAR_TEXT` -- 117
>     | `HOUSING_PERMISSIONS_TEXT` -- 71
>     | `HOUSING_TEXT` -- 70
>     | `INFOBAR_MENU_TEXT` -- 57
>     | `INFOBAR_MENU_TIP_TEXT` -- 58
>     | `INGAMESHOP_TEXT` -- 120
>     | `INSTANT_GAME_TEXT` -- 34
>     | `INVEN_TEXT` -- 94
>     | `ITEM_GRADE` -- 103
>     | `ITEM_LOOK_CONVERT_TEXT` -- 126
>     | `KEY_BINDING_TEXT` -- 17
>     | `LEARNING_TEXT` -- 30
>     | `LEVEL_CHANGED_TEXT` -- 46
>     | `LOADING_TEXT` -- 26
>     | `LOGIN_CROWDED_TEXT` -- 25
>     | `LOGIN_DELETE_TEXT` -- 5
>     | `LOGIN_ERROR` -- 2
>     | `LOGIN_TEXT` -- 4
>     | `LOOT_METHOD_TEXT` -- 56
>     | `LOOT_TEXT` -- 80
>     | `MAIL_TEXT` -- 18
>     | `MAP_TEXT` -- 60
>     | `MONEY_TEXT` -- 3
>     | `MSG_BOX_BODY_TEXT` -- 29
>     | `MSG_BOX_BTN_TEXT` -- 27
>     | `MSG_BOX_TITLE_TEXT` -- 28
>     | `MUSIC_TEXT` -- 119
>     | `NATION_TEXT` -- 123
>     | `OPTION_TEXT` -- 22
>     | `PARTY_TEXT` -- 55
>     | `PERIOD_TIME_TEXT` -- 101
>     | `PET_TEXT` -- 19
>     | `PHYSICAL_ENCHANT_TEXT` -- 84
>     | `PLAYER_POPUP_TEXT` -- 132
>     | `PORTAL_TEXT` -- 67
>     | `PREMIUM_TEXT` -- 129
>     | `PRIEST_TEXT` -- 21
>     | `PROTECT_SENSITIVE_OPERATION_TEXT` -- 130
>     | `QUEST_ACT_OBJ_PTN_TEXT` -- 116
>     | `QUEST_ACT_OBJ_TEXT` -- 9
>     | `QUEST_CONDITION_TEXT` -- 13
>     | `QUEST_DISTANCE_TEXT` -- 12
>     | `QUEST_ERROR` -- 14
>     | `QUEST_INTERACTION_TEXT` -- 10
>     | `QUEST_OBJ_STATUS_TEXT` -- 8
>     | `QUEST_SPHERE_TEXT` -- 11
>     | `QUEST_STATUS_TEXT` -- 7
>     | `QUEST_TEXT` -- 6
>     | `RACE_DETAIL_DESCRIPTION_TEXT` -- 53
>     | `RACE_TEXT` -- 47
>     | `RAID_TEXT` -- 105
>     | `RANKING_TEXT` -- 127
>     | `REPAIR_TEXT` -- 93
>     | `RESTRICT_TEXT` -- 114
>     | `SECOND_PASSWORD_TEXT` -- 122
>     | `SERVER_TEXT` -- 23
>     | `SKILL_TEXT` -- 61
>     | `SKILL_TRAINING_MSG_TEXT` -- 76
>     | `SLAVE_KIND` -- 100
>     | `SLAVE_TEXT` -- 118
>     | `STABLER_TEXT` -- 68
>     | `STORE_TEXT` -- 65
>     | `TARGET_POPUP_TEXT` -- 75
>     | `TEAM_TEXT` -- 106
>     | `TERRITORY_TEXT` -- 111
>     | `TIME` -- 98
>     | `TOOLTIP_TEXT` -- 33
>     | `TRADE_TEXT` -- 16
>     | `TRIAL_TEXT` -- 113
>     | `TUTORIAL_TEXT` -- 15
>     | `UCC_TEXT` -- 73
>     | `UNIT_FRAME_TEXT` -- 38
>     | `UNIT_GRADE_TEXT` -- 37
>     | `UNIT_KIND_TEXT` -- 36
>     | `UTIL_TEXT` -- 31
>     | `WEB_TEXT` -- 112
>     | `WINDOW_TITLE_TEXT` -- 134
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
>     | `ABILITY_CATEGORY_DESCRIPTION_TEXT` -- 54
>     | `ABILITY_CATEGORY_TEXT` -- 49
>     | `ABILITY_CHANGER_TEXT` -- 20
>     | `ATTRIBUTE_TEXT` -- 44
>     | `ATTRIBUTE_VARIATION_TEXT` -- 135
>     | `AUCTION_TEXT` -- 107
>     | `BATTLE_FIELD_TEXT` -- 35
>     | `BEAUTYSHOP_TEXT` -- 124
>     | `BINDING` -- 96
>     | `BUTLER` -- 136
>     | `CASTING_BAR_TEXT` -- 64
>     | `CHARACTER_CREATE_TEXT` -- 51
>     | `CHARACTER_POPUP_SUBTITLE_TEXT` -- 42
>     | `CHARACTER_POPUP_SUBTITLE_TOOLTIP_TEXT` -- 43
>     | `CHARACTER_SELECT_TEXT` -- 24
>     | `CHARACTER_SUBTITLE_INFO_TOOLTIP_TEXT` -- 77
>     | `CHARACTER_SUBTITLE_TEXT` -- 40
>     | `CHARACTER_SUBTITLE_TOOLTIP_TEXT` -- 41
>     | `CHARACTER_TITLE_TEXT` -- 39
>     | `CHAT_CHANNEL_TEXT` -- 88
>     | `CHAT_COMBAT_LOG_TEXT` -- 90
>     | `CHAT_CREATE_TAB_TEXT` -- 108
>     | `CHAT_FILTERING` -- 109
>     | `CHAT_FORCE_ATTACK_TEXT` -- 63
>     | `CHAT_LIST_TEXT` -- 62
>     | `CHAT_SYSTEM_TEXT` -- 89
>     | `COMBAT_MESSAGE_TEXT` -- 87
>     | `COMBAT_TEXT` -- 78
>     | `COMBINED_ABILITY_NAME_TEXT` -- 86
>     | `COMMON_TEXT` -- 45
>     | `COMMUNITY_TEXT` -- 92
>     | `COMPOSITION_TEXT` -- 121
>     | `CRAFT_TEXT` -- 74
>     | `CUSTOMIZING_TEXT` -- 99
>     | `DATE_TIME_TEXT` -- 102
>     | `DOMINION` -- 97
>     | `DUEL_TEXT` -- 115
>     | `EQUIP_SLOT_TYPE_TEXT` -- 50
>     | `ERROR_MSG` -- 1
>     | `EXPEDITION_TEXT` -- 95
>     | `FACTION_TEXT` -- 91
>     | `FARM_TEXT` -- 110
>     | `GENDER_TEXT` -- 48
>     | `GRAVE_YARD_TEXT` -- 72
>     | `HERO_TEXT` -- 133
>     | `HONOR_POINT_WAR_TEXT` -- 117
>     | `HOUSING_PERMISSIONS_TEXT` -- 71
>     | `HOUSING_TEXT` -- 70
>     | `INFOBAR_MENU_TEXT` -- 57
>     | `INFOBAR_MENU_TIP_TEXT` -- 58
>     | `INGAMESHOP_TEXT` -- 120
>     | `INSTANT_GAME_TEXT` -- 34
>     | `INVEN_TEXT` -- 94
>     | `ITEM_GRADE` -- 103
>     | `ITEM_LOOK_CONVERT_TEXT` -- 126
>     | `KEY_BINDING_TEXT` -- 17
>     | `LEARNING_TEXT` -- 30
>     | `LEVEL_CHANGED_TEXT` -- 46
>     | `LOADING_TEXT` -- 26
>     | `LOGIN_CROWDED_TEXT` -- 25
>     | `LOGIN_DELETE_TEXT` -- 5
>     | `LOGIN_ERROR` -- 2
>     | `LOGIN_TEXT` -- 4
>     | `LOOT_METHOD_TEXT` -- 56
>     | `LOOT_TEXT` -- 80
>     | `MAIL_TEXT` -- 18
>     | `MAP_TEXT` -- 60
>     | `MONEY_TEXT` -- 3
>     | `MSG_BOX_BODY_TEXT` -- 29
>     | `MSG_BOX_BTN_TEXT` -- 27
>     | `MSG_BOX_TITLE_TEXT` -- 28
>     | `MUSIC_TEXT` -- 119
>     | `NATION_TEXT` -- 123
>     | `OPTION_TEXT` -- 22
>     | `PARTY_TEXT` -- 55
>     | `PERIOD_TIME_TEXT` -- 101
>     | `PET_TEXT` -- 19
>     | `PHYSICAL_ENCHANT_TEXT` -- 84
>     | `PLAYER_POPUP_TEXT` -- 132
>     | `PORTAL_TEXT` -- 67
>     | `PREMIUM_TEXT` -- 129
>     | `PRIEST_TEXT` -- 21
>     | `PROTECT_SENSITIVE_OPERATION_TEXT` -- 130
>     | `QUEST_ACT_OBJ_PTN_TEXT` -- 116
>     | `QUEST_ACT_OBJ_TEXT` -- 9
>     | `QUEST_CONDITION_TEXT` -- 13
>     | `QUEST_DISTANCE_TEXT` -- 12
>     | `QUEST_ERROR` -- 14
>     | `QUEST_INTERACTION_TEXT` -- 10
>     | `QUEST_OBJ_STATUS_TEXT` -- 8
>     | `QUEST_SPHERE_TEXT` -- 11
>     | `QUEST_STATUS_TEXT` -- 7
>     | `QUEST_TEXT` -- 6
>     | `RACE_DETAIL_DESCRIPTION_TEXT` -- 53
>     | `RACE_TEXT` -- 47
>     | `RAID_TEXT` -- 105
>     | `RANKING_TEXT` -- 127
>     | `REPAIR_TEXT` -- 93
>     | `RESTRICT_TEXT` -- 114
>     | `SECOND_PASSWORD_TEXT` -- 122
>     | `SERVER_TEXT` -- 23
>     | `SKILL_TEXT` -- 61
>     | `SKILL_TRAINING_MSG_TEXT` -- 76
>     | `SLAVE_KIND` -- 100
>     | `SLAVE_TEXT` -- 118
>     | `STABLER_TEXT` -- 68
>     | `STORE_TEXT` -- 65
>     | `TARGET_POPUP_TEXT` -- 75
>     | `TEAM_TEXT` -- 106
>     | `TERRITORY_TEXT` -- 111
>     | `TIME` -- 98
>     | `TOOLTIP_TEXT` -- 33
>     | `TRADE_TEXT` -- 16
>     | `TRIAL_TEXT` -- 113
>     | `TUTORIAL_TEXT` -- 15
>     | `UCC_TEXT` -- 73
>     | `UNIT_FRAME_TEXT` -- 38
>     | `UNIT_GRADE_TEXT` -- 37
>     | `UNIT_KIND_TEXT` -- 36
>     | `UTIL_TEXT` -- 31
>     | `WEB_TEXT` -- 112
>     | `WINDOW_TITLE_TEXT` -- 134
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
>     | "|q{questId};" -- #
>     | "|i{itemType},{grade},{kind},{data}" -- #
>     | "|if{craftId};" -- #
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

