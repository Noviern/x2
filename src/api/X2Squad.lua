---@meta _

MAX_SQUAD_SELECT_COUNT_PER_PAGE = 3 -- api/X2Squad
SCI_BATTLE_FIELD = 1                -- api/X2Squad SCI
SCI_INDUN = 2                       -- api/X2Squad SCI
SOT_DIRECT_MATCHING = 2             -- api/X2Squad SOT
SOT_MUST_PUBLIC = 3                 -- api/X2Squad SOT
SOT_PRIVATE = 1                     -- api/X2Squad SOT
SOT_PUBLIC = 0                      -- api/X2Squad SOT
---@class X2Squad
X2Squad = {}                        -- api/X2Squad

---api/X2Squad
---@alias SCI
---| `SCI_BATTLE_FIELD`
---| `SCI_INDUN`

---api/X2Squad
---Squad Open Type
---@alias SOT
---| `SOT_DIRECT_MATCHING`
---| `SOT_MUST_PUBLIC`
---| `SOT_PRIVATE`
---| `SOT_PUBLIC`
