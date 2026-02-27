# ChatWindow
## Classes
### Class: ChatWindow
Extends [Widget](../types/Widget.md#class-widget), [Tabbase](../types/Tabbase.md#class-tabbase)

> [ChatWindow](../types/ChatWindow.md#class-chatwindow)
> 
> **Warning:** Most methods for this class are broken.
> 
> A `ChatWindow` widget is a multi-tabbed chat display and input system - the
> main UI component for viewing, organizing, and sending chat messages in the
> game. It inherits tab-management from Tabbase and provides multiple tabs,
> input edit box, channel/method selector, add-tab button, URL opener, IME
> toggle, caret visuals, notification indicators, blinking, locking, sliding
> tab drag support, and customizable tab area sizing/insets/alpha.
> 
> **Dependencies**:
>  - [ImageDrawable](../types/ImageDrawable.md#class-imagedrawable) used for the `GetCaretDrawable` method.
>  - [ThreePartDrawable](../types/ThreePartDrawable.md#class-threepartdrawable) used for the `GetLeftLineDrawable` method.
> 
#### Method: AddTab
```lua
(method) ChatWindow:AddTab(tabName: string, widget?: Widget)
```
> Adds a new tab to the ChatWindow with the specified name and optional widget.
> 
> @*param* `tabName` — The name of the tab.
> 
> @*param* `widget` — The optional widget to associate with the tab.
> 
> ```lua
> local textbox = UIParent:CreateWidget("textbox", "exampleTextbox", "UIParent")
> textbox:SetText("Test")
> widget:AddTab("Test", textbox)
> ```
> See: [Widget](../types/Widget.md#class-widget)

#### Method: SetNotifyBlinkingFreq
```lua
(method) ChatWindow:SetNotifyBlinkingFreq(freq: number)
```
> Sets the notification blinking frequency for the ChatWindow.
> 
> @*param* `freq` — The blinking frequency in milliseconds.

#### Method: SetRightLineOffset
```lua
(method) ChatWindow:SetRightLineOffset(offset: number)
```
> Sets the offset for the right line in the ChatWindow.
> 
> @*param* `offset` — The offset value.

#### Method: SetMinTabWidth
```lua
(method) ChatWindow:SetMinTabWidth(width: number)
```
> Sets the minimum tab width for the ChatWindow.
> 
> @*param* `width` — The minimum tab width.

#### Method: SetLeftLineOffset
```lua
(method) ChatWindow:SetLeftLineOffset(offset: number)
```
> Sets the offset for the left line in the ChatWindow.
> 
> @*param* `offset` — The offset value.

#### Method: SetMaxNotifyTime
```lua
(method) ChatWindow:SetMaxNotifyTime(time: number)
```
> Sets the maximum notification time for the ChatWindow.
> 
> @*param* `time` — The maximum notification time in milliseconds.

#### Method: SetInjectable
```lua
(method) ChatWindow:SetInjectable(injectable: boolean)
```
> Sets whether the ChatWindow is injectable.
> 
> @*param* `injectable` — `true` to enable injectable mode, `false` to disable.

#### Method: SetSlideTimeInDragging
```lua
(method) ChatWindow:SetSlideTimeInDragging(time: number)
```
> Sets the slide time for tab dragging in the ChatWindow.
> 
> @*param* `time` — The slide time in milliseconds.

#### Method: SetTabAreaInset
```lua
(method) ChatWindow:SetTabAreaInset(left: number, top: number, right: number, bottom: number)
```
> Sets the inset for the tab area in the ChatWindow.
> 
> @*param* `left` — The left inset.
> 
> @*param* `top` — The top inset.
> 
> @*param* `right` — The right inset.
> 
> @*param* `bottom` — The bottom inset.

#### Method: UseAddTabButton
```lua
(method) ChatWindow:UseAddTabButton(use: boolean)
```
> Enables or disables the add tab button in the ChatWindow.
> 
> @*param* `use` — `true` to enable the add tab button, `false` to disable. (default: `true`)

#### Method: SetTabAreaHeight
```lua
(method) ChatWindow:SetTabAreaHeight(height: number)
```
> Sets the height of the tab area in the ChatWindow.
> 
> @*param* `height` — The height of the tab area.

#### Method: SetTabWidth
```lua
(method) ChatWindow:SetTabWidth(width: number)
```
> Sets the tab width for the ChatWindow.
> 
> @*param* `width` — The tab width.

#### Method: SetTabButtonAlpha
```lua
(method) ChatWindow:SetTabButtonAlpha(selectedAlpha: number, unselectedAlpha: number)
```
> Sets the alpha transparency for selected and unselected tab buttons.
> 
> @*param* `selectedAlpha` — The alpha for selected tabs. (min: `0`, max: `1`)
> 
> @*param* `unselectedAlpha` — The alpha for unselected tabs. (min: `0`, max: `1`)

#### Method: UseAutoResizingTabButtonMode
```lua
(method) ChatWindow:UseAutoResizingTabButtonMode(offset: boolean)
```
> Enables or disables auto-resizing tab button mode in the ChatWindow.
> 
> @*param* `offset` — `true` to enable auto-resizing, `false` to disable. (default: `false`)

#### Method: SetContentOffset
```lua
(method) ChatWindow:SetContentOffset(topLeftXOffset: number, topLeftYOffset: number, bottomRightXOffset: number, bottomRightYOffset: number)
```
> Sets the content offset for the ChatWindow.
> 
> @*param* `topLeftXOffset` — The x-offset for the top-left corner.
> 
> @*param* `topLeftYOffset` — The y-offset for the top-left corner.
> 
> @*param* `bottomRightXOffset` — The x-offset for the bottom-right corner.
> 
> @*param* `bottomRightYOffset` — The y-offset for the bottom-right corner.

#### Method: SetCaretOffset
```lua
(method) ChatWindow:SetCaretOffset(x: number, y: number)
```
> Sets the offset for the caret in the ChatWindow.
> 
> @*param* `x` — The x-offset.
> 
> @*param* `y` — The y-offset.

#### Method: GetCaretDrawable
```lua
(method) ChatWindow:GetCaretDrawable()
  -> caretDrawable: ImageDrawable
```
> Retrieves the caret drawable for the ChatWindow.
> 
> @*return* `caretDrawable` — The caret drawable, empty table if the object `ImageDrawable` hasn't been imported, or `nil` if not set.

#### Method: GetChatEdit
```lua
(method) ChatWindow:GetChatEdit()
  -> chatEdit: ChatWindow
```
> Retrieves the chat edit widget for the ChatWindow.
> 
> @*return* `chatEdit` — The chat edit widget.

#### Method: GetAddButton
```lua
(method) ChatWindow:GetAddButton()
  -> addButton: ChatWindow
```
> Retrieves the add button for the ChatWindow.
> 
> @*return* `addButton` — The add button.

#### Method: AllowTabSwitch
```lua
(method) ChatWindow:AllowTabSwitch(allow: boolean)
```
> Enables or disables tab switching in the ChatWindow.
> 
> @*param* `allow` — `true` to allow tab switching, `false` to disable.

#### Method: SetChatWindowId
```lua
(method) ChatWindow:SetChatWindowId(id: number)
```
> Sets the ID for the ChatWindow.
> 
> @*param* `id` — The chat window ID. (min: `0`)

#### Method: GetChatMethodSelector
```lua
(method) ChatWindow:GetChatMethodSelector()
  -> chatMethodSelector: ChatWindow
```
> Retrieves the chat method selector for the ChatWindow.
> 
> @*return* `chatMethodSelector` — The chat method selector.

#### Method: GetLeftLineDrawable
```lua
(method) ChatWindow:GetLeftLineDrawable()
  -> leftLineDrawable: ThreePartDrawable
```
> Retrieves the left line drawable for the ChatWindow.
> 
> @*return* `leftLineDrawable` — The left line drawable.
> 
> See: [ThreePartDrawable](../objects/ThreePartDrawable.md#class-threepartdrawable)

#### Method: GetUrlButton
```lua
(method) ChatWindow:GetUrlButton()
  -> urlButton: ChatWindow
```
> Retrieves the URL button for the ChatWindow.
> 
> @*return* `urlButton` — The URL button.

#### Method: GetImeToggleButton
```lua
(method) ChatWindow:GetImeToggleButton()
  -> imeToggleButton: ChatWindow
```
> Retrieves the IME toggle button for the ChatWindow.
> 
> @*return* `imeToggleButton` — The IME toggle button.

#### Method: GetRightLineDrawable
```lua
(method) ChatWindow:GetRightLineDrawable()
  -> rightLineDrawable: ThreePartDrawable
```
> Retrieves the right line drawable for the ChatWindow.
> 
> @*return* `rightLineDrawable` — The right line drawable.
> 
> See: [ThreePartDrawable](../objects/ThreePartDrawable.md#class-threepartdrawable)

#### Method: GetLockNotifyDrawable
```lua
(method) ChatWindow:GetLockNotifyDrawable()
  -> lockNotifyDrawable: ImageDrawable
```
> Retrieves the lock notification drawable for the ChatWindow.
> 
> @*return* `lockNotifyDrawable` — The lock notification drawable, empty table if the object `ImageDrawable` hasn't been imported, or `nil` if not set.
> 
> See: [ImageDrawable](../objects/ImageDrawable.md#class-imagedrawable)

#### Method: UseSlidingButton
```lua
(method) ChatWindow:UseSlidingButton(use: boolean)
```
> Enables or disables sliding button functionality in the ChatWindow.
> 
> @*param* `use` — `true` to enable sliding buttons, `false` to disable.

