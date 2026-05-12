# TextDrawable
## Classes
### Class: TextDrawable
Extends [Drawablebase](../types/Drawablebase.md#class-drawablebase)

> [TextDrawable](../types/TextDrawable.md#class-textdrawable)
> 
> A `TextDrawable` is a drawable that displays text with customizable style,
> alignment, outline, and shadow. It supports localized text and pixel
> snapping.
> 
> **Dependencies**:
>  - [TextStyle](../types/TextStyle.md#class-textstyle) used for the `style` field.
> 
#### Field: style
```lua
TextStyle
```
> The optional text style applied to this drawable.

#### Method: SetShadow
```lua
(method) TextDrawable:SetShadow(shadow: boolean)
```
> Enables or disables the shadow for the TextDrawable.
> 
> @*param* `shadow` — `true` to enable shadow, `false` to disable. (default: `true`)

#### Method: SetSnap
```lua
(method) TextDrawable:SetSnap(snap: boolean)
```
> Enables or disables pixel snapping for the TextDrawable.
> 
> @*param* `snap` — `true` to enable snapping, `false` to disable.

#### Method: SetText
```lua
(method) TextDrawable:SetText(text: string)
```
> Sets the text for the TextDrawable.
> 
> @*param* `text` — The text to set.

#### Method: SetOutline
```lua
(method) TextDrawable:SetOutline(outline: boolean)
```
> Enables or disables the outline for the TextDrawable.
> 
> @*param* `outline` — `true` to enable outline, `false` to disable. (default: `false`)

#### Method: SetLText
```lua
(method) TextDrawable:SetLText(key: string, ...string)
```
> Sets localized text for the TextDrawable with multiple optional parameters.
> 
> @*param* `key` — The key from the database ui_texts table under the `COMMON_TEXT` category.
> 
> @*param* `...` — Arguments to replace placeholders (must match number of $).

#### Method: SetLText
```lua
(method) TextDrawable:SetLText(category: `ABILITY_CATEGORY_DESCRIPTION_TEXT`|`ABILITY_CATEGORY_TEXT`|`ABILITY_CHANGER_TEXT`|`ATTRIBUTE_TEXT`|`ATTRIBUTE_VARIATION_TEXT`...(+117), key: string, ...string)
```
> Sets localized text for the TextDrawable with multiple optional parameters.
> 
> @*param* `category` — The UI text category. (default: `COMMON_TEXT`)
> 
> @*param* `key` — The key from the database ui_texts table.
> 
> @*param* `...` — Arguments to replace placeholders (must match number of $).
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

#### Method: SetAlign
```lua
(method) TextDrawable:SetAlign(align: `ALIGN_BOTTOM_LEFT`|`ALIGN_BOTTOM_RIGHT`|`ALIGN_BOTTOM`|`ALIGN_CENTER`|`ALIGN_LEFT`...(+4))
```
> Sets the text alignment of the TextDrawable.
> 
> @*param* `align` — The text alignment type. (default: `ALIGN_LEFT`)
> 
> ```lua
> -- objects/TextStyle
> align:
>     | `ALIGN_BOTTOM`
>     | `ALIGN_BOTTOM_LEFT`
>     | `ALIGN_BOTTOM_RIGHT`
>     | `ALIGN_CENTER`
>     | `ALIGN_LEFT`
>     | `ALIGN_RIGHT`
>     | `ALIGN_TOP`
>     | `ALIGN_TOP_LEFT`
>     | `ALIGN_TOP_RIGHT`
> ```

