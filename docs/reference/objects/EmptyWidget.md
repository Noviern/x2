# EmptyWidget
## Classes
### Class: EmptyWidget
Extends [Widget](../types/Widget.md#class-widget)

> [EmptyWidget](../types/EmptyWidget.md#class-emptywidget)
> 
> **Warning:** `SetDrawBorder` is currently broken.
> 
> A `EmptyWidget` widget is generic and minimal, primarily used as a container
> or placeholder. Supports optional border drawing with configurable color
> and opacity. Intended for layouts, anchors, or as a base for other composite
> widgets.
> 
#### Method: SetDrawBorder
```lua
(method) EmptyWidget:SetDrawBorder(draw: boolean, r: number, g: number, b: number, a: number)
```
> Sets whether to draw the border for the EmptyWidget and specifies its color.
> 
> @*param* `draw` — `true` to draw the border, `false` to hide it.
> 
> @*param* `r` — The red color component (min: `0`, max: `1`).
> 
> @*param* `g` — The green color component (min: `0`, max: `1`).
> 
> @*param* `b` — The blue color component (min: `0`, max: `1`).
> 
> @*param* `a` — The alpha (opacity) component (min: `0`, max: `1`).

