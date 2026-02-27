# Slider
## Classes
### Class: Slider
Extends [Widget](../types/Widget.md#class-widget)

> [Slider](../types/Slider.md#class-slider)
> 
> **Warning**: If `Slider:SetThumbButtonWidget` is not set, attempting to
> mouse over the slider may crash the game.
> 
> A `Slider` widget selects a numeric value within a specified range. Supports
> horizontal and vertical orientations, configurable min/max values, value
> steps, and a thumb button widget.
> 
> **Dependencies**:
>  - [Button](../types/Button.md#class-button) used for the methods `SetThumbButtonWidget`, `GetThumbButtonWidget`, and `GetThumbDrawable`.
> 
#### Method: Down
```lua
(method) Slider:Down(step: number)
```
> Moves the slider down for vertical orientation or right for horizontal
> orientation.
> 
> @*param* `step` — The amount to move the slider.

#### Method: SetOrientation
```lua
(method) Slider:SetOrientation(scrollType: `0`|`1`)
```
> Sets the orientation of the Slider.
> 
> @*param* `scrollType` — The orientation type (default: `0`).
> 
> ```lua
> scrollType:
>     | `0` -- VERTICAL
>     | `1` -- HORIZONTAL
> ```

#### Method: SetMinThumbLength
```lua
(method) Slider:SetMinThumbLength(length: number)
```
> Sets the minimum length of the thumb for the Slider.
> 
> @*param* `length` — The minimum thumb length. (default: `40`)

#### Method: SetMinMaxValues
```lua
(method) Slider:SetMinMaxValues(min: number, max: number)
```
> Sets the minimum and maximum values for the Slider.
> 
> @*param* `min` — The minimum value.
> 
> @*param* `max` — The maximum value.

#### Method: SetPageStep
```lua
(method) Slider:SetPageStep(pageStep: number)
```
> Sets the step value for clicking within the Slider.
> 
> @*param* `pageStep` — The step value for page navigation.

#### Method: SetValue
```lua
(method) Slider:SetValue(value: number, triggerEvent: boolean)
```
> Sets the value of the Slider with optional event triggering. Should be used
> after `Slider:SetMinMaxValues`.
> 
> @*param* `value` — The value to set. (default: `0`)
> 
> @*param* `triggerEvent` — `true` to trigger them `"OnSliderChanged"` event, `false` otherwise. (default: `false`)

#### Method: SetThumbButtonWidget
```lua
(method) Slider:SetThumbButtonWidget(buttonWidget: Button)
```
> Sets the thumb button widget for the Slider.
> 
> @*param* `buttonWidget` — The button widget to use as the thumb.
> 
> See: [Button](../objects/Button.md#class-button)

#### Method: SetValueStep
```lua
(method) Slider:SetValueStep(value: number)
```
> Sets the step value for dragging the Slider.
> 
> @*param* `value` — The step value for dragging. (default: `1`)

#### Method: SetInset
```lua
(method) Slider:SetInset(inset: number)
```
> Sets the inset for the Slider.
> 
> @*param* `inset` — The inset value (default: `0`).

#### Method: GetValueStep
```lua
(method) Slider:GetValueStep()
  -> valueStep: number
```
> Retrieves the value step of the Slider.
> 
> @*return* `valueStep` — The value step (default: `1`).

#### Method: GetOrientation
```lua
(method) Slider:GetOrientation()
  -> orientation: `0`|`1`
```
> Retrieves the orientation of the Slider.
> 
> @*return* `orientation` — The orientation of the Slider (default: `0`).
> 
> ```lua
> orientation:
>     | `0` -- VERTICAL
>     | `1` -- HORIZONTAL
> ```

#### Method: GetMinMaxValues
```lua
(method) Slider:GetMinMaxValues()
  -> minValue: number
  2. maxValue: number
```
> Retrieves the minimum and maximum values of the Slider.
> 
> @*return* `minValue` — The minimum value (default: `0`).
> 
> @*return* `maxValue` — The maximum value (default: `10`).

#### Method: SetFixedThumb
```lua
(method) Slider:SetFixedThumb(bool: boolean)
```
> Sets whether the thumb size is fixed for the Slider.
> 
> @*param* `bool` — `true` to fix the thumb size, `false` to allow resizing.

#### Method: GetThumbButtonWidget
```lua
(method) Slider:GetThumbButtonWidget()
  -> thumbButtonWidget: Button|nil
```
> Retrieves the thumb button widget of the Slider.
> 
> @*return* `thumbButtonWidget` — The thumb button widget, or `nil` if not set.
> 
> See: [Button](../objects/Button.md#class-button)

#### Method: GetValue
```lua
(method) Slider:GetValue()
  -> value: number
```
> Retrieves the current value of the Slider.
> 
> @*return* `value` — The current value (default: `0`).

#### Method: GetThumbDrawable
```lua
(method) Slider:GetThumbDrawable()
  -> thumbDrawable: Button|nil
```
> Retrieves the thumb drawable of the Slider.
> 
> @*return* `thumbDrawable` — The thumb drawable, or `nil` if not set.
> 
> See: [Button](../objects/Button.md#class-button)

#### Method: Up
```lua
(method) Slider:Up(step: number)
```
> Moves the slider up for vertical orientation or left for horizontal
> orientation.
> 
> @*param* `step` — The amount to move the slider.

