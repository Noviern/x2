---@meta _

AT_CLOTH = 1                      -- api/X2ItemEnchant ARMOR_TYPE
AT_LEATHER = 2                    -- api/X2ItemEnchant ARMOR_TYPE
AT_METAL = 3                      -- api/X2ItemEnchant ARMOR_TYPE
IAAIS_DELETE = 2                  -- api/X2ItemEnchant ITEM_AWAKEN_ATTRIBUTE_INFO_STATE
IAAIS_INHERIT = 0                 -- api/X2ItemEnchant ITEM_AWAKEN_ATTRIBUTE_INFO_STATE
IAAIS_RANDOM = 1                  -- api/X2ItemEnchant ITEM_AWAKEN_ATTRIBUTE_INFO_STATE
ICMR_FAIL = 1                     -- api/X2ItemEnchant ITEM_CHANGE_MESSAGE_RESULT
ICMR_FAIL_DISABLE_ENCHANT = 2     -- api/X2ItemEnchant ITEM_CHANGE_MESSAGE_RESULT
ICMR_SUCCESS = 0                  -- api/X2ItemEnchant ITEM_CHANGE_MESSAGE_RESULT
IEBCT_ENCHANT_GREATE_SUCCESS = 1  -- api/X2ItemEnchant ITEM_ENCHANT_BROAD_CAST_TYPE
IEBCT_ENCHANT_SUCCESS = 0         -- api/X2ItemEnchant ITEM_ENCHANT_BROAD_CAST_TYPE
IEBCT_EVOVING = 2                 -- api/X2ItemEnchant ITEM_ENCHANT_BROAD_CAST_TYPE
IGER_BREAK = 0                    -- api/X2ItemEnchant ITEM_GRADE_ENCHANT_RESULT
IGER_DISABLE = 2                  -- api/X2ItemEnchant ITEM_GRADE_ENCHANT_RESULT
IGER_DOWNGRADE = 1                -- api/X2ItemEnchant ITEM_GRADE_ENCHANT_RESULT
IGER_FAIL = 3                     -- api/X2ItemEnchant ITEM_GRADE_ENCHANT_RESULT
IGER_GREAT_SUCCESS = 5            -- api/X2ItemEnchant ITEM_GRADE_ENCHANT_RESULT
IGER_RESTORE_DISABLE = 7          -- api/X2ItemEnchant ITEM_GRADE_ENCHANT_RESULT
IGER_SUCCESS = 4                  -- api/X2ItemEnchant ITEM_GRADE_ENCHANT_RESULT
MAX_ITEM_EVOLVE_MATERIAL_SLOT = 6 -- api/X2ItemEnchant
---@class X2ItemEnchant
X2ItemEnchant = {}                -- api/X2ItemEnchant

---api/X2ItemEnchant
---@alias ARMOR_TYPE
---| `AT_CLOTH`
---| `AT_LEATHER`
---| `AT_METAL`

---api/X2ItemEnchant
---@alias ITEM_AWAKEN_ATTRIBUTE_INFO_STATE
---| `IAAIS_DELETE`
---| `IAAIS_INHERIT`
---| `IAAIS_RANDOM`

---api/X2ItemEnchant
---@alias ITEM_CHANGE_MESSAGE_RESULT
---| `ICMR_FAIL`
---| `ICMR_FAIL_DISABLE_ENCHANT`
---| `ICMR_SUCCESS`

---api/X2ItemEnchant
---@alias ITEM_ENCHANT_BROAD_CAST_TYPE
---| `IEBCT_ENCHANT_GREATE_SUCCESS`
---| `IEBCT_ENCHANT_SUCCESS`
---| `IEBCT_EVOVING`

---api/X2ItemEnchant
---@alias ITEM_GRADE_ENCHANT_RESULT
---| `IGER_BREAK`
---| `IGER_DISABLE`
---| `IGER_DOWNGRADE`
---| `IGER_FAIL`
---| `IGER_GREAT_SUCCESS`
---| `IGER_RESTORE_DISABLE`
---| `IGER_SUCCESS`
