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
---@field actability_satisfied boolean
---@field consume_lp number
---@field cost number
---@field cost_satisfied boolean
---@field craft_type number
---@field doodad_name string
---@field laborpower_satisfied boolean
---@field needed_lp number
---@field orderable boolean
---@field recommend_level number
---@field require_doodad number
---@field required_actability_name string
---@field required_actability_point number
---@field required_actability_type number
---@field skill_type number
---@field title string
---@field use_only_actability boolean

---api/X2Craft
---@class CraftProductInfo
---@field amount number
---@field item_name string
---@field itemType number
---@field productGrade number
---@field success_rate number
---@field useGrade boolean

---Retrieves the base craft information for the specified craft type, excluding material information.
---@param craftType number The type of craft to query.
---@param doodadId? number Optional doodad ID.
---@return CraftBaseInfo|nil craftBaseInfo The base craft information, or nil if not found.
---@nodiscard
---@usage
---```
---local craftBaseInfo = X2Craft:GetCraftBaseInfo(85)
---```
---@see CraftBaseInfo
function X2Craft:GetCraftBaseInfo(craftType, doodadId) end

---@TODO: Crash EXCEPTION_ACCESS_VIOLATION. Need to set doodadId type. No usage
---Retrieves the material information for the specified craft type.
---@param craftType number The type of craft to query.
---@param doodadId any The doodad ID (type TBD, causes crash).
function X2Craft:GetCraftMaterialInfo(craftType, doodadId) end

---Retrieves a list containing craft product information.
---@param craftType number The type of craft to query.
---@return CraftProductInfo[]|nil craftProductInfo A table of craft product info, or nil if not found.
---@nodiscard
---@usage
---```
---local craftProductInfo = X2Craft:GetCraftProductInfo(85)
---```
---@see CraftProductInfo
function X2Craft:GetCraftProductInfo(craftType) end
