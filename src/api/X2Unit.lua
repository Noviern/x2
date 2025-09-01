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

---Retrieves the current zone group ID.
---@return ZONE_ID currentZoneGroup The current zone group ID.
---@nodiscard
---@usage
---```lua
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
---```lua
---local targetAbilityTemplates = X2Unit:GetTargetAbilityTemplates("player")
---```
---@see UNIT
---@see TargetAbility
function X2Unit:GetTargetAbilityTemplates(target) end

---Retrieves the unit ID of the current target if in render range.
---@return string|nil unitId The target's unit ID, or `nil` if not in range.
---@nodiscard
---@usage
---```lua
---local unitId = X2Unit:GetTargetUnitId()
---```
function X2Unit:GetTargetUnitId() end

---Retrieves the unit ID for the specified unit if in render range.
---@param unit UNIT The unit to query.
---@return string|nil unitId The unit ID, or `nil` if not in range.
---@nodiscard
---@usage
---```lua
---local unitId = X2Unit:GetUnitId("player")
---```
---@see UNIT
function X2Unit:GetUnitId(unit) end

---Retrieves unit information for the specified unit ID if in render range.
---@param unitId string The unit ID .
---@return UnitInfo|nil unitInfo The unit information, or `nil` if not in range.
---@nodiscard
---@usage
---```lua
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
---```lua
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
---```lua
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
---```lua
---local x, y, z, angle = X2Unit:GetUnitWorldPositionByTarget("player", false)
---```
---@see UNIT
function X2Unit:GetUnitWorldPositionByTarget(unit, isLocal) end

---Retrieves buff information for the specified buff index of the unit if in
---render range.
---@param unit UNIT The unit to query.
---@param buffIndex number The buff index. (min: `1`)
---@return BuffInfo unitBuffInfo The buff information, or an empty table if not in range.
---@nodiscard
---@usage
---```lua
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
---```lua
---local unitBuffCount = X2Unit:UnitBuffCount("player")
---```
---@see UNIT
function X2Unit:UnitBuffCount(unit) end

---Retrieves the buff tooltip for the specified buff index of the unit if in
---render range.
---@param unit UNIT The unit to query.
---@param buffIndex number The buff index. (min: `1`)
---@param neededInfo? BIK Optional additional information for the buff.
---@return BuffTooltip|nil unitBuffTooltip The buff tooltip, or `nil` if not in range.
---@nodiscard
---@usage
---```lua
---local unitBuffTooltip = X2Unit:UnitBuffTooltip("player", 1)
---```
---@see UNIT
---@see BuffTooltip
function X2Unit:UnitBuffTooltip(unit, buffIndex, neededInfo) end

---Retrieves casting information for the specified unit if in render range.
---@param unit UNIT The unit to query.
---@return CastingInfo|nil unitCastingInfo The casting information, or `nil` if not in range.
---@nodiscard
---@usage
---```lua
---local unitCastingInfo = X2Unit:UnitCastingInfo("player")
---```
---@see UNIT
---@see CastingInfo
function X2Unit:UnitCastingInfo(unit) end

---Retrieves debuff information for the specified buff index of the unit if in
---render range.
---@param unit UNIT The unit to query.
---@param deBuffIndex number The debuff index. (min: `1`)
---@return BuffInfo unitDebuffInfo The debuff information, or an empty table if not in range.
---@nodiscard
---@usage
---```lua
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
---```lua
---local unitDeBuffCount = X2Unit:UnitDeBuffCount("player")
---```
---@see UNIT
function X2Unit:UnitDeBuffCount(unit) end

---Retrieves the debuff tooltip for the specified buff index of the unit if in
---render range.
---@param unit UNIT The unit to query.
---@param deBuffIndex number The debuff index. (min: `1`)
---@param neededInfo? BIK Optional additional information for the buff.
---@return BuffTooltip|nil unitDebuffTooltip The debuff tooltip, or `nil` if not in range.
---@nodiscard
---@usage
---```lua
---local unitDebuffTooltip = X2Unit:UnitDeBuffTooltip("player", 1)
---```
---@see UNIT
---@see BuffTooltip
function X2Unit:UnitDeBuffTooltip(unit, deBuffIndex, neededInfo) end

---Retrieves the distance between the player and the specified unit's boundary
---box if in render range.
---@param unit UNIT The unit to query.
---@return UnitDistance|nil unitDistance The distance information, or `nil` if not in range.
---@nodiscard
---@usage
---```lua
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
---```lua
---local result = X2Unit:UnitGearScore("player", true)
---```
---@see UNIT
function X2Unit:UnitGearScore(unit, comma) end

---Retrieves the health of the specified unit if it exists.
---@param unit UNIT The unit to query.
---@return string|nil unitHealth The unit's health, or `nil` if not found.
---@nodiscard
---@usage
---```lua
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
---```lua
---local unitCurrentHealth, unitMaxHealth, unitHealthPercentage = X2Unit:UnitHealthInfo("player")
---```
---@see UNIT
function X2Unit:UnitHealthInfo(unit) end

---Retrieves hidden buff information for the specified buff index of the unit if
---it exists.
---@param unit UNIT The unit to query.
---@param buffIndex number The hidden buff index. (min: `1`)
---@return BuffInfo unitHiddenBuffInfo The hidden buff information, or an empty table if not found.
---@nodiscard
---@usage
---```lua
---local unitHiddenBuffInfo = X2Unit:UnitHiddenBuff("player", 1)
---```
---@see UNIT
---@see BuffInfo
function X2Unit:UnitHiddenBuff(unit, buffIndex) end

---Retrieves the number of hidden buffs on the specified unit if in render range.
---@param unit UNIT The unit to query.
---@return number unitHiddenBuffCount The number of hidden buffs, or 0 if not in range.
---@nodiscard
---@usage
---```lua
---local unitHiddenBuffCount = X2Unit:UnitHiddenBuff("player", 1)
---```
---@see UNIT
function X2Unit:UnitHiddenBuffCount(unit) end

---Retrieves the hidden buff tooltip for the specified buff index of the unit if
---it exists.
---@param unit UNIT The unit to query.
---@param buffIndex number The hidden buff index. (min: `1`)
---@param neededInfo? BIK Optional additional information for the buff.
---@return BuffTooltip|nil unitHiddenBuffTooltip The hidden buff tooltip, or `nil` if not found.
---@nodiscard
---@usage
---```lua
---local unitHiddenBuffTooltip = X2Unit:UnitHiddenBuffTooltip("player", 1)
---```
---@see UNIT
---@see BuffTooltip
function X2Unit:UnitHiddenBuffTooltip(unit, buffIndex, neededInfo) end

---Retrieves the level of the specified unit if it exists.
---@param unit UNIT The unit to query.
---@return number|nil unitLevel The unit's level 1 to 55, or `nil` if not found.
---@nodiscard
---@usage
---```lua
---local unitLevel = X2Unit:UnitLevel("player")
---```
---@see UNIT
function X2Unit:UnitLevel(unit) end

---Retrieves the current mana of the specified unit if it exists.
---@param unit UNIT The unit to query.
---@return string|nil unitCurrentMana The unit's current mana, or `nil` if not found.
---@nodiscard
---@usage
---```lua
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
---```lua
---local unitCurrentMana, unitMaxMana, unitManaPercentage = X2Unit:UnitManaInfo("player")
---```
---@see UNIT
function X2Unit:UnitManaInfo(unit) end

---Retrieves the maximum health of the specified unit if it exists.
---@param unit UNIT The unit to query.
---@return string|nil unitMaxHealth The unit's maximum health, or `nil` if not found.
---@nodiscard
---@usage
---```lua
---local unitMaxHealth = X2Unit:UnitMaxHealth("player")
---```
---@see UNIT
function X2Unit:UnitMaxHealth(unit) end

---Retrieves the maximum mana of the specified unit if it exists.
---@param unit UNIT The unit to query.
---@return string|nil unitMaxMana The unit's maximum mana, or `nil` if not found.
---@nodiscard
---@usage
---```lua
---local unitMaxMana = X2Unit:UnitMaxMana("player")
---```
---@see UNIT
function X2Unit:UnitMaxMana(unit) end

---Retrieves the name of the specified unit if it exists.
---@param unit UNIT The unit to query.
---@return string|nil unitName The unit's name, or `nil` if not found.
---@nodiscard
---@usage
---```lua
---local unitName = X2Unit:UnitName("player")
---```
---@see UNIT
function X2Unit:UnitName(unit) end

---Retrieves the name with world information of the specified unit if it exists.
---@param unit UNIT The unit to query.
---@return string|nil unitNameWithWorld The unit's name with world info, or `nil` if not found.
---@nodiscard
---@usage
---```lua
---local unitNameWithWorld = X2Unit:UnitNameWithWorld("player")
---```
---@see UNIT
function X2Unit:UnitNameWithWorld(unit) end

---@TODO: Needs testing, unsure of removable debuffs.
---Retrieves the removable debuff for the specified buff index of the unit if it
---exists.
---@param unit UNIT The unit to query.
---@param deBuffIndex number The debuff index. (min: `1`)
---@return nil removableDebuff The removable debuff tooltip (currently unimplemented).
---@nodiscard
---@usage
---```lua
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
---```lua
---local removableDebuffCount = X2Unit:UnitRemovableDebuffCount("player")
---```
---@see UNIT
function X2Unit:UnitRemovableDebuffCount(unit) end

---@TODO: Needs testing, unsure of removable debuffs. check if neededInfo exists.
---Retrieves the removable debuff tooltip for the specified buff index of the
---unit if it exists.
---@param unit UNIT The unit to query.
---@param deBuffIndex number The debuff index. (min: `1`)
---@param neededInfo? BIK Optional additional information for the buff.
---@return nil removableDebuffTooltip The removable debuff tooltip (currently unimplemented).
---@nodiscard
---@usage
---```lua
---local removableDebuffTooltip = X2Unit:UnitRemovableDebuffTooltip("player", 1)
---```
---@see UNIT
function X2Unit:UnitRemovableDebuffTooltip(unit, deBuffIndex, neededInfo) end
