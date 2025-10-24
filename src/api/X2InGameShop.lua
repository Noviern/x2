---@meta _

BFR_AA_POINT = 3                      -- api/X2InGameShop BFR
BFR_BILL = 18                         -- api/X2InGameShop BFR
BFR_BM_MILEAGE = 12                   -- api/X2InGameShop BFR
BFR_CANNOT_USE_AACOIN_FOR_GIFT = 17   -- api/X2InGameShop BFR
BFR_CASH = 2                          -- api/X2InGameShop BFR
BFR_COUNT_PER_ACCOUNT = 8             -- api/X2InGameShop BFR
BFR_DELETED_CHARACTER = 15            -- api/X2InGameShop BFR
BFR_EXPIRED_DATE = 7                  -- api/X2InGameShop BFR
BFR_FRIEND_NAME = 5                   -- api/X2InGameShop BFR
BFR_GOLD = 13                         -- api/X2InGameShop BFR
BFR_INVALID_ACCOUNT = 14              -- api/X2InGameShop BFR
BFR_LIMITED_TOTAL_PRICE = 11          -- api/X2InGameShop BFR
BFR_NONE = 0                          -- api/X2InGameShop BFR
BFR_NORMAL = 1                        -- api/X2InGameShop BFR
BFR_SAME_ACCOUNT = 10                 -- api/X2InGameShop BFR
BFR_SECOND_PASSWORD = 9               -- api/X2InGameShop BFR
BFR_SOLD_OUT = 6                      -- api/X2InGameShop BFR
BFR_TRANSFER_CHARACTER = 16           -- api/X2InGameShop BFR
BM_CART_ALL = 1                       -- api/X2InGameShop BM
BM_SELECTED = 0                       -- api/X2InGameShop BM
CFR_FULL = 2                          -- api/X2InGameShop CFR
CFR_NONE = 0                          -- api/X2InGameShop CFR
CFR_NORMAL = 1                        -- api/X2InGameShop CFR
CU_ALL = 0                            -- api/X2InGameShop CU
CU_BUY = 3                            -- api/X2InGameShop CU
CU_BUY_CART = 2                       -- api/X2InGameShop CU
CU_BUY_PRESENT = 1                    -- api/X2InGameShop CU
CU_NONE = 255                         -- api/X2InGameShop CU
ICS_GRW_CHARGED_MAIL = 1              -- api/X2InGameShop ICS
ICS_GRW_EXPRESSS_MAIL = 2             -- api/X2InGameShop ICS
ICS_GRW_INVALID = 0                   -- api/X2InGameShop ICS
ICS_GRW_INVENTORY = 3                 -- api/X2InGameShop ICS
ISMI_ARCHE_PASS_COIN = 48064          -- api/X2InGameShop ISMI
ISMI_DELPI = 23633                    -- api/X2InGameShop ISMI
ISMI_GARNET = 51120                   -- api/X2InGameShop ISMI
ISMI_KEY = 31893                      -- api/X2InGameShop ISMI
ISMI_LORDCOIN = 26880                 -- api/X2InGameShop ISMI
ISMI_LUCKYCOIN = 9001554              -- api/X2InGameShop ISMI
ISMI_NETCAFE = 36554                  -- api/X2InGameShop ISMI
ISMI_PALOS = 45508                    -- api/X2InGameShop ISMI
ISMI_SEASON_GARNET = 52137            -- api/X2InGameShop ISMI
ISMI_STAR = 36007                     -- api/X2InGameShop ISMI
MAX_INGAME_SHOP_UPDATE = 10           -- api/X2InGameShop
MODE_SEARCH = 2                       -- api/X2InGameShop
PRICE_TYPE_AA_BONUS_CASH = 5          -- api/X2InGameShop PRICE_TYPE
PRICE_TYPE_AA_CASH = 0                -- api/X2InGameShop PRICE_TYPE
PRICE_TYPE_AA_CASH_AND_BONUS_CASH = 6 -- api/X2InGameShop PRICE_TYPE
PRICE_TYPE_AA_POINT = 1               -- api/X2InGameShop PRICE_TYPE
PRICE_TYPE_BM_MILEAGE = 2             -- api/X2InGameShop PRICE_TYPE
PRICE_TYPE_GOLD = 8                   -- api/X2InGameShop PRICE_TYPE
PRICE_TYPE_ITEM = 4                   -- api/X2InGameShop PRICE_TYPE
PRICE_TYPE_REAL_MONEY = 3             -- api/X2InGameShop PRICE_TYPE
STOP_SALE_BY_COUNT = 1                -- api/X2InGameShop STOP_SALE
STOP_SALE_BY_ENDDATE = 3              -- api/X2InGameShop STOP_SALE
STOP_SALE_BY_LIMIT_OVER = 4           -- api/X2InGameShop STOP_SALE
STOP_SALE_BY_STARTDATE = 2            -- api/X2InGameShop STOP_SALE
STOP_SALE_NONE = 0                    -- api/X2InGameShop STOP_SALE
---@class X2InGameShop
X2InGameShop = {}                     -- api/X2InGameShop

---api/X2InGameShop
---Buy Fail Reason
---@alias BFR
---| `BFR_AA_POINT`
---| `BFR_BILL`
---| `BFR_BM_MILEAGE`
---| `BFR_CANNOT_USE_AACOIN_FOR_GIFT`
---| `BFR_CASH`
---| `BFR_COUNT_PER_ACCOUNT`
---| `BFR_DELETED_CHARACTER`
---| `BFR_EXPIRED_DATE`
---| `BFR_FRIEND_NAME`
---| `BFR_GOLD`
---| `BFR_INVALID_ACCOUNT`
---| `BFR_LIMITED_TOTAL_PRICE`
---| `BFR_NONE`
---| `BFR_NORMAL`
---| `BFR_SAME_ACCOUNT`
---| `BFR_SECOND_PASSWORD`
---| `BFR_SOLD_OUT`
---| `BFR_TRANSFER_CHARACTER`

---api/X2InGameShop
---Buy Mode
---@alias BM
---| `BM_CART_ALL`
---| `BM_SELECTED`

---api/X2InGameShop
---Cart Fail Reason
---@alias CFR
---| `CFR_FULL`
---| `CFR_NONE`
---| `CFR_NORMAL`

---api/X2InGameShop
---Command Ui
---@alias CU
---| `CU_ALL`
---| `CU_BUY`
---| `CU_BUY_CART`
---| `CU_BUY_PRESENT`
---| `CU_NONE`

---api/X2InGameShop
---@TODO: ? ? ? Goods Received Way
---@alias ICS
---| `ICS_GRW_CHARGED_MAIL`
---| `ICS_GRW_EXPRESSS_MAIL`
---| `ICS_GRW_INVALID`
---| `ICS_GRW_INVENTORY`

---api/X2InGameShop
---@TODO: ? ? Money Item
---@alias ISMI
---| `ISMI_ARCHE_PASS_COIN`
---| `ISMI_DELPI`
---| `ISMI_GARNET`
---| `ISMI_KEY`
---| `ISMI_LORDCOIN`
---| `ISMI_LUCKYCOIN`
---| `ISMI_NETCAFE`
---| `ISMI_PALOS`
---| `ISMI_SEASON_GARNET`
---| `ISMI_STAR`

---api/X2InGameShop
---@alias PRICE_TYPE
---| `PRICE_TYPE_AA_BONUS_CASH`
---| `PRICE_TYPE_AA_CASH`
---| `PRICE_TYPE_AA_CASH_AND_BONUS_CASH`
---| `PRICE_TYPE_AA_POINT`
---| `PRICE_TYPE_BM_MILEAGE`
---| `PRICE_TYPE_GOLD`
---| `PRICE_TYPE_ITEM`
---| `PRICE_TYPE_REAL_MONEY`

---api/X2InGameShop
---@alias STOP_SALE
---| `STOP_SALE_BY_COUNT`
---| `STOP_SALE_BY_ENDDATE`
---| `STOP_SALE_BY_LIMIT_OVER`
---| `STOP_SALE_BY_STARTDATE`
---| `STOP_SALE_NONE`
