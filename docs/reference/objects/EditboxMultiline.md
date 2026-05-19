# EditboxMultiline
## Classes
### Class: EditboxMultiline
Extends [Editboxbase](../types/Editboxbase.md#class-editboxbase)

> [EditboxMultiline](../types/EditboxMultiline.md#class-editboxmultiline)
> 
> A `EditboxMultiline` widget is for entering and displaying multiple lines of
> text. Provides cursor position queries, line and text metrics, configurable
> insets, and adjustable line spacing. Intended for longer text.
> 
#### Method: Clear
```lua
(method) EditboxMultiline:Clear()
```
> Clears all text in the EditboxMultiline.

#### Method: GetLineHeight
```lua
(method) EditboxMultiline:GetLineHeight()
  -> lineHeight: number
```
> Retrieves the height of a single line in the EditboxMultiline.
> 
> @*return* `lineHeight` — The height of a line.

#### Method: GetTextHeight
```lua
(method) EditboxMultiline:GetTextHeight()
  -> textHeight: number
```
> Retrieves the total height of the text in the EditboxMultiline.
> 
> @*return* `textHeight` — The total text height.

#### Method: GetTextLength
```lua
(method) EditboxMultiline:GetTextLength()
  -> textLength: number
```
> Retrieves the length of the text in the EditboxMultiline.
> 
> @*return* `textLength` — The length of the text.

#### Method: GetLineCount
```lua
(method) EditboxMultiline:GetLineCount()
  -> lineCount: number
```
> Retrieves the number of lines in the EditboxMultiline.
> 
> @*return* `lineCount` — The number of lines.

#### Method: GetCursorPosX
```lua
(method) EditboxMultiline:GetCursorPosX()
  -> cursorPosX: number
```
> Retrieves the x-coordinate of the cursor in the EditboxMultiline.
> 
> @*return* `cursorPosX` — The x-coordinate of the cursor.

#### Method: GetCursorPosY
```lua
(method) EditboxMultiline:GetCursorPosY()
  -> cursorPosY: number
```
> Retrieves the y-coordinate of the cursor in the EditboxMultiline.
> 
> @*return* `cursorPosY` — The y-coordinate of the cursor.

#### Method: SetLineSpace
```lua
(method) EditboxMultiline:SetLineSpace(space: number)
```
> Sets the line spacing for the EditboxMultiline.
> 
> @*param* `space` — The line spacing value.

