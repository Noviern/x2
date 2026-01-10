---@meta _

ABILITY_ACTIVATION_LEVEL_1 = 1       -- api/X2Ability ABILITY_ACTIVATION_LEVEL
ABILITY_ACTIVATION_LEVEL_2 = 7       -- api/X2Ability ABILITY_ACTIVATION_LEVEL
ABILITY_ACTIVATION_LEVEL_3 = 15      -- api/X2Ability ABILITY_ACTIVATION_LEVEL
ABILITY_GENERAL = 0                  -- api/X2Ability ABILITY_TYPE
ABILITY_MADNESS = 13                 -- api/X2Ability ABILITY_TYPE
ABILITY_MAX = 30                     -- api/X2Ability
ACTIVE_SKILL_1 = 10                  -- api/X2Ability SKILL
ACTIVE_SKILL_2 = 30                  -- api/X2Ability SKILL
ACTIVE_SKILL_3 = 50                  -- api/X2Ability SKILL
ATTACK_SKILL = 100                   -- api/X2Ability SKILL
BIK_DESCRIPTION = 1                  -- api/X2Ability BUFF_INFO_KIND
BIK_RUNTIME_ALL = 30                 -- api/X2Ability BUFF_INFO_KIND
BIK_RUNTIME_DURATION = 4             -- api/X2Ability BUFF_INFO_KIND
BIK_RUNTIME_MINE = 2                 -- api/X2Ability BUFF_INFO_KIND
BIK_RUNTIME_STACK = 16               -- api/X2Ability BUFF_INFO_KIND
BIK_RUNTIME_TIMELEFT = 8             -- api/X2Ability BUFF_INFO_KIND
EMOTION_SKILL = 270                  -- api/X2Ability SKILL
GENERAL_SKILL = 120                  -- api/X2Ability SKILL
INVALID_ABILITY_KIND = 0             -- api/X2Ability
JOB_SKILL = 140                      -- api/X2Ability SKILL
MAX_ABILITY_SET_SLOTS = 6            -- api/X2Ability
PASSIVE_SKILL_1 = 70                 -- api/X2Ability SKILL
PASSIVE_SKILL_2 = 80                 -- api/X2Ability SKILL
PASSIVE_SKILL_3 = 90                 -- api/X2Ability SKILL
RAC_FIRST = 1                        -- api/X2Ability RECOMMENDED_ABILITY_CATEGORY
RAC_INVALID = 0                      -- api/X2Ability RECOMMENDED_ABILITY_CATEGORY
RAC_SECOND = 2                       -- api/X2Ability RECOMMENDED_ABILITY_CATEGORY
SAT_ACTIVE = 1                       -- api/X2Ability SLOT_ACTIVE_TYPE
SAT_HIDE = 3                         -- api/X2Ability SLOT_ACTIVE_TYPE
SAT_NONACTIVE = 2                    -- api/X2Ability SLOT_ACTIVE_TYPE
SAT_NONE = 0                         -- api/X2Ability SLOT_ACTIVE_TYPE
SBC_ATTACK = 2                       -- api/X2Ability SBC
SBC_EMOTION = 5                      -- api/X2Ability SBC
SBC_GENERAL = 3                      -- api/X2Ability SBC
SBC_JOB = 4                          -- api/X2Ability SBC
SBC_NONE = 1                         -- api/X2Ability SBC
SPECIAL_ABILITY_MUTATION_SKILL = 150 -- api/X2Ability SKILL
SPECIAL_ACTIVE_SKILL = 170           -- api/X2Ability SKILL
SPECIAL_PASSIVE_SKILL = 190          -- api/X2Ability SKILL
---@class X2Ability
X2Ability = {}                       -- api/X2Ability

---api/X2Ability
---@alias ABILITY_ACTIVATION_LEVEL
---| `ABILITY_ACTIVATION_LEVEL_1`
---| `ABILITY_ACTIVATION_LEVEL_2`
---| `ABILITY_ACTIVATION_LEVEL_3`

---api/X2Ability
---@alias ABILITY_TYPE
---| `ABILITY_GENERAL`
---| `1` BATTLERAGE (FIGHT)
---| `2` WITCHCRAFT (ILLUSION)
---| `3` DEFENSE (ADAMANT)
---| `4` AURAMANCY (WILL)
---| `5` OCCULTISM (DEATH)
---| `6` ARCHERY (WILD)
---| `7` SORCERY (MAGIC)
---| `8` SHADOWPLAY (VOCATION)
---| `9` SONGCRAFT (ROMANCE)
---| `10` VITALISM (LOVE)
---| `11` MALEDICTION (HATRED)
---| `12` SWIFTBLADE (ASSASSIN)
---| `14` SPELLDANCE (PLEASURE)
---| `ABILITY_MADNESS` GUNSLINGER (MADNESS)

---api/X2Ability
---Values can be added together to get more information. (e.g, `BIK_DESCRIPTION + BIK_RUNTIME_DURATION`)
---@alias BUFF_INFO_KIND
---| `BIK_DESCRIPTION`
---| `BIK_RUNTIME_ALL`
---| `BIK_RUNTIME_DURATION`
---| `BIK_RUNTIME_MINE`
---| `BIK_RUNTIME_STACK`
---| `BIK_RUNTIME_TIMELEFT`

---api/X2Ability
---@alias RECOMMENDED_ABILITY_CATEGORY
---| `RAC_FIRST`
---| `RAC_INVALID`
---| `RAC_SECOND`

---api/X2Ability
---@alias SLOT_ACTIVE_TYPE
---| `SAT_ACTIVE`
---| `SAT_HIDE`
---| `SAT_NONACTIVE`
---| `SAT_NONE`

---api/X2Ability
---@TODO: Speech Bubble Category?
---@alias SBC
---| `SBC_ATTACK`
---| `SBC_EMOTION`
---| `SBC_GENERAL`
---| `SBC_JOB`
---| `SBC_NONE`

---api/X2Ability
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

---Retrieves a list of the player's active ability information.
---@return ActiveAbilities activeAbilities The list of active abilities.
---@nodiscard
---@see ActiveAbilities
function X2Ability:GetActiveAbility() end

---Retrieves a list of all the player's actability information.
---@return ActabilityInfo[] allMyActabilityInfos A table of actability information.
---@nodiscard
---@see ActabilityInfo
function X2Ability:GetAllMyActabilityInfos() end

---@FIXME: Only BIK_DESCRIPTION appears to work.
---@TODO: Find a buff where itemLevel actually matters.
---Retrieves information for the buff tooltip based on the buff type and item
---level.
---@param buffType number The type of buff.
---@param itemLevel number The item level for the buff.
---@param neededInfo? BUFF_INFO_KIND Optional additional information for the buff.
---@return AppellationBuffInfo buffTooltip The buff tooltip information.
---@nodiscard
---@see AppellationBuffInfo
function X2Ability:GetBuffTooltip(buffType, itemLevel, neededInfo) end

---Returns actability information for the player.
---@param actabilityGroupType ACTABILITY_ID The actability group type to query.
---@return ActabilityGroupTypeInfo|nil myActabilityInfo The actability information, or `nil` if not found.
function X2Ability:GetMyActabilityInfo(actabilityGroupType) end

---Returns if the ability is active.
---@param index ABILITY_TYPE The ability type to check.
---@return boolean activeAbility `true` if the ability is active, `false` otherwise.
---@nodiscard
function X2Ability:IsActiveAbility(index) end
