---@meta _

EXIT_CLIENT = 0                    -- api/X2World EXIT_TARGET
EXIT_CLIENT_NONE_ACTION = 3        -- api/X2World EXIT_TARGET
EXIT_TO_CHARACTER_LIST = 1         -- api/X2World EXIT_TARGET
EXIT_TO_WORLD_LIST = 2             -- api/X2World EXIT_TARGET
FULL_CONGESTION = 3                -- api/X2World CONGESTION_TYPE
HIGH_CONGESTION = 2                -- api/X2World CONGESTION_TYPE
LOW_CONGESTION = 0                 -- api/X2World CONGESTION_TYPE
MIDDLE_CONGESTION = 1              -- api/X2World CONGESTION_TYPE
TERMS_TYPE_PRIVACY_POLICY = 1      -- api/X2World TERMS_TYPE
TERMS_TYPE_PROVIDE_INFORMATION = 2 -- api/X2World TERMS_TYPE
TERMS_TYPE_USE = 0                 -- api/X2World TERMS_TYPE
WAT_DISABLE = 0                    -- api/X2World WAT
WAT_ENABLE = 1                     -- api/X2World WAT
WET_ACCEPTED = 1                   -- api/X2World WET
WET_REJECTED = 0                   -- api/X2World WET
WT_CHAR_NAME_PRESELECT = 16        -- api/X2World WT
WT_COMBAT = 4                      -- api/X2World WT
WT_INDEPENDENCE = 32               -- api/X2World WT
WT_INTEGRATION = 2                 -- api/X2World WT
WT_LEGACY = 0                      -- api/X2World WT
WT_NEW = 1                         -- api/X2World WT
WT_PREPARE_FOR_LAUNCH = 8          -- api/X2World WT
WT_RECOMMEND = 128                 -- api/X2World WT
WT_REMASTER = 64                   -- api/X2World WT
WT_RESTRICT_AGE = 256              -- api/X2World WT
---@class X2World
X2World = {}                       -- api/X2World

---api/X2World
---@alias EXIT_TARGET
---| `EXIT_CLIENT`
---| `EXIT_CLIENT_NONE_ACTION`
---| `EXIT_TO_CHARACTER_LIST`
---| `EXIT_TO_WORLD_LIST`

---api/X2World
---@alias CONGESTION_TYPE
---| `FULL_CONGESTION`
---| `HIGH_CONGESTION`
---| `LOW_CONGESTION`
---| `MIDDLE_CONGESTION`

---api/X2World
---@alias TERMS_TYPE
---| `TERMS_TYPE_PRIVACY_POLICY`
---| `TERMS_TYPE_PROVIDE_INFORMATION`
---| `TERMS_TYPE_USE`

---api/X2World
---World Available Type
---@alias WAT
---| `WAT_DISABLE`
---| `WAT_ENABLE`

---api/X2World
---@TODO: World ? Type
---@alias WET
---| `WET_ACCEPTED`
---| `WET_REJECTED`

---api/X2World
---World Type
---@alias WT
---| `WT_CHAR_NAME_PRESELECT`
---| `WT_COMBAT`
---| `WT_INDEPENDENCE`
---| `WT_INTEGRATION`
---| `WT_LEGACY`
---| `WT_NEW`
---| `WT_PREPARE_FOR_LAUNCH`
---| `WT_RECOMMEND`
---| `WT_REMASTER`
---| `WT_RESTRICT_AGE`
