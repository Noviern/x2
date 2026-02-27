# Window
## Classes
### Class: Window
Extends [Widget](../types/Widget.md#class-widget)

> [Window](../types/Window.md#class-window)
> 
> A `Window` widget represents a UI window with optional modal behavior, title
> text and styling, and layer management. It supports closing via the Escape
> key, custom title insets, and modal backgrounds.
> 
> **Dependencies**:
>  - [EmptyWidget](../types/EmptyWidget.md#class-emptywidget) used for the `modalBackgroundWindow` field.
>  - [TextStyle](../types/TextStyle.md#class-textstyle) used for the `titleStyle` field.
> 
#### Field: titleStyle
```lua
TextStyle
```
> The text style applied to the window's title.

#### Field: modalBackgroundWindow
```lua
EmptyWidget
```
> Not needed for the method `SetWindowModal`.

#### Method: SetWindowModal
```lua
(method) Window:SetWindowModal(enable: boolean)
```
> Enables or disables modal behavior for the Window.
> 
> @*param* `enable` — `true` to make the Window modal, `false` to disable. (default: `false`)

#### Method: SetUILayer
```lua
(method) Window:SetUILayer(layerName: "background"|"dialog"|"game"|"hud"|"normal"...(+3))
```
> Sets the UI layer for the Window. If the window is a child then the layer is
> relative to the parents layer.
> 
> @*param* `layerName` — The name of the UI layer. (default: `"normal"`)
> 
> ```lua
> -- Widgets with layers of the same level and parent can overlap based on focus.
> layerName:
>     | "background" -- Layer 0 (invisible)
>     | "game" -- Layer 1
>    -> "normal" -- Layer 2 (default)
>     | "hud" -- Layer 3
>     | "questdirecting" -- Layer 4
>     | "dialog" -- Layer 5
>     | "tooltip" -- Layer 6
>     | "system" -- Layer 7
> ```

#### Method: SetTitleInset
```lua
(method) Window:SetTitleInset(left: number, top: number, right: number, bottom: number)
```
> Sets the inset for the title of the Window.
> 
> @*param* `left` — The left inset.
> 
> @*param* `top` — The top inset.
> 
> @*param* `right` — The right inset.
> 
> @*param* `bottom` — The bottom inset.

#### Method: SetTitleText
```lua
(method) Window:SetTitleText(title: string)
```
> Sets the title text for the Window.
> 
> @*param* `title` — The title text to set.

#### Method: SetCloseOnEscape
```lua
(method) Window:SetCloseOnEscape(escape: boolean)
```
> Enables or disables closing the Window when the Escape key is pressed.
> 
> @*param* `escape` — `true` to enable close on Escape, `false` to disable. (default: `false`)

