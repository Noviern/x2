# Combobox
## Classes
### Class: Combobox
Extends [Widget](../types/Widget.md#class-widget)

> [Combobox](../types/Combobox.md#class-combobox)
> 
> A `Combobox` widget is a dropdown selection control that can be editable
> with autocomplete filters or read-only with predefined dropdown list. Usually
> consists of a editbox (or selector button) + toggle button + dropdown list.
> 
> **Dependencies**:
>  - [Button](../types/Button.md#class-button) used for the dropdown `downBtn`, `selectorBtn`, and `toggle` fields.
>  - [Listbox](../types/Listbox.md#class-listbox) used for the `dropdown` field.
>  - [Slider](../types/Slider.md#class-slider) used for the dropdown `vslider` field.
>  - [X2Editbox](../types/X2Editbox.md#class-x2editbox) used for the selector field.
> 
#### Field: toggle
```lua
Button
```
> Dropdown open/close button

#### Field: dropdown
```lua
ComboboxDropDown
```
> The dropdown for the Combobox.

#### Field: selector
```lua
X2Editbox
```
> The input exitbox if the Combobox is editable.

#### Field: selectorBtn
```lua
Button
```
> The input button if the Combobox is not editable.

#### Method: SetEditable
```lua
(method) Combobox:SetEditable(editable: boolean)
```
> Enables or disables editability of the Combobox. If set to `false` any guide
> text set to `Combobox.selector` will not render.
> 
> @*param* `editable` — `true` to allow editing, `false` to disable. (default: `false`)

#### Method: SetAutocomplete
```lua
(method) Combobox:SetAutocomplete(type: string, filter: string)
```
> Sets the autocomplete type and filter for the Combobox.
> 
> @*param* `type` — The autocomplete type.
> 
> @*param* `filter` — The autocomplete filter.

#### Method: SetDropdownVisibleLimit
```lua
(method) Combobox:SetDropdownVisibleLimit(limit: number)
```
> Sets the maximum number of visible items in the Combobox dropdown.
> 
> @*param* `limit` — The maximum number of visible items (min: `0`, max: `10`). (default: `10`)

#### Method: PauseAutocomplete
```lua
(method) Combobox:PauseAutocomplete(pause: boolean)
```
> Pauses or unpauses autocomplete functionality for the Combobox.
> 
> @*param* `pause` — `true` to pause autocomplete, `false` to unpause.

#### Method: Insert
```lua
(method) Combobox:Insert(datas: ItemTree[])
```
> Inserts data into the Combobox dropdown if `Combobox:SetEditable(false)`.
> 
> @*param* `datas` — The data to insert for autocomplete.
> 
> See: [ItemTree](../types/classes.md#class-itemtree)

### Class: ComboboxDropDown
Extends [Listbox](../types/Listbox.md#class-listbox)

#### Field: downBtn
```lua
Button
```
> [Button](lua://Button)
> 
> A `Button` widget is clickable and responds to mouse interaction with four
> visual states: normal, highlighted (hover), pushed (pressed), and disabled.
> Supports per-state custom backgrounds, tint colors, text coloring,
> auto-resize, content insets, and per-mouse-button click registration.
> 
> **Dependencies**:
>  - [TextStyle](lua://TextStyle) used for the `style` field.
>  - [EffectDrawable](lua://EffectDrawable) used for getting the background state drawable.
>  - [ImageDrawable](lua://ImageDrawable) used for getting the background state drawable.
>  - [NinePartDrawable](lua://NinePartDrawable) used for getting the background state drawable.
>  - [ThreePartDrawable](lua://ThreePartDrawable) used for getting the background state drawable.
> 

#### Field: upBtn
```lua
Button
```
> [Button](lua://Button)
> 
> A `Button` widget is clickable and responds to mouse interaction with four
> visual states: normal, highlighted (hover), pushed (pressed), and disabled.
> Supports per-state custom backgrounds, tint colors, text coloring,
> auto-resize, content insets, and per-mouse-button click registration.
> 
> **Dependencies**:
>  - [TextStyle](lua://TextStyle) used for the `style` field.
>  - [EffectDrawable](lua://EffectDrawable) used for getting the background state drawable.
>  - [ImageDrawable](lua://ImageDrawable) used for getting the background state drawable.
>  - [NinePartDrawable](lua://NinePartDrawable) used for getting the background state drawable.
>  - [ThreePartDrawable](lua://ThreePartDrawable) used for getting the background state drawable.
> 

#### Field: vslider
```lua
Vslider
```


### Class: Vslider
Extends [Slider](../types/Slider.md#class-slider)

#### Field: thumb
```lua
Button
```
> [Button](lua://Button)
> 
> A `Button` widget is clickable and responds to mouse interaction with four
> visual states: normal, highlighted (hover), pushed (pressed), and disabled.
> Supports per-state custom backgrounds, tint colors, text coloring,
> auto-resize, content insets, and per-mouse-button click registration.
> 
> **Dependencies**:
>  - [TextStyle](lua://TextStyle) used for the `style` field.
>  - [EffectDrawable](lua://EffectDrawable) used for getting the background state drawable.
>  - [ImageDrawable](lua://ImageDrawable) used for getting the background state drawable.
>  - [NinePartDrawable](lua://NinePartDrawable) used for getting the background state drawable.
>  - [ThreePartDrawable](lua://ThreePartDrawable) used for getting the background state drawable.
> 

