---@meta _

AP_BOTTOM = 8          -- objects/ChatEdit
AP_BOTTOMLEFT = 2      -- objects/ChatEdit
AP_BOTTOMRIGHT = 3     -- objects/ChatEdit
AP_CENTER = 4          -- objects/ChatEdit
AP_LEFT = 6            -- objects/ChatEdit
AP_RIGHT = 7           -- objects/ChatEdit
AP_TOP = 5             -- objects/ChatEdit
AP_TOPLEFT = 0         -- objects/ChatEdit
AP_TOPRIGHT = 1        -- objects/ChatEdit
CT_ABILITY = 2         -- objects/ChatEdit
CT_EXPEDITION_NAME = 3 -- objects/ChatEdit
CT_NAME = 1            -- objects/ChatEdit
DC_ALWAYS = 0          -- objects/ChatEdit DRAG_CONDITION
DC_SHIFT_KEY_DOWN = 1  -- objects/ChatEdit DRAG_CONDITION

-- @field SetChatTypeColor fun(self: self, chatType, r: number, g: number, b: number, a: number) ---@TODO: This does not exist.

---objects/ChatEdit
---@class ChatEdit
local ChatEdit = {}

---comment
---@param chatType number
function ChatEdit:SetChannel(chatType) end
