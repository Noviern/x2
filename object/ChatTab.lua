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

---object/ChatTab
---@class ChatTab: Tabbase
local ChatTab = {}

---TODO: Need to set `widget` type.
---@param tabName string
---@param widget any
function ChatTab:AddTab(tabName, widget) end

---TODO:
---@param allow boolean
function ChatTab:AllowTabSwitch(allow) end

---TODO:
---@return Button
---@nodiscard
function ChatTab:GetAddButton() end

---TODO: What is this widget? Drawable?
---@return Widget
---@nodiscard
function ChatTab:GetCaretDrawable() end

---TODO: What is this widget? Drawable?
---@return Widget
---@nodiscard
function ChatTab:GetLeftLineDrawable() end

---TODO: What is this widget? Drawable?
---@return Widget
---@nodiscard
function ChatTab:GetLockNotifyDrawable() end

---TODO: What is this widget? Drawable?
---@return Widget
---@nodiscard
function ChatTab:GetRightLineDrawable() end

---TODO:
---@param x number
---@param y number
function ChatTab:SetCaretOffset(x, y) end

---TODO:
---@param topLeftXOffset number
---@param topLeftYOffset number
---@param bottomRightXOffset number
---@param bottomRightYOffset number
function ChatTab:SetContentOffset(topLeftXOffset, topLeftYOffset,
                                  bottomRightXOffset, bottomRightYOffset)
end

---TODO:
---@param injectable boolean
function ChatTab:SetInjectable(injectable) end

---TODO:
---@param offset number
function ChatTab:SetLeftLineOffset(offset) end

---TODO:
---@param time number
function ChatTab:SetMaxNotifyTime(time) end

---TODO:
---@param width number
function ChatTab:SetMinTabWidth(width) end

---TODO:
---@param freq number
function ChatTab:SetNotifyBlinkingFreq(freq) end

---TODO:
---@param offset number
function ChatTab:SetRightLineOffset(offset) end

---TODO:
---@param time number
function ChatTab:SetSlideTimeInDragging(time) end

---TODO:
---@param height number
function ChatTab:SetTabAreaHeight(height) end

---TODO:
---@param left number
---@param top number
---@param right number
---@param bottom number
function ChatTab:SetTabAreaInset(left, top, right, bottom) end

---TODO:
---@param selectedAlpha number
---@param unselectedAlpha number
function ChatTab:SetTabButtonAlpha(selectedAlpha, unselectedAlpha) end

---Sets the tab `width` of the ChatWindow.
---@param width number
function ChatTab:SetTabWidth(width) end

---TODO:
---@param use boolean
function ChatTab:UseAddTabButton(use) end

---TODO:
---@param offset boolean
function ChatTab:UseAutoResizingTabButtonMode(offset) end

---TODO:
---@param use boolean
function ChatTab:UseSlidingButton(use) end

---object/ChatTab
---@class ChatWindow: Widget, ChatTab
local ChatWindow = {}

---TODO: What is this widget? ChatboxEdit?
---@return table
---@nodiscard
function ChatWindow:GetChatEdit() end

---TODO: What is this widget?
---@return table
---@nodiscard
function ChatWindow:GetChatMethodSelector() end

---Returns the `imeToggleButton` for the ChatWindow.
---@return Button imeToggleButton
---@nodiscard
function ChatWindow:GetImeToggleButton() end

---Returns the `urlButton` of the ChatWindow.
---@return Button urlButton
---@nodiscard
function ChatWindow:GetUrlButton() end

---TODO:
---@param id number
function ChatWindow:SetChatWindowId(id) end
