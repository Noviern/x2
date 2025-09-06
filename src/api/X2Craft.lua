---@meta _

COPT_INSTANT = 2                    -- api/X2Craft COPT
COPT_INVALID = 0                    -- api/X2Craft COPT
COPT_PC = 1                         -- api/X2Craft COPT
COSK_ACTABILITY_GROUP = 1           -- api/X2Craft COSK
COSK_DEFAULT = 0                    -- api/X2Craft COSK
COSK_FEE = 2                        -- api/X2Craft COSK
COSO_ASC = 0                        -- api/X2Craft COSO
COSO_DESC = 1                       -- api/X2Craft COSO
CRAFT_ORDER_ENTRY_PER_CHARACTER = 5 -- api/X2Craft
CRAFT_ORDER_ENTRY_PER_SEARCH = 8    -- api/X2Craft
MFCR_FAIL = 3                       -- api/X2Craft MFCR
MFCR_FAIL_LIMIT = 1                 -- api/X2Craft MFCR
MFCR_FAIL_WAIT = 2                  -- api/X2Craft MFCR
MFCR_SUCCESS = 0                    -- api/X2Craft MFCR
---@class X2Craft
X2Craft = {}                        -- api/X2Craft

---api/X2Craft
---Craft Order Process Type
---@alias COPT
---| `COPT_INSTANT`
---| `COPT_INVALID`
---| `COPT_PC`

---api/X2Craft
---Craft Order Sort Kind
---@alias COSK
---| `COSK_ACTABILITY_GROUP`
---| `COSK_DEFAULT`
---| `COSK_FEE`

---api/X2Craft
---Craft Order Sort Order
---@alias COSO
---| `COSO_ASC`
---| `COSO_DESC`

---api/X2Craft
---Modify Favorite Craft Recipe
---@alias MFCR
---| `MFCR_FAIL`
---| `MFCR_FAIL_LIMIT`
---| `MFCR_FAIL_WAIT`
---| `MFCR_SUCCESS`

---Retrieves the base craft information for the specified craft type, excluding material information.
---@param craftType number The type of craft to query.
---@param doodadId? number Optional doodad ID.
---@return CraftBaseInfo|nil craftBaseInfo The base craft information, or `nil` if not found.
---@nodiscard
---@usage
---```lua
---local craftBaseInfo = X2Craft:GetCraftBaseInfo(85)
---```
---@see CraftBaseInfo
function X2Craft:GetCraftBaseInfo(craftType, doodadId) end

---@TODO: Crash EXCEPTION_ACCESS_VIOLATION. Need to set doodadId type. No usage
---Retrieves the material information for the specified craft type.
---@param craftType number The type of craft to query.
---@param doodadId? number The doodad ID (type TBD, causes crash).
function X2Craft:GetCraftMaterialInfo(craftType, doodadId) end

---Retrieves a list containing craft product information.
---@param craftType number The type of craft to query.
---@return CraftProductInfo[]|nil craftProductInfo A table of craft product info, or `nil` if not found.
---@nodiscard
---@usage
---```lua
---local craftProductInfo = X2Craft:GetCraftProductInfo(85)
---```
---@see CraftProductInfo
function X2Craft:GetCraftProductInfo(craftType) end
