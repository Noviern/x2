---@meta _

---objects/ChatTab
---@class ChatWindow: Widget, Tabbase
local ChatWindow = {}
---@class chatwindow: ChatWindow

---Adds a new tab to the ChatWindow with the specified name and optional widget.
---@param tabName string The name of the tab.
---@param widget? Widget The optional widget to associate with the tab.
---@usage
---```lua
---local textbox = UIParent:CreateWidget("textbox", "exampleTextbox", "UIParent")
---textbox:SetText("Test")
---widget:AddTab("Test", textbox)
---```
---@see Widget
function ChatWindow:AddTab(tabName, widget) end

---@TODO: Verify if this function is broken.
---Enables or disables tab switching in the ChatWindow.
---@param allow boolean `true` to allow tab switching, `false` to disable.
function ChatWindow:AllowTabSwitch(allow) end

---@FIXME: returns self.
---Retrieves the add button for the ChatWindow.
---@return table addButton The add button.
---@nodiscard
function ChatWindow:GetAddButton() end

---Retrieves the caret drawable for the ChatWindow.
---@return ImageDrawable caretDrawable The caret drawable, empty table if the object `ImageDrawable` hasn't been imported, or `nil` if not set.
---@nodiscard
function ChatWindow:GetCaretDrawable() end

---@FIXME: returns self.
---Retrieves the chat edit widget for the ChatWindow.
---@return table chatEdit The chat edit widget.
---@nodiscard
function ChatWindow:GetChatEdit() end

---@FIXME: returns self.
---Retrieves the chat method selector for the ChatWindow.
---@return table chatMethodSelector The chat method selector.
---@nodiscard
function ChatWindow:GetChatMethodSelector() end

---@FIXME: returns self.
---Retrieves the IME toggle button for the ChatWindow.
---@return table imeToggleButton The IME toggle button.
---@nodiscard
function ChatWindow:GetImeToggleButton() end

---Retrieves the left line drawable for the ChatWindow.
---@return ThreePartDrawable leftLineDrawable The left line drawable.
---@nodiscard
---@see ThreePartDrawable
function ChatWindow:GetLeftLineDrawable() end

---Retrieves the lock notification drawable for the ChatWindow.
---@return ImageDrawable lockNotifyDrawable The lock notification drawable, empty table if the object `ImageDrawable` hasn't been imported, or `nil` if not set.
---@nodiscard
---@see ImageDrawable
function ChatWindow:GetLockNotifyDrawable() end

---Retrieves the right line drawable for the ChatWindow.
---@return ThreePartDrawable rightLineDrawable The right line drawable.
---@nodiscard
---@see ThreePartDrawable
function ChatWindow:GetRightLineDrawable() end

---@FIXME: returns self.
---Retrieves the URL button for the ChatWindow.
---@return table urlButton The URL button.
---@nodiscard
function ChatWindow:GetUrlButton() end

---@FIXME: Broken?
---Sets the offset for the caret in the ChatWindow.
---@param x number The x-offset.
---@param y number The y-offset.
function ChatWindow:SetCaretOffset(x, y) end

---Sets the ID for the ChatWindow.
---@param id number The chat window ID.
function ChatWindow:SetChatWindowId(id) end

---Sets the content offset for the ChatWindow.
---@param topLeftXOffset number The x-offset for the top-left corner.
---@param topLeftYOffset number The y-offset for the top-left corner.
---@param bottomRightXOffset number The x-offset for the bottom-right corner.
---@param bottomRightYOffset number The y-offset for the bottom-right corner.
function ChatWindow:SetContentOffset(topLeftXOffset, topLeftYOffset, bottomRightXOffset, bottomRightYOffset) end

---@TODO: Clarify what injectable means in this context.
---Sets whether the ChatWindow is injectable.
---@param injectable boolean `true` to enable injectable mode, `false` to disable.
function ChatWindow:SetInjectable(injectable) end

---@TODO: Clarify purpose of left line offset.
---Sets the offset for the left line in the ChatWindow.
---@param offset number The offset value.
function ChatWindow:SetLeftLineOffset(offset) end

---@TODO: Verify notification time behavior.
---Sets the maximum notification time for the ChatWindow.
---@param time number The maximum notification time in milliseconds.
function ChatWindow:SetMaxNotifyTime(time) end

---@TODO: Verify if this function is broken.
---Sets the minimum tab width for the ChatWindow.
---@param width number The minimum tab width.
function ChatWindow:SetMinTabWidth(width) end

---@TODO: Clarify blinking frequency behavior.
---Sets the notification blinking frequency for the ChatWindow.
---@param freq number The blinking frequency in milliseconds.
function ChatWindow:SetNotifyBlinkingFreq(freq) end

---@TODO: Clarify purpose of right line offset.
---Sets the offset for the right line in the ChatWindow.
---@param offset number The offset value.
function ChatWindow:SetRightLineOffset(offset) end

---@TODO: Confirm slide time behavior during dragging.
---Sets the slide time for tab dragging in the ChatWindow.
---@param time number The slide time in milliseconds.
function ChatWindow:SetSlideTimeInDragging(time) end

---Sets the height of the tab area in the ChatWindow.
---@param height number The height of the tab area.
function ChatWindow:SetTabAreaHeight(height) end

---Sets the inset for the tab area in the ChatWindow.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
function ChatWindow:SetTabAreaInset(left, top, right, bottom) end

---@TODO: Clarify alpha settings for selected and unselected tabs.
---Sets the alpha transparency for selected and unselected tab buttons.
---@param selectedAlpha number The alpha for selected tabs. (min: `0`, max: `1`)
---@param unselectedAlpha number The alpha for unselected tabs. (min: `0`, max: `1`)
function ChatWindow:SetTabButtonAlpha(selectedAlpha, unselectedAlpha) end

---Sets the tab width for the ChatWindow.
---@param width number The tab width.
function ChatWindow:SetTabWidth(width) end

---@FIXME: Button is added but it doesn't render.
---Enables or disables the add tab button in the ChatWindow.
---@param use boolean `true` to enable the add tab button, `false` to disable. (default: `true`)
function ChatWindow:UseAddTabButton(use) end

---@TODO: Clarify auto-resizing tab button mode behavior.
---Enables or disables auto-resizing tab button mode in the ChatWindow.
---@param offset boolean `true` to enable auto-resizing, `false` to disable. (default: `false`)
function ChatWindow:UseAutoResizingTabButtonMode(offset) end

---@TODO: Verify sliding button behavior.
---Enables or disables sliding button functionality in the ChatWindow.
---@param use boolean `true` to enable sliding buttons, `false` to disable.
function ChatWindow:UseSlidingButton(use) end
