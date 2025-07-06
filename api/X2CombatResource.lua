---@meta _

CRU_DOUBLE_GAUGE = 3 -- api/X2CombatResource
CRU_DOUBLE_GAUGE_2 = 4 -- api/X2CombatResource
CRU_GAUGE = 1 -- api/X2CombatResource
CRU_OVERLAP = 2 -- api/X2CombatResource
X2CombatResource = {} -- api/X2CombatResource

---TODO:
---Broken. Always returns false.
---@param groupType ABILITY_TYPE [ABILITY_TYPE](lua://ABILITY_TYPE)
---@return boolean maxPointByGroupType
function X2CombatResource:CheckCombatResourceMaxPointByGroupType(groupType) end

---Returns a collection of [CombatResourceInfo](lua://CombatResourceInfo) for all available [ABILITY_TYPE](lua://ABILITY_TYPE).
---@return CombatResourceInfo[] [CombatResourceInfo](lua://CombatResourceInfo)
function X2CombatResource:GetCombatResourceInfo() end

---Returns [CombatResource](lua://CombatResource) for `groupType` if the player has it.
---@param groupType ABILITY_TYPE [ABILITY_TYPE](lua://ABILITY_TYPE)
---@return CombatResource? [CombatResource](lua://CombatResource)
function X2CombatResource:GetCombatResourceInfoByGroupType(groupType) end