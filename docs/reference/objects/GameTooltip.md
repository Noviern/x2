# GameTooltip
## Globals
**UFT_CUPLABOR**

`string`

**UFT_CURHP**

`string`

**UFT_CURMP**

`string`

**UFT_GEARSCORE**

`string`

**UFT_MAXHP**

`string`

**UFT_MAXLABOR**

`string`

**UFT_MAXMP**

`string`

**UFT_NAME**

`string`

**UFT_PERHP**

`string`

**UFT_PERIOD_LEADERSHIP**

`string`

**UFT_PERMP**

`string`

**UFT_PVPHONOR**

`string`

**UFT_PVPKILL**

`string`

## Aliases
**UNIT_FRAME_TOOLTIP**

`UFT_CUPLABOR`|`UFT_CURHP`|`UFT_CURMP`|`UFT_GEARSCORE`|`UFT_MAXHP`...(+8)

```lua
-- objects/GameTooltip
UNIT_FRAME_TOOLTIP:
    | `UFT_CUPLABOR`
    | `UFT_CURHP`
    | `UFT_CURMP`
    | `UFT_GEARSCORE`
    | `UFT_MAXHP`
    | `UFT_MAXLABOR`
    | `UFT_MAXMP`
    | `UFT_NAME`
    | `UFT_PERHP`
    | `UFT_PERIOD_LEADERSHIP`
    | `UFT_PERMP`
    | `UFT_PVPHONOR`
    | `UFT_PVPKILL`
```

## Classes
### Class: GameTooltip
Extends [Widget](../types/Widget.md#class-widget)

> [GameTooltip](../types/GameTooltip.md#class-gametooltip)
> 
> A `GameTooltip` widget displays formatted tooltip text with multiple lines.
> Supports line insertion, spacing, indentation, and word wrapping, Allows
> adding text on either side of a line, attaching upper or lower spacing, and
> managing tooltip content programmatically.
> 
> **Dependencies**:
>  - [TextStyle](../types/TextStyle.md#class-textstyle) used for the `style` field and `textAlign` param of both methods `AddAnotherSideLine` and `AddLine`.
> 
#### Field: style
```lua
TextStyle
```
> The text style applied to all tooltip lines.

#### Method: GetLineSpace
```lua
(method) GameTooltip:GetLineSpace()
  -> lineSpace: number
```
> Retrieves the line spacing for the GameTooltip.
> 
> @*return* `lineSpace` — The line spacing value. (default: `0`)

#### Method: GetLineCount
```lua
(method) GameTooltip:GetLineCount()
  -> lineCount: number
```
> Retrieves the number of lines in the GameTooltip.
> 
> @*return* `lineCount` — The number of lines. (default: `0`)

#### Method: SetAutoWordwrap
```lua
(method) GameTooltip:SetAutoWordwrap(wrap: boolean)
```
> Enables or disables automatic word wrapping in the GameTooltip (must be set
> before `GameTooltip:AddLine`).
> 
> @*param* `wrap` — `true` to enable word wrap, `false` to disable. (default: `false`)

#### Method: SetLineSpace
```lua
(method) GameTooltip:SetLineSpace(space: number)
```
> Sets the line spacing for the GameTooltip (must be set before
> `GameTooltip:AddLine`).
> 
> @*param* `space` — The line spacing value. (default: `0`)

#### Method: SetInset
```lua
(method) GameTooltip:SetInset(left: number, top: number, right: number, bottom: number)
```
> Sets the inset for the GameTooltip.
> 
> @*param* `left` — The left inset. (default: `0`)
> 
> @*param* `top` — The top inset. (default: `0`)
> 
> @*param* `right` — The right inset. (default: `0`)
> 
> @*param* `bottom` — The bottom inset. (default: `0`)

#### Method: SetTooltipData
```lua
(method) GameTooltip:SetTooltipData(data: string)
```
> Sets the tooltip data for the GameTooltip.
> 
> @*param* `data` — The data to set for the tooltip.

#### Method: GetLastLine
```lua
(method) GameTooltip:GetLastLine()
  -> lastLine: number
```
> Retrieves the index of the last line in the GameTooltip.
> 
> @*return* `lastLine` — The index of the last line. (min: `0`)

#### Method: ClearLines
```lua
(method) GameTooltip:ClearLines()
```
> Clears all lines from the GameTooltip.

#### Method: AddLine
```lua
(method) GameTooltip:AddLine(text: string, fontPath: "font_combat"|"font_main"|"font_sub", fontSize: number, align: "left"|"right", textAlign: `ALIGN_BOTTOM_LEFT`|`ALIGN_BOTTOM_RIGHT`|`ALIGN_BOTTOM`|`ALIGN_CENTER`|`ALIGN_LEFT`...(+4), indentation: number)
  -> index: number
```
> Adds a new line to the GameTooltip and returns its index.
> 
> @*param* `text` — The text to add.
> 
> @*param* `fontPath` — The font path for the text.
> 
> @*param* `fontSize` — The font size for the text.
> 
> @*param* `align` — The alignment type.
> 
> @*param* `textAlign` — The text alignment for the line.
> 
> @*param* `indentation` — The indentation for the text.
> 
> @*return* `index` — The index of the added line. (Starts at `0`)
> 
> ```lua
> fontPath:
>     | "font_main"
>     | "font_sub"
>     | "font_combat"
> 
> align:
>     | "left"
>     | "right"
> 
> -- objects/TextStyle
> textAlign:
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

#### Method: GetHeightToLastLine
```lua
(method) GameTooltip:GetHeightToLastLine()
  -> heightOnlyLine: number
  2. heightIncludeSpace: number
```
> Retrieves the height of the last line in the GameTooltip, with and without
> spacing.
> 
> @*return* `heightOnlyLine` — The height of the last line without spacing.
> 
> @*return* `heightIncludeSpace` — The height of the last line including spacing.

#### Method: AttachLowerSpaceLine
```lua
(method) GameTooltip:AttachLowerSpaceLine(index: number, height: number)
```
> Attaches a lower space to the specified line in the GameTooltip.
> 
> @*param* `index` — The line index to attach the space to. (min: `0`)
> 
> @*param* `height` — The height of the lower space.

#### Method: AttachUpperSpaceLine
```lua
(method) GameTooltip:AttachUpperSpaceLine(index: number, height: number)
```
> Attaches an upper space to the specified line in the GameTooltip.
> 
> @*param* `index` — The line index to attach the space to. (min: `0`)
> 
> @*param* `height` — The height of the upper space.

#### Method: AddAnotherSideLine
```lua
(method) GameTooltip:AddAnotherSideLine(index: number, text: string, fontPath: "font_combat"|"font_main"|"font_sub", fontSize: number, textAlign: `ALIGN_BOTTOM_LEFT`|`ALIGN_BOTTOM_RIGHT`|`ALIGN_BOTTOM`|`ALIGN_CENTER`|`ALIGN_LEFT`...(+4), indentation: number)
```
> Adds text to an existing line in the GameTooltip on the opposite side.
> 
> @*param* `index` — The line index to add the text to. (Starts at `0`)
> 
> @*param* `text` — The text to add.
> 
> @*param* `fontPath` — The font path for the text.
> 
> @*param* `fontSize` — The font size for the text.
> 
> @*param* `textAlign` — The text alignment.
> 
> @*param* `indentation` — The indentation for the text.
> 
> ```lua
> fontPath:
>     | "font_main"
>     | "font_sub"
>     | "font_combat"
> 
> -- objects/TextStyle
> textAlign:
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

