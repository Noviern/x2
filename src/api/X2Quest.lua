---@meta _

CBK_NORMAL = 1                        -- api/X2Quest
CBK_SYSTEM = 3                        -- api/X2Quest
CBK_THINK = 2                         -- api/X2Quest
DOW_FRIDAY = 6                        -- api/X2Quest
DOW_INVALID = 8                       -- api/X2Quest
DOW_MONDAY = 2                        -- api/X2Quest
DOW_SATURDAY = 7                      -- api/X2Quest
DOW_SUNDAY = 1                        -- api/X2Quest
DOW_THURSDAY = 5                      -- api/X2Quest
DOW_TUESDAY = 3                       -- api/X2Quest
DOW_WEDNESDAY = 4                     -- api/X2Quest
MAX_CHRONICLE_INFO_ACTIVE_COUNT = 5   -- api/X2Quest
MAX_QUEST_OBJECTIVE = 10              -- api/X2Quest
QCS_COMPLETED = 5                     -- api/X2Quest
QSTATFAILED_MAYBE_QUEST_LIST_FULL = 6 -- api/X2Quest
QUEST_MARK_ORDER_DAILY = 3            -- api/X2Quest
QUEST_MARK_ORDER_DAILY_HUNT = 5       -- api/X2Quest
QUEST_MARK_ORDER_LIVELIHOOD = 6       -- api/X2Quest
QUEST_MARK_ORDER_MAIN = 1             -- api/X2Quest
QUEST_MARK_ORDER_NORMAL = 7           -- api/X2Quest
QUEST_MARK_ORDER_SAGA = 2             -- api/X2Quest
QUEST_MARK_ORDER_WEEKLY = 4           -- api/X2Quest
---@class X2Quest
X2Quest = {}                          -- api/X2Quest

---Retrieves the count of all active quests, including completed ones.
---@return number activeQuestListCount The number of active quests.
---@nodiscard
---@usage
---```
---local activeQuestListCount = X2Quest:GetActiveQuestListCount()
---```
function X2Quest:GetActiveQuestListCount() end

---Retrieves the quest ID for the specified active quest index.
---@param idx number The active quest index (not the quest ID).
---@return number activeQuestType The quest ID.
---@nodiscard
---@usage
---```
---local activeQuestType = X2Quest:GetActiveQuestType(1)
---```
function X2Quest:GetActiveQuestType(idx) end

---Retrieves the main title for the specified quest.
---@param questType number The quest ID.
---@return string questContextMainTitle The quest's main title.
---@nodiscard
---@usage
---```
---local questContextMainTitle = X2Quest:GetQuestContextMainTitle(990)
---```
function X2Quest:GetQuestContextMainTitle(questType) end

---Checks if the specified quest is completed.
---@param questType number The quest ID.
---@return boolean completed `true` if the quest is completed, `false` otherwise.
---@nodiscard
---@usage
---```
---local completed = X2Quest:IsCompleted(990)
---```
function X2Quest:IsCompleted(questType) end

---@TODO: Broken? Tried both active quest index and quest ID.
---Sets the specified quest as the active tracked quest.
---@param idx number The quest index or ID to track (type unclear).
function X2Quest:SetTrackingActiveQuest(idx) end
