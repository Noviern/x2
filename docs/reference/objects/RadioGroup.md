# RadioGroup
## Classes
### Class: RadioGroup
Extends [Widget](../types/Widget.md#class-widget)

> [RadioGroup](../types/RadioGroup.md#class-radiogroup)
> 
> A `RadioGroup` widget manages a group of radio items, allowing a single
> selection from multiple options. Each radio item can store a custom data
> value, and the group provides functions to query, update, and manage these
> items.
> 
> **Dependencies**:
>  - [EmptyWidget](../types/EmptyWidget.md#class-emptywidget) used for the `frame` field.
>  - [CheckButton](../types/CheckButton.md#class-checkbutton) used for the `frame.check` field.
> 
#### Field: frame
```lua
RadioItem[]|nil
```
> The internal list of radio items. Typically populated when radio items are created with `RadioGroup:CreateRadioItem`.

#### Method: GetSize
```lua
(method) RadioGroup:GetSize()
  -> size: number
```
> Retrieves the total number of radio items in the RadioGroup.
> 
> @*return* `size` — The number of radio items. (default: `0`)

#### Method: GetIndexByValue
```lua
(method) RadioGroup:GetIndexByValue(dataValue: number)
  -> index: number
```
> Retrieves the index of the radio item with the specified data value.
> 
> @*param* `dataValue` — The data value to search for.
> 
> @*return* `index` — The index of the radio item, or `-1` if the data value doesn't exist.

#### Method: IsInRange
```lua
(method) RadioGroup:IsInRange(index: number)
  -> inRange: boolean
```
> Checks if the specified index is within the valid range of the RadioGroup.
> 
> @*param* `index` — The index to check.
> 
> @*return* `inRange` — `true` if the index is in range, `false` otherwise.

#### Method: ShowIndex
```lua
(method) RadioGroup:ShowIndex(index: number, show: boolean)
```
> Shows or hides the radio item at the specified index in the RadioGroup.
> 
> @*param* `index` — The index of the radio item.
> 
> @*param* `show` — `true` to show the item, `false` to hide it. (default: `true`)

#### Method: ReleaseCheck
```lua
(method) RadioGroup:ReleaseCheck()
```
> Releases the check state on all radio items in the RadioGroup.

#### Method: UpdateValue
```lua
(method) RadioGroup:UpdateValue(index: number, data: number)
```
> Updates the data value at the specified index in the RadioGroup.
> 
> @*param* `index` — The index of the radio item.
> 
> @*param* `data` — The new data value to set.

#### Method: GetDataValue
```lua
(method) RadioGroup:GetDataValue(index: number)
  -> dataValue: number|nil
```
> Retrieves the data value for the specified index in the RadioGroup.
> 
> @*param* `index` — The index of the radio item.
> 
> @*return* `dataValue` — The data value at the index, or `nil` if the index doesn't exist.

#### Method: GetChecked
```lua
(method) RadioGroup:GetChecked()
  -> checked: number
```
> Retrieves the number of checked radio items in the RadioGroup.
> 
> @*return* `checked` — The count of checked radio items. (default: `-1`)

#### Method: Clear
```lua
(method) RadioGroup:Clear()
```
> Clears all radio data from the RadioGroup.

#### Method: GetCheckedData
```lua
(method) RadioGroup:GetCheckedData()
  -> checkedData: number|nil
```
> Retrieves the data value of the currently checked radio item.
> 
> @*return* `checkedData` — The data value of the checked item, or `nil` if none are checked.

#### Method: CreateRadioItem
```lua
(method) RadioGroup:CreateRadioItem(dataValue: number)
  -> radioItem: RadioItem
```
> Creates and returns a radio item with the specified data value.
> 
> @*param* `dataValue` — The data value for the radio item.
> 
> @*return* `radioItem` — The created radio item.

#### Method: EnableIndex
```lua
(method) RadioGroup:EnableIndex(index: number, enable: boolean)
```
> Enables or disables checking for the radio item at the specified index.
> 
> @*param* `index` — The index of the radio item.
> 
> @*param* `enable` — `true` to enable checking, `false` to disable.

#### Method: Check
```lua
(method) RadioGroup:Check(index: number)
```
> Checks the radio item at the specified index in the RadioGroup.
> 
> @*param* `index` — The index of the radio item to check.

