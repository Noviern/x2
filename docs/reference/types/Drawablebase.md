# Drawablebase
## Classes
### Class: Drawablebase
Extends [Uibounds](../types/Uibounds.md#class-uibounds), [Uiobject](../types/Uiobject.md#class-uiobject)

> [Drawablebase](../types/Drawablebase.md#class-drawablebase)
> 
> A `Drawablebase` is the most basic type of drawable. It supports visibility,
> color, rotation, and sRGB settings. Many other drawables like
> `DrawableDDS` and `ColorDrawable` inherit from this base class.
> 
#### Method: IsVisible
```lua
(method) Drawablebase:IsVisible()
  -> visible: boolean
```
> Returns a boolean indicating if the Drawablebase is visible.
> 
> @*return* `visible` — `true` if the Drawablebase is visible, `false` otherwise.

#### Method: SetVisible
```lua
(method) Drawablebase:SetVisible(visible: boolean)
```
> Shows or hides the Drawablebase.
> 
> @*param* `visible` — `true` to show, `false` to hide. (default: `true`)

#### Method: SetVisibleForString
```lua
(method) Drawablebase:SetVisibleForString(minValue: string, maxValue: string, value: string)
```
> Sets the visibility condition based on a string value range.
> 
> @*param* `minValue` — The minimum value for visibility.
> 
> @*param* `maxValue` — The maximum value for visibility.
> 
> @*param* `value` — The value to check (`value > minValue and value < maxValue`).

#### Method: SetSRGB
```lua
(method) Drawablebase:SetSRGB(srgb: boolean)
```
> Enables or disables sRGB for the Drawablebase.
> 
> @*param* `srgb` — `true` to enable sRGB, `false` to disable.

#### Method: SetColor
```lua
(method) Drawablebase:SetColor(r: number, g: number, b: number, a: number)
```
> Sets the color for the Drawablebase.
> 
> @*param* `r` — The red color component (min: `0`, max: `1`).
> 
> @*param* `g` — The green color component (min: `0`, max: `1`).
> 
> @*param* `b` — The blue color component (min: `0`, max: `1`).
> 
> @*param* `a` — The alpha (opacity) component (min: `0`, max: `1`).

#### Method: SetRotation
```lua
(method) Drawablebase:SetRotation(angle: number)
```
> Sets the rotation angle of the Drawablebase. Works on `ImageDrawable` and
> `IconDrawable`.
> 
> @*param* `angle` — The rotation angle in degrees.

#### Method: Show
```lua
(method) Drawablebase:Show(show: boolean)
```
> Shows or hides the Drawablebase. Showing before the all extents and anchors are set can cause issues.
> 
> @*param* `show` — `true` to show, `false` to hide. (default: `true`)

