# Textbox
## Classes
### Class: Textbox
Extends [Widget](../types/Widget.md#class-widget)

> [Textbox](../types/Textbox.md#class-textbox)
> 
> A `Textbox` widget displays text with support for automatic resizing, word
> wrapping, strikethrough, underline, line spacing, and inset customization.
> It can also measure text width and height for individual lines or the entire
> content.
> 
> **Dependencies**:
>  - [TextStyle](../types/TextStyle.md#class-textstyle) used for the `style` field.
> 
#### Field: style
```lua
TextStyle
```
> The text style applied to the widget's text.

#### Method: SetLineSpace
```lua
(method) Textbox:SetLineSpace(space: number)
```
> Sets the line spacing for the Textbox.
> 
> @*param* `space` — The line spacing value. (default: `1`)

#### Method: SetLineHeight
```lua
(method) Textbox:SetLineHeight(height: number)
```
> Sets the height of the strikethrough and underline for the Textbox.
> 
> @*param* `height` — The height of the strikethrough and underline.

#### Method: SetLineColor
```lua
(method) Textbox:SetLineColor(r: number, g: number, b: number, a: number)
```
> Sets the color for the strikethrough and underline of the Textbox.
> 
> @*param* `r` — The red color component (min: `0`, max: `1`).
> 
> @*param* `g` — The green color component (min: `0`, max: `1`).
> 
> @*param* `b` — The blue color component (min: `0`, max: `1`).
> 
> @*param* `a` — The alpha (opacity) component (min: `0`, max: `1`).

#### Method: SetStrikeThrough
```lua
(method) Textbox:SetStrikeThrough(visible: boolean)
```
> Enables or disables strikethrough visibility for the Textbox.
> 
> @*param* `visible` — `true` to show strikethrough, `false` to hide. (default: `false`)

#### Method: SetTextAutoWidth
```lua
(method) Textbox:SetTextAutoWidth(initWidth: number, text: string, offset: number)
```
> Sets the initial width, text, and offset for the Textbox.
> 
> @*param* `initWidth` — The initial width.
> 
> @*param* `text` — The text to set.
> 
> @*param* `offset` — The offset for the text.

#### Method: SetText
```lua
(method) Textbox:SetText(text: string|"@ACHIEVEMENT_NAME(achievementId)"|"@AREA_SPHERE(sphereId)"|"@CONTENT_CONFIG(configId)"|"@DAY(days)"...(+63))
```
> Sets the text for the Textbox.
> 
> @*param* `text` — The text to set.
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

#### Method: SetUnderLine
```lua
(method) Textbox:SetUnderLine(visible: boolean)
```
> Enables or disables underline visibility for the Textbox.
> 
> @*param* `visible` — `true` to show underline, `false` to hide. (default: `false`)

#### Method: SetInset
```lua
(method) Textbox:SetInset(left: number, top: number, right: number, bottom: number)
```
> Sets the inset for the Textbox.
> 
> @*param* `left` — The left inset.
> 
> @*param* `top` — The top inset.
> 
> @*param* `right` — The right inset.
> 
> @*param* `bottom` — The bottom inset.

#### Method: SetAutoResize
```lua
(method) Textbox:SetAutoResize(resize: boolean)
```
> Enables or disables automatic resizing of the Textbox.
> 
> @*param* `resize` — `true` to enable auto resizing, `false` to disable (default: `false`).

#### Method: GetLineLength
```lua
(method) Textbox:GetLineLength(lineNum: number)
  -> lineWidth: number
```
> Retrieves the scaled UI width in pixels of the specified line in the Textbox.
> 
> @*param* `lineNum` — The line number.
> 
> @*return* `lineWidth` — The scaled UI width of the line in pixels. (default: `0`)

#### Method: GetLineCount
```lua
(method) Textbox:GetLineCount()
  -> lineCount: number
```
> Retrieves the number of lines in the Textbox.
> 
> @*return* `lineCount` — The number of lines. (default: `0`)

#### Method: SetAutoWordwrap
```lua
(method) Textbox:SetAutoWordwrap(wrap: boolean)
```
> Enables or disables automatic word wrapping for the Textbox. Must be used
> before `Widget:SetText`.
> 
> @*param* `wrap` — `true` to enable word wrap, `false` to disable (default: `true`).

#### Method: GetLongestLineWidth
```lua
(method) Textbox:GetLongestLineWidth()
  -> longestLineWidth: number
```
> Retrieves the unscaled UI width of the longest line in the Textbox.
> 
> @*return* `longestLineWidth` — The unscaled UI width of the longest line. (default: `0`)

#### Method: GetTextLength
```lua
(method) Textbox:GetTextLength()
  -> textLength: number
```
> Retrieves the text length of the Textbox.
> 
> @*return* `textLength` — The text length. (default: `-1`)

#### Method: GetTextHeight
```lua
(method) Textbox:GetTextHeight()
  -> textHeight: number
```
> Retrieves the total unscaled UI text height of the Textbox.
> 
> @*return* `textHeight` — The total unscaled UI text height. (default: `-1`)

#### Method: GetInset
```lua
(method) Textbox:GetInset()
  -> left: number
  2. top: number
  3. right: number
  4. bottom: number
```
> Retrieves the inset of the Textbox.
> 
> @*return* `left` — The left inset. (default: `0`)
> 
> @*return* `top` — The top inset. (default: `0`)
> 
> @*return* `right` — The right inset. (default: `0`)
> 
> @*return* `bottom` — The bottom inset. (default: `0`)

