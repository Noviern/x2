# ColorDrawable
## Classes
### Class: ColorDrawable
Extends [Drawablebase](../types/Drawablebase.md#class-drawablebase)

> [ColorDrawable](../types/ColorDrawable.md#class-colordrawable)
> 
> A `ColorDrawable` is a drawable that displays a solid color. It can be queried
> for its current color and have its texture color set via a color key.
> 
#### Method: GetColor
```lua
(method) ColorDrawable:GetColor()
  -> color: RGBA
```
> Returns `color` for the ColorDrawable.

#### Method: SetTextureColor
```lua
(method) ColorDrawable:SetTextureColor(colorKey: "action_slot_state_img_able"|"action_slot_state_img_can_learn"|"action_slot_state_img_cant_or_not_learn"|"action_slot_state_img_disable"|"common_black_bg"...(+27))
```
> Sets the texture color by `colorKey` for the ColorDrawable.
> 
> ```lua
> -- game/ui/setting/etc_color.g
> colorKey:
>     | "action_slot_state_img_able"
>     | "action_slot_state_img_can_learn"
>     | "action_slot_state_img_cant_or_not_learn"
>     | "action_slot_state_img_disable"
>     | "common_black_bg"
>     | "common_white_bg"
>     | "craft_step_disable"
>     | "craft_step_enable"
>     | "editbox_cursor_default"
>     | "editbox_cursor_light"
>     | "icon_button_overlay_black"
>     | "icon_button_overlay_none"
>     | "icon_button_overlay_red"
>     | "icon_button_overlay_yellow"
>     | "login_stage_black_bg"
>     | "map_hp_bar_bg"
>     | "map_hp_bar"
>     | "market_price_column_over"
>     | "market_price_last_column"
>     | "market_price_line_daily"
>     | "market_price_line_weekly"
>     | "market_price_volume"
>     | "market_prict_cell"
>     | "quest_content_directing_fade_in"
>     | "quest_content_directing_fade_out"
>     | "quest_content_directing_under_panel"
>     | "quick_slot_bg"
>     | "texture_check_window_bg"
>     | "texture_check_window_data_label"
>     | "texture_check_window_rect"
>     | "texture_check_window_tooltip_bg"
>     | "web_browser_background"
> ```

