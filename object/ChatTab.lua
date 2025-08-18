---@meta _

AP_BOTTOM = 8          -- object/ChatTab
AP_BOTTOMLEFT = 2      -- object/ChatTab
AP_BOTTOMRIGHT = 3     -- object/ChatTab
AP_CENTER = 4          -- object/ChatTab
AP_LEFT = 6            -- object/ChatTab
AP_RIGHT = 7           -- object/ChatTab
AP_TOP = 5             -- object/ChatTab
AP_TOPLEFT = 0         -- object/ChatTab
AP_TOPRIGHT = 1        -- object/ChatTab
CT_ABILITY = 2         -- object/ChatTab
CT_EXPEDITION_NAME = 3 -- object/ChatTab
CT_NAME = 1            -- object/ChatTab
DC_ALWAYS = 0          -- object/ChatTab
DC_SHIFT_KEY_DOWN = 1  -- object/ChatTab

---@TODO: Should ChatTab be merged into ChatWindow?

---object/ChatTab
---@class ChatTab: Tabbase
local ChatTab = {}

---Adds a new tab to the ChatTab with the specified name and optional widget.
---@param tabName string The name of the tab.
---@param widget? Widget The widget to associate with the tab.
---@usage
---```
---local textbox = UIParent:CreateWidget("textbox", "exampleTextbox", "UIParent")
---textbox:SetText("Test")
---widget:AddTab("Test", textbox)
---```
---@see Widget
function ChatTab:AddTab(tabName, widget) end

---@TODO: Verify if this function is broken.
---Enables or disables tab switching in the ChatTab.
---@param allow boolean `true` to allow tab switching, `false` to disable.
---@usage
---```
---widget:AllowTabSwitch(false)
---```
function ChatTab:AllowTabSwitch(allow) end

---@TODO: Clarify return table structure.
---Retrieves the add button for the ChatTab.
---@return table addButton The add button.
---@nodiscard
---@usage
---```
---local addButton = widget:GetAddButton()
---```
function ChatTab:GetAddButton() end

---Retrieves the caret drawable for the ChatTab.
---@return ImageDrawable|EmptyTable|nil caretDrawable The caret drawable, or `nil` if not set.
---@nodiscard
---@usage
---```
---local caretDrawable = widget:GetCaretDrawable()
---```
function ChatTab:GetCaretDrawable() end

---Retrieves the left line drawable for the ChatTab.
---@return ThreePartDrawable leftLineDrawable The left line drawable.
---@nodiscard
---@usage
---```
---local leftLineDrawable = widget:GetLeftLineDrawable()
---```
---@see ThreePartDrawable
function ChatTab:GetLeftLineDrawable() end

---Retrieves the lock notification drawable for the ChatTab.
---@return ImageDrawable|EmptyTable|nil lockNotifyDrawable The lock notification drawable, or `nil` if not set.
---@nodiscard
---@usage
---```
---local lockNotifyDrawable = widget:GetLockNotifyDrawable()
---```
---@see ImageDrawable
function ChatTab:GetLockNotifyDrawable() end

---Retrieves the right line drawable for the ChatTab.
---@return ThreePartDrawable rightLineDrawable The right line drawable.
---@nodiscard
---@usage
---```
---local rightLineDrawable = widget:GetRightLineDrawable()
---```
---@see ThreePartDrawable
function ChatTab:GetRightLineDrawable() end

---@TODO: Clarify purpose of caret offset.
---Sets the offset for the caret in the ChatTab.
---@param x number The x-offset.
---@param y number The y-offset.
---@usage
---```
---widget:SetCaretOffset(0, 0)
---```
function ChatTab:SetCaretOffset(x, y) end

---@TODO: Verify content offset behavior.
---Sets the content offset for the ChatTab.
---@param topLeftXOffset number The x-offset for the top-left corner.
---@param topLeftYOffset number The y-offset for the top-left corner.
---@param bottomRightXOffset number The x-offset for the bottom-right corner.
---@param bottomRightYOffset number The y-offset for the bottom-right corner.
---@usage
---```
---widget:SetContentOffset(100, 100, 100, 100)
---```
function ChatTab:SetContentOffset(topLeftXOffset, topLeftYOffset,
                                  bottomRightXOffset, bottomRightYOffset) end

---@TODO: Clarify what injectable means in this context.
---Sets whether the ChatTab is injectable.
---@param injectable boolean `true` to enable injectable mode, `false` to disable.
---@usage
---```
---widget:SetInjectable(true)
---```
function ChatTab:SetInjectable(injectable) end

---@TODO: Clarify purpose of left line offset.
---Sets the offset for the left line in the ChatTab.
---@param offset number The offset value.
---@usage
---```
---widget:SetLeftLineOffset(100)
---```
function ChatTab:SetLeftLineOffset(offset) end

---@TODO: Verify notification time behavior.
---Sets the maximum notification time for the ChatTab.
---@param time number The maximum notification time in milliseconds.
---@usage
---```
---widget:SetMaxNotifyTime(3000)
---```
function ChatTab:SetMaxNotifyTime(time) end

---@TODO: Verify if this function is broken.
---Sets the minimum tab width for the ChatTab.
---@param width number The minimum tab width.
---@usage
---```
---widget:SetMinTabWidth(200)
---```
function ChatTab:SetMinTabWidth(width) end

---@TODO: Clarify blinking frequency behavior.
---Sets the notification blinking frequency for the ChatTab.
---@param freq number The blinking frequency in milliseconds.
---@usage
---```
---widget:SetNotifyBlinkingFreq(400)
---```
function ChatTab:SetNotifyBlinkingFreq(freq) end

---@TODO: Clarify purpose of right line offset.
---Sets the offset for the right line in the ChatTab.
---@param offset number The offset value.
---@usage
---```
---widget:SetRightLineOffset(100)
---```
function ChatTab:SetRightLineOffset(offset) end

---@TODO: Confirm slide time behavior during dragging.
---Sets the slide time for tab dragging in the ChatTab.
---@param time number The slide time in milliseconds.
---@usage
---```
---widget:SetSlideTimeInDragging(150)
---```
function ChatTab:SetSlideTimeInDragging(time) end

---@TODO: Verify tab area height behavior.
---Sets the height of the tab area in the ChatTab.
---@param height number The height of the tab area.
---@usage
---```
---widget:SetTabAreaHeight(25)
---```
function ChatTab:SetTabAreaHeight(height) end

---@TODO: Confirm inset behavior for tab area.
---Sets the inset for the tab area in the ChatTab.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```
---widget:SetTabAreaInset(10, 10, 10, 10)
---```
function ChatTab:SetTabAreaInset(left, top, right, bottom) end

---@TODO: Clarify alpha settings for selected and unselected tabs.
---Sets the alpha transparency for selected and unselected tab buttons.
---@param selectedAlpha number The alpha for selected tabs. (min: `0`, max: `1`)
---@param unselectedAlpha number The alpha for unselected tabs. (min: `0`, max: `1`)
---@usage
---```
---widget:SetTabButtonAlpha(.5, .2)
---```
function ChatTab:SetTabButtonAlpha(selectedAlpha, unselectedAlpha) end

---Sets the tab width for the ChatWindow.
---@param width number The tab width.
---@usage
---```
---widget:SetTabWidth(250)
---```
function ChatTab:SetTabWidth(width) end

---@TODO: Verify add button behavior and lack of texture.
---Enables or disables the add tab button in the ChatTab.
---@param use boolean `true` to enable the add tab button, `false` to disable. (default: `true`)
---@usage
---```
---widget:UseAddTabButton(false)
---```
function ChatTab:UseAddTabButton(use) end

---@TODO: Clarify auto-resizing tab button mode behavior.
---Enables or disables auto-resizing tab button mode in the ChatTab.
---@param offset boolean `true` to enable auto-resizing, `false` to disable. (default: `false`)
---@usage
---```
---widget:UseAutoResizingTabButtonMode(true)
---```
function ChatTab:UseAutoResizingTabButtonMode(offset) end

---@TODO: Verify sliding button behavior.
---Enables or disables sliding button functionality in the ChatTab.
---@param use boolean `true` to enable sliding buttons, `false` to disable.
---@usage
---```
---widget:UseSlidingButton(true)
---```
function ChatTab:UseSlidingButton(use) end

---object/ChatTab
---@class ChatWindow: Widget, ChatTab
local ChatWindow = {}

---@TODO: Verify if this is broken (returns self).
---Retrieves the chat edit widget for the ChatWindow.
---@return table chatEdit The chat edit widget.
---@nodiscard
---@usage
---```
---local chatEdit = widget:GetChatEdit()
---```
function ChatWindow:GetChatEdit() end

---@TODO: Verify if this is broken (returns self).
---Retrieves the chat method selector for the ChatWindow.
---@return table chatMethodSelector The chat method selector.
---@nodiscard
---@usage
---```
---local chatMethodSelector = widget:GetChatMethodSelector()
---```
function ChatWindow:GetChatMethodSelector() end

---@TODO: Verify if this is broken (returns self).
---Retrieves the IME toggle button for the ChatWindow.
---@return Button imeToggleButton The IME toggle button.
---@nodiscard
---@usage
---```
---local imeToggleButton = widget:GetImeToggleButton()
---```
function ChatWindow:GetImeToggleButton() end

---@TODO: Verify if this is broken (returns self).
---Retrieves the URL button for the ChatWindow.
---@return table urlButton The URL button.
---@nodiscard
---@usage
---```
---local urlButton = widget:GetUrlButton()
---```
function ChatWindow:GetUrlButton() end

---Sets the ID for the ChatWindow.
---@param id number The chat window ID.
---@usage
---```
---widget:SetChatWindowId(0)
---```
function ChatWindow:SetChatWindowId(id) end
