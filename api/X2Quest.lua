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
X2Quest = {}                          -- api/X2Quest

---Returns `activeQuestListCount` for the count of all active quests, including completed ones.
---@return number activeQuestListCount
function X2Quest:GetActiveQuestListCount() end

---Returns `activeQuestType` for active quest index `idx`.
---@param idx number Active quest index, not to be confused with a quest id.
---@return number activeQuestType quest id
function X2Quest:GetActiveQuestType(idx) end

---Returns `questContextMainTitle` for the quest `type`.
---@param type number quest id
---@return string questContextMainTitle
function X2Quest:GetQuestContextMainTitle(type) end

---Returns a boolean indicating if the quest `type` is completed.
---@param type number quest id
---@return boolean isCompleted
function X2Quest:IsCompleted(type) end

---TODO: Broken? Ive tried both the active quest idx and the quest id. Need to define the idx type.
---@param idx any
function X2Quest:SetTrackingActiveQuest(idx) end
