---@meta _

AP_BOTTOM = 8 -- object/ChatTab
AP_BOTTOMLEFT = 2 -- object/ChatTab
AP_BOTTOMRIGHT = 3 -- object/ChatTab
AP_CENTER = 4 -- object/ChatTab
AP_LEFT = 6 -- object/ChatTab
AP_RIGHT = 7 -- object/ChatTab
AP_TOP = 5 -- object/ChatTab
AP_TOPLEFT = 0 -- object/ChatTab
AP_TOPRIGHT = 1 -- object/ChatTab
CT_ABILITY = 2 -- object/ChatTab
CT_EXPEDITION_NAME = 3 -- object/ChatTab
CT_NAME = 1 -- object/ChatTab
DC_ALWAYS = 0 -- object/ChatTab
DC_SHIFT_KEY_DOWN = 1 -- object/ChatTab

---object/ChatTab
---@class ChatTab: Tabbase
---@field AddTab fun(self: self, tabName: string, widget?)
---@field AllowTabSwitch fun(self: self, allow: boolean)
---@field GetAddButton fun(self: self): Button
---@field GetCaretDrawable fun(self: self): Widget TODO: What is this widget? Drawable?
---@field GetLeftLineDrawable fun(self: self): Widget TODO: What is this widget? Drawable?
---@field GetLockNotifyDrawable fun(self: self): Widget TODO: What is this widget? Drawable?
---@field GetRightLineDrawable fun(self: self): Widget TODO: What is this widget? Drawable?
---@field SetCaretOffset fun(self: self, x: number, y: number)
---@field SetContentOffset fun(self: self, topLeftXOffset: number, topLeftYOffset: number, bottomRightXOffset: number, bottomRightYOffset: number)
---@field SetInjectable fun(self: self, injectable: boolean)
---@field SetLeftLineOffset fun(self: self, offset: number)
---@field SetMaxNotifyTime fun(self: self, time: number)
---@field SetMinTabWidth fun(self: self, width: number)
---@field SetNotifyBlinkingFreq fun(self: self, freq: number)
---@field SetRightLineOffset fun(self: self, offset: number)
---@field SetSlideTimeInDragging fun(self: self, time: number)
---@field SetTabAreaHeight fun(self: self, height: number)
---@field SetTabAreaInset fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetTabButtonAlpha fun(self: self, selectedAlpha: number, unselectedAlpha: number)
---@field SetTabWidth fun(self: self, width: number)
---@field UseAddTabButton fun(self: self, use: boolean)
---@field UseAutoResizingTabButtonMode fun(self: self, offset: boolean)
---@field UseSlidingButton fun(self: self, use: boolean)

---object/ChatTab
---@class ChatWindow: Widget, ChatTab
---@field GetChatEdit fun(self: self): table TODO: What is this widget? ChatboxEdit?
---@field GetChatMethodSelector fun(self: self): table TODO: What is this widget?
---@field GetImeToggleButton fun(self: self): Button
---@field GetUrlButton fun(self: self): Button
---@field SetChatWindowId fun(self: self, id: number)