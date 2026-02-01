---@meta _

COPT_INSTANT = 2                    -- api/X2Craft CRAFT_ORDER_PROCESS_TYPE
COPT_INVALID = 0                    -- api/X2Craft CRAFT_ORDER_PROCESS_TYPE
COPT_PC = 1                         -- api/X2Craft CRAFT_ORDER_PROCESS_TYPE
COSK_ACTABILITY_GROUP = 1           -- api/X2Craft CRAFT_ORDER_SORT_KIND
COSK_DEFAULT = 0                    -- api/X2Craft CRAFT_ORDER_SORT_KIND
COSK_FEE = 2                        -- api/X2Craft CRAFT_ORDER_SORT_KIND
COSO_ASC = 0                        -- api/X2Craft CRAFT_ORDER_SORT_ORDER
COSO_DESC = 1                       -- api/X2Craft CRAFT_ORDER_SORT_ORDER
CRAFT_ORDER_ENTRY_PER_CHARACTER = 5 -- api/X2Craft
CRAFT_ORDER_ENTRY_PER_SEARCH = 8    -- api/X2Craft
MFCR_FAIL = 3                       -- api/X2Craft MODIFY_FAVORITE_CRAFT_RESULT
MFCR_FAIL_LIMIT = 1                 -- api/X2Craft MODIFY_FAVORITE_CRAFT_RESULT
MFCR_FAIL_WAIT = 2                  -- api/X2Craft MODIFY_FAVORITE_CRAFT_RESULT
MFCR_SUCCESS = 0                    -- api/X2Craft MODIFY_FAVORITE_CRAFT_RESULT
---@class X2Craft
X2Craft = {}                        -- api/X2Craft

---api/X2Craft
---@alias CRAFT_ORDER_PROCESS_TYPE
---| `COPT_INSTANT`
---| `COPT_INVALID`
---| `COPT_PC`

---api/X2Craft
---@alias CRAFT_ORDER_SORT_KIND
---| `COSK_ACTABILITY_GROUP`
---| `COSK_DEFAULT`
---| `COSK_FEE`

---api/X2Craft
---@alias CRAFT_ORDER_SORT_ORDER
---| `COSO_ASC`
---| `COSO_DESC`

---api/X2Craft
---@alias MODIFY_FAVORITE_CRAFT_RESULT
---| `MFCR_FAIL`
---| `MFCR_FAIL_LIMIT`
---| `MFCR_FAIL_WAIT`
---| `MFCR_SUCCESS`

---Retrieves the base craft information for the specified craft type, excluding
---material information.
---@param craftType number The type of craft to query.
---@param doodadId? number Optional doodad ID.
---@return CraftBaseInfo|nil craftBaseInfo The base craft information, or `nil` if not found.
---@nodiscard
---@see CraftBaseInfo
function X2Craft:GetCraftBaseInfo(craftType, doodadId) end

---@FIXME: Crash EXCEPTION_ACCESS_VIOLATION. Need to set doodadId type. No usage
---Retrieves the material information for the specified craft type.
---@param craftType number The type of craft to query.
---@param doodadId? number The doodad ID.
function X2Craft:GetCraftMaterialInfo(craftType, doodadId) end

---Retrieves a list containing craft product information.
---@param craftType number The type of craft to query.
---@return CraftProductInfo[]|nil craftProductInfo A table of craft product info, or `nil` if not found.
---@nodiscard
---@see CraftProductInfo
function X2Craft:GetCraftProductInfo(craftType) end
