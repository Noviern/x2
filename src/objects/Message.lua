---@meta _

AP_BOTTOM = 8          -- objects/Message
AP_BOTTOMLEFT = 2      -- objects/Message
AP_BOTTOMRIGHT = 3     -- objects/Message
AP_CENTER = 4          -- objects/Message
AP_LEFT = 6            -- objects/Message
AP_RIGHT = 7           -- objects/Message
AP_TOP = 5             -- objects/Message
AP_TOPLEFT = 0         -- objects/Message
AP_TOPRIGHT = 1        -- objects/Message
CT_ABILITY = 2         -- objects/Message
CT_EXPEDITION_NAME = 3 -- objects/Message
CT_NAME = 1            -- objects/Message
DC_ALWAYS = 0          -- objects/Message
DC_SHIFT_KEY_DOWN = 1  -- objects/Message

---objects/Message
---@class Message: Widget
---@field style TextStyle
---@class message: Message
local Message = {}

---Adds a message to the Message. Must be used after defining the widgets
---dimensions.
---@param message string The message text to add.
---@usage
---```lua
---widget:AddMessage("Archerage.to - the first ArcheAge Private Server")
---```
function Message:AddMessage(message) end

---Adds a message with a specified visibility duration to the Message.
---@param message string The message text to add.
---@param visibleTime number The visibility duration in milliseconds.
---@usage
---```lua
---widget:AddMessageEx("This lasts 20 seconds before fade out.", 20000)
---```
function Message:AddMessageEx(message, visibleTime) end

---@TODO: What does this do?
---Adds a message with a specified visibility duration and refreshes the
---Message.
---@param message string The message text to add.
---@param visibleTime number The visibility duration in milliseconds.
function Message:AddMessageExRefresh(message, visibleTime) end

---@TODO: What does this do?
---Adds a message and refreshes the Message.
---@param message string The message text to add.
function Message:AddMessageRefresh(message) end

---Changes the default style for the Message.
---@usage
---```lua
---widget:ChangeDefaultStyle()
---```
function Message:ChangeDefaultStyle() end

---Changes the text style of the Message from aligning to the bottom of the
---widget to the top of the widget.
---@usage
---```lua
---widget:ChangeTextStyle()
---```
function Message:ChangeTextStyle() end

---Clears all messages from the Message.
---@usage
---```lua
---widget:Clear()
---```
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
---@usage
---```lua
---widget:EnableItemLink(true)
---```
function Message:EnableItemLink(enable) end

---Retrieves the current line index of the Message.
---@return number currentLine The current line index.
---@nodiscard
---@usage
---```lua
---local currentLine = widget:GetCurrentLine()
---```
function Message:GetCurrentLine() end

---Retrieves the current scroll position of the Message.
---@return number currentScroll The current scroll position (min: `0`).
---@nodiscard
---@usage
---```lua
---local currentScroll = widget:GetCurrentScroll()
---```
function Message:GetCurrentScroll() end

---Retrieves the line spacing for the Message.
---@return number lineSpace The line spacing value. (default: `0`)
---@nodiscard
---@usage
---```lua
---local lineSpace = widget:GetLineSpace()
---```
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
---@usage
---```lua
---local maxLines =widget:GetMaxLines()
---```
function Message:GetMaxLines() end

---@TODO:
---Retrieves the message text for a given timestamp in the Message.
---@param messageTimeStamp number The timestamp of the message.
---@return string message The message text.
---@nodiscard
function Message:GetMessageByTimeStamp(messageTimeStamp) end

---Retrieves the number of message lines in the Message.
---@return number messageLineCount The number of message lines.
---@nodiscard
---@usage
---```lua
---local messageLineCount = widget:GetMessageLines()
---```
function Message:GetMessageLines() end

---Retrieves the maximum number of lines per page in the Message.
---@return number maxLinesPerPage The maximum lines per page (the widgets height).
---@nodiscard
---@usage
---```lua
---local maxLinesPerPage = widget:GetPagePerMaxLines()
---```
function Message:GetPagePerMaxLines() end

---Scrolls down one page in the Message.
---@usage
---```lua
---widget:PageDown()
---```
function Message:PageDown() end

---Scrolls up one page in the Message.
---@usage
---```lua
---widget:PageUp()
---```
function Message:PageUp() end

---Removes the last message and returns the remaining number of lines.
---@return number remainingLines The number of remaining lines.
---@nodiscard
---@usage
---```lua
---local remainingLines = widget:RemoveLastMessage()
---```
function Message:RemoveLastMessage() end

---Resets the visibility duration for the Message.
---@usage
---```lua
---widget:ResetVisibleTime()
---```
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
---@usage
---```lua
---widget:ScrollToBottom()
---```
function Message:ScrollToBottom() end

---Scrolls to the top of the Message.
---@usage
---```lua
---widget:ScrollToTop()
---```
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
---@usage
---```lua
---widget:SetFadeDuration(10)
---```
function Message:SetFadeDuration(seconds) end

---Sets the inset for the Message.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```lua
---widget:SetInset(10, 10, 10, 10)
---```
function Message:SetInset(left, top, right, bottom) end

---Sets the line spacing for the Message.
---@param space number The line spacing value.
---@usage
---```lua
---widget:SetLineSpace(15)
---```
function Message:SetLineSpace(space) end

---Sets the maximum number of lines for the Message. Uses `widget:Clear()`
---before setting the maximum line count.
---@param count number The maximum line count.
---@usage
---```lua
---widget:SetMaxLines(3)
---```
function Message:SetMaxLines(count) end

---Sets the scroll position for the Message.
---@param value number The scroll position value.
---@usage
---```lua
---widget:SetScrollPos(widget:GetCurrentScroll() - 1)
---```
function Message:SetScrollPos(value) end

---Sets the visibility duration for the Message.
---@param seconds number The duration in seconds the message remains visible. (default: `15`)
---@usage
---```lua
---widget:SetTimeVisible(20)
---```
function Message:SetTimeVisible(seconds) end
