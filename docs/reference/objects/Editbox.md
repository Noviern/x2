# Editbox
## Classes
### Class: Editbox
Extends [Widget](../types/Widget.md#class-widget), [Editboxbase](../types/Editboxbase.md#class-editboxbase)

> [Editbox](../types/Editbox.md#class-editbox)
> 
> **Warning:** All methods for this class are broken. Use [X2Editbox](../types/X2Editbox.md#class-x2editbox).
> 
> A `Editbox` widget allows users to enter and edit string or numeric values.
> Supports focus management, history tracking, digit-only and password modes,
> input validation policies, prefix text rendering, and configurable insets.
> Provides utilities for controlling composition state behavior, selection
> handling on focus, and various input constraints.
> 
> **Dependencies**:
>  - [TextStyle](../types/TextStyle.md#class-textstyle) used for the `prefixStyle` field.
> 
#### Field: prefixStyle
```lua
TextStyle
```
> The text style applied to the optional prefix text.

#### Method: SetInset
```lua
(method) Editbox:SetInset(left: number, top: number, right: number, bottom: number)
```
> Sets the inset for the Editbox.
> 
> @*param* `left` — The left inset.
> 
> @*param* `top` — The top inset.
> 
> @*param* `right` — The right inset.
> 
> @*param* `bottom` — The bottom inset.

#### Method: SetInitVal
```lua
(method) Editbox:SetInitVal(val: number)
```
> Sets the initial value for the Editbox.
> 
> @*param* `val` — The initial value.

#### Method: SetHistoryLines
```lua
(method) Editbox:SetHistoryLines(count: number)
```
> Sets the maximum number of history lines for the Editbox.
> 
> @*param* `count` — The maximum number of history lines. (default: `0`)

#### Method: SetFocus
```lua
(method) Editbox:SetFocus()
```
> Sets focus to the Editbox.

#### Method: SetPassword
```lua
(method) Editbox:SetPassword(password: boolean)
```
> Enables or disables password mode for the Editbox.
> 
> @*param* `password` — `true` to enable password mode, `false` to disable. (default: `false`)

#### Method: SetPrefixInset
```lua
(method) Editbox:SetPrefixInset(left: number, top: number, right: number, bottom: number)
```
> Sets the inset for the prefix text in the Editbox.
> 
> @*param* `left` — The left inset for the prefix.
> 
> @*param* `top` — The top inset for the prefix.
> 
> @*param* `right` — The right inset for the prefix.
> 
> @*param* `bottom` — The bottom inset for the prefix.

#### Method: SetPossibleFirstZero
```lua
(method) Editbox:SetPossibleFirstZero(possibleFirstZero: boolean)
```
> Enables or disables allowing a leading zero in digit input.
> 
> @*param* `possibleFirstZero` — `true` to allow leading zero, `false` to disallow. (default: `false`)

#### Method: SetReClickable
```lua
(method) Editbox:SetReClickable(click: boolean)
```
> Enables or disables re-clickable behavior for the Editbox.
> 
> @*param* `click` — `true` to enable re-clicking, `false` to disable.

#### Method: SetPrefixText
```lua
(method) Editbox:SetPrefixText(prefixText: string)
```
> Sets the prefix text for the Editbox.
> 
> @*param* `prefixText` — The prefix text to display.

#### Method: UseSelectAllWhenFocused
```lua
(method) Editbox:UseSelectAllWhenFocused(use: boolean)
```
> Enables or disables selecting all text when the Editbox gains focus.
> 
> @*param* `use` — `true` to select all text on focus, `false` to disable. (default: `true`)

#### Method: SetEnglish
```lua
(method) Editbox:SetEnglish(english: boolean)
```
> Sets the English input mode for the Editbox.
> 
> @*param* `english` — `true` to enable English input mode, `false` to disable. (default: `false`)

#### Method: SetDigitEmpty
```lua
(method) Editbox:SetDigitEmpty(empty: boolean)
```
> Sets whether the Editbox allows empty digit input.
> 
> @*param* `empty` — `true` to allow empty input, `false` to disallow. (default: `false`)

#### Method: ClearString
```lua
(method) Editbox:ClearString()
```
> Clears the string content of the Editbox.

#### Method: ClearFocus
```lua
(method) Editbox:ClearFocus()
```
> Clears focus from the Editbox.

#### Method: CheckNamePolicy
```lua
(method) Editbox:CheckNamePolicy(nameType: `NRT_CHARACTER`|`NRT_CHAT_TAB`|`NRT_CUSTOM`|`NRT_FACTION_ROLE`|`NRT_FACTION`...(+6))
```
> Checks the name policy for the Editbox.
> 
> @*param* `nameType` — The name type to check against.
> 
> ```lua
> --  api/X2Util
> nameType:
>     | `NRT_CHARACTER`
>     | `NRT_CHAT_TAB`
>     | `NRT_CUSTOM`
>     | `NRT_FACTION`
>     | `NRT_FACTION_ROLE`
>     | `NRT_FAMILY`
>     | `NRT_FAMILY_TITLE`
>     | `NRT_MAX`
>     | `NRT_PORTAL`
>     | `NRT_ROSTER_TITLE`
>     | `NRT_SUMMONS`
> ```

#### Method: SetDigitMax
```lua
(method) Editbox:SetDigitMax(max: number)
```
> Sets the maximum value for digit input in the Editbox.
> 
> @*param* `max` — The maximum digit value.

#### Method: IsDigit
```lua
(method) Editbox:IsDigit()
  -> digit: boolean
```
> Checks if the Editbox content is restricted to digits.
> 
> @*return* `digit` — `true` if restricted to digits, `false` otherwise. (default: `false`)

#### Method: IsPassword
```lua
(method) Editbox:IsPassword()
  -> password: boolean
```
> Checks if the Editbox is set as a password field.
> 
> @*return* `password` — `true` if set as password, `false` otherwise. (default: `false`)

#### Method: IsNowComposition
```lua
(method) Editbox:IsNowComposition()
  -> boolean
```
> Checks if the Editbox is in a composition state (e.g., IME input).
> 
> @*return* — `true` if in composition state, `false` otherwise. (default: `false`)

#### Method: SetDigit
```lua
(method) Editbox:SetDigit(digit: boolean)
```
> Enables or disables digit-only input for the Editbox.
> 
> @*param* `digit` — `true` to restrict to digits, `false` to allow all characters. (default: `false`)

#### Method: AddHistoryLine
```lua
(method) Editbox:AddHistoryLine(text: string)
```
> Adds a text entry to the Editbox history.
> 
> @*param* `text` — The text to add to the history.

