# Line
## Classes
### Class: Line
Extends [Widget](../types/Widget.md#class-widget)

> [Line](../types/Line.md#class-line)
> 
> A `Line` widget is drawable and can display one or multiple connected
> segments with configurable color, thickness, and points.
> 
#### Method: ClearPoints
```lua
(method) Line:ClearPoints()
```
> Clears all points from the Line.

#### Method: SetLineThickness
```lua
(method) Line:SetLineThickness(thickness: number)
```
> Sets the thickness for the Line.
> 
> @*param* `thickness` — The thickness of the line.

#### Method: SetLineColorByKey
```lua
(method) Line:SetLineColorByKey(colorKey: "action_slot_state_img_able"|"action_slot_state_img_can_learn"|"action_slot_state_img_cant_or_not_learn"|"action_slot_state_img_disable"|"common_black_bg"...(+27))
```
> Sets the line color using a color key for the Line.
> 
> @*param* `colorKey` — The color key to apply.
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

#### Method: SetLineColor
```lua
(method) Line:SetLineColor(r: number, g: number, b: number, a: number)
```
> Sets the color for the Line.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`, default: `0`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`, default: `0`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`, default: `0`)
> 
> @*param* `a` — The alpha (opacity) component. (min: `0`, max: `1`, default: `1`)

#### Method: SetPoints
```lua
(method) Line:SetPoints(points: Point[])
```
> Sets the points for the Line. Starts at bottom left of the widget.
> 
> @*param* `points` — An array of points defining the line.
> 
> ```lua
> widget:SetPoints({
>   { beginX = 0,   beginY = 0,   endX = 200, endY = 0, },
>   { beginX = 200, beginY = 0,   endX = 100, endY = 200, },
>   { beginX = 100, beginY = 200, endX = 0,   endY = 0, },
> })
> ```

