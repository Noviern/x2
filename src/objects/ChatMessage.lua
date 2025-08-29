---@meta _

AP_BOTTOM = 8          -- objects/ChatMessage
AP_BOTTOMLEFT = 2      -- objects/ChatMessage
AP_BOTTOMRIGHT = 3     -- objects/ChatMessage
AP_CENTER = 4          -- objects/ChatMessage
AP_LEFT = 6            -- objects/ChatMessage
AP_RIGHT = 7           -- objects/ChatMessage
AP_TOP = 5             -- objects/ChatMessage
AP_TOPLEFT = 0         -- objects/ChatMessage
AP_TOPRIGHT = 1        -- objects/ChatMessage
CT_ABILITY = 2         -- objects/ChatMessage
CT_EXPEDITION_NAME = 3 -- objects/ChatMessage
CT_NAME = 1            -- objects/ChatMessage
DC_ALWAYS = 0          -- objects/ChatMessage
DC_SHIFT_KEY_DOWN = 1  -- objects/ChatMessage

---@TODO: scriptsbin\x2ui\chat\chat_window.lua uses these methods but unsure what widget type it is as its never explicitly stated.

---objects/ChatMessage
---@class ChatMessage
---@field BackupString fun(self: self, name)
---@field CleanupBackupString fun(self: self)
---@field GetDownButton fun(self: self)
---@field GetDownToBottomButton fun(self: self)
---@field GetSlider fun(self: self)
---@field GetUpButton fun(self: self)
---@field MouseWheelDown fun(self: self, value)
---@field MouseWheelUp fun(self: self, value)
