---@meta _

AP_BOTTOM = 8          -- object/ChatMessage
AP_BOTTOMLEFT = 2      -- object/ChatMessage
AP_BOTTOMRIGHT = 3     -- object/ChatMessage
AP_CENTER = 4          -- object/ChatMessage
AP_LEFT = 6            -- object/ChatMessage
AP_RIGHT = 7           -- object/ChatMessage
AP_TOP = 5             -- object/ChatMessage
AP_TOPLEFT = 0         -- object/ChatMessage
AP_TOPRIGHT = 1        -- object/ChatMessage
CT_ABILITY = 2         -- object/ChatMessage
CT_EXPEDITION_NAME = 3 -- object/ChatMessage
CT_NAME = 1            -- object/ChatMessage
DC_ALWAYS = 0          -- object/ChatMessage
DC_SHIFT_KEY_DOWN = 1  -- object/ChatMessage

---TODO: scriptsbin\x2ui\chat\chat_window.lua uses these methods but unsure what widget type it is as its never explicitly stated.

---object/ChatMessage
---@class ChatMessage
---@field BackupString fun(self: self, name)
---@field CleanupBackupString fun(self: self)
---@field GetDownButton fun(self: self)
---@field GetDownToBottomButton fun(self: self)
---@field GetSlider fun(self: self)
---@field GetUpButton fun(self: self)
---@field MouseWheelDown fun(self: self, value)
---@field MouseWheelUp fun(self: self, value)
