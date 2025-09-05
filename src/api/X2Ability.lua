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
---@class X2Ability
X2Ability = {}                       -- api/X2Ability

---api/X2Ability
---Values can be added together to get more information.
---@alias BIK
---| `BIK_DESCRIPTION`
---| `BIK_RUNTIME_ALL`
---| `BIK_RUNTIME_DURATION`
---| `BIK_RUNTIME_MINE`
---| `BIK_RUNTIME_STACK`
---| `BIK_RUNTIME_TIMELEFT`

---@alias SKILL
---| `ACTIVE_SKILL_1`
---| `ACTIVE_SKILL_2`
---| `ACTIVE_SKILL_3`
---| `ATTACK_SKILL`
---| `EMOTION_SKILL`
---| `GENERAL_SKILL`
---| `JOB_SKILL`
---| `PASSIVE_SKILL_1`
---| `PASSIVE_SKILL_2`
---| `PASSIVE_SKILL_3`
---| `SPECIAL_ABILITY_MUTATION_SKILL`
---| `SPECIAL_ACTIVE_SKILL`
---| `SPECIAL_PASSIVE_SKILL`

function X2Ability:GetActiveAbility() end

---Retrieves a list of all the player's actability information.
---@return ActabilityInfo[] allMyActabilityInfos A table of actability information.
---@nodiscard
---@usage
---```lua
---local allMyActabilityInfos = X2Ability:GetAllMyActabilityInfos()
---```
---@see ActabilityInfo
function X2Ability:GetAllMyActabilityInfos() end

---@TODO: Find a buff where itemLevel actually matters. Only BIK_DESCRIPTION appears to work.
---Retrieves information for the buff tooltip based on the buff type and item
---level.
---@param buffType number The type of buff.
---@param itemLevel number The item level for the buff.
---@param neededInfo? BIK Optional additional information for the buff.
---@return AppellationBuffInfo buffTooltip The buff tooltip information.
---@nodiscard
---@usage
---```lua
---local buffTooltipDesc = X2Ability:GetBuffTooltip(5700, 1, BIK_DESCRIPTION)
---```
---@see BIK 
---@see AppellationBuffInfo
function X2Ability:GetBuffTooltip(buffType, itemLevel, neededInfo) end

---Returns actability information for the player.
---@param actabilityGroupType ACTABILITY_ID The actability group type to query.
---@return ActabilityGroupTypeInfo|nil myActabilityInfo The actability information, or `nil` if not found.
---@usage
---```
---local myActabilityInfo = X2Ability:GetMyActabilityInfo(1)
---```
---@see ACTABILITY_ID
function X2Ability:GetMyActabilityInfo(actabilityGroupType) end

---Returns if the ability is active.
---@param index ABILITY_TYPE The ability type to check.
---@return boolean activeAbility `true` if the ability is active, `false` otherwise.
---@nodiscard
---@usage
---```
---local activeAbility = X2Ability:IsActiveAbility(1)
---```
---@see ABILITY_TYPE
function X2Ability:IsActiveAbility(index) end
