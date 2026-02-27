# Editboxbase
## Classes
### Class: Editboxbase
#### Method: ClearTextOnEnter
```lua
(method) Editboxbase:ClearTextOnEnter(clear: boolean)
```
Enables or disables clearing text when the Enter key is pressed.

@*param* `clear` — `true` to clear text on Enter, `false` to disable. (default: `false`)

#### Method: MaxTextLength
```lua
(method) Editboxbase:MaxTextLength()
  -> maxTextLength: number
```
Retrieves the maximum text length for the Editboxbase.

@*return* `maxTextLength` — The maximum text length.

#### Method: SetCursorColor
```lua
(method) Editboxbase:SetCursorColor(r: number, g: number, b: number, a: number)
```
Sets the color of the cursor for the Editboxbase.

@*param* `r` — The red color component. (min: `0`, max: `1`)

@*param* `g` — The green color component. (min: `0`, max: `1`)

@*param* `b` — The blue color component. (min: `0`, max: `1`)

@*param* `a` — The alpha (opacity) component. (min: `0`, max: `1`)

#### Method: SetCursorColorByColorKey
```lua
(method) Editboxbase:SetCursorColorByColorKey(colorKey: "action_slot_state_img_able"|"action_slot_state_img_can_learn"|"action_slot_state_img_cant_or_not_learn"|"action_slot_state_img_disable"|"common_black_bg"...(+27))
```
Sets the cursor color using a color key for the Editboxbase.

@*param* `colorKey` — The color key for the cursor.

```lua
-- game/ui/setting/etc_color.g
colorKey:
    | "action_slot_state_img_able"
    | "action_slot_state_img_can_learn"
    | "action_slot_state_img_cant_or_not_learn"
    | "action_slot_state_img_disable"
    | "common_black_bg"
    | "common_white_bg"
    | "craft_step_disable"
    | "craft_step_enable"
    | "editbox_cursor_default"
    | "editbox_cursor_light"
    | "icon_button_overlay_black"
    | "icon_button_overlay_none"
    | "icon_button_overlay_red"
    | "icon_button_overlay_yellow"
    | "login_stage_black_bg"
    | "map_hp_bar_bg"
    | "map_hp_bar"
    | "market_price_column_over"
    | "market_price_last_column"
    | "market_price_line_daily"
    | "market_price_line_weekly"
    | "market_price_volume"
    | "market_prict_cell"
    | "quest_content_directing_fade_in"
    | "quest_content_directing_fade_out"
    | "quest_content_directing_under_panel"
    | "quick_slot_bg"
    | "texture_check_window_bg"
    | "texture_check_window_data_label"
    | "texture_check_window_rect"
    | "texture_check_window_tooltip_bg"
    | "web_browser_background"
```

#### Method: SetCursorHeight
```lua
(method) Editboxbase:SetCursorHeight(height: number)
```
Sets the cursor height for the Editboxbase.

@*param* `height` — The height of the cursor.

#### Method: SetCursorOffset
```lua
(method) Editboxbase:SetCursorOffset(offset: number)
```
Sets the cursor offset for the Editboxbase.

@*param* `offset` — The cursor offset position.

#### Method: SetGuideText
```lua
(method) Editboxbase:SetGuideText(text: string)
```
Sets the guide text for the Editboxbase.

@*param* `text` — The guide text to display.

#### Method: SetGuideTextInset
```lua
(method) Editboxbase:SetGuideTextInset(insetData: InsetData)
```
Sets the guide text inset for the Editboxbase.

@*param* `insetData` — The inset data for the guide text.

See: [InsetData](../types/classes.md#class-insetdata)

#### Method: SetMaxTextLength
```lua
(method) Editboxbase:SetMaxTextLength(length: number)
```
Sets the maximum text length for the Editboxbase.

@*param* `length` — The maximum text length.

#### Method: SetReadOnly
```lua
(method) Editboxbase:SetReadOnly(readOnly: boolean)
```
Enables or disables read-only mode for the Editboxbase.

@*param* `readOnly` — `true` to make read-only, `false` to allow editing. (default: `false`)

#### Field: guideTextStyle
```lua
TextStyle
```
objects/TextStyle

#### Field: style
```lua
TextStyle
```
objects/TextStyle

