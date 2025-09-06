---@meta _

AT_CLOTH = 1                      -- api/X2ItemEnchant AT
AT_LEATHER = 2                    -- api/X2ItemEnchant AT
AT_METAL = 3                      -- api/X2ItemEnchant AT
IAAIS_DELETE = 2                  -- api/X2ItemEnchant IAAIS
IAAIS_INHERIT = 0                 -- api/X2ItemEnchant IAAIS
IAAIS_RANDOM = 1                  -- api/X2ItemEnchant IAAIS
ICMR_FAIL = 1                     -- api/X2ItemEnchant ICMR
ICMR_FAIL_DISABLE_ENCHANT = 2     -- api/X2ItemEnchant ICMR
ICMR_SUCCESS = 0                  -- api/X2ItemEnchant ICMR
IEBCT_ENCHANT_GREATE_SUCCESS = 1  -- api/X2ItemEnchant IEBCT
IEBCT_ENCHANT_SUCCESS = 0         -- api/X2ItemEnchant IEBCT
IEBCT_EVOVING = 2                 -- api/X2ItemEnchant IEBCT
IGER_BREAK = 0                    -- api/X2ItemEnchant IGER
IGER_DISABLE = 2                  -- api/X2ItemEnchant IGER
IGER_DOWNGRADE = 1                -- api/X2ItemEnchant IGER
IGER_FAIL = 3                     -- api/X2ItemEnchant IGER
IGER_GREAT_SUCCESS = 5            -- api/X2ItemEnchant IGER
IGER_RESTORE_DISABLE = 7          -- api/X2ItemEnchant IGER
IGER_SUCCESS = 4                  -- api/X2ItemEnchant IGER
MAX_ITEM_EVOLVE_MATERIAL_SLOT = 6 -- api/X2ItemEnchant
---@class X2ItemEnchant
X2ItemEnchant = {}                -- api/X2ItemEnchant

---api/X2ItemEnchant
---Armor Type
---@alias AT
---| `AT_CLOTH`
---| `AT_LEATHER`
---| `AT_METAL`

---api/X2ItemEnchant
---Item Awaken Attribute Info State
---@alias IAAIS
---| `IAAIS_DELETE`
---| `IAAIS_INHERIT`
---| `IAAIS_RANDOM`

---api/X2ItemEnchant
---Item Change Message Result
---@alias ICMR
---| `ICMR_FAIL`
---| `ICMR_FAIL_DISABLE_ENCHANT`
---| `ICMR_SUCCESS`

---api/X2ItemEnchant
---Item Enchant BroadCast Type
---@alias IEBCT
---| `IEBCT_ENCHANT_GREATE_SUCCESS`
---| `IEBCT_ENCHANT_SUCCESS`
---| `IEBCT_EVOVING`

---api/X2ItemEnchant
---Item Grade Enchant Result
---@alias IGER
---| `IGER_BREAK`
---| `IGER_DISABLE`
---| `IGER_DOWNGRADE`
---| `IGER_FAIL`
---| `IGER_GREAT_SUCCESS`
---| `IGER_RESTORE_DISABLE`
---| `IGER_SUCCESS`
