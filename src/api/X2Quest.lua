---@meta _

CBK_NORMAL = 1                        -- api/X2Quest CHAT_BUBBLE_KIND
CBK_SYSTEM = 3                        -- api/X2Quest CHAT_BUBBLE_KIND
CBK_THINK = 2                         -- api/X2Quest CHAT_BUBBLE_KIND
DOW_FRIDAY = 6                        -- api/X2Quest DAY_OF_WEEK
DOW_INVALID = 8                       -- api/X2Quest DAY_OF_WEEK
DOW_MONDAY = 2                        -- api/X2Quest DAY_OF_WEEK
DOW_SATURDAY = 7                      -- api/X2Quest DAY_OF_WEEK
DOW_SUNDAY = 1                        -- api/X2Quest DAY_OF_WEEK
DOW_THURSDAY = 5                      -- api/X2Quest DAY_OF_WEEK
DOW_TUESDAY = 3                       -- api/X2Quest DAY_OF_WEEK
DOW_WEDNESDAY = 4                     -- api/X2Quest DAY_OF_WEEK
MAX_CHRONICLE_INFO_ACTIVE_COUNT = 5   -- api/X2Quest
MAX_QUEST_OBJECTIVE = 10              -- api/X2Quest
QCS_COMPLETED = 5                     -- api/X2Quest
QSTATFAILED_MAYBE_QUEST_LIST_FULL = 6 -- api/X2Quest
QUEST_MARK_ORDER_DAILY = 3            -- api/X2Quest QUEST_MARK_ODER
QUEST_MARK_ORDER_DAILY_HUNT = 5       -- api/X2Quest QUEST_MARK_ODER
QUEST_MARK_ORDER_LIVELIHOOD = 6       -- api/X2Quest QUEST_MARK_ODER
QUEST_MARK_ORDER_MAIN = 1             -- api/X2Quest QUEST_MARK_ODER
QUEST_MARK_ORDER_NORMAL = 7           -- api/X2Quest QUEST_MARK_ODER
QUEST_MARK_ORDER_SAGA = 2             -- api/X2Quest QUEST_MARK_ODER
QUEST_MARK_ORDER_WEEKLY = 4           -- api/X2Quest QUEST_MARK_ODER
---@class X2Quest
X2Quest = {}                          -- api/X2Quest

---api/X2Quest
---@alias CHAT_BUBBLE_KIND
---| `CBK_NORMAL`
---| `CBK_SYSTEM`
---| `CBK_THINK`

---api/X2Quest
---@alias DAY_OF_WEEK
---| `DOW_FRIDAY`
---| `DOW_INVALID`
---| `DOW_MONDAY`
---| `DOW_SATURDAY`
---| `DOW_SUNDAY`
---| `DOW_THURSDAY`
---| `DOW_TUESDAY`
---| `DOW_WEDNESDAY`

---api/X2Quest
---@alias QUEST_MARK_ORDER
---| `QUEST_MARK_ORDER_DAILY`
---| `QUEST_MARK_ORDER_DAILY_HUNT`
---| `QUEST_MARK_ORDER_LIVELIHOOD`
---| `QUEST_MARK_ORDER_MAIN`
---| `QUEST_MARK_ORDER_NORMAL`
---| `QUEST_MARK_ORDER_SAGA`
---| `QUEST_MARK_ORDER_WEEKLY`

---Retrieves the count of all active quests, including completed ones.
---@return number activeQuestListCount The number of active quests.
---@nodiscard
function X2Quest:GetActiveQuestListCount() end

---Retrieves the quest ID for the specified active quest index.
---@param idx number The active quest index (not the quest ID).
---@return number activeQuestType The quest ID.
---@nodiscard
function X2Quest:GetActiveQuestType(idx) end

---Retrieves the main title for the specified quest.
---@param questType number The quest ID.
---@return string questContextMainTitle The quest's main title.
---@nodiscard
function X2Quest:GetQuestContextMainTitle(questType) end

---Checks if the specified quest is completed.
---@param questType number The quest ID.
---@return boolean completed `true` if the quest is completed, `false` otherwise.
---@nodiscard
function X2Quest:IsCompleted(questType) end

---@FIXME: Broken? Tried both active quest index and quest ID.
---Sets the specified quest as the active tracked quest.
---@param idx number The quest index or ID to track (type unclear).
function X2Quest:SetTrackingActiveQuest(idx) end
