---@meta _

ABILITY_ACTIVATION_LEVEL_1 = 1       -- api/X2Ability
ABILITY_ACTIVATION_LEVEL_2 = 7       -- api/X2Ability
ABILITY_ACTIVATION_LEVEL_3 = 15      -- api/X2Ability
ABILITY_GENERAL = 0                  -- api/X2Ability
ABILITY_MADNESS = 13                 -- api/X2Ability
ABILITY_MAX = 30                     -- api/X2Ability
ACTIVE_SKILL_1 = 10                  -- api/X2Ability
ACTIVE_SKILL_2 = 30                  -- api/X2Ability
ACTIVE_SKILL_3 = 50                  -- api/X2Ability
ATTACK_SKILL = 100                   -- api/X2Ability
BIK_DESCRIPTION = 1                  -- api/X2Ability
BIK_RUNTIME_ALL = 30                 -- api/X2Ability
BIK_RUNTIME_DURATION = 4             -- api/X2Ability
BIK_RUNTIME_MINE = 2                 -- api/X2Ability
BIK_RUNTIME_STACK = 16               -- api/X2Ability
BIK_RUNTIME_TIMELEFT = 8             -- api/X2Ability
EMOTION_SKILL = 270                  -- api/X2Ability
GENERAL_SKILL = 120                  -- api/X2Ability
INVALID_ABILITY_KIND = 0             -- api/X2Ability
JOB_SKILL = 140                      -- api/X2Ability
MAX_ABILITY_SET_SLOTS = 6            -- api/X2Ability
PASSIVE_SKILL_1 = 70                 -- api/X2Ability
PASSIVE_SKILL_2 = 80                 -- api/X2Ability
PASSIVE_SKILL_3 = 90                 -- api/X2Ability
RAC_FIRST = 1                        -- api/X2Ability
RAC_INVALID = 0                      -- api/X2Ability
RAC_SECOND = 2                       -- api/X2Ability
SAT_ACTIVE = 1                       -- api/X2Ability
SAT_HIDE = 3                         -- api/X2Ability
SAT_NONACTIVE = 2                    -- api/X2Ability
SAT_NONE = 0                         -- api/X2Ability
SBC_ATTACK = 2                       -- api/X2Ability
SBC_EMOTION = 5                      -- api/X2Ability
SBC_GENERAL = 3                      -- api/X2Ability
SBC_JOB = 4                          -- api/X2Ability
SBC_NONE = 1                         -- api/X2Ability
SPECIAL_ABILITY_MUTATION_SKILL = 150 -- api/X2Ability
SPECIAL_ACTIVE_SKILL = 170           -- api/X2Ability
SPECIAL_PASSIVE_SKILL = 190          -- api/X2Ability
X2Ability = {}                       -- api/X2Ability

---api/X2Ability
---@class ActabilityInfo
---@field name string
---@field type number
---@field point number
---@field modifyPoint number
---@field grade number

---api/X2Ability
---
---As of 6/10/2025 only `BIK_DESCRIPTION` appears to work.
---@alias BIK number
---| `BIK_DESCRIPTION`
---| `BIK_RUNTIME_ALL` Broken
---| `BIK_RUNTIME_DURATION` Broken
---| `BIK_RUNTIME_MINE` Broken
---| `BIK_RUNTIME_STACK` Broken
---| `BIK_RUNTIME_TIMELEFT` Broken

---Retrieves a list of all the player's actability information.
---@return ActabilityInfo[] allMyActabilityInfos A table of actability information.
---@nodiscard
---@usage
---```
---local allMyActabilityInfos = X2Ability:GetAllMyActabilityInfos()
---```
---@see ActabilityInfo
function X2Ability:GetAllMyActabilityInfos() end

---@TODO: Find a buff where itemLevel actually matters.
---Retrieves information for the buff tooltip based on the buff type and item
---level.
---@param buffType number The type of buff.
---@param itemLevel number The item level for the buff.
---@param neededInfo? BIK Optional additional information for the buff.
---@return AppellationBuffInfo buffTooltip The buff tooltip information.
---@nodiscard
---@usage
---```
---local buffTooltipDesc = X2Ability:GetBuffTooltip(5700, 1, BIK_DESCRIPTION)
---```
---@see BIK
---@see AppellationBuffInfo
function X2Ability:GetBuffTooltip(buffType, itemLevel, neededInfo) end
