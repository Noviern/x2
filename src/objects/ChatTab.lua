---@meta _

AP_BOTTOM = 8          -- objects/ChatTab
AP_BOTTOMLEFT = 2      -- objects/ChatTab
AP_BOTTOMRIGHT = 3     -- objects/ChatTab
AP_CENTER = 4          -- objects/ChatTab
AP_LEFT = 6            -- objects/ChatTab
AP_RIGHT = 7           -- objects/ChatTab
AP_TOP = 5             -- objects/ChatTab
AP_TOPLEFT = 0         -- objects/ChatTab
AP_TOPRIGHT = 1        -- objects/ChatTab
CT_ABILITY = 2         -- objects/ChatTab
CT_EXPEDITION_NAME = 3 -- objects/ChatTab
CT_NAME = 1            -- objects/ChatTab
DC_ALWAYS = 0          -- objects/ChatTab
DC_SHIFT_KEY_DOWN = 1  -- objects/ChatTab

---objects/ChatTab
---@class ChatWindow: Widget, Tabbase
---@class chatwindow: ChatWindow
local ChatWindow = {}

---Adds a new tab to the ChatWindow with the specified name and optional widget.
---@param tabName string The name of the tab.
---@param widget? Widget The widget to associate with the tab.
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
---@usage
---```lua
---widget:AllowTabSwitch(false)
---```
function ChatWindow:AllowTabSwitch(allow) end

---@TODO: Clarify return table structure.
---Retrieves the add button for the ChatWindow.
---@return table addButton The add button.
---@nodiscard
---@usage
---```lua
---local addButton = widget:GetAddButton()
---```
function ChatWindow:GetAddButton() end

---Retrieves the caret drawable for the ChatWindow.
---@return ImageDrawable|EmptyTable|nil caretDrawable The caret drawable, or `nil` if not set.
---@nodiscard
---@usage
---```lua
---local caretDrawable = widget:GetCaretDrawable()
---```
function ChatWindow:GetCaretDrawable() end

---@TODO: Verify if this is broken (returns self).
---Retrieves the chat edit widget for the ChatWindow.
---@return table chatEdit The chat edit widget.
---@nodiscard
---@usage
---```lua
---local chatEdit = widget:GetChatEdit()
---```
function ChatWindow:GetChatEdit() end

---@TODO: Verify if this is broken (returns self).
---Retrieves the chat method selector for the ChatWindow.
---@return table chatMethodSelector The chat method selector.
---@nodiscard
---@usage
---```lua
---local chatMethodSelector = widget:GetChatMethodSelector()
---```
function ChatWindow:GetChatMethodSelector() end

---@TODO: Verify if this is broken (returns self).
---Retrieves the IME toggle button for the ChatWindow.
---@return Button imeToggleButton The IME toggle button.
---@nodiscard
---@usage
---```lua
---local imeToggleButton = widget:GetImeToggleButton()
---```
function ChatWindow:GetImeToggleButton() end

---Retrieves the left line drawable for the ChatWindow.
---@return ThreePartDrawable leftLineDrawable The left line drawable.
---@nodiscard
---@usage
---```lua
---local leftLineDrawable = widget:GetLeftLineDrawable()
---```
---@see ThreePartDrawable
function ChatWindow:GetLeftLineDrawable() end

---Retrieves the lock notification drawable for the ChatWindow.
---@return ImageDrawable|EmptyTable|nil lockNotifyDrawable The lock notification drawable, or `nil` if not set.
---@nodiscard
---@usage
---```lua
---local lockNotifyDrawable = widget:GetLockNotifyDrawable()
---```
---@see ImageDrawable
function ChatWindow:GetLockNotifyDrawable() end

---Retrieves the right line drawable for the ChatWindow.
---@return ThreePartDrawable rightLineDrawable The right line drawable.
---@nodiscard
---@usage
---```lua
---local rightLineDrawable = widget:GetRightLineDrawable()
---```
---@see ThreePartDrawable
function ChatWindow:GetRightLineDrawable() end

---@TODO: Verify if this is broken (returns self).
---Retrieves the URL button for the ChatWindow.
---@return table urlButton The URL button.
---@nodiscard
---@usage
---```lua
---local urlButton = widget:GetUrlButton()
---```
function ChatWindow:GetUrlButton() end

---@TODO: Clarify purpose of caret offset.
---Sets the offset for the caret in the ChatWindow.
---@param x number The x-offset.
---@param y number The y-offset.
---@usage
---```lua
---widget:SetCaretOffset(0, 0)
---```
function ChatWindow:SetCaretOffset(x, y) end

---Sets the ID for the ChatWindow.
---@param id number The chat window ID.
---@usage
---```lua
---widget:SetChatWindowId(0)
---```
function ChatWindow:SetChatWindowId(id) end

---@TODO: Verify content offset behavior.
---Sets the content offset for the ChatWindow.
---@param topLeftXOffset number The x-offset for the top-left corner.
---@param topLeftYOffset number The y-offset for the top-left corner.
---@param bottomRightXOffset number The x-offset for the bottom-right corner.
---@param bottomRightYOffset number The y-offset for the bottom-right corner.
---@usage
---```lua
---widget:SetContentOffset(100, 100, 100, 100)
---```
function ChatWindow:SetContentOffset(topLeftXOffset, topLeftYOffset, bottomRightXOffset, bottomRightYOffset) end

---@TODO: Clarify what injectable means in this context.
---Sets whether the ChatWindow is injectable.
---@param injectable boolean `true` to enable injectable mode, `false` to disable.
---@usage
---```lua
---widget:SetInjectable(true)
---```
function ChatWindow:SetInjectable(injectable) end

---@TODO: Clarify purpose of left line offset.
---Sets the offset for the left line in the ChatWindow.
---@param offset number The offset value.
---@usage
---```lua
---widget:SetLeftLineOffset(100)
---```
function ChatWindow:SetLeftLineOffset(offset) end

---@TODO: Verify notification time behavior.
---Sets the maximum notification time for the ChatWindow.
---@param time number The maximum notification time in milliseconds.
---@usage
---```lua
---widget:SetMaxNotifyTime(3000)
---```
function ChatWindow:SetMaxNotifyTime(time) end

---@TODO: Verify if this function is broken.
---Sets the minimum tab width for the ChatWindow.
---@param width number The minimum tab width.
---@usage
---```lua
---widget:SetMinTabWidth(200)
---```
function ChatWindow:SetMinTabWidth(width) end

---@TODO: Clarify blinking frequency behavior.
---Sets the notification blinking frequency for the ChatWindow.
---@param freq number The blinking frequency in milliseconds.
---@usage
---```lua
---widget:SetNotifyBlinkingFreq(400)
---```
function ChatWindow:SetNotifyBlinkingFreq(freq) end

---@TODO: Clarify purpose of right line offset.
---Sets the offset for the right line in the ChatWindow.
---@param offset number The offset value.
---@usage
---```lua
---widget:SetRightLineOffset(100)
---```
function ChatWindow:SetRightLineOffset(offset) end

---@TODO: Confirm slide time behavior during dragging.
---Sets the slide time for tab dragging in the ChatWindow.
---@param time number The slide time in milliseconds.
---@usage
---```lua
---widget:SetSlideTimeInDragging(150)
---```
function ChatWindow:SetSlideTimeInDragging(time) end

---@TODO: Verify tab area height behavior.
---Sets the height of the tab area in the ChatWindow.
---@param height number The height of the tab area.
---@usage
---```lua
---widget:SetTabAreaHeight(25)
---```
function ChatWindow:SetTabAreaHeight(height) end

---@TODO: Confirm inset behavior for tab area.
---Sets the inset for the tab area in the ChatWindow.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```lua
---widget:SetTabAreaInset(10, 10, 10, 10)
---```
function ChatWindow:SetTabAreaInset(left, top, right, bottom) end

---@TODO: Clarify alpha settings for selected and unselected tabs.
---Sets the alpha transparency for selected and unselected tab buttons.
---@param selectedAlpha number The alpha for selected tabs. (min: `0`, max: `1`)
---@param unselectedAlpha number The alpha for unselected tabs. (min: `0`, max: `1`)
---@usage
---```lua
---widget:SetTabButtonAlpha(.5, .2)
---```
function ChatWindow:SetTabButtonAlpha(selectedAlpha, unselectedAlpha) end

---Sets the tab width for the ChatWindow.
---@param width number The tab width.
---@usage
---```lua
---widget:SetTabWidth(250)
---```
function ChatWindow:SetTabWidth(width) end

---@TODO: Verify add button behavior and lack of texture.
---Enables or disables the add tab button in the ChatWindow.
---@param use boolean `true` to enable the add tab button, `false` to disable. (default: `true`)
---@usage
---```lua
---widget:UseAddTabButton(false)
---```
function ChatWindow:UseAddTabButton(use) end

---@TODO: Clarify auto-resizing tab button mode behavior.
---Enables or disables auto-resizing tab button mode in the ChatWindow.
---@param offset boolean `true` to enable auto-resizing, `false` to disable. (default: `false`)
---@usage
---```lua
---widget:UseAutoResizingTabButtonMode(true)
---```
function ChatWindow:UseAutoResizingTabButtonMode(offset) end

---@TODO: Verify sliding button behavior.
---Enables or disables sliding button functionality in the ChatWindow.
---@param use boolean `true` to enable sliding buttons, `false` to disable.
---@usage
---```lua
---widget:UseSlidingButton(true)
---```
function ChatWindow:UseSlidingButton(use) end
