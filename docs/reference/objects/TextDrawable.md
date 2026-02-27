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

