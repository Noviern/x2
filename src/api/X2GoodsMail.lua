---@meta _

MAIL_ADMIN = 5                          -- api/X2GoodsMail MAIL_TYPE
MAIL_AUC_BID_FAIL = 17                  -- api/X2GoodsMail MAIL_TYPE
MAIL_AUC_BID_WIN = 16                   -- api/X2GoodsMail MAIL_TYPE
MAIL_AUC_OFF_CANCEL = 13                -- api/X2GoodsMail MAIL_TYPE
MAIL_AUC_OFF_FAIL = 15                  -- api/X2GoodsMail MAIL_TYPE
MAIL_AUC_OFF_SUCCESS = 14               -- api/X2GoodsMail MAIL_TYPE
MAIL_BALANCE_RECEIPT = 7                -- api/X2GoodsMail MAIL_TYPE
MAIL_BATTLE_FIELD_REWARD = 45           -- api/X2GoodsMail MAIL_TYPE
MAIL_BILLING = 6                        -- api/X2GoodsMail MAIL_TYPE
MAIL_CHARGED = 9                        -- api/X2GoodsMail MAIL_TYPE
MAIL_CRAFT_ORDER = 46                   -- api/X2GoodsMail MAIL_TYPE
MAIL_DEMOLISH = 31                      -- api/X2GoodsMail MAIL_TYPE
MAIL_DEMOLISH_WITH_PENALTY = 20         -- api/X2GoodsMail MAIL_TYPE
MAIL_EXPRESS = 2                        -- api/X2GoodsMail MAIL_TYPE
MAIL_FROM_BUTLER = 49                   -- api/X2GoodsMail MAIL_TYPE
MAIL_HERO_CANDIDATE_ALARM = 28          -- api/X2GoodsMail MAIL_TYPE
MAIL_HERO_DROPOUT_COMEBACK_REQUEST = 48 -- api/X2GoodsMail MAIL_TYPE
MAIL_HERO_ELECTION_ITEM = 29            -- api/X2GoodsMail MAIL_TYPE
MAIL_HOUSING_REBUILD = 30               -- api/X2GoodsMail MAIL_TYPE
MAIL_HOUSING_SALE = 21                  -- api/X2GoodsMail MAIL_TYPE
MAIL_LIST_CONTINUE = 2                  -- api/X2GoodsMail MAIL_TYPE
MAIL_LIST_END = 3                       -- api/X2GoodsMail MAIL_TYPE
MAIL_LIST_INVALID = 0                   -- api/X2GoodsMail MAIL_TYPE
MAIL_LIST_START = 1                     -- api/X2GoodsMail MAIL_TYPE
MAIL_MOBILIZATION_GIVE_ITEM = 27        -- api/X2GoodsMail MAIL_TYPE
MAIL_NORMAL = 1                         -- api/X2GoodsMail MAIL_TYPE
MAIL_PROMOTION = 10                     -- api/X2GoodsMail MAIL_TYPE
MAIL_RESIDENT_BALANCE = 44              -- api/X2GoodsMail MAIL_TYPE
MAIL_SYS_EXPRESS = 18                   -- api/X2GoodsMail MAIL_TYPE
MAIL_SYS_SELL_BACKPACK = 19             -- api/X2GoodsMail MAIL_TYPE
MAIL_TAXRATE_CHANGED = 8                -- api/X2GoodsMail MAIL_TYPE
MAIL_TAX_IN_KIND_RECEIPT = 34           -- api/X2GoodsMail MAIL_TYPE
MLK_COMMERCIAL = 3                      -- api/X2GoodsMail MLK
MLK_INBOX = 1                           -- api/X2GoodsMail MLK
MLK_OUTBOX = 2                          -- api/X2GoodsMail MLK
SIMT_SCHEDULE_ITEM_CUSTOM_MAIL = 2      -- api/X2GoodsMail SIMT
SIMT_SCHEDULE_ITEM_NORMAL_MAIL = 1      -- api/X2GoodsMail SIMT
---@class X2GoodsMail
X2GoodsMail = {}                        -- api/X2GoodsMail

---api/X2GoodsMail
---@alias MAIL_TYPE
---| `MAIL_ADMIN`
---| `MAIL_AUC_BID_FAIL`
---| `MAIL_AUC_BID_WIN`
---| `MAIL_AUC_OFF_CANCEL`
---| `MAIL_AUC_OFF_FAIL`
---| `MAIL_AUC_OFF_SUCCESS`
---| `MAIL_BALANCE_RECEIPT`
---| `MAIL_BATTLE_FIELD_REWARD`
---| `MAIL_BILLING`
---| `MAIL_CHARGED`
---| `MAIL_CRAFT_ORDER`
---| `MAIL_DEMOLISH`
---| `MAIL_DEMOLISH_WITH_PENALTY`
---| `MAIL_EXPRESS`
---| `MAIL_FROM_BUTLER`
---| `MAIL_HERO_CANDIDATE_ALARM`
---| `MAIL_HERO_DROPOUT_COMEBACK_REQUEST`
---| `MAIL_HERO_ELECTION_ITEM`
---| `MAIL_HOUSING_REBUILD`
---| `MAIL_HOUSING_SALE`
---| `MAIL_LIST_CONTINUE`
---| `MAIL_LIST_END`
---| `MAIL_LIST_INVALID`
---| `MAIL_LIST_START`
---| `MAIL_MOBILIZATION_GIVE_ITEM`
---| `MAIL_NORMAL`
---| `MAIL_PROMOTION`
---| `MAIL_RESIDENT_BALANCE`
---| `MAIL_SYS_EXPRESS`
---| `MAIL_SYS_SELL_BACKPACK`
---| `MAIL_TAXRATE_CHANGED`
---| `MAIL_TAX_IN_KIND_RECEIPT`

---api/X2GoodsMail
---Mail List Kind
---@alias MLK
---| `MLK_COMMERCIAL`
---| `MLK_INBOX`
---| `MLK_OUTBOX`

---api/X2GoodsMail
---Schedule Item Mail Type?
---| `SIMT_SCHEDULE_ITEM_CUSTOM_MAIL`
---| `SIMT_SCHEDULE_ITEM_NORMAL_MAIL`
