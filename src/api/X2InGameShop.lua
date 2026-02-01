---@meta _

BFR_AA_POINT = 3                      -- api/X2InGameShop BUY_FAIL_REASON
BFR_BILL = 18                         -- api/X2InGameShop BUY_FAIL_REASON
BFR_BM_MILEAGE = 12                   -- api/X2InGameShop BUY_FAIL_REASON
BFR_CANNOT_USE_AACOIN_FOR_GIFT = 17   -- api/X2InGameShop BUY_FAIL_REASON
BFR_CASH = 2                          -- api/X2InGameShop BUY_FAIL_REASON
BFR_COUNT_PER_ACCOUNT = 8             -- api/X2InGameShop BUY_FAIL_REASON
BFR_DELETED_CHARACTER = 15            -- api/X2InGameShop BUY_FAIL_REASON
BFR_EXPIRED_DATE = 7                  -- api/X2InGameShop BUY_FAIL_REASON
BFR_FRIEND_NAME = 5                   -- api/X2InGameShop BUY_FAIL_REASON
BFR_GOLD = 13                         -- api/X2InGameShop BUY_FAIL_REASON
BFR_INVALID_ACCOUNT = 14              -- api/X2InGameShop BUY_FAIL_REASON
BFR_LIMITED_TOTAL_PRICE = 11          -- api/X2InGameShop BUY_FAIL_REASON
BFR_NONE = 0                          -- api/X2InGameShop BUY_FAIL_REASON
BFR_NORMAL = 1                        -- api/X2InGameShop BUY_FAIL_REASON
BFR_SAME_ACCOUNT = 10                 -- api/X2InGameShop BUY_FAIL_REASON
BFR_SECOND_PASSWORD = 9               -- api/X2InGameShop BUY_FAIL_REASON
BFR_SOLD_OUT = 6                      -- api/X2InGameShop BUY_FAIL_REASON
BFR_TRANSFER_CHARACTER = 16           -- api/X2InGameShop BUY_FAIL_REASON
BM_CART_ALL = 1                       -- api/X2InGameShop BUY_MODE
BM_SELECTED = 0                       -- api/X2InGameShop BUY_MODE
CFR_FULL = 2                          -- api/X2InGameShop CART_FAIL_REASON
CFR_NONE = 0                          -- api/X2InGameShop CART_FAIL_REASON
CFR_NORMAL = 1                        -- api/X2InGameShop CART_FAIL_REASON
CU_ALL = 0                            -- api/X2InGameShop COMMAND_UI
CU_BUY = 3                            -- api/X2InGameShop COMMAND_UI
CU_BUY_CART = 2                       -- api/X2InGameShop COMMAND_UI
CU_BUY_PRESENT = 1                    -- api/X2InGameShop COMMAND_UI
CU_NONE = 255                         -- api/X2InGameShop COMMAND_UI
ICS_GRW_CHARGED_MAIL = 1              -- api/X2InGameShop INGAME_CART_SHOW_GOODS_RECEIVED_WAY
ICS_GRW_EXPRESSS_MAIL = 2             -- api/X2InGameShop INGAME_CART_SHOW_GOODS_RECEIVED_WAY
ICS_GRW_INVALID = 0                   -- api/X2InGameShop INGAME_CART_SHOW_GOODS_RECEIVED_WAY
ICS_GRW_INVENTORY = 3                 -- api/X2InGameShop INGAME_CART_SHOW_GOODS_RECEIVED_WAY
ISMI_ARCHE_PASS_COIN = 48064          -- api/X2InGameShop INGAME_SHOP_MONEY_ICON
ISMI_DELPI = 23633                    -- api/X2InGameShop INGAME_SHOP_MONEY_ICON
ISMI_GARNET = 51120                   -- api/X2InGameShop INGAME_SHOP_MONEY_ICON
ISMI_KEY = 31893                      -- api/X2InGameShop INGAME_SHOP_MONEY_ICON
ISMI_LORDCOIN = 26880                 -- api/X2InGameShop INGAME_SHOP_MONEY_ICON
ISMI_LUCKYCOIN = 9001554              -- api/X2InGameShop INGAME_SHOP_MONEY_ICON
ISMI_NETCAFE = 36554                  -- api/X2InGameShop INGAME_SHOP_MONEY_ICON
ISMI_PALOS = 45508                    -- api/X2InGameShop INGAME_SHOP_MONEY_ICON
ISMI_SEASON_GARNET = 52137            -- api/X2InGameShop INGAME_SHOP_MONEY_ICON
ISMI_STAR = 36007                     -- api/X2InGameShop INGAME_SHOP_MONEY_ICON
MAX_INGAME_SHOP_UPDATE = 10           -- api/X2InGameShop
MODE_SEARCH = 2                       -- api/X2InGameShop INGAME_SHOP_VIEW_MODE
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
---@alias BUY_FAIL_REASON
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
---@alias BUY_MODE
---| `BM_CART_ALL`
---| `BM_SELECTED`

---api/X2InGameShop
---@alias CART_FAIL_REASON
---| `CFR_FULL`
---| `CFR_NONE`
---| `CFR_NORMAL`

---api/X2InGameShop
---@alias COMMAND_UI
---| `CU_ALL`
---| `CU_BUY`
---| `CU_BUY_CART`
---| `CU_BUY_PRESENT`
---| `CU_NONE`

---api/X2InGameShop
---@alias INGAME_CART_SHOW_GOODS_RECEIVED_WAY
---| `ICS_GRW_CHARGED_MAIL`
---| `ICS_GRW_EXPRESSS_MAIL`
---| `ICS_GRW_INVALID`
---| `ICS_GRW_INVENTORY`

---api/X2InGameShop
---@alias INGAME_SHOP_MONEY_ICON
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
---@alias INGAME_SHOP_VIEW_MODE
---| `1`
---| `MODE_SEARCH`

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
