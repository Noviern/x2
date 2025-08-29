---@meta _

BANVOTE_TYPE_CHECK_ENABLE = 0 -- api/X2Unit
BANVOTE_TYPE_START_VOTE = 1   -- api/X2Unit
BANVOTE_TYPE_VOTE_AGREE = 2   -- api/X2Unit
BANVOTE_TYPE_VOTE_CLEAR = 3   -- api/X2Unit
BRT_CHEATING = 3              -- api/X2Unit
BRT_CHILLING_EFFECT = 4       -- api/X2Unit
BRT_NON_PARTICIPATE = 1       -- api/X2Unit
BRT_NO_MANNER_CHAT = 2        -- api/X2Unit
BRT_NO_REASON = 0             -- api/X2Unit
DUEL_TYPE_INVALID = 0         -- api/X2Unit
DUEL_TYPE_PARTY = 2           -- api/X2Unit
DUEL_TYPE_SOLO = 1            -- api/X2Unit
GAME_TYPE_BATTLE_FIELD = 1    -- api/X2Unit
GAME_TYPE_CONFLICT_ZONE = 5   -- api/X2Unit
GAME_TYPE_INDUN = 3           -- api/X2Unit
GAME_TYPE_NORMAL = 0          -- api/X2Unit
GAME_TYPE_SEAMLESS = 2        -- api/X2Unit
GAME_TYPE_SIEGE = 4           -- api/X2Unit
GENDER_FEMALE = 2             -- api/X2Unit
GENDER_MALE = 1               -- api/X2Unit
GENDER_NONE = 0               -- api/X2Unit
MAX_MODE_ACTION_COUNT = 20    -- api/X2Unit
MAX_OVER_HEAD_MARKER = 12     -- api/X2Unit
RACE_DARU = 9                 -- api/X2Unit
RACE_DWARF = 3                -- api/X2Unit
RACE_ELF = 4                  -- api/X2Unit
RACE_FAIRY = 2                -- api/X2Unit
RACE_FERRE = 6                -- api/X2Unit
RACE_HARIHARAN = 5            -- api/X2Unit
RACE_NONE = 0                 -- api/X2Unit
RACE_NUIAN = 1                -- api/X2Unit
RACE_RETURNED = 7             -- api/X2Unit
RACE_WARBORN = 8              -- api/X2Unit
---@class X2Unit
X2Unit = {}                   -- api/X2Unit

---@TODO: UnitBuffTooltip, UnitDeBuffTooltip, GetBuffTooltip use BIK as a third param?

---@enum UNIT
local UNIT = {
  PLAYER       = "player",
  PLAYERPET1   = "playerpet1", ---mount
  PLAYERPET2   = "playerpet2", ---pet
  SLAVE        = "slave",
  TARGET       = "target",
  TARGETTARGET = "targettarget",
  WATCHTARGET  = "watchtarget",
  TEAM1        = "team1", -- team = the current raid/can be co raid
  TEAM2        = "team2",
  TEAM3        = "team3",
  TEAM4        = "team4",
  TEAM5        = "team5",
  TEAM6        = "team6",
  TEAM7        = "team7",
  TEAM8        = "team8",
  TEAM9        = "team9",
  TEAM10       = "team10",
  TEAM11       = "team11",
  TEAM12       = "team12",
  TEAM13       = "team13",
  TEAM14       = "team14",
  TEAM15       = "team15",
  TEAM16       = "team16",
  TEAM17       = "team17",
  TEAM18       = "team18",
  TEAM19       = "team19",
  TEAM20       = "team20",
  TEAM21       = "team21",
  TEAM22       = "team22",
  TEAM23       = "team23",
  TEAM24       = "team24",
  TEAM25       = "team25",
  TEAM26       = "team26",
  TEAM27       = "team27",
  TEAM28       = "team28",
  TEAM29       = "team29",
  TEAM30       = "team30",
  TEAM31       = "team31",
  TEAM32       = "team32",
  TEAM33       = "team33",
  TEAM34       = "team34",
  TEAM35       = "team35",
  TEAM36       = "team36",
  TEAM37       = "team37",
  TEAM38       = "team38",
  TEAM39       = "team39",
  TEAM40       = "team40",
  TEAM41       = "team41",
  TEAM42       = "team42",
  TEAM43       = "team43",
  TEAM44       = "team44",
  TEAM45       = "team45",
  TEAM46       = "team46",
  TEAM47       = "team47",
  TEAM48       = "team48",
  TEAM49       = "team49",
  TEAM50       = "team50",
  TEAM_1_1     = "team_1_1",
  TEAM_1_2     = "team_1_2",
  TEAM_1_3     = "team_1_3",
  TEAM_1_4     = "team_1_4",
  TEAM_1_5     = "team_1_5",
  TEAM_1_6     = "team_1_6",
  TEAM_1_7     = "team_1_7",
  TEAM_1_8     = "team_1_8",
  TEAM_1_9     = "team_1_9",
  TEAM_1_10    = "team_1_10",
  TEAM_1_11    = "team_1_11",
  TEAM_1_12    = "team_1_12",
  TEAM_1_13    = "team_1_13",
  TEAM_1_14    = "team_1_14",
  TEAM_1_15    = "team_1_15",
  TEAM_1_16    = "team_1_16",
  TEAM_1_17    = "team_1_17",
  TEAM_1_18    = "team_1_18",
  TEAM_1_19    = "team_1_19",
  TEAM_1_20    = "team_1_20",
  TEAM_1_21    = "team_1_21",
  TEAM_1_22    = "team_1_22",
  TEAM_1_23    = "team_1_23",
  TEAM_1_24    = "team_1_24",
  TEAM_1_25    = "team_1_25",
  TEAM_1_26    = "team_1_26",
  TEAM_1_27    = "team_1_27",
  TEAM_1_28    = "team_1_28",
  TEAM_1_29    = "team_1_29",
  TEAM_1_30    = "team_1_30",
  TEAM_1_31    = "team_1_31",
  TEAM_1_32    = "team_1_32",
  TEAM_1_33    = "team_1_33",
  TEAM_1_34    = "team_1_34",
  TEAM_1_35    = "team_1_35",
  TEAM_1_36    = "team_1_36",
  TEAM_1_37    = "team_1_37",
  TEAM_1_38    = "team_1_38",
  TEAM_1_39    = "team_1_39",
  TEAM_1_40    = "team_1_40",
  TEAM_1_41    = "team_1_41",
  TEAM_1_42    = "team_1_42",
  TEAM_1_43    = "team_1_43",
  TEAM_1_44    = "team_1_44",
  TEAM_1_45    = "team_1_45",
  TEAM_1_46    = "team_1_46",
  TEAM_1_47    = "team_1_47",
  TEAM_1_48    = "team_1_48",
  TEAM_1_49    = "team_1_49",
  TEAM_1_50    = "team_1_50",
  TEAM_2_1     = "team_2_1",
  TEAM_2_2     = "team_2_2",
  TEAM_2_3     = "team_2_3",
  TEAM_2_4     = "team_2_4",
  TEAM_2_5     = "team_2_5",
  TEAM_2_6     = "team_2_6",
  TEAM_2_7     = "team_2_7",
  TEAM_2_8     = "team_2_8",
  TEAM_2_9     = "team_2_9",
  TEAM_2_10    = "team_2_10",
  TEAM_2_11    = "team_2_11",
  TEAM_2_12    = "team_2_12",
  TEAM_2_13    = "team_2_13",
  TEAM_2_14    = "team_2_14",
  TEAM_2_15    = "team_2_15",
  TEAM_2_16    = "team_2_16",
  TEAM_2_17    = "team_2_17",
  TEAM_2_18    = "team_2_18",
  TEAM_2_19    = "team_2_19",
  TEAM_2_20    = "team_2_20",
  TEAM_2_21    = "team_2_21",
  TEAM_2_22    = "team_2_22",
  TEAM_2_23    = "team_2_23",
  TEAM_2_24    = "team_2_24",
  TEAM_2_25    = "team_2_25",
  TEAM_2_26    = "team_2_26",
  TEAM_2_27    = "team_2_27",
  TEAM_2_28    = "team_2_28",
  TEAM_2_29    = "team_2_29",
  TEAM_2_30    = "team_2_30",
  TEAM_2_31    = "team_2_31",
  TEAM_2_32    = "team_2_32",
  TEAM_2_33    = "team_2_33",
  TEAM_2_34    = "team_2_34",
  TEAM_2_35    = "team_2_35",
  TEAM_2_36    = "team_2_36",
  TEAM_2_37    = "team_2_37",
  TEAM_2_38    = "team_2_38",
  TEAM_2_39    = "team_2_39",
  TEAM_2_40    = "team_2_40",
  TEAM_2_41    = "team_2_41",
  TEAM_2_42    = "team_2_42",
  TEAM_2_43    = "team_2_43",
  TEAM_2_44    = "team_2_44",
  TEAM_2_45    = "team_2_45",
  TEAM_2_46    = "team_2_46",
  TEAM_2_47    = "team_2_47",
  TEAM_2_48    = "team_2_48",
  TEAM_2_49    = "team_2_49",
  TEAM_2_50    = "team_2_50",
}

---api/X2Unit
---@class TargetAbilityTemplate
---@field index number
---@field level number
---@field name string

---api/X2Unit
---@class TargetAbility
---@field [1] TargetAbilityTemplate
---@field [2] TargetAbilityTemplate
---@field [3] TargetAbilityTemplate

---@TODO: Dont I have something similar to this already?
---api/X2Unit
---@class UnitClass
---@field [1] ABILITY_TYPE
---@field [2] ABILITY_TYPE
---@field [3] ABILITY_TYPE

---api/X2Unit
---@class UnitInfo
---@field class UnitClass
---@field expeditionName string
---@field faction string
---@field family_name string
---@field heirLevel number
---@field hp string
---@field level number
---@field maxHp string
---@field name string
---@field type string

---api/X2Unit
---@class BuffInfo
---@field buff_id number
---@field path string
---@field stack number
---@field timeLeft? number

---api/X2Unit
---@class BuffTooltip: BuffInfo
---@field category string
---@field description string
---@field duration number
---@field mine boolean
---@field name string
---@field path? string
---@field stack? number
---@field timeLef? number
---@field timeUnit? string
---@field tipType string

---api/X2Unit
---@class CastingInfo
---@field castingTime number
---@field castingUseable boolean
---@field currCastingTime number
---@field showTargetCastingTime boolean
---@field spellName string

---api/X2Unit
---@class UnitDistance
---@field distance number
---@field over_distance boolean

---Retrieves the current zone group ID.
---@return ZONE_ID currentZoneGroup The current zone group ID.
---@nodiscard
---@usage
---```
---local currentZoneGroup = X2Unit:GetCurrentZoneGroup()
---```
---@see ZONE_ID
function X2Unit:GetCurrentZoneGroup() end

---Retrieves a list of up to three target ability templates for the specified
---target if in render range.
---@param target UNIT The target unit.
---@return TargetAbility[]|nil targetAbilityTemplates A table of ability templates, or `nil` if not in range.
---@nodiscard
---@usage
---```
---local targetAbilityTemplates = X2Unit:GetTargetAbilityTemplates("player")
---```
---@see UNIT
---@see TargetAbility
function X2Unit:GetTargetAbilityTemplates(target) end

---Retrieves the unit ID of the current target if in render range.
---@return string|nil unitId The target's unit ID, or `nil` if not in range.
---@nodiscard
---@usage
---```
---local unitId = X2Unit:GetTargetUnitId()
---```
function X2Unit:GetTargetUnitId() end

---Retrieves the unit ID for the specified unit if in render range.
---@param unit UNIT The unit to query.
---@return string|nil unitId The unit ID, or `nil` if not in range.
---@nodiscard
---@usage
---```
---local unitId = X2Unit:GetUnitId("player")
---```
---@see UNIT
function X2Unit:GetUnitId(unit) end

---Retrieves unit information for the specified unit ID if in render range.
---@param unitId string The unit ID .
---@return UnitInfo|nil unitInfo The unit information, or `nil` if not in range.
---@nodiscard
---@usage
---```
---local unitId = X2Unit:GetUnitId("player")
---local unitInfo = X2Unit:GetUnitInfoById(unitId)
---```
---@see UnitInfo
function X2Unit:GetUnitInfoById(unitId) end

---Retrieves the name of the unit for the specified unit ID if in render range.
---@param unitId string The unit ID.
---@return string|nil unitName The unit name, or `nil` if not in range.
---@nodiscard
---@usage
---```
---local unitId = X2Unit:GetUnitId("player")
---local unitName = X2Unit:GetUnitNameById(unitId)
---```
function X2Unit:GetUnitNameById(unitId) end

---Retrieves the screen position (x, y, z) of the specified unit if in render
---range.
---@param unit UNIT The unit to query.
---@return number|nil x The x-coordinate, or `nil` if not in range.
---@return number|nil y The y-coordinate, or `nil` if not in range.
---@return number|nil z The z-coordinate, or `nil` if not in range.
---@nodiscard
---@usage
---```
---local x, y, z = X2Unit:GetUnitScreenPosition("player")
---```
---@see UNIT
function X2Unit:GetUnitScreenPosition(unit) end

---Retrieves the world position (x, y, z) and angle of the specified unit if in
---render range.
---@param unit UNIT The unit to query.
---@param isLocal boolean Whether to use local coordinates.
---@return number|nil x The x-coordinate, or `nil` if not in range.
---@return number|nil y The y-coordinate, or `nil` if not in range.
---@return number|nil z The z-coordinate, or `nil` if not in range.
---@return number|nil angle The unit's angle.
---@nodiscard
---@usage
---```
---local x, y, z, angle = X2Unit:GetUnitWorldPositionByTarget("player", false)
---```
---@see UNIT
function X2Unit:GetUnitWorldPositionByTarget(unit, isLocal) end

---Retrieves buff information for the specified buff index of the unit if in
---render range.
---@param unit UNIT The unit to query.
---@param buffIndex number The buff index.
---@return BuffInfo unitBuffInfo The buff information, or an empty table if not in range.
---@nodiscard
---@usage
---```
---local unitBuffInfo = X2Unit:UnitBuff("player", 1)
---```
---@see UNIT
---@see BuffInfo
function X2Unit:UnitBuff(unit, buffIndex) end

---Retrieves the number of buffs on the specified unit if in render range.
---@param unit UNIT The unit to query.
---@return number unitBuffCount The number of buffs, or 0 if not in range.
---@nodiscard
---@usage
---```
---local unitBuffCount = X2Unit:UnitBuffCount("player")
---```
---@see UNIT
function X2Unit:UnitBuffCount(unit) end

---Retrieves the buff tooltip for the specified buff index of the unit if in
---render range.
---@param unit UNIT The unit to query.
---@param buffIndex number The buff index.
---@return BuffTooltip|nil unitBuffTooltip The buff tooltip, or `nil` if not in range.
---@nodiscard
---@usage
---```
---local unitBuffTooltip = X2Unit:UnitBuffTooltip("player", 1)
---```
---@see UNIT
---@see BuffTooltip
function X2Unit:UnitBuffTooltip(unit, buffIndex) end

---Retrieves casting information for the specified unit if in render range.
---@param unit UNIT The unit to query.
---@return CastingInfo|nil unitCastingInfo The casting information, or `nil` if not in range.
---@nodiscard
---@usage
---```
---local unitCastingInfo = X2Unit:UnitCastingInfo("player")
---```
---@see UNIT
---@see CastingInfo
function X2Unit:UnitCastingInfo(unit) end

---Retrieves debuff information for the specified buff index of the unit if in
---render range.
---@param unit UNIT The unit to query.
---@param deBuffIndex number The debuff index.
---@return BuffInfo unitDebuffInfo The debuff information, or an empty table if not in range.
---@nodiscard
---@usage
---```
---local unitDebuffInfo = X2Unit:UnitDeBuff("player", 1)
---```
---@see UNIT
---@see BuffInfo
function X2Unit:UnitDeBuff(unit, deBuffIndex) end

---Retrieves the number of debuffs on the specified unit if in render range.
---@param unit UNIT The unit to query.
---@return number unitDeBuffCount The number of debuffs, or 0 if not in range.
---@nodiscard
---@usage
---```
---local unitDeBuffCount = X2Unit:UnitDeBuffCount("player")
---```
---@see UNIT
function X2Unit:UnitDeBuffCount(unit) end

---Retrieves the debuff tooltip for the specified buff index of the unit if in
---render range.
---@param unit UNIT The unit to query.
---@param deBuffIndex number The debuff index.
---@return BuffTooltip|nil unitDebuffTooltip The debuff tooltip, or `nil` if not in range.
---@nodiscard
---@usage
---```
---local unitDebuffTooltip = X2Unit:UnitDeBuffTooltip("player", 1)
---```
---@see UNIT
---@see BuffTooltip
function X2Unit:UnitDeBuffTooltip(unit, deBuffIndex) end

---Retrieves the distance between the player and the specified unit's boundary
---box if in render range.
---@param unit UNIT The unit to query.
---@return UnitDistance|nil unitDistance The distance information, or `nil` if not in range.
---@nodiscard
---@usage
---```
---local unitDistance = X2Unit:UnitDistance("player")
---```
---@see UNIT
---@see UnitDistance
function X2Unit:UnitDistance(unit) end

---Retrieves the gear score of the specified unit or a boolean indicating if the
---unit exists.
---@param unit UNIT The unit to query.
---@param comma boolean Whether to include a comma (does not appear to work).
---@return string|boolean result The gear score as a string, or `false` if the unit does not exist.
---@nodiscard
---@usage
---```
---local result = X2Unit:UnitGearScore("player", true)
---```
---@see UNIT
function X2Unit:UnitGearScore(unit, comma) end

---Retrieves the health of the specified unit if it exists.
---@param unit UNIT The unit to query.
---@return string|nil unitHealth The unit's health, or `nil` if not found.
---@nodiscard
---@usage
---```
---local unitHealth = X2Unit:UnitHealth("player")
---```
---@see UNIT
function X2Unit:UnitHealth(unit) end

---Retrieves the current health, maximum health, and health percentage of the
---specified unit.
---@param unit UNIT The unit to query.
---@return string unitCurrentHealth The current health, or "0" if not found.
---@return string unitMaxHealth The maximum health, or "0" if not found.
---@return string unitHealthPercentage The health percentage, or "0" if not found.
---@nodiscard
---@usage
---```
---local unitCurrentHealth, unitMaxHealth, unitHealthPercentage = X2Unit:UnitHealthInfo("player")
---```
---@see UNIT
function X2Unit:UnitHealthInfo(unit) end

---Retrieves hidden buff information for the specified buff index of the unit if
---it exists.
---@param unit UNIT The unit to query.
---@param buffIndex number The hidden buff index.
---@return BuffInfo unitHiddenBuffInfo The hidden buff information, or an empty table if not found.
---@nodiscard
---@usage
---```
---local unitHiddenBuffInfo =
---```
---@see UNIT
---@see BuffInfo
function X2Unit:UnitHiddenBuff(unit, buffIndex) end

---Retrieves the number of hidden buffs on the specified unit if in render range.
---@param unit UNIT The unit to query.
---@return number unitHiddenBuffCount The number of hidden buffs, or 0 if not in range.
---@nodiscard
---@usage
---```
---local unitHiddenBuffCount = X2Unit:UnitHiddenBuff("player", 1)
---```
---@see UNIT
function X2Unit:UnitHiddenBuffCount(unit) end

---Retrieves the hidden buff tooltip for the specified buff index of the unit if
---it exists.
---@param unit UNIT The unit to query.
---@param buffIndex number The hidden buff index.
---@return BuffTooltip|nil unitHiddenBuffTooltip The hidden buff tooltip, or `nil` if not found.
---@nodiscard
---@usage
---```
---local unitHiddenBuffTooltip = X2Unit:UnitHiddenBuffTooltip("player", 1)
---```
---@see UNIT
---@see BuffTooltip
function X2Unit:UnitHiddenBuffTooltip(unit, buffIndex) end

---Retrieves the level of the specified unit if it exists.
---@param unit UNIT The unit to query.
---@return number|nil unitLevel The unit's level 1 to 55, or `nil` if not found.
---@nodiscard
---@usage
---```
---local unitLevel = X2Unit:UnitLevel("player")
---```
---@see UNIT
function X2Unit:UnitLevel(unit) end

---Retrieves the current mana of the specified unit if it exists.
---@param unit UNIT The unit to query.
---@return string|nil unitCurrentMana The unit's current mana, or `nil` if not found.
---@nodiscard
---@usage
---```
---local unitCurrentMana = X2Unit:UnitMana("player")
---```
---@see UNIT
function X2Unit:UnitMana(unit) end

---Retrieves the current mana, maximum mana, and mana percentage of the
---specified unit.
---@param unit UNIT The unit to query.
---@return string unitCurrentMana The current mana, or "0" if not found.
---@return string unitMaxMana The maximum mana, or "0" if not found.
---@return string unitManaPercentage The mana percentage, or "0" if not found.
---@nodiscard
---@usage
---```
---local unitCurrentMana, unitMaxMana, unitManaPercentage = X2Unit:UnitManaInfo("player")
---```
---@see UNIT
function X2Unit:UnitManaInfo(unit) end

---Retrieves the maximum health of the specified unit if it exists.
---@param unit UNIT The unit to query.
---@return string|nil unitMaxHealth The unit's maximum health, or `nil` if not found.
---@nodiscard
---@usage
---```
---local unitMaxHealth = X2Unit:UnitMaxHealth("player")
---```
---@see UNIT
function X2Unit:UnitMaxHealth(unit) end

---Retrieves the maximum mana of the specified unit if it exists.
---@param unit UNIT The unit to query.
---@return string|nil unitMaxMana The unit's maximum mana, or `nil` if not found.
---@nodiscard
---@usage
---```
---local unitMaxMana = X2Unit:UnitMaxMana("player")
---```
---@see UNIT
function X2Unit:UnitMaxMana(unit) end

---Retrieves the name of the specified unit if it exists.
---@param unit UNIT The unit to query.
---@return string|nil unitName The unit's name, or `nil` if not found.
---@nodiscard
---@usage
---```
---local unitName = X2Unit:UnitName("player")
---```
---@see UNIT
function X2Unit:UnitName(unit) end

---Retrieves the name with world information of the specified unit if it exists.
---@param unit UNIT The unit to query.
---@return string|nil unitNameWithWorld The unit's name with world info, or `nil` if not found.
---@nodiscard
---@usage
---```
---local unitNameWithWorld = X2Unit:UnitNameWithWorld("player")
---```
---@see UNIT
function X2Unit:UnitNameWithWorld(unit) end

---@TODO: Needs testing, unsure of removable debuffs.
---Retrieves the removable debuff for the specified buff index of the unit if it
---exists.
---@param unit UNIT The unit to query.
---@param deBuffIndex number The debuff index.
---@return nil removableDebuff The removable debuff tooltip (currently unimplemented).
---@nodiscard
---@usage
---```
---local removableDebuff = X2Unit:UnitRemovableDebuff("player", 1)
---```
---@see UNIT
function X2Unit:UnitRemovableDebuff(unit, deBuffIndex) end

---Retrieves the number of removable debuffs on the specified unit if in render
---range.
---@param unit UNIT The unit to query.
---@return number|nil removableDebuffCount The number of removable debuffs, or `nil` if not in range.
---@nodiscard
---@usage
---```
---local removableDebuffCount = X2Unit:UnitRemovableDebuffCount("player")
---```
---@see UNIT
function X2Unit:UnitRemovableDebuffCount(unit) end

---@TODO: Needs testing, unsure of removable debuffs.
---Retrieves the removable debuff tooltip for the specified buff index of the
---unit if it exists.
---@param unit UNIT The unit to query.
---@param deBuffIndex number The debuff index.
---@return nil removableDebuffTooltip The removable debuff tooltip (currently unimplemented).
---@nodiscard
---@usage
---```
---local removableDebuffTooltip = X2Unit:UnitRemovableDebuffTooltip("player", 1)
---```
---@see UNIT
function X2Unit:UnitRemovableDebuffTooltip(unit, deBuffIndex) end
