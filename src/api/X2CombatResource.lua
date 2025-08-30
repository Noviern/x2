---@meta _

CRU_DOUBLE_GAUGE = 3   -- api/X2CombatResource
CRU_DOUBLE_GAUGE_2 = 4 -- api/X2CombatResource
CRU_GAUGE = 1          -- api/X2CombatResource
CRU_OVERLAP = 2        -- api/X2CombatResource
---@class X2CombatResource
X2CombatResource = {}  -- api/X2CombatResource

---api/X2CombatResource
---Combat Resource Uitype
---@alias CRU
---| `CRU_DOUBLE_GAUGE`
---| `CRU_DOUBLE_GAUGE_2`
---| `CRU_GAUGE`
---| `CRU_OVERLAP`

---api/X2CombatResource
---@class CombatResource
---@field ability number
---@field isDefaultResource boolean
---@field recoveryResourceType number
---@field resource1ColorKey string
---@field resource1Current number
---@field resource1Max number
---@field resource2ColorKey? string
---@field resource2Current? number
---@field resource2Max? number
---@field uiType CRU

---api/X2CombatResource
---@class CombatResourceInfo: CombatResource
---@field groupType number
---@field iconPath string
---@field tooltip string

---@class CombatResources
---@field [1] CombatResourceInfo
---@field [2] CombatResourceInfo
---@field [3] CombatResourceInfo

---@TODO: Broken? Always returns false.
---Checks if the combat resource for the specified group type is at its maximum.
---@param groupType ABILITY_TYPE The group type to check.
---@return boolean maxPointByGroupType `true` if the combat resource is at maximum, `false` otherwise.
---@nodiscard
---@usage
---```lua
---local maxPointByGroupType = X2CombatResource:CheckCombatResourceMaxPointByGroupType(13)
---```
---@see ABILITY_TYPE
function X2CombatResource:CheckCombatResourceMaxPointByGroupType(groupType) end

---Retrieves a list of combat resource information for all available ability
---types.
---@return CombatResources combatResourceInfo A table of combat resource information.
---@nodiscard
---@usage
---```lua
---local combatResourceInfo = X2CombatResource:GetCombatResourceInfo()
---```
---@see CombatResourceInfo
---@see ABILITY_TYPE
function X2CombatResource:GetCombatResourceInfo() end

---Retrieves combat resource information for the specified group type if the
---player has it.
---@param groupType ABILITY_TYPE The group type to query.
---@return CombatResource|nil combatResourceInfo The combat resource information, or `nil` if not available.
---@nodiscard
---@usage
---```lua
---local combatResourceInfo = X2CombatResource:GetCombatResourceInfoByGroupType(13)
---```
---@see ABILITY_TYPE
---@see CombatResource
function X2CombatResource:GetCombatResourceInfoByGroupType(groupType) end
