---@meta _

CRU_DOUBLE_GAUGE = 3   -- api/X2CombatResource CRU
CRU_DOUBLE_GAUGE_2 = 4 -- api/X2CombatResource CRU
CRU_GAUGE = 1          -- api/X2CombatResource CRU
CRU_OVERLAP = 2        -- api/X2CombatResource CRU
---@class X2CombatResource
X2CombatResource = {}  -- api/X2CombatResource

---api/X2CombatResource
---Combat Resource Uitype
---@alias CRU
---| `CRU_DOUBLE_GAUGE`
---| `CRU_DOUBLE_GAUGE_2`
---| `CRU_GAUGE`
---| `CRU_OVERLAP`

---@FIXME: Broken? Always returns false.
---Checks if the combat resource for the specified group type is at its maximum.
---@param groupType ABILITY_TYPE The group type to check.
---@return boolean maxPointByGroupType `true` if the combat resource is at maximum, `false` otherwise.
---@nodiscard
function X2CombatResource:CheckCombatResourceMaxPointByGroupType(groupType) end

---Retrieves a list of combat resource information for all available ability
---types.
---@return CombatResources combatResourceInfo A table of combat resource information.
---@nodiscard
---@see CombatResourceInfo
function X2CombatResource:GetCombatResourceInfo() end

---Retrieves combat resource information for the specified group type if the
---player has it.
---@param groupType ABILITY_TYPE The group type to query.
---@return CombatResource|nil combatResourceInfo The combat resource information, or `nil` if not available.
---@nodiscard
---@see CombatResource
function X2CombatResource:GetCombatResourceInfoByGroupType(groupType) end
