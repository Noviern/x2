---@meta _

EGFT_BANK = 0                      -- api/X2Faction EXPEDITION_GUILD_FUNCTION_TYPE
EGFT_BUFF = 1                      -- api/X2Faction EXPEDITION_GUILD_FUNCTION_TYPE
EGFT_QUEST = 3                     -- api/X2Faction EXPEDITION_GUILD_FUNCTION_TYPE
EGFT_SHOP = 2                      -- api/X2Faction EXPEDITION_GUILD_FUNCTION_TYPE
EHP_INSTANCE = 4                   -- api/X2Faction EXPEDITION_HISTORY_PAGE
EHP_MANAGEMENT = 1                 -- api/X2Faction EXPEDITION_HISTORY_PAGE
EHP_STORE = 2                      -- api/X2Faction EXPEDITION_HISTORY_PAGE
EHP_WAR = 3                        -- api/X2Faction EXPEDITION_HISTORY_PAGE
EIMS_END = 1                       -- api/X2Faction EXPEDITION_INSTANCE_MEMBER_STATUS
EIMS_START = 0                     -- api/X2Faction EXPEDITION_INSTANCE_MEMBER_STATUS
EMSK_CONTRIBUTION_POINT = 4        -- api/X2Faction EXPEDITION_MEMBER_SORT_KIND
EMSK_JOB = 3                       -- api/X2Faction EXPEDITION_MEMBER_SORT_KIND
EMSK_LEVEL = 2                     -- api/X2Faction EXPEDITION_MEMBER_SORT_KIND
EMSK_NAME = 0                      -- api/X2Faction EXPEDITION_MEMBER_SORT_KIND
EMSK_ONLINE = 6                    -- api/X2Faction EXPEDITION_MEMBER_SORT_KIND
EMSK_ROLE = 1                      -- api/X2Faction EXPEDITION_MEMBER_SORT_KIND
EMSK_WEEKLY_CONTRIBUTION_POINT = 5 -- api/X2Faction EXPEDITION_MEMBER_SORT_KIND
EMT_BUFF = 1                       -- api/X2Faction EXPEDITION_MANAGEMENT_TYPE
EMT_QUEST = 2                      -- api/X2Faction EXPEDITION_MANAGEMENT_TYPE
EMT_RANK_REWARD = 3                -- api/X2Faction EXPEDITION_MANAGEMENT_TYPE
EXPEDITION_CREATE_COST = 10000     -- api/X2Faction
MAX_EXPEDITION_APPLY_COUNT = 5     -- api/X2Faction
MAX_GUILD_FUNCTION_BUFF_TYPE = 6   -- api/X2Faction
MIN_GUILD_FUNCTION_BUFF_TYPE = 1   -- api/X2Faction
VS_DRAW = 2                        -- api/X2Faction VS
VS_LOSE = 1                        -- api/X2Faction VS
VS_WIN = 3                         -- api/X2Faction VS
---@class X2Faction
X2Faction = {}                     -- api/X2Faction

---api/X2Faction
---@alias EXPEDITION_GUILD_FUNCTION_TYPE
---| `EGFT_BANK`
---| `EGFT_BUFF`
---| `EGFT_QUEST`
---| `EGFT_SHOP`

---api/X2Faction
---@alias EXPEDITION_HISTORY_PAGE
---| `EHP_INSTANCE`
---| `EHP_MANAGEMENT`
---| `EHP_STORE`
---| `EHP_WAR`

---api/X2Faction
---@alias EXPEDITION_INSTANCE_MEMBER_STATUS
---| `EIMS_END`
---| `EIMS_START`

---api/X2Faction
---@alias EXPEDITION_MEMBER_SORT_KIND
---| `EMSK_CONTRIBUTION_POINT`
---| `EMSK_JOB`
---| `EMSK_LEVEL`
---| `EMSK_NAME`
---| `EMSK_ONLINE`
---| `EMSK_ROLE`
---| `EMSK_WEEKLY_CONTRIBUTION_POINT`

---api/X2Faction
---@alias EXPEDITION_MANAGEMENT_TYPE
---| `EMT_BUFF`
---| `EMT_QUEST`
---| `EMT_RANK_REWARD`
