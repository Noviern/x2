---@meta _

BM_MILEAGE_ITEM_TYPE = 28586            -- api/X2Item BM_MILEAGE
BM_MILEAGE_USABLE_ONE_ITEM_TYPE = 29911 -- api/X2Item BM_MILEAGE
BPT_GOODS = 3                           -- api/X2Item BPT
BPT_TRADEGOODS = 8                      -- api/X2Item BPT
IIK_CATEGORY = 128                      -- api/X2Item IIK
IIK_CONSUME_ITEM = 256                  -- api/X2Item IIK
IIK_GRADE = 4                           -- api/X2Item IIK
IIK_GRADE_STR = 8                       -- api/X2Item IIK
IIK_IMPL = 16                           -- api/X2Item IIK
IIK_NAME = 2                            -- api/X2Item IIK
IIK_SELL = 32                           -- api/X2Item IIK
IIK_SOCKET_MODIFIER = 512               -- api/X2Item IIK
IIK_STACK = 64                          -- api/X2Item IIK
IIK_TYPE = 1                            -- api/X2Item IIK
ISLOT_EQUIPMENT = 1                     -- api/X2Item SLOT_TYPE
ISUS_MAX_UPGRADE = 2                    -- api/X2Item ISUS
ISUS_MISS_MATCH = 3                     -- api/X2Item ISUS
ISUS_UPGRADE = 1                        -- api/X2Item ISUS
ITEM_MATE_NOT_EQUIP = 2                 -- api/X2Item ITEM_MATE
ITEM_MATE_UNSUMMON = 1                  -- api/X2Item ITEM_MATE
ITEM_SECURITY_INVALID = 0               -- api/X2Item ITEM_SECURITY
ITEM_SECURITY_LOCKED = 1                -- api/X2Item ITEM_SECURITY
ITEM_SECURITY_UNLOCKED = 2              -- api/X2Item ITEM_SECURITY
ITEM_SECURITY_UNLOCKING = 3             -- api/X2Item ITEM_SECURITY
ITEM_SLAVE_NOT_EQUIP = 4                -- api/X2Item ITEM_MATE
ITEM_SLAVE_UNSUMMON = 3                 -- api/X2Item ITEM_MATE
ITEM_TASK_CRAFT_PICKUP_PRODUCT = 27     -- api/X2Item ITEM_TASK
ITEM_TASK_HOUSE_CREATION = 32           -- api/X2Item ITEM_TASK
ITEM_TASK_INVALID = 0                   -- api/X2Item ITEM_TASK
ITEM_TASK_MAIL = 49                     -- api/X2Item ITEM_TASK
ITEM_TASK_TRADE = 50                    -- api/X2Item ITEM_TASK
MAX_ITEM_SOCKETS = 9                    -- api/X2Item
MAX_SET_ITEMS = 14                      -- api/X2Item
MONEY_ITEM_TYPE = 500                   -- api/X2Item
NORMAL_ITEM_GRADE = 0                   -- api/X2Item
POOR_ITEM_GRADE = 1                     -- api/X2Item
---@class X2Item
X2Item = {}                             -- api/X2Item

---api/X2Item
---Buy Mode Mileage
---@alias BM_MILEAGE
---| `BM_MILEAGE_ITEM_TYPE`
---| `BM_MILEAGE_USABLE_ONE_ITEM_TYPE`

---api/X2Item
---Back Pack Type
---@alias BPT
---| `BPT_GOODS`
---| `BPT_TRADEGOODS`

---api/X2Item
---Item Information Kind
---Values can be added together to get more information.
---@alias IIK
---| `IIK_CATEGORY`
---| `IIK_CONSUME_ITEM`
---| `IIK_GRADE`
---| `IIK_GRADE_STR`
---| `IIK_IMPL`
---| `IIK_NAME`
---| `IIK_SELL`
---| `IIK_SOCKET_MODIFIER`
---| `IIK_STACK`
---| `IIK_TYPE`

---api/X2Item
---Item Socket Upgrade State
---@alias ISUS
---| `ISUS_MAX_UPGRADE`
---| `ISUS_MISS_MATCH`
---| `ISUS_UPGRADE`

---api/X2Item
---@alias ITEM_MATE
---| `ITEM_MATE_NOT_EQUIP`
---| `ITEM_MATE_UNSUMMON`
---| `ITEM_SLAVE_NOT_EQUIP`
---| `ITEM_SLAVE_UNSUMMON`

---api/X2Item
---@alias ITEM_SECURITY
---| `ITEM_SECURITY_INVALID`
---| `ITEM_SECURITY_LOCKED`
---| `ITEM_SECURITY_UNLOCKED`
---| `ITEM_SECURITY_UNLOCKING`

---api/X2Item
---@alias ITEM_TASK
---| `ITEM_TASK_CRAFT_PICKUP_PRODUCT`
---| `ITEM_TASK_HOUSE_CREATION`
---| `ITEM_TASK_INVALID`
---| `ITEM_TASK_MAIL`
---| `ITEM_TASK_TRADE`

---Retrieves item information from the specified link text.
---@param linkText string The link text to query. (e.g., `"|i{itemType},{grade},{kind},{data}"`)
---@param kind? LINKKIND Optional kind of link.
---@return ItemInfo itemInfo The item information.
---@nodiscard
---@see ItemInfo
function X2Item:InfoFromLink(linkText, kind) end
