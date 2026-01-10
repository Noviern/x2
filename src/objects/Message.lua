---@meta _

---objects/Message
---@class Message: Widget
---@field style TextStyle
local Message = {}

---objects/Message
---@class message: Message

---Adds a message to the Message. Must be used after defining the widgets
---dimensions.
---@param message string The message text to add.
function Message:AddMessage(message) end

---Adds a message with a specified visibility duration to the Message.
---@param message string The message text to add.
---@param visibleTime number The visibility duration in milliseconds.
function Message:AddMessageEx(message, visibleTime) end

---Adds a message with a specified visibility duration and refreshes the
---Message.
---@param message string The message text to add.
---@param visibleTime number The visibility duration in milliseconds.
function Message:AddMessageExRefresh(message, visibleTime) end

---Adds a message and refreshes the Message.
---@param message string The message text to add.
function Message:AddMessageRefresh(message) end

---Changes the default style for the Message.
function Message:ChangeDefaultStyle() end

---Changes the text style of the Message from aligning to the bottom of the
---widget to the top of the widget.
function Message:ChangeTextStyle() end

---Clears all messages from the Message.
function Message:Clear() end

---Checks if the text under the cursor was copied to the clipboard.
---@return boolean result `true` if text was copied, `false` otherwise.
---@nodiscard
---@usage
---```lua
---widget:SetHandler("OnClick", function(self, mouseButton)
---  if mouseButton == "RightButton" then
---    self:CopyTextToClipboard()
---  end
---end)
---```
function Message:CopyTextToClipboard() end

---Enables or disables item link functionality (`Message:GetLinkInfoOnCursor`)
---for the Message.
---@param enable boolean `true` to enable item links, `false` to disable. (default: `false`)
function Message:EnableItemLink(enable) end

---Retrieves the current line index of the Message.
---@return number currentLine The current line index.
---@nodiscard
function Message:GetCurrentLine() end

---Retrieves the current scroll position of the Message.
---@return number currentScroll The current scroll position (min: `0`).
---@nodiscard
function Message:GetCurrentScroll() end

---Retrieves the line spacing for the Message.
---@return number lineSpace The line spacing value. (default: `0`)
---@nodiscard
function Message:GetLineSpace() end

---Retrieves link information for the item under the cursor in the Message.
---Requires `Message:EnableItemLink(true)`.
---@return BaseLinkInfo linkInfo The link information for the item.
---@nodiscard
---@usage
---```lua
---widget:EnableItemLink(true)
---widget:SetHandler("OnClick", function(self)
---  local linkInfo = self:GetLinkInfoOnCursor()
---
---  if linkInfo.linkType == "item" then
---    ---@cast linkInfo ItemLinkInfo
---    local itemInfo = X2Item:InfoFromLink(linkInfo.itemLinkText, tostring(linkInfo.linkKind))
---  end
---end)
---```
function Message:GetLinkInfoOnCursor() end

---Retrieves the maximum number of lines for the Message.
---@return number maxLines The maximum number of lines. (default: `80`)
---@nodiscard
function Message:GetMaxLines() end

---@TODO: havent found a way to get a messageTimeStamp to test this, this could also have a param named chatType
---Retrieves the message text for a given timestamp in the Message.
---@param messageTimeStamp number The timestamp of the message.
---@return string message The message text.
---@nodiscard
function Message:GetMessageByTimeStamp(messageTimeStamp) end

---Retrieves the number of message lines in the Message.
---@return number messageLineCount The number of message lines.
---@nodiscard
function Message:GetMessageLines() end

---Retrieves the maximum number of lines per page in the Message.
---@return number maxLinesPerPage The maximum lines per page (the widgets height).
---@nodiscard
function Message:GetPagePerMaxLines() end

---Scrolls down one page in the Message.
function Message:PageDown() end

---Scrolls up one page in the Message.
function Message:PageUp() end

---Removes the last message and returns the remaining number of lines.
---@return number remainingLines The number of remaining lines.
---@nodiscard
function Message:RemoveLastMessage() end

---Resets the visibility duration for the Message.
function Message:ResetVisibleTime() end

---Scrolls down by one line in the Message.
---@usage
---```lua
---widget:SetHandler("OnWheelDown", function(self)
---  self:ScrollDown()
---end)
---```
function Message:ScrollDown() end

---Scrolls to the bottom of the Message.
function Message:ScrollToBottom() end

---Scrolls to the top of the Message.
function Message:ScrollToTop() end

---Scrolls up by one line in the Message.
---@usage
---```lua
---widget:SetHandler("OnWheelUp", function(self)
---  self:ScrollUp()
---end)
---```
function Message:ScrollUp() end

---Sets the fade duration for the Message. Must be set before adding a message.
---@param seconds number The fade duration in seconds.
function Message:SetFadeDuration(seconds) end

---Sets the inset for the Message.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
function Message:SetInset(left, top, right, bottom) end

---Sets the line spacing for the Message.
---@param space number The line spacing value.
function Message:SetLineSpace(space) end

---Sets the maximum number of lines for the Message. Uses `widget:Clear()`
---before setting the maximum line count.
---@param count number The maximum line count.
function Message:SetMaxLines(count) end

---Sets the scroll position for the Message.
---@param value number The scroll position value.
function Message:SetScrollPos(value) end

---Sets the visibility duration for the Message.
---@param seconds number The duration in seconds the message remains visible. (default: `15`)
function Message:SetTimeVisible(seconds) end
