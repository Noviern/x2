# Label
## Classes
### Class: Label
Extends [Widget](../types/Widget.md#class-widget)

> [Label](../types/Label.md#class-label)
> 
> A `Label` widget displays a string with configurable style, insets,
> auto-resizing, and optional number-only formatting.
> 
> **Dependencies**:
>  - [TextStyle](../types/TextStyle.md#class-textstyle) used for the `style` field.
> 
#### Field: style
```lua
TextStyle
```
> The text style applied to the label's text.

#### Method: SetNumberOnly
```lua
(method) Label:SetNumberOnly(only: boolean)
```
> Enables or disables number formatting for the Label's text. Must be set
> before `Label:SetText`.
> 
> @*param* `only` — `true` to format text as if it were numbers only, `false` to allow any text. (default: `false`)

#### Method: SetInset
```lua
(method) Label:SetInset(left: number, top: number, right: number, bottom: number)
```
> Sets the inset for the Label.
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
(method) Label:SetAutoResize(resize: boolean)
```
> Enables or disables automatic resizing of the Label.
> 
> @*param* `resize` — `true` to enable auto resizing, `false` to disable. (default: `false`)

#### Method: GetInset
```lua
(method) Label:GetInset()
  -> left: number
  2. top: number
  3. right: number
  4. bottom: number
```
> Retrieves the inset of the Label.
> 
> @*return* `left` — The left inset. (default: `0`)
> 
> @*return* `top` — The top inset. (default: `0`)
> 
> @*return* `right` — The right inset. (default: `0`)
> 
> @*return* `bottom` — The bottom inset. (default: `0`)

