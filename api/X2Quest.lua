---@meta _

CBK_NORMAL = 1 -- api/X2Quest
CBK_SYSTEM = 3 -- api/X2Quest
CBK_THINK = 2 -- api/X2Quest
DOW_FRIDAY = 6 -- api/X2Quest
DOW_INVALID = 8 -- api/X2Quest
DOW_MONDAY = 2 -- api/X2Quest
DOW_SATURDAY = 7 -- api/X2Quest
DOW_SUNDAY = 1 -- api/X2Quest
DOW_THURSDAY = 5 -- api/X2Quest
DOW_TUESDAY = 3 -- api/X2Quest
DOW_WEDNESDAY = 4 -- api/X2Quest
MAX_CHRONICLE_INFO_ACTIVE_COUNT = 5 -- api/X2Quest
MAX_QUEST_OBJECTIVE = 10 -- api/X2Quest
QCS_COMPLETED = 5 -- api/X2Quest
QSTATFAILED_MAYBE_QUEST_LIST_FULL = 6 -- api/X2Quest
QUEST_MARK_ORDER_DAILY = 3 -- api/X2Quest
QUEST_MARK_ORDER_DAILY_HUNT = 5 -- api/X2Quest
QUEST_MARK_ORDER_LIVELIHOOD = 6 -- api/X2Quest
QUEST_MARK_ORDER_MAIN = 1 -- api/X2Quest
QUEST_MARK_ORDER_NORMAL = 7 -- api/X2Quest
QUEST_MARK_ORDER_SAGA = 2 -- api/X2Quest
QUEST_MARK_ORDER_WEEKLY = 4 -- api/X2Quest
X2Quest = {} -- api/X2Quest

function X2Quest:GetActiveQuestListCount() end

function X2Quest:GetActiveQuestType() end

function X2Quest:GetQuestContextMainTitle() end

function X2Quest:IsCompleted() end

function X2Quest:SetTrackingActiveQuest() end