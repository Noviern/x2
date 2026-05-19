---@meta _

NIBC_BUFF_LEFT_TIME = 2 -- api/X2BattleField NPC_INFORMATION_BROAD_CAST
NIBC_BUFF_STACK = 1     -- api/X2BattleField NPC_INFORMATION_BROAD_CAST
VS_DRAW = 2             -- api/X2BattleField VS
VS_LOSE = 1             -- api/X2BattleField VS
VS_WIN = 3              -- api/X2BattleField VS
---@class X2BattleField
X2BattleField = {}      -- api/X2BattleField

---api/X2BattleField
---@alias NPC_INFORMATION_BROAD_CAST
---| `NIBC_BUFF_LEFT_TIME`
---| `NIBC_BUFF_STACK`

---api/X2BattleField
---@alias VS
---| `VS_DRAW`
---| `VS_LOSE`
---| `VS_WIN`

---Returns detailed information about a specific instance.
---Returns `nil` if the player does not meet the level requirements.
---@param instanceType number The instance type to query.
---@return DetailInstanceInfo|nil detailInfo The instance details, or `nil` if requirements not met.
---@discard
---@see DetailInstanceInfo
function X2BattleField:GetDetailInstanceInfo(instanceType) end

---Returns a list of instances for the specified kind.
---Returns `nil` if the player does not meet the level requirements.
---@param kind number The instance kind to query.
---@return InstanceByKind[]|nil instanceList The list of instances, or `nil` if requirements not met.
---@discard
function X2BattleField:GetInstanceListByKind(kind) end

---Returns the name of the specified instance.
---@param instanceType number The instance type to query.
---@return string|nil instanceName The instance name, or `nil` if not found.
---@discard
function X2BattleField:GetInstanceName(instanceType) end

---Returns a list of available instance kinds for the UI.
---@return InstanceUiKind[] instanceUiKindList The list of instance UI kinds.
---@discard
---@see InstanceUiKind
function X2BattleField:GetInstanceUiKindList() end
