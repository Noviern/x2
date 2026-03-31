# Tab
## Classes
### Class: Tab
Extends [Widget](../types/Widget.md#class-widget), [Tabbase](../types/Tabbase.md#class-tabbase)

> [Tab](../types/Tab.md#class-tab)
> 
> A `Tab` widget organizes multiple pages or windows under clickable tab
> buttons. Each tab can have a selected and unselected button state, an
> associated window, and supports automatic tab creation, alignment,
> visibility toggling, and orientation settings.
> 
> **Dependencies**:
>  - [Button](../types/Button.md#class-button) used for the `selectedButton` and `unselectedButton` fields.
>  - [Window](../types/Window.md#class-window) used for the `window` field.
> 
#### Field: window
```lua
Window[]|nil
```
> List of window widgets associated with each tab.

#### Field: selectedButton
```lua
Button[]|nil
```
> List of button widgets for the selected state of each tab.

#### Field: unselectedButton
```lua
Button[]|nil
```
> List of button widgets for the unselected state of each tab.

#### Method: SetActivateTabCount
```lua
(method) Tab:SetActivateTabCount(activateTabCount: number)
```
> Sets the number of active tabs in the Tab.
> 
> @*param* `activateTabCount` — The number of active tabs (default: `0`, max: `Tab:GetTabCount()`).

#### Method: ShowTab
```lua
(method) Tab:ShowTab(idx: number)
```
> Shows the tab at the specified index in the Tab.
> 
> @*param* `idx` — The index of the tab to show.

#### Method: SetCorner
```lua
(method) Tab:SetCorner(corner: "BOTTOMLEFT"|"BOTTOMRIGHT"|"TOPLEFT"|"TOPRIGHT")
```
> Sets the corner where tabs are placed in the Tab. Should be called before
> `Tab:AlignTabButtons()`.
> 
> @*param* `corner` — The corner to place the tabs. (default: `"TOPLEFT"`)
> 
> ```lua
> corner:
>     | "TOPLEFT"
>     | "TOPRIGHT"
>     | "BOTTOMLEFT"
>     | "BOTTOMRIGHT"
> ```

#### Method: SetVertical
```lua
(method) Tab:SetVertical(vertical: boolean)
```
> Sets the orientation of the tabs in the Tab. Should be called before
> `Tab:AlignTabButtons()`.
> 
> @*param* `vertical` — `true` for vertical orientation, `false` for horizontal. (default: `false`)

#### Method: IsHideTab
```lua
(method) Tab:IsHideTab(index: number)
  -> hideTab: boolean
```
> Checks if the tab at the specified index is hidden.
> 
> @*param* `index` — The index of the tab to check.
> 
> @*return* `hideTab` — `true` if the tab is hidden, `false` otherwise.

#### Method: GetTabCount
```lua
(method) Tab:GetTabCount()
  -> tabCount: number
```
> Retrieves the total number of tabs in the Tab.
> 
> @*return* `tabCount` — The total number of tabs.

#### Method: AddSimpleTab
```lua
(method) Tab:AddSimpleTab(tabName: string)
```
> Adds a simple tab with the specified name to the Tab, automatically creating
> `selectedButton`, `unselectedButton`, and `window` widgets stored as
> `widget.selectedButton[i]`, `widget.unselectedButton[i]`, and
> `widget.window[i]`. Handles all events necessary for tab switching.
> 
> @*param* `tabName` — The name of the tab.

#### Method: HideTab
```lua
(method) Tab:HideTab(idx: number)
```
> Hides the tab at the specified index in the Tab.
> 
> @*param* `idx` — The index of the tab to hide. (min: `1`)

#### Method: AlignTabButtons
```lua
(method) Tab:AlignTabButtons()
```
> Aligns the tab buttons in the Tab. Should be called after all tabs have been
> created and their extents set.

#### Method: GetActivateTabCount
```lua
(method) Tab:GetActivateTabCount()
  -> activateTabCount: number
```
> Retrieves the number of active tabs in the Tab.
> 
> @*return* `activateTabCount` — The number of active tabs.

#### Method: AddNewTab
```lua
(method) Tab:AddNewTab(tabName: string, selectedButtonWidget: Button, unselectedButtonWidget: Button, windowWidget: Window)
```
> Adds a new tab to the Tab with specified button and window widgets.
> 
> @*param* `tabName` — The name of the tab.
> 
> @*param* `selectedButtonWidget` — The button widget for the selected state.
> 
> @*param* `unselectedButtonWidget` — The button widget for the unselected state.
> 
> @*param* `windowWidget` — The window widget associated with the tab.
> 
> ```lua
> local selectedButton = UIParent:CreateWidget("button", "tab2selectedButton", "UIParent")
> local unselectedButton = UIParent:CreateWidget("button", "tab2unselectedButton", "UIParent")
> local window = UIParent:CreateWidget("window", "tab2window", "UIParent")
> widget:AddNewTab("Tab 2", selectedButton, unselectedButton, window)
> ```

