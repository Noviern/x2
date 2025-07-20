---@meta _

COPT_INSTANT = 2                    -- api/X2Craft
COPT_INVALID = 0                    -- api/X2Craft
COPT_PC = 1                         -- api/X2Craft
COSK_ACTABILITY_GROUP = 1           -- api/X2Craft
COSK_DEFAULT = 0                    -- api/X2Craft
COSK_FEE = 2                        -- api/X2Craft
COSO_ASC = 0                        -- api/X2Craft
COSO_DESC = 1                       -- api/X2Craft
CRAFT_ORDER_ENTRY_PER_CHARACTER = 5 -- api/X2Craft
CRAFT_ORDER_ENTRY_PER_SEARCH = 8    -- api/X2Craft
MFCR_FAIL = 3                       -- api/X2Craft
MFCR_FAIL_LIMIT = 1                 -- api/X2Craft
MFCR_FAIL_WAIT = 2                  -- api/X2Craft
MFCR_SUCCESS = 0                    -- api/X2Craft
X2Craft = {}                        -- api/X2Craft

---api/X2Craft
---@class CraftBaseInfo
---@field orderable boolean
---@field cost number
---@field skill_type number
---@field laborpower_satisfied boolean
---@field required_actability_name string
---@field cost_satisfied boolean
---@field require_doodad number
---@field doodad_name string
---@field needed_lp number
---@field required_actability_point number
---@field actability_satisfied boolean
---@field title string
---@field craft_type number
---@field consume_lp number
---@field recommend_level number
---@field required_actability_type number
---@field use_only_actability boolean

---@class CraftProductInfo
---@field productGrade number
---@field itemType number
---@field amount number
---@field item_name string
---@field success_rate number
---@field useGrade boolean

---Returns the [CraftBaseInfo](lua://CraftBaseInfo) for the `craftType`. Does not have material information.
---@param craftType number
---@param doodadId? number (optional) doesnt do anything atm.
---@return CraftBaseInfo? [CraftBaseInfo](lua://CraftBaseInfo)
function X2Craft:GetCraftBaseInfo(craftType, doodadId) end

---TODO: Crash EXCEPTION_ACCESS_VIOLATION. Need to set doodadId type.
---@param craftType number
---@param doodadId any
function X2Craft:GetCraftMaterialInfo(craftType, doodadId) end

---Returns a collection of 1 [CraftProductInfo](lua://CraftProductInfo) instance.
---@param craftType number
---@return CraftProductInfo[]? [CraftProductInfo](lua://CraftProductInfo)
function X2Craft:GetCraftProductInfo(craftType) end
