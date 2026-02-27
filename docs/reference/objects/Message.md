# Message
## Classes
### Class: Message
Extends [Widget](../types/Widget.md#class-widget)

> [Message](../types/Message.md#class-message)
> 
> A `Message` widget displays messages, similar to a chat log or notification
> feed. Supports adding messages with optional visibility duration,
> scrolling, styling, and item link detection.
> 
> **Dependencies**:
>  - [TextStyle](../types/TextStyle.md#class-textstyle) used for the `style` field.
> 
#### Field: style
```lua
TextStyle
```
> The default text style used for messages.

#### Method: ResetVisibleTime
```lua
(method) Message:ResetVisibleTime()
```
> Resets the visibility duration for the Message.

#### Method: ScrollDown
```lua
(method) Message:ScrollDown()
```
> Scrolls down by one line in the Message.
> ```lua
> widget:SetHandler("OnWheelDown", function(self)
>   self:ScrollDown()
> end)
> ```

#### Method: ScrollToBottom
```lua
(method) Message:ScrollToBottom()
```
> Scrolls to the bottom of the Message.

#### Method: RemoveLastMessage
```lua
(method) Message:RemoveLastMessage()
  -> remainingLines: number
```
> Removes the last message and returns the remaining number of lines.
> 
> @*return* `remainingLines` — The number of remaining lines.

#### Method: PageDown
```lua
(method) Message:PageDown()
```
> Scrolls down one page in the Message.

#### Method: PageUp
```lua
(method) Message:PageUp()
```
> Scrolls up one page in the Message.

#### Method: GetPagePerMaxLines
```lua
(method) Message:GetPagePerMaxLines()
  -> maxLinesPerPage: number
```
> Retrieves the maximum number of lines per page in the Message.
> 
> @*return* `maxLinesPerPage` — The maximum lines per page (the widgets height).

#### Method: ScrollToTop
```lua
(method) Message:ScrollToTop()
```
> Scrolls to the top of the Message.

#### Method: SetFadeDuration
```lua
(method) Message:SetFadeDuration(seconds: number)
```
> Sets the fade duration for the Message. Must be set before adding a message.
> 
> @*param* `seconds` — The fade duration in seconds.

#### Method: SetScrollPos
```lua
(method) Message:SetScrollPos(value: number)
```
> Sets the scroll position for the Message.
> 
> @*param* `value` — The scroll position value.

#### Method: ScrollUp
```lua
(method) Message:ScrollUp()
```
> Scrolls up by one line in the Message.
> ```lua
> widget:SetHandler("OnWheelUp", function(self)
>   self:ScrollUp()
> end)
> ```

#### Method: SetMaxLines
```lua
(method) Message:SetMaxLines(count: number)
```
> Sets the maximum number of lines for the Message. Uses `widget:Clear()`
> before setting the maximum line count.
> 
> @*param* `count` — The maximum line count.

#### Method: SetInset
```lua
(method) Message:SetInset(left: number, top: number, right: number, bottom: number)
```
> Sets the inset for the Message.
> 
> @*param* `left` — The left inset.
> 
> @*param* `top` — The top inset.
> 
> @*param* `right` — The right inset.
> 
> @*param* `bottom` — The bottom inset.

#### Method: SetLineSpace
```lua
(method) Message:SetLineSpace(space: number)
```
> Sets the line spacing for the Message.
> 
> @*param* `space` — The line spacing value.

#### Method: SetTimeVisible
```lua
(method) Message:SetTimeVisible(seconds: number)
```
> Sets the visibility duration for the Message.
> 
> @*param* `seconds` — The duration in seconds the message remains visible. (default: `15`)

#### Method: GetMessageLines
```lua
(method) Message:GetMessageLines()
  -> messageLineCount: number
```
> Retrieves the number of message lines in the Message.
> 
> @*return* `messageLineCount` — The number of message lines.

#### Method: GetMaxLines
```lua
(method) Message:GetMaxLines()
  -> maxLines: number
```
> Retrieves the maximum number of lines for the Message.
> 
> @*return* `maxLines` — The maximum number of lines. (default: `80`)

#### Method: ChangeDefaultStyle
```lua
(method) Message:ChangeDefaultStyle()
```
> Changes the default style for the Message.

#### Method: ChangeTextStyle
```lua
(method) Message:ChangeTextStyle()
```
> Changes the text style of the Message from aligning to the bottom of the
> widget to the top of the widget.

#### Method: AddMessageRefresh
```lua
(method) Message:AddMessageRefresh(message: string)
```
> Adds a message and refreshes the Message.
> 
> @*param* `message` — The message text to add.

#### Method: AddMessageEx
```lua
(method) Message:AddMessageEx(message: string, visibleTime: number)
```
> Adds a message with a specified visibility duration to the Message.
> 
> @*param* `message` — The message text to add.
> 
> @*param* `visibleTime` — The visibility duration in milliseconds.

#### Method: AddMessageExRefresh
```lua
(method) Message:AddMessageExRefresh(message: string, visibleTime: number)
```
> Adds a message with a specified visibility duration and refreshes the
> Message.
> 
> @*param* `message` — The message text to add.
> 
> @*param* `visibleTime` — The visibility duration in milliseconds.

#### Method: GetMessageByTimeStamp
```lua
(method) Message:GetMessageByTimeStamp(messageTimeStamp: number)
  -> message: string
```
> Retrieves the message text for a given timestamp in the Message.
> 
> @*param* `messageTimeStamp` — The timestamp of the message.
> 
> @*return* `message` — The message text.

#### Method: Clear
```lua
(method) Message:Clear()
```
> Clears all messages from the Message.

#### Method: EnableItemLink
```lua
(method) Message:EnableItemLink(enable: boolean)
```
> Enables or disables item link functionality (`Message:GetLinkInfoOnCursor`)
> for the Message.
> 
> @*param* `enable` — `true` to enable item links, `false` to disable. (default: `false`)

#### Method: GetLinkInfoOnCursor
```lua
(method) Message:GetLinkInfoOnCursor()
  -> linkInfo: BaseLinkInfo
```
> Retrieves link information for the item under the cursor in the Message.
> Requires `Message:EnableItemLink(true)`.
> 
> @*return* `linkInfo` — The link information for the item.
> 
> ```lua
> widget:EnableItemLink(true)
> widget:SetHandler("OnClick", function(self)
>   local linkInfo = self:GetLinkInfoOnCursor()
> 
>   if linkInfo.linkType == "item" then
>     @cast linkInfo ItemLinkInfo
>     local itemInfo = X2Item:InfoFromLink(linkInfo.itemLinkText, tostring(linkInfo.linkKind))
>   end
> end)
> ```

#### Method: CopyTextToClipboard
```lua
(method) Message:CopyTextToClipboard()
  -> result: boolean
```
> Checks if the text under the cursor was copied to the clipboard.
> 
> @*return* `result` — `true` if text was copied, `false` otherwise.
> 
> ```lua
> widget:SetHandler("OnClick", function(self, mouseButton)
>   if mouseButton == "RightButton" then
>     self:CopyTextToClipboard()
>   end
> end)
> ```

#### Method: GetLineSpace
```lua
(method) Message:GetLineSpace()
  -> lineSpace: number
```
> Retrieves the line spacing for the Message.
> 
> @*return* `lineSpace` — The line spacing value. (default: `0`)

#### Method: GetCurrentLine
```lua
(method) Message:GetCurrentLine()
  -> currentLine: number
```
> Retrieves the current line index of the Message.
> 
> @*return* `currentLine` — The current line index.

#### Method: GetCurrentScroll
```lua
(method) Message:GetCurrentScroll()
  -> currentScroll: number
```
> Retrieves the current scroll position of the Message.
> 
> @*return* `currentScroll` — The current scroll position (min: `0`).

#### Method: AddMessage
```lua
(method) Message:AddMessage(message: string)
```
> Adds a message to the Message. Must be used after defining the widgets
> dimensions.
> 
> @*param* `message` — The message text to add.

