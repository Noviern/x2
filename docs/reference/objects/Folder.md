# Folder
## Classes
### Class: Folder
Extends [Widget](../types/Widget.md#class-widget)

> [Folder](../types/Folder.md#class-folder)
> 
> A `Folder` widget is a collapsible container that can expand or hide its
> child widget. It supports a configurable title (text or button), dedicated
> open/close buttons, adjustable extension length, animation settings, and
> custom insets.
> 
> **Dependencies**:
>  - [TextStyle](../types/TextStyle.md#class-textstyle) used for the `style` field.
> 
#### Field: style
```lua
TextStyle
```
> The text style applied to the folder's title text.

#### Method: SetOpenStateButton
```lua
(method) Folder:SetOpenStateButton(openTable: Button)
```
> Sets the button to show in the `"open"` state, requiring an OnClick event to
> call `Folder:CloseFolder()`.
> 
> @*param* `openTable` — The button for the `"open"` state.
> 
> ```lua
> local closeBtn = widget:CreateChildWidget("button", "closeBtn", 0, true)
> closeBtn:AddAnchor("TOPLEFT", widget, 0, 7)
> closeBtn:SetStyle("grid_folder_down_arrow")
> 
> function closeBtn:OnClick()
>   self:GetParent():ToggleState()
> end
> 
> widget:SetOpenStateButton(closeBtn)
> ```

#### Method: SetInset
```lua
(method) Folder:SetInset(left: number, top: number, right: number, bottom: number)
```
> Sets the inset for the Folder.
> 
> @*param* `left` — The left inset.
> 
> @*param* `top` — The top inset.
> 
> @*param* `right` — The right inset.
> 
> @*param* `bottom` — The bottom inset.

#### Method: SetExtendLength
```lua
(method) Folder:SetExtendLength(height: number)
```
> Sets the extend length height for the Folder.
> 
> @*param* `height` — The height to set for the extend length.

#### Method: SetTitleButtonWidget
```lua
(method) Folder:SetTitleButtonWidget(titleTable: Button)
```
> Sets the title button widget for the Folder. This will override
> `Folder:SetTitleText` and you will need to create your own `"OnClick"` event.
> 
> @*param* `titleTable` — The button widget for the title.

#### Method: SetTitleText
```lua
(method) Folder:SetTitleText(text: string)
```
> Sets the title text for the Folder.
> 
> @*param* `text` — The title text to set.

#### Method: SetTitleHeight
```lua
(method) Folder:SetTitleHeight(height: number)
```
> Sets the title height for the Folder and overrides the height of the widget.
> 
> @*param* `height` — The height of the title.

#### Method: ToggleState
```lua
(method) Folder:ToggleState()
```
> Toggles the state of the Folder between `"open"` and `"close"`.

#### Method: UseAnimation
```lua
(method) Folder:UseAnimation(useAnimation: boolean)
```
> Enables or disables animation for the Folder.
> 
> @*param* `useAnimation` — `true` to enable animation, `false` to disable. (default: `false`)

#### Method: SetCloseStateButton
```lua
(method) Folder:SetCloseStateButton(closeTable: Button)
```
> Sets the button to show in the `"close"` state, requiring an OnClick event
> to call `Folder:OpenFolder()`.
> 
> @*param* `closeTable` — The button for the `"close"` state.
> 
> ```lua
> local openBtn = widget:CreateChildWidget("button", "openBtn", 0, true)
> openBtn:AddAnchor("TOPLEFT", widget, 0, 5)
> openBtn:SetStyle("grid_folder_right_arrow")
> 
> function openBtn:OnClick()
>   self:GetParent():ToggleState()
> end
> 
> openBtn:SetHandler("OnClick", openBtn.OnClick)
> 
> widget:SetCloseStateButton(openBtn)
> ```

#### Method: SetAnimateStep
```lua
(method) Folder:SetAnimateStep(speed: number)
```
> Sets the animation step height for the Folder.
> 
> @*param* `speed` — The speed for the animation step. (default: `.5`)

#### Method: GetExtendLength
```lua
(method) Folder:GetExtendLength()
  -> extendLength: number
```
> Retrieves the extend length of the Folder.
> 
> @*return* `extendLength` — The extend length (default: `200`).

#### Method: FixedCloseFolder
```lua
(method) Folder:FixedCloseFolder()
```
> Performs a fixed close operation on the Folder.

#### Method: SetChildWidget
```lua
(method) Folder:SetChildWidget(childTable: Widget)
```
> Sets the child widget table for the Folder.
> 
> @*param* `childTable` — The table containing child widgets.
> 
> ```lua
> local details = widget:CreateChildWidget("textbox", "details", 0, true)
> details.style:SetAlign(ALIGN_TOP_LEFT)
> details:SetText("The first ArcheAge Private Server")
> 
> widget:SetChildWidget(details)
> ```

#### Method: GetState
```lua
(method) Folder:GetState()
  -> state: "close"|"open"
```
> Retrieves the current state of the Folder.
> 
> @*return* `state` — The state of the Folder. (default: `"close"`)
> 
> ```lua
> state:
>     | "close"
>     | "open"
> ```

#### Method: OpenFolder
```lua
(method) Folder:OpenFolder()
```
> Opens the Folder away from the anchor point.

#### Method: GetTitleText
```lua
(method) Folder:GetTitleText()
  -> titleText: string
```
> Retrieves the title text of the Folder.
> 
> @*return* `titleText` — The title text.

#### Method: CloseFolder
```lua
(method) Folder:CloseFolder()
```
> Closes the Folder towards the anchor point.

