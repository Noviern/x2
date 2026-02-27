# TextStyle
## Globals
**ALIGN_BOTTOM**

`integer`

**ALIGN_BOTTOM_LEFT**

`integer`

**ALIGN_BOTTOM_RIGHT**

`integer`

**ALIGN_CENTER**

`integer`

**ALIGN_LEFT**

`integer`

**ALIGN_RIGHT**

`integer`

**ALIGN_TOP**

`integer`

**ALIGN_TOP_LEFT**

`integer`

**ALIGN_TOP_RIGHT**

`integer`

**FTK_GENERAL**

`integer`

**FTK_IMAGETEXT**

`integer`

## Aliases
**FONT_KIND**

`FTK_GENERAL`|`FTK_IMAGETEXT`

```lua
-- objects/TextStyle
FONT_KIND:
    | `FTK_GENERAL`
    | `FTK_IMAGETEXT`
```

**FTK_GENERAL**

0

```lua
FTK_GENERAL:
    | 0
```

**FTK_IMAGETEXT**

2

```lua
FTK_IMAGETEXT:
    | 2
```

**TEXT_ALIGN**

`ALIGN_BOTTOM_LEFT`|`ALIGN_BOTTOM_RIGHT`|`ALIGN_BOTTOM`|`ALIGN_CENTER`|`ALIGN_LEFT`...(+4)

```lua
-- objects/TextStyle
TEXT_ALIGN:
    | `ALIGN_BOTTOM`
    | `ALIGN_BOTTOM_LEFT`
    | `ALIGN_BOTTOM_RIGHT`
    | `ALIGN_CENTER`
    | `ALIGN_LEFT`
    | `ALIGN_RIGHT`
    | `ALIGN_TOP`
    | `ALIGN_TOP_LEFT`
    | `ALIGN_TOP_RIGHT`
```

## Classes
### Class: TextStyle
Extends [Uiobject](../types/Uiobject.md#class-uiobject)

> [TextStyle](../types/TextStyle.md#class-textstyle)
> 
> A `TextStyle` defines the visual appearance of text within a widget,
> including font, size, color, alignment, outline, shadow, ellipsis,
> and snapping behavior. It can measure text width and line height, and
> supports special font types for image-based text rendering.
> 
#### Method: GetLineHeight
```lua
(method) TextStyle:GetLineHeight()
  -> lineHeight: number
```
> Retrieves the line height of the TextStyle.
> 
> @*return* `lineHeight` — The height of a text line.

#### Method: SetFont
```lua
(method) TextStyle:SetFont(fontPath: string, fontSize: number, fontType?: `FTK_GENERAL`|`FTK_IMAGETEXT`)
```
> Sets the font path, size, and optional type for the TextStyle.
> 
> @*param* `fontPath` — The path to the font.
> 
> @*param* `fontSize` — The size of the font.
> 
> @*param* `fontType` — The optional font type. Must be `FTK_IMAGETEXT` for `"img_font"` variants. (default: `FTK_GENERAL`)
> 
> ```lua
> -- Each img_font only supports one size.
> widget.style:SetFont("img_font_npc_hpbar", 19, FTK_IMAGETEXT)
> widget.style:SetFont("img_font_action_bar", 13, FTK_IMAGETEXT)
> widget.style:SetFont("img_font_combat", 60, FTK_IMAGETEXT)
> ```
> 
> 
> 
> ```lua
> -- objects/TextStyle
> fontType:
>     | `FTK_GENERAL`
>     | `FTK_IMAGETEXT`
> ```

#### Method: SetFontSize
```lua
(method) TextStyle:SetFontSize(size: number)
```
> Sets the font size for the TextStyle.
> 
> @*param* `size` — The font size to set.

#### Method: SetOutline
```lua
(method) TextStyle:SetOutline(outline: boolean)
```
> Enables or disables the outline for the TextStyle.
> 
> @*param* `outline` — `true` to enable outline, `false` to disable. (default: `false`)

#### Method: SetShadow
```lua
(method) TextStyle:SetShadow(shadow: boolean)
```
> Enables or disables the shadow for the TextStyle.
> 
> @*param* `shadow` — `true` to enable shadow, `false` to disable. (default: `false`)

#### Method: SetEllipsis
```lua
(method) TextStyle:SetEllipsis(ellipsis: boolean)
```
> Enables or disables ellipsis for the TextStyle when text overflows its
> extent. Should be used before `Widget:SetText`.
> 
> @*param* `ellipsis` — `true` to enable ellipsis, `false` to disable. (default: `false`)

#### Method: SetColor
```lua
(method) TextStyle:SetColor(r: number, g: number, b: number, a: number)
```
> Sets the color for the TextStyle.
> 
> @*param* `r` — The red color component (min: `0`, max: `1`).
> 
> @*param* `g` — The green color component (min: `0`, max: `1`).
> 
> @*param* `b` — The blue color component (min: `0`, max: `1`).
> 
> @*param* `a` — The alpha (opacity) component (min: `0`, max: `1`).

#### Method: SetColorByKey
```lua
(method) TextStyle:SetColorByKey(key: "action_slot_key_binding"|"adamant"|"aggro_meter"|"all_in_item_grade_combobox"|"assassin"...(+320))
```
> Sets the color for the TextStyle using a color key. Must be applied before
> text.
> 
> @*param* `key` — The color key to apply.
> 
> ```lua
> -- game/ui/settings/font_color.g
> key:
>     | "action_slot_key_binding"
>     | "adamant"
>     | "aggro_meter"
>     | "all_in_item_grade_combobox"
>     | "assassin"
>     | "attacker_range"
>     | "battlefield_blue"
>     | "battlefield_orange"
>     | "battlefield_red"
>     | "battlefield_yellow"
>     | "beige"
>     | "black"
>     | "blue"
>     | "blue_chat"
>     | "blue_green"
>     | "bright_blue"
>     | "bright_gray"
>     | "bright_green"
>     | "bright_purple"
>     | "bright_yellow"
>     | "brown"
>     | "btn_disabled"
>     | "btn_highlighted"
>     | "btn_normal"
>     | "btn_pushed"
>     | "bubble_chat_etc"
>     | "bubble_chat_say"
>     | "bubble_chat_say_hostile"
>     | "bubble_chat_say_npc"
>     | "bubble_name_friendly_char"
>     | "bubble_name_friendly_npc"
>     | "bubble_name_hostile"
>     | "candidate_list_selected"
>     | "cash_brown"
>     | "character_slot_created_disabled"
>     | "character_slot_created_highlighted"
>     | "character_slot_created_normal"
>     | "character_slot_created_pushed"
>     | "character_slot_created_red_disabled"
>     | "character_slot_created_red_highlighted"
>     | "character_slot_created_red_normal"
>     | "character_slot_created_red_pushed"
>     | "character_slot_created_selected_disabled"
>     | "character_slot_created_selected_highlighted"
>     | "character_slot_created_selected_normal"
>     | "character_slot_created_selected_pushed"
>     | "character_slot_impossible_disabled"
>     | "character_slot_impossible_highlighted"
>     | "character_slot_impossible_normal"
>     | "character_slot_impossible_pushed"
>     | "character_slot_possible_disabled"
>     | "character_slot_possible_highlighted"
>     | "character_slot_possible_normal"
>     | "character_slot_possible_pushed"
>     | "character_slot_successor_df"
>     | "character_slot_successor_ov"
>     | "chat_folio"
>     | "chat_tab_selected_disabled"
>     | "chat_tab_selected_highlighted"
>     | "chat_tab_selected_normal"
>     | "chat_tab_selected_pushed"
>     | "chat_tab_unselected_disabled"
>     | "chat_tab_unselected_highlighted"
>     | "chat_tab_unselected_normal"
>     | "chat_tab_unselected_pushed"
>     | "chat_timestamp"
>     | "check_btn_df"
>     | "check_btn_ov"
>     | "check_button_light"
>     | "check_texture_tooltip"
>     | "combat_absorb"
>     | "combat_collision_me"
>     | "combat_collision_other"
>     | "combat_combat_start"
>     | "combat_damaged_spell"
>     | "combat_damaged_swing"
>     | "combat_debuff"
>     | "combat_energize_mp"
>     | "combat_gain_exp"
>     | "combat_gain_honor_point"
>     | "combat_heal"
>     | "combat_skill"
>     | "combat_swing"
>     | "combat_swing_dodge"
>     | "combat_swing_miss"
>     | "combat_synergy"
>     | "combat_text"
>     | "combat_text_default"
>     | "commercial_mail_date"
>     | "congestion_high"
>     | "congestion_low"
>     | "congestion_middle"
>     | "context_menu_df"
>     | "context_menu_dis"
>     | "context_menu_on"
>     | "context_menu_ov"
>     | "customizing_df"
>     | "customizing_dis"
>     | "customizing_on"
>     | "customizing_ov"
>     | "dark_beige"
>     | "dark_gray"
>     | "dark_red"
>     | "dark_sky"
>     | "day_event"
>     | "death_01"
>     | "death_02"
>     | "deep_orange"
>     | "default"
>     | "default_gray"
>     | "default_row_alpha"
>     | "detail_demage"
>     | "doodad"
>     | "emerald_green"
>     | "evolving"
>     | "evolving_1"
>     | "evolving_2"
>     | "evolving_3"
>     | "evolving_4"
>     | "evolving_gray"
>     | "expedition_war_declarer"
>     | "faction_friendly_npc"
>     | "faction_friendly_pc"
>     | "faction_party"
>     | "faction_raid"
>     | "fight"
>     | "gender_female"
>     | "gender_male"
>     | "gray"
>     | "gray_beige"
>     | "gray_pink"
>     | "gray_purple"
>     | "green"
>     | "guide_text_in_editbox"
>     | "hatred_01"
>     | "hatred_02"
>     | "high_title"
>     | "hostile_forces"
>     | "http"
>     | "illusion"
>     | "ingameshop_submenu_seperator"
>     | "inquire_notify"
>     | "item_level"
>     | "labor_energy_offline"
>     | "labor_power_account"
>     | "labor_power_local"
>     | "lemon"
>     | "level_normal"
>     | "level_successor"
>     | "level_up_blue"
>     | "light_blue"
>     | "light_gray"
>     | "light_green"
>     | "light_red"
>     | "light_skyblue"
>     | "lime"
>     | "loading_content"
>     | "loading_percent"
>     | "loading_tip"
>     | "lock_item_or_equip_item"
>     | "login_stage_blue"
>     | "login_stage_brown"
>     | "login_stage_btn_disabled"
>     | "login_stage_btn_highlighted"
>     | "login_stage_btn_normal"
>     | "login_stage_btn_pushed"
>     | "login_stage_button_on"
>     | "login_stage_button_ov"
>     | "loot_gacha_cosume_item_name"
>     | "love_01"
>     | "love_02"
>     | "madness_01"
>     | "madness_02"
>     | "madness_03"
>     | "magic"
>     | "map_title"
>     | "map_zone_color_state_default"
>     | "map_zone_color_state_festival"
>     | "map_zone_color_state_high"
>     | "map_zone_color_state_peace"
>     | "medium_brown"
>     | "medium_brown_row_alpha"
>     | "medium_yellow"
>     | "megaphone"
>     | "melon"
>     | "middle_brown"
>     | "middle_title"
>     | "middle_title_row_alpha"
>     | "mileage"
>     | "mileage_archelife"
>     | "mileage_event"
>     | "mileage_free"
>     | "mileage_pcroom"
>     | "mint_light_blue"
>     | "money_item_delpi"
>     | "money_item_key"
>     | "money_item_netcafe"
>     | "money_item_star"
>     | "msg_zone_color_state_default"
>     | "msg_zone_color_state_festival"
>     | "msg_zone_color_state_high"
>     | "msg_zone_color_state_peace"
>     | "mustard_yellow"
>     | "my_ability_button_df"
>     | "my_ability_button_on"
>     | "nation_green"
>     | "nation_map_friendly"
>     | "nation_map_hostile"
>     | "nation_map_ligeance"
>     | "nation_map_native"
>     | "nation_map_none_owner"
>     | "nation_map_war"
>     | "notice_orange"
>     | "notify_message"
>     | "ocean_blue"
>     | "off_gray"
>     | "option_key_list_button_ov"
>     | "option_list_button_dis"
>     | "orange"
>     | "orange_brown"
>     | "original_dark_orange"
>     | "original_light_gray"
>     | "original_orange"
>     | "overlap_bg_color"
>     | "pleasure_01"
>     | "pleasure_02"
>     | "popup_menu_binding_key"
>     | "pure_black"
>     | "pure_red"
>     | "purple"
>     | "quest_directing_button_on"
>     | "quest_directing_button_ov"
>     | "quest_main"
>     | "quest_message"
>     | "quest_normal"
>     | "quest_task"
>     | "raid_command_message"
>     | "raid_frame_my_name"
>     | "raid_party_blue"
>     | "raid_party_orange"
>     | "red"
>     | "reward"
>     | "role_dealer"
>     | "role_healer"
>     | "role_none"
>     | "role_tanker"
>     | "romance_01"
>     | "romance_02"
>     | "rose_pink"
>     | "round_message_in_instance"
>     | "scarlet_red"
>     | "sea_blue"
>     | "sea_deep_blue"
>     | "sinergy"
>     | "skin_item"
>     | "sky"
>     | "sky_gray"
>     | "skyblue"
>     | "socket"
>     | "soda_blue"
>     | "soft_brown"
>     | "soft_green"
>     | "soft_red"
>     | "soft_yellow"
>     | "start_item"
>     | "stat_item"
>     | "sub_menu_in_main_menu_df"
>     | "sub_menu_in_main_menu_dis"
>     | "sub_menu_in_main_menu_on"
>     | "sub_menu_in_main_menu_ov"
>     | "subzone_state_alarm"
>     | "target_frame_name_friendly"
>     | "target_frame_name_hostile"
>     | "target_frame_name_neutral"
>     | "team_blue"
>     | "team_hud_blue"
>     | "team_hud_btn_text_df"
>     | "team_hud_btn_text_dis"
>     | "team_hud_btn_text_on"
>     | "team_hud_btn_text_ov"
>     | "team_violet"
>     | "title"
>     | "title_button_dis"
>     | "tooltip_default"
>     | "tooltip_zone_color_state_default"
>     | "tooltip_zone_color_state_high"
>     | "tooltip_zone_color_state_peace"
>     | "transparency"
>     | "tribe_btn_df"
>     | "tribe_btn_dis"
>     | "tribe_btn_on"
>     | "tribe_btn_ov"
>     | "tutorial_guide"
>     | "tutorial_screenshot_point"
>     | "tutorial_title"
>     | "unit_grade_boss_a"
>     | "unit_grade_boss_b"
>     | "unit_grade_boss_c"
>     | "unit_grade_boss_s"
>     | "unit_grade_strong"
>     | "unit_grade_weak"
>     | "unlock_item_or_equip_item"
>     | "user_tral_red"
>     | "version_info"
>     | "violet"
>     | "vocation"
>     | "white"
>     | "white_buttton_df"
>     | "white_buttton_dis"
>     | "white_buttton_on"
>     | "wild"
>     | "will"
>     | "world_map_latitude"
>     | "world_map_longitude"
>     | "world_map_longitude_2"
>     | "world_name_0"
>     | "world_name_1"
>     | "yellow"
>     | "yellow_ocher"
>     | "zone_danger_orange"
>     | "zone_dispute_ogange"
>     | "zone_festival_green"
>     | "zone_informer_name"
>     | "zone_peace_blue"
>     | "zone_war_red"
> ```

#### Method: GetTextWidth
```lua
(method) TextStyle:GetTextWidth(text: string)
  -> textWidth: number
```
> Retrieves the unscaled width of the specified text using the TextStyle.
> 
> @*param* `text` — The text to measure.
> 
> @*return* `textWidth` — The width of the text.

#### Method: SetAlign
```lua
(method) TextStyle:SetAlign(align: `ALIGN_BOTTOM_LEFT`|`ALIGN_BOTTOM_RIGHT`|`ALIGN_BOTTOM`|`ALIGN_CENTER`|`ALIGN_LEFT`...(+4))
```
> Sets the text alignment for the TextStyle.
> 
> @*param* `align` — The text alignment type. (default: `"ALIGN_CENTER"`)
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

#### Method: SetSnap
```lua
(method) TextStyle:SetSnap(snap: boolean)
```
> Enables or disables snapping for the TextStyle.
> 
> @*param* `snap` — `true` to enable snapping, `false` to disable.

