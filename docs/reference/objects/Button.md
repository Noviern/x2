# Button
## Globals
**UI_BUTTON_DISABLED**

`integer`

**UI_BUTTON_HIGHLIGHTED**

`integer`

**UI_BUTTON_MAX**

`integer`

**UI_BUTTON_NORMAL**

`integer`

**UI_BUTTON_PUSHED**

`integer`

## Aliases
**UI_BUTTON_STATE**

`UI_BUTTON_DISABLED`|`UI_BUTTON_HIGHLIGHTED`|`UI_BUTTON_NORMAL`|`UI_BUTTON_PUSHED`

```lua
-- objects/Button
UI_BUTTON_STATE:
    | `UI_BUTTON_NORMAL`
    | `UI_BUTTON_HIGHLIGHTED`
    | `UI_BUTTON_PUSHED`
    | `UI_BUTTON_DISABLED`
```

## Classes
### Class: Button
Extends [Widget](../types/Widget.md#class-widget)

> [Button](../types/Button.md#class-button)
> 
> A `Button` widget is clickable and responds to mouse interaction with four
> visual states: normal, highlighted (hover), pushed (pressed), and disabled.
> Supports per-state custom backgrounds, tint colors, text coloring,
> auto-resize, content insets, and per-mouse-button click registration.
> 
> **Dependencies**:
>  - [TextStyle](../types/TextStyle.md#class-textstyle) used for the `style` field.
>  - [EffectDrawable](../types/EffectDrawable.md#class-effectdrawable) used for getting the background state drawable.
>  - [ImageDrawable](../types/ImageDrawable.md#class-imagedrawable) used for getting the background state drawable.
>  - [NinePartDrawable](../types/NinePartDrawable.md#class-ninepartdrawable) used for getting the background state drawable.
>  - [ThreePartDrawable](../types/ThreePartDrawable.md#class-threepartdrawable) used for getting the background state drawable.
> 
#### Field: style
```lua
TextStyle
```
> The text style applied to the button's text.

#### Method: SetHighlightColor
```lua
(method) Button:SetHighlightColor(r: number, g: number, b: number, a: number)
```
> Sets the color for the highlighted state of the button.
> 
> @*param* `r` — Red value (min: `0`, max: `1`).
> 
> @*param* `g` — Green value (min: `0`, max: `1`).
> 
> @*param* `b` — Blue value (min: `0`, max: `1`).
> 
> @*param* `a` — Alpha value (min: `0`, max: `1`).

#### Method: SetHighlightTextColor
```lua
(method) Button:SetHighlightTextColor(r: number, g: number, b: number, a: number)
```
> Sets the text color for the highlighted state of the button.
> 
> @*param* `r` — Red value (min: `0`, max: `1`).
> 
> @*param* `g` — Green value (min: `0`, max: `1`).
> 
> @*param* `b` — Blue value (min: `0`, max: `1`).
> 
> @*param* `a` — Alpha value (min: `0`, max: `1`).

#### Method: SetHighlightBackground
```lua
(method) Button:SetHighlightBackground(highlightTable: DrawableDDS)
```
> Sets the drawable for the highlighted state of the button.
> 
> @*param* `highlightTable` — The drawable for the highlighted state.
> 
> See: [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)

#### Method: SetDisabledTextColor
```lua
(method) Button:SetDisabledTextColor(r: number, g: number, b: number, a: number)
```
> Sets the text color for the disabled state of the button.
> 
> @*param* `r` — Red value (min: `0`, max: `1`).
> 
> @*param* `g` — Green value (min: `0`, max: `1`).
> 
> @*param* `b` — Blue value (min: `0`, max: `1`).
> 
> @*param* `a` — Alpha value (min: `0`, max: `1`).

#### Method: SetFocus
```lua
(method) Button:SetFocus()
```
> Sets focus on the button.

#### Method: SetDisabledColor
```lua
(method) Button:SetDisabledColor(r: number, g: number, b: number, a: number)
```
> Sets the color for the disabled state of the button.
> 
> @*param* `r` — Red value (min: `0`, max: `1`).
> 
> @*param* `g` — Green value (min: `0`, max: `1`).
> 
> @*param* `b` — Blue value (min: `0`, max: `1`).
> 
> @*param* `a` — Alpha value (min: `0`, max: `1`).

#### Method: SetInset
```lua
(method) Button:SetInset(left: number, top: number, right: number, bottom: number)
```
> Sets the inset for the button.
> 
> @*param* `left` — The left inset.
> 
> @*param* `top` — The top inset.
> 
> @*param* `right` — The right inset.
> 
> @*param* `bottom` — The bottom inset.

#### Method: SetNormalColor
```lua
(method) Button:SetNormalColor(r: number, g: number, b: number, a: number)
```
> Sets the color for the normal state of the button.
> 
> @*param* `r` — Red value (min: `0`, max: `1`).
> 
> @*param* `g` — Green value (min: `0`, max: `1`).
> 
> @*param* `b` — Blue value (min: `0`, max: `1`).
> 
> @*param* `a` — Alpha value (min: `0`, max: `1`).

#### Method: SetStyle
```lua
(method) Button:SetStyle(style: "accept_v"|"actionbar_lock"|"actionbar_rotate"|"actionbar_unlock"|"all_repair"...(+183))
```
> Sets the style for the button, including extent, state backgrounds, and other
> visual properties.
> 
> This function applies the specified style even if the required Drawables and
> TextStyle are not imported.
> 
> @*param* `style` — The style configuration to apply.
> 
> ```lua
> -- game/ui/setting/button_style.g
> style:
>     | "accept_v"
>     | "actionbar_lock"
>     | "actionbar_rotate"
>     | "actionbar_unlock"
>     | "all_repair"
>     | "auction_post_bind"
>     | "auction_successor"
>     | "auction_successor_grey"
>     | "banner_close"
>     | "btn_close_default"
>     | "btn_close_mini"
>     | "btn_raid_recruit"
>     | "butler_change_look"
>     | "button_common_book"
>     | "button_common_option"
>     | "button_complete"
>     | "button_daru"
>     | "button_request"
>     | "button_search"
>     | "cancel_fix_item"
>     | "cancel_mini"
>     | "cancel_search_in_inventory"
>     | "char_select_page_represent_char"
>     | "character"
>     | "character_equip_close"
>     | "character_equip_open"
>     | "character_info_bless_uthstin"
>     | "character_info_btn_shop"
>     | "character_info_change"
>     | "character_info_detail_btn"
>     | "character_lock_off"
>     | "character_lock_on"
>     | "character_search"
>     | "character_slot_created"
>     | "character_slot_created_red"
>     | "character_slot_created_red_selected"
>     | "character_slot_created_selected"
>     | "character_slot_enchant"
>     | "character_slot_equipment"
>     | "character_slot_impossible"
>     | "character_slot_possible"
>     | "character_swap"
>     | "character_swap_on"
>     | "chat_tab_selected"
>     | "chat_tab_unselected"
>     | "combat_resource_close"
>     | "combat_resource_open"
>     | "common_back"
>     | "common_hud"
>     | "config"
>     | "customizing_freeze"
>     | "customizing_load"
>     | "customizing_save"
>     | "deposit_withdrawal"
>     | "down_arrow"
>     | "equip_scroll_button_down"
>     | "equip_scroll_button_up"
>     | "equipment_map"
>     | "esc"
>     | "exit"
>     | "expansion"
>     | "expansion_small"
>     | "expedition_war_alarm"
>     | "first_page"
>     | "fix"
>     | "fix_item"
>     | "grid_folder_down_arrow"
>     | "grid_folder_right_arrow"
>     | "grid_folder_up_arrow"
>     | "housing_demolish"
>     | "housing_remove"
>     | "housing_rotation"
>     | "housing_sale"
>     | "housing_ucc"
>     | "hud_btn_archelife_off"
>     | "hud_btn_chat_add_tab"
>     | "hud_btn_chat_scroll_down_bottom"
>     | "hud_btn_eventcenter"
>     | "hud_btn_hero_reputation"
>     | "hud_btn_ime_english"
>     | "hud_btn_ime_korea"
>     | "hud_btn_ingameshop"
>     | "hud_btn_instance"
>     | "hud_btn_merchant"
>     | "hud_btn_url_link"
>     | "hud_instance"
>     | "ingameshop_beautyshop"
>     | "ingameshop_buy"
>     | "ingameshop_cart"
>     | "ingameshop_charge_cash"
>     | "ingameshop_gender_transfer"
>     | "ingameshop_present"
>     | "instance_out"
>     | "instance_reentry"
>     | "inventory_sort"
>     | "item_enchant"
>     | "item_guide"
>     | "item_lock_in_bag"
>     | "last_page"
>     | "left_arrow"
>     | "list"
>     | "location"
>     | "lock_equip_item"
>     | "lock_item"
>     | "login_stage_character_create"
>     | "login_stage_enter_world"
>     | "login_stage_exit_game"
>     | "login_stage_game_start"
>     | "login_stage_model_change"
>     | "login_stage_option_game"
>     | "login_stage_staff"
>     | "login_stage_text_default"
>     | "login_stage_text_small"
>     | "login_stage_user_ui"
>     | "look_convert"
>     | "loot_gacha"
>     | "mail_all_mail_delete"
>     | "mail_read_mail_delete"
>     | "mail_receive_all_item"
>     | "mail_receive_money"
>     | "mail_selected_delete"
>     | "mail_take"
>     | "map_alpha"
>     | "map_alpha_select"
>     | "map_eraser"
>     | "map_position"
>     | "menu"
>     | "minimap_off"
>     | "minimap_on"
>     | "minimap_ping"
>     | "minimap_playercenter"
>     | "minimap_resize"
>     | "minimap_suboption"
>     | "minimap_zoomin"
>     | "minimap_zoomout"
>     | "minus"
>     | "modelview_rotate_left"
>     | "modelview_rotate_right"
>     | "next_page"
>     | "next_page_action_bar"
>     | "next_page_tutorial"
>     | "open_battlefield"
>     | "part_repair"
>     | "play"
>     | "plus"
>     | "portal_rename"
>     | "portal_spawn"
>     | "premium_buy_in_char_sel_page"
>     | "prev_page"
>     | "prev_page_action_bar"
>     | "prev_page_back"
>     | "prev_page_tutorial"
>     | "price"
>     | "quest_close"
>     | "quest_cutscene_close"
>     | "quest_open"
>     | "question_mark"
>     | "raid_recall"
>     | "raid_recruit_alarm"
>     | "randombox"
>     | "ready_to_siege_alarm"
>     | "reject_x"
>     | "repair"
>     | "report"
>     | "right_arrow"
>     | "roster_setting"
>     | "save"
>     | "search_mini"
>     | "search_mini_green"
>     | "siege_war_alarm"
>     | "slider_scroll_button_down"
>     | "slider_scroll_button_up"
>     | "squad_mini_view_close"
>     | "squad_mini_view_open"
>     | "survey_form_alarm"
>     | "text_default"
>     | "text_default_small"
>     | "trade_check_green"
>     | "trade_check_yellow"
>     | "unlock_equip_item"
>     | "unlock_item"
>     | "up_arrow"
>     | "uthstin_stat_max_expand"
>     | "wastebasket_shape"
>     | "wastebasket_shape_small"
>     | "write"
>     | "zone_permission_out"
>     | "zone_permission_wait"
> ```

#### Method: SetNormalBackground
```lua
(method) Button:SetNormalBackground(normalTable: DrawableDDS)
```
> Sets the drawable for the normal state of the button.
> 
> @*param* `normalTable` — The drawable for the normal state.
> 
> See: [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)

#### Method: SetPushedTextColor
```lua
(method) Button:SetPushedTextColor(r: number, g: number, b: number, a: number)
```
> Sets the text color for the pushed state of the button.
> 
> @*param* `r` — Red value (min: `0`, max: `1`).
> 
> @*param* `g` — Green value (min: `0`, max: `1`).
> 
> @*param* `b` — Blue value (min: `0`, max: `1`).
> 
> @*param* `a` — Alpha value (min: `0`, max: `1`).

#### Method: SetPushedBackground
```lua
(method) Button:SetPushedBackground(pushedTable: DrawableDDS)
```
> Sets the drawable for the pushed state of the button.
> 
> @*param* `pushedTable` — The drawable for the pushed state.
> 
> See: [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)

#### Method: SetPushedColor
```lua
(method) Button:SetPushedColor(r: number, g: number, b: number, a: number)
```
> Sets the color for the pushed state of the button.
> 
> @*param* `r` — Red value (min: `0`, max: `1`).
> 
> @*param* `g` — Green value (min: `0`, max: `1`).
> 
> @*param* `b` — Blue value (min: `0`, max: `1`).
> 
> @*param* `a` — Alpha value (min: `0`, max: `1`).

#### Method: SetTextColor
```lua
(method) Button:SetTextColor(r: number, g: number, b: number, a: number)
```
> Sets the text color for the normal state of the button.
> 
> @*param* `r` — Red value (min: `0`, max: `1`).
> 
> @*param* `g` — Green value (min: `0`, max: `1`).
> 
> @*param* `b` — Blue value (min: `0`, max: `1`).
> 
> @*param* `a` — Alpha value (min: `0`, max: `1`).

#### Method: SetDisabledBackground
```lua
(method) Button:SetDisabledBackground(disabledTable: DrawableDDS)
```
> Sets the drawable for the disabled state of the button.
> 
> @*param* `disabledTable` — The drawable for the disabled state.
> 
> See: [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)

#### Method: SetAutoResize
```lua
(method) Button:SetAutoResize(resize: boolean)
```
> Enables or disables automatic resizing for the button.
> 
> @*param* `resize` — `true` to enable auto resizing, `false` to disable. (default: `false`)

#### Method: GetDisabledColor
```lua
(method) Button:GetDisabledColor()
  -> disabledColor: RGBA
```
> Retrieves the color of the disabled state for the button.
> 
> @*return* `disabledColor` — The disabled state color. (default: `{ r = 0, g = 0, b = 0, a = 1 }`)

#### Method: GetHighlightBackground
```lua
(method) Button:GetHighlightBackground()
  -> highlightTable: DrawableDDS|nil
```
> Retrieves the drawable for the highlighted state of the button, if it exists.
> Casting may be neccessary.
> 
> @*return* `highlightTable` — The highlighted state drawable, an empty table if the correct drawable hasn't been imported, or `nil` if not set.
> 
> See: [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)

#### Method: GetDisabledBackground
```lua
(method) Button:GetDisabledBackground()
  -> disabledTable: DrawableDDS|nil
```
> Retrieves the drawable for the disabled state of the button, if it exists.
> Casting may be neccessary.
> 
> @*return* `disabledTable` — The disabled state drawable, an empty table if the correct drawable hasn't been imported, or `nil` if not set.
> 
> See: [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)

#### Method: DeregisterForClicks
```lua
(method) Button:DeregisterForClicks(mouseButton: "LeftButton"|"RightButton")
```
> Disables clicking for the specified mouse button.
> 
> @*param* `mouseButton` — The mouse button to disable.
> 
> ```lua
> mouseButton:
>     | "LeftButton"
>     | "RightButton"
> ```

#### Method: GetButtonState
```lua
(method) Button:GetButtonState()
  -> state: "DISABLED"|"HIGHLIGHTED"|"NORMAL"|"PUSHED"
```
> Retrieves the current state of the button.
> 
> @*return* `state` — The current button state. (default: `"DISABLED"`)
> 
> ```lua
> state:
>     | "DISABLED"
>     | "HIGHLIGHTED"
>     | "NORMAL"
>     | "PUSHED"
> ```

#### Method: SetButtonState
```lua
(method) Button:SetButtonState(state: "DISABLED"|"HIGHLIGHTED"|"NORMAL"|"PUSHED")
```
> Sets the state of the button.
> 
> @*param* `state` — The state to set. (default: `DISABLED`)
> 
> ```lua
> state:
>     | "DISABLED"
>     | "HIGHLIGHTED"
>     | "NORMAL"
>     | "PUSHED"
> ```

#### Method: GetHighlightColor
```lua
(method) Button:GetHighlightColor()
  -> highlightColor: RGBA
```
> Retrieves the color of the highlighted state for the button.
> 
> @*return* `highlightColor` — The highlighted state color. (default: `{ r = 0, g = 0, b = 0, a = 1 }`)

#### Method: GetNormalColor
```lua
(method) Button:GetNormalColor()
  -> normalColor: RGBA
```
> Retrieves the color of the normal state for the button.
> 
> @*return* `normalColor` — The normal state color. (default: `{ r = 0, g = 0, b = 0, a = 1 }`)

#### Method: SetAutoClipChar
```lua
(method) Button:SetAutoClipChar(resize: boolean)
```
> Enables or disables automatic character clipping for the button. This resets
> `Button:SetText`.
> 
> @*param* `resize` — `true` to enable auto clipping, `false` to disable. (default: `false`)

#### Method: GetNormalBackground
```lua
(method) Button:GetNormalBackground()
  -> normalTable: DrawableDDS|nil
```
> Retrieves the drawable for the normal state of the button, if it exists.
> Casting may be neccessary.
> 
> @*return* `normalTable` — The normal state drawable, an empty table if the correct drawable hasn't been imported, or `nil` if not set.
> 
> See: [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)

#### Method: RegisterForClicks
```lua
(method) Button:RegisterForClicks(mouseButton: "LeftButton"|"RightButton", enable?: boolean)
```
> Enables or disables clicking for the specified mouse button.
> 
> @*param* `mouseButton` — The mouse button to enable/disable. (default: `"LeftButton"`)
> 
> @*param* `enable` — The optional enable state, `true` to enable clicking, `false` to disable. (default: `true`)
> 
> ```lua
> mouseButton:
>     | "LeftButton"
>     | "RightButton"
> ```

#### Method: GetPushedBackground
```lua
(method) Button:GetPushedBackground()
  -> pushedTable: DrawableDDS|nil
```
> Retrieves the drawable for the pushed state of the button, if it exists.
> Casting may be neccessary.
> 
> @*return* `pushedTable` — The pushed state drawable, an empty table if the correct drawable hasn't been imported, or `nil` if not set.
> 
> See: [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)

#### Method: GetPushedColor
```lua
(method) Button:GetPushedColor()
  -> pushedColor: RGBA
```
> Retrieves the color of the pushed state for the button.
> 
> @*return* `pushedColor` — The pushed state color. (default: `{ r = 0, g = 0, b = 0, a = 1 }`)

#### Method: CreateStateDrawable
```lua
(method) Button:CreateStateDrawable(state: `UI_BUTTON_DISABLED`|`UI_BUTTON_HIGHLIGHTED`|`UI_BUTTON_NORMAL`|`UI_BUTTON_PUSHED`, drawableType: `7`|`9`|`UOT_IMAGE_DRAWABLE`|`UOT_NINE_PART_DRAWABLE`, path: string, layer?: "artwork"|"background"|"overlay"|"overoverlay")
  -> stateDrawable: DrawableDDS
```
> Creates a drawable for the specified button state and type.
> 
> @*param* `state` — The button state (e.g., normal, pushed, disabled).
> 
> @*param* `drawableType` — The type of drawable to create.
> 
> @*param* `path` — The path to the drawable resource.
> 
> @*param* `layer` — The optional layer to apply the drawable to. (default: `"background"`)
> 
> @*return* `stateDrawable` — The created drawable, empty table if the object hasn't been imported, or `nil` if creation fails.
> 
> 
> 
> ```lua
> -- objects/Button
> state:
>     | `UI_BUTTON_NORMAL`
>     | `UI_BUTTON_HIGHLIGHTED`
>     | `UI_BUTTON_PUSHED`
>     | `UI_BUTTON_DISABLED`
> 
> -- api/Addon
> drawableType:
>     | `7` -- UOT_COLOR_DRAWABLE We dont have access to this global yet but it does exist in the codebase.
>     | `UOT_IMAGE_DRAWABLE`
>     | `UOT_NINE_PART_DRAWABLE`
>     | `9` -- UOT_THREE_PART_DRAWABLE We dont have access to this global yet but it does exist in the codebase.
> 
> -- Drawables with layers of the same level and parent can overlap based on focus.
> layer:
>     | "background" -- Layer 1
>     | "artwork" -- Layer 2
>     | "overlay" -- Layer 3
>     | "overoverlay" -- Layer 4
> ```
> 
> See:
>   * [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)
>   * [ColorDrawable](../objects/ColorDrawable.md#class-colordrawable)
>   * [NinePartDrawable](../objects/NinePartDrawable.md#class-ninepartdrawable)
>   * [ThreePartDrawable](../objects/ThreePartDrawable.md#class-threepartdrawable)
>   * [ImageDrawable](../objects/ImageDrawable.md#class-imagedrawable)

