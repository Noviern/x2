---@meta _

FULL_CONGESTION = 3     -- api/X2LoginCharacter CONGESTION_TYPE
HIGH_CONGESTION = 2     -- api/X2LoginCharacter CONGESTION_TYPE
LOW_CONGESTION = 0      -- api/X2LoginCharacter CONGESTION_TYPE
MIDDLE_CONGESTION = 1   -- api/X2LoginCharacter CONGESTION_TYPE
STAGE_ABILITY = 11      -- api/X2LoginCharacter STAGE_STATE
STAGE_CI = 1            -- api/X2LoginCharacter STAGE_STATE
STAGE_CREATE = 9        -- api/X2LoginCharacter STAGE_STATE
STAGE_CUSTOMIZE = 10    -- api/X2LoginCharacter STAGE_STATE
STAGE_GAME_RATING = 3   -- api/X2LoginCharacter STAGE_STATE
STAGE_HEALTH_NOTICE = 2 -- api/X2LoginCharacter STAGE_STATE
STAGE_LOGIN = 5         -- api/X2LoginCharacter STAGE_STATE
STAGE_SECURITY = 6      -- api/X2LoginCharacter STAGE_STATE
STAGE_SELECT = 8        -- api/X2LoginCharacter STAGE_STATE
STAGE_SERVER = 7        -- api/X2LoginCharacter STAGE_STATE
STAGE_WORLD = 12        -- api/X2LoginCharacter STAGE_STATE
---@class X2LoginCharacter
X2LoginCharacter = {}   -- api/X2LoginCharacter

---api/X2LoginCharacter
---@alias STAGE_STATE
---| `STAGE_ABILITY`
---| `STAGE_CI`
---| `STAGE_CREATE`
---| `STAGE_CUSTOMIZE`
---| `STAGE_GAME_RATING`
---| `STAGE_HEALTH_NOTICE`
---| `STAGE_LOGIN`
---| `STAGE_SECURITY`
---| `STAGE_SELECT`
---| `STAGE_SERVER`
---| `STAGE_WORLD`
