# CheckButton
## Globals
**UI_BUTTON_DISABLED**

`integer`

**UI_BUTTON_HIGHLIGHTED**

`integer`

**UI_BUTTON_MAX**

`integer`

**UI_BUTTON_NORMAL**

`integer`

**UI_BUTTON_PUSHED**

`integer`

## Classes
### Class: CheckButton
Extends [Button](../types/Button.md#class-button)

> [CheckButton](../types/CheckButton.md#class-checkbutton)
> 
> A `CheckButton` widget is a small clickable widget that represents a binary
> on/off or true/false setting or option. It inherits from Button and supports
> the same four visual states: normal, highlighted (hover), pushed (pressed),
> and disabled. Adds checked/unchecked state management with separate
> background drawables for checked and disabled-checked states. Can trigger
> the widget `"OnCheckChanged"` action.
> 
> **Dependencies**:
>  - [TextStyle](../types/TextStyle.md#class-textstyle) used for the `style` field.
> 
#### Method: GetChecked
```lua
(method) CheckButton:GetChecked()
  -> checked: boolean
```
> Returns a boolean indicating the state of the CheckButton.
> 
> @*return* `checked` — `true` if the CheckButton is checked, `false` otherwise. (default: `false`)

#### Method: SetCheckedBackground
```lua
(method) CheckButton:SetCheckedBackground(checkedTable: DrawableDDS)
```
> Sets the background for the checked state of the CheckButton.
> 
> @*param* `checkedTable` — The table defining the checked state background.
> 
> See: [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)

#### Method: SetChecked
```lua
(method) CheckButton:SetChecked(state: boolean, trigger: boolean|nil)
```
> Sets the state of the CheckButton.
> 
> @*param* `state` — `true` to check the CheckButton, `false` to uncheck. (default: `false`)
> 
> @*param* `trigger` — `true` to trigger the `"OnCheckChanged"` action, `false` to do nothing. (default: `false`)

#### Method: SetDisabledCheckedBackground
```lua
(method) CheckButton:SetDisabledCheckedBackground(disabledCheckedTable: DrawableDDS)
```
> Sets the background for the disabled checked state of the CheckButton.
> 
> @*param* `disabledCheckedTable` — The table defining the disabled checked state background.
> 
> See: [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)

