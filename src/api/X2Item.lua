---@meta _

BM_MILEAGE_ITEM_TYPE = 28586            -- api/X2Item
BM_MILEAGE_USABLE_ONE_ITEM_TYPE = 29911 -- api/X2Item
BPT_GOODS = 3                           -- api/X2Item
BPT_TRADEGOODS = 8                      -- api/X2Item
IIK_CATEGORY = 128                      -- api/X2Item
IIK_CONSUME_ITEM = 256                  -- api/X2Item
IIK_GRADE = 4                           -- api/X2Item
IIK_GRADE_STR = 8                       -- api/X2Item
IIK_IMPL = 16                           -- api/X2Item
IIK_NAME = 2                            -- api/X2Item
IIK_SELL = 32                           -- api/X2Item
IIK_SOCKET_MODIFIER = 512               -- api/X2Item
IIK_STACK = 64                          -- api/X2Item
IIK_TYPE = 1                            -- api/X2Item
ISLOT_EQUIPMENT = 1                     -- api/X2Item
ISUS_MAX_UPGRADE = 2                    -- api/X2Item
ISUS_MISS_MATCH = 3                     -- api/X2Item
ISUS_UPGRADE = 1                        -- api/X2Item
ITEM_MATE_NOT_EQUIP = 2                 -- api/X2Item
ITEM_MATE_UNSUMMON = 1                  -- api/X2Item
ITEM_SECURITY_INVALID = 0               -- api/X2Item
ITEM_SECURITY_LOCKED = 1                -- api/X2Item
ITEM_SECURITY_UNLOCKED = 2              -- api/X2Item
ITEM_SECURITY_UNLOCKING = 3             -- api/X2Item
ITEM_SLAVE_NOT_EQUIP = 4                -- api/X2Item
ITEM_SLAVE_UNSUMMON = 3                 -- api/X2Item
ITEM_TASK_CRAFT_PICKUP_PRODUCT = 27     -- api/X2Item
ITEM_TASK_HOUSE_CREATION = 32           -- api/X2Item
ITEM_TASK_INVALID = 0                   -- api/X2Item
ITEM_TASK_MAIL = 49                     -- api/X2Item
ITEM_TASK_TRADE = 50                    -- api/X2Item
MAX_ITEM_SOCKETS = 9                    -- api/X2Item
MAX_SET_ITEMS = 14                      -- api/X2Item
MONEY_ITEM_TYPE = 500                   -- api/X2Item
NORMAL_ITEM_GRADE = 0                   -- api/X2Item
POOR_ITEM_GRADE = 1                     -- api/X2Item
---@class X2Item
X2Item = {}                             -- api/X2Item

---api/X2Item
---@enum LINKKIND
local LINKKIND = {
  AUCTION   = "1",
  COFFER    = "2",
  GUILDBANK = "3",
}

---api/X2Item
---
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

---Retrieves item information from the specified link text.
---@param linkText string The link text to query.
---@param kind? LINKKIND Optional kind of link.
---@return ItemInfo itemInfo The item information.
---@nodiscard
---@usage
---```lua
---local itemInfo = X2Item:InfoFromLink("|i48379,12,0,00000000003xl00030400040000000000QjRYG1M0008d0000000000000000000hAu00Aok002ihW00hAu00Aok002ihW00hAu00Aok002ihW005G010DCD000v3000aWm0094C00000000000000000000000000G0000000000000000000000000000000000000003ilCLc00000000000000000G000000000000000000000000000000xBp5PW00000;")
---```
---@see LINKKIND
---@see ItemInfo
function X2Item:InfoFromLink(linkText, kind) end
