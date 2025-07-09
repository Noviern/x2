---@meta _

AP_BOTTOM = 8 -- object/Message
AP_BOTTOMLEFT = 2 -- object/Message
AP_BOTTOMRIGHT = 3 -- object/Message
AP_CENTER = 4 -- object/Message
AP_LEFT = 6 -- object/Message
AP_RIGHT = 7 -- object/Message
AP_TOP = 5 -- object/Message
AP_TOPLEFT = 0 -- object/Message
AP_TOPRIGHT = 1 -- object/Message
CT_ABILITY = 2 -- object/Message
CT_EXPEDITION_NAME = 3 -- object/Message
CT_NAME = 1 -- object/Message
DC_ALWAYS = 0 -- object/Message
DC_SHIFT_KEY_DOWN = 1 -- object/Message

---object/Message
---@class Message: Widget
---@field style TextStyle
---@field AddMessage fun(self: self, message: string)
---@field AddMessageEx fun(self: self, message: string, visibleTim: number)
---@field AddMessageExRefresh fun(self: self, message: string, visibleTime: number)
---@field AddMessageRefresh fun(self: self, message: string)
---@field ChangeDefaultStyle fun(self: self)
---@field ChangeTextStyle fun(self: self)
---@field Clear fun(self: self)
---@field CopyTextToClipboard fun(self: self): boolean
---@field EnableItemLink fun(self: self, enable: boolean)
---@field GetCurrentLine fun(self: self): number
---@field GetCurrentScroll fun(self: self): number
---@field GetLineSpace fun(self: self): number
---@field GetLinkInfoOnCursor fun(self: self): table
---@field GetMaxLines fun(self: self): number
---@field GetMessageByTimeStamp fun(self: self, messageTimeStamp: number): number
---@field GetMessageLines fun(self: self): number
---@field GetPagePerMaxLines fun(self: self): number
---@field PageDown fun(self: self)
---@field PageUp fun(self: self)
---@field RemoveLastMessage fun(self: self): number
---@field ResetVisibleTime fun(self: self)
---@field ScrollDown fun(self: self)
---@field ScrollToBottom fun(self: self)
---@field ScrollToTop fun(self: self)
---@field ScrollUp fun(self: self)
---@field SetFadeDuration fun(self: self, seconds: number)
---@field SetInset fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetLineSpace fun(self: self, space: number)
---@field SetMaxLines fun(self: self, count: number)
---@field SetScrollPos fun(self: self, value: number)
---@field SetTimeVisible fun(self: self, seconds: number)