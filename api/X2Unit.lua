---@meta _

BANVOTE_TYPE_CHECK_ENABLE = 0 -- api/X2Unit
BANVOTE_TYPE_START_VOTE = 1 -- api/X2Unit
BANVOTE_TYPE_VOTE_AGREE = 2 -- api/X2Unit
BANVOTE_TYPE_VOTE_CLEAR = 3 -- api/X2Unit
BRT_CHEATING = 3 -- api/X2Unit
BRT_CHILLING_EFFECT = 4 -- api/X2Unit
BRT_NON_PARTICIPATE = 1 -- api/X2Unit
BRT_NO_MANNER_CHAT = 2 -- api/X2Unit
BRT_NO_REASON = 0 -- api/X2Unit
DUEL_TYPE_INVALID = 0 -- api/X2Unit
DUEL_TYPE_PARTY = 2 -- api/X2Unit
DUEL_TYPE_SOLO = 1 -- api/X2Unit
GAME_TYPE_BATTLE_FIELD = 1 -- api/X2Unit
GAME_TYPE_CONFLICT_ZONE = 5 -- api/X2Unit
GAME_TYPE_INDUN = 3 -- api/X2Unit
GAME_TYPE_NORMAL = 0 -- api/X2Unit
GAME_TYPE_SEAMLESS = 2 -- api/X2Unit
GAME_TYPE_SIEGE = 4 -- api/X2Unit
GENDER_FEMALE = 2 -- api/X2Unit
GENDER_MALE = 1 -- api/X2Unit
GENDER_NONE = 0 -- api/X2Unit
MAX_MODE_ACTION_COUNT = 20 -- api/X2Unit
MAX_OVER_HEAD_MARKER = 12 -- api/X2Unit
RACE_DARU = 9 -- api/X2Unit
RACE_DWARF = 3 -- api/X2Unit
RACE_ELF = 4 -- api/X2Unit
RACE_FAIRY = 2 -- api/X2Unit
RACE_FERRE = 6 -- api/X2Unit
RACE_HARIHARAN = 5 -- api/X2Unit
RACE_NONE = 0 -- api/X2Unit
RACE_NUIAN = 1 -- api/X2Unit
RACE_RETURNED = 7 -- api/X2Unit
RACE_WARBORN = 8 -- api/X2Unit
X2Unit = {} -- api/X2Unit

---Returns the `currentZoneGroup`.
---@return number currentZoneGroup
function X2Unit:GetCurrentZoneGroup() end

---Returns a collection of 3 [TargetAbilityTemplate](lua://TargetAbilityTemplate) instances for the `target`  if they are in render range.
---@param target string
---@return TargetAbilityTemplate[]? [TargetAbilityTemplate](lua://TargetAbilityTemplate)
function X2Unit:GetTargetAbilityTemplates(target) end

---Returns current target's `unitId` if they are in render range.
---@return string? unitId
function X2Unit:GetTargetUnitId() end

---Returns the `unitId` for the `unit` if they are in render range. 
---@param unit string
---@return string? unitId
function X2Unit:GetUnitId(unit) end

---Returns a [UnitInfo](lua://UnitInfo) for the `stringId` if they are in render range.
---@param stringId string `X2Unit:GetTargetUnitId` or `X2Unit:GetUnitId` can provide the `stringId`.
---@return UnitInfo? [UnitInfo](lua://UnitInfo)
function X2Unit:GetUnitInfoById(stringId) end

---Returns the `unitName` of a `stringId` if they are in render range.
---@param stringId string `X2Unit:GetTargetUnitId` or `X2Unit:GetUnitId` can provide the `stringId`.
---@return string? unitName
function X2Unit:GetUnitNameById(stringId) end

---Returns the `x`, `y`, `z` of a `unit` screen position if they are in render range.
---@param unit string
---@return number? x, number? y, number? z
function X2Unit:GetUnitScreenPosition(unit) end

---TODO:
---Returns the `x`, `y`, and `z` of the `unit` in the world. The behavior is odd as the `x` and `y` coordinates reset
---when you cross into a new cell. if they are in render range.
---@param unit string
---@return number? x, number? y, number? z
function X2Unit:GetUnitWorldPositionByTarget(unit) end

---Returns [BuffInfo](lua://BuffInfo) for the `buffIndex` of `unit` if they are in render range, otherwise returns an empty table.
---@param unit string
---@param buffIndex number
---@return BuffInfo [BuffInfo](lua://BuffInfo)
function X2Unit:UnitBuff(unit, buffIndex) end

---Returns `unitBuffCount` if `unit` is within render range, otherwise returns 0. 
---@param unit string
---@return number unitBuffCount
function X2Unit:UnitBuffCount(unit) end

---Returns [BuffTooltip](lua://BuffTooltip) for the `buffIndex` of `unit` if they are in render range.
---@param unit string
---@param buffIndex number
---@return BuffTooltip? [BuffTooltip](lua://BuffTooltip)
function X2Unit:UnitBuffTooltip(unit, buffIndex) end

---Returns [CastingInfo](lua://CastingInfo) for the `unit` if they are in render range.
---@param unit string
---@return CastingInfo? [CastingInfo](lua://CastingInfo)
function X2Unit:UnitCastingInfo(unit) end

---Returns [BuffInfo](lua://BuffInfo) for the `buffIndex` of `unit` if they are in render range, otherwise returns an empty table.
---@param unit string
---@param buffIndex number
---@return BuffInfo [BuffInfo](lua://BuffInfo)
function X2Unit:UnitDeBuff(unit, buffIndex) end

---Returns `unitDeBuffCount` if `unit` is within render range, otherwise returns 0. 
---@param unit string
---@return number unitDeBuffCount
function X2Unit:UnitDeBuffCount(unit) end

---Returns [BuffTooltip](lua://BuffTooltip) for the `buffIndex` of `unit` if they are in render range.
---@param unit string
---@param buffIndex number
---@return BuffTooltip? [BuffTooltip](lua://BuffTooltip)
function X2Unit:UnitDeBuffTooltip(unit, buffIndex) end

---Returns [UnitDistance](lua://UnitDistance) between the player and the `unit` boundary box if they are in render range.
---@param unit string
---@return UnitDistance? [UnitDistance](lua://UnitDistance)
function X2Unit:UnitDistance(unit) end

---Returns `result` containing the gearscore of the `unit` if they exist otherwise returns a boolean that is false.
---@param unit string
---@param comma boolean this doesnt appear to work.
---@return string|boolean result
function X2Unit:UnitGearScore(unit, comma) end

---Returns `unitHealth` of the `unit` if they exist.
---@param unit string
---@return string? unitHealth
function X2Unit:UnitHealth(unit) end

---Returns `unitCurrentHealth`, `unitMaxHealth`, and `unitHealthPercentage` if the `unit` exists, otherwise returns "0"
---for all three.
---@param unit string
---@return string unitCurrentHealth, string unitMaxHealth, string unitHealthPercentage 
function X2Unit:UnitHealthInfo(unit) end

---Returns [BuffInfo](lua://BuffInfo) for the `buffIndex` of `unit`if it exists, otherwise returns an empty table.
---@param unit string
---@param buffIndex number
---@return BuffInfo
function X2Unit:UnitHiddenBuff(unit, buffIndex) end

---Returns `unitHiddenBuffCount` if `unit` is within render range, otherwise returns 0. 
---@param unit string
---@return number unitHiddenBuffCount
function X2Unit:UnitHiddenBuffCount(unit) end

---Returns [BuffTooltip](lua://BuffTooltip) for the `buffIndex` of `unit` if they exist.
---@param unit string
---@param buffIndex number
---@return BuffTooltip? [BuffTooltip](lua://BuffTooltip)
function X2Unit:UnitHiddenBuffTooltip(unit, buffIndex) end

---Returns `unitLevel` for `unit` if they exist.
---@param unit string
---@return number? unitLevel
function X2Unit:UnitLevel(unit) end

---Returns `unitCurrentMana` of `unit` if they exist.
---@param unit any
---@return string? unitCurrentMana
function X2Unit:UnitMana(unit) end

---Returns `unitCurrentMana`, `unitMaxMana`, and `unitManaPercentage` if the `unit` exists, otherwise returns "0" for
---all three.
---@param unit string
---@return string unitCurrentMana, string unitMaxMana, string unitManaPercentage
function X2Unit:UnitManaInfo(unit) end

---Returns `unitMaxHealth` of `unit` if they exist.
---@param unit string
---@return string? unitMaxHealth
function X2Unit:UnitMaxHealth(unit) end

---Returns `unitMaxMana` of `unit` if they exist.
---@param unit string
---@return string? unitMaxMana
function X2Unit:UnitMaxMana(unit) end

---Returns `unitName` of `unit` if they exist.
---@param unit string
---@return string? unitName
function X2Unit:UnitName(unit) end

---Returns `unitNameWithWorld` if they exist.
---@param unit string
---@return string? unitNameWithWorld
function X2Unit:UnitNameWithWorld(unit) end

---TODO:
---This needs to be tested, I dont know of any debuffs that can be removed.
---Returns [BuffTooltip](lua://BuffTooltip) for the `buffIndex` of `unit` if they exist.
---@param unit string
---@param buffIndex number
---@return nil
function X2Unit:UnitRemovableDebuff(unit, buffIndex) end

---Returns `unitRemovableDebuffCount` if `unit` is within render range, otherwise returns 0. 
---@param unit string
---@return number? unitRemovableDebuffCount
function X2Unit:UnitRemovableDebuffCount(unit) end

---TODO:
---This needs to be tested, I dont know of any debuffs that can be removed.
---Returns [BuffTooltip](lua://BuffTooltip) for the `buffIndex` of `unit` if they exist.
---@param unit string
---@param buffIndex number
---@return nil
function X2Unit:UnitRemovableDebuffTooltip(unit, buffIndex) end