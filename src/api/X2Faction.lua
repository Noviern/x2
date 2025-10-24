---@meta _

EGFT_BANK = 0                      -- api/X2Faction EGFT
EGFT_BUFF = 1                      -- api/X2Faction EGFT
EGFT_QUEST = 3                     -- api/X2Faction EGFT
EGFT_SHOP = 2                      -- api/X2Faction EGFT
EHP_INSTANCE = 4                   -- api/X2Faction EHP
EHP_MANAGEMENT = 1                 -- api/X2Faction EHP
EHP_STORE = 2                      -- api/X2Faction EHP
EHP_WAR = 3                        -- api/X2Faction EHP
EIMS_END = 1                       -- api/X2Faction EIMS
EIMS_START = 0                     -- api/X2Faction EIMS
EMSK_CONTRIBUTION_POINT = 4        -- api/X2Faction EMSK
EMSK_JOB = 3                       -- api/X2Faction EMSK
EMSK_LEVEL = 2                     -- api/X2Faction EMSK
EMSK_NAME = 0                      -- api/X2Faction EMSK
EMSK_ONLINE = 6                    -- api/X2Faction EMSK
EMSK_ROLE = 1                      -- api/X2Faction EMSK
EMSK_WEEKLY_CONTRIBUTION_POINT = 5 -- api/X2Faction EMSK
EMT_BUFF = 1                       -- api/X2Faction EMT
EMT_QUEST = 2                      -- api/X2Faction EMT
EMT_RANK_REWARD = 3                -- api/X2Faction EMT
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
---Expedition Guild Function Type
---@alias EGFT
---| `EGFT_BANK`
---| `EGFT_BUFF`
---| `EGFT_QUEST`
---| `EGFT_SHOP`

---api/X2Faction
---Expedition History Page
---@alias EHP
---| `EHP_INSTANCE`
---| `EHP_MANAGEMENT`
---| `EHP_STORE`
---| `EHP_WAR`

---api/X2Faction
---Expedition Instance Member Status
---@alias EIMS
---| `EIMS_END`
---| `EIMS_START`

---api/X2Faction
---Expedition Member Sort Kind
---@alias EMSK
---| `EMSK_CONTRIBUTION_POINT`
---| `EMSK_JOB`
---| `EMSK_LEVEL`
---| `EMSK_NAME`
---| `EMSK_ONLINE`
---| `EMSK_ROLE`
---| `EMSK_WEEKLY_CONTRIBUTION_POINT`

---api/X2Faction
---Expedition Management Type
---@alias EMT
---| `EMT_BUFF`
---| `EMT_QUEST`
---| `EMT_RANK_REWARD`
