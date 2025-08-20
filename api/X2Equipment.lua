---@meta _

EST_1HANDED = 17     -- api/X2Equipment
EST_2HANDED = 16     -- api/X2Equipment
EST_AMMUNITION = 19  -- api/X2Equipment
EST_ARMS = 8         -- api/X2Equipment
EST_BACK = 9         -- api/X2Equipment
EST_BACKPACK = 30    -- api/X2Equipment
EST_BAG = 22         -- api/X2Equipment
EST_BEARD = 29       -- api/X2Equipment
EST_BODY = 28        -- api/X2Equipment
EST_CHEST = 3        -- api/X2Equipment
EST_COSPLAY = 31     -- api/X2Equipment
EST_EAR = 10         -- api/X2Equipment
EST_FACE = 23        -- api/X2Equipment
EST_FEET = 7         -- api/X2Equipment
EST_FINGER = 11      -- api/X2Equipment
EST_GLASSES = 25     -- api/X2Equipment
EST_HAIR = 24        -- api/X2Equipment
EST_HANDS = 6        -- api/X2Equipment
EST_HEAD = 1         -- api/X2Equipment
EST_HORNS = 26       -- api/X2Equipment
EST_INSTRUMENT = 21  -- api/X2Equipment
EST_INVALID = 0      -- api/X2Equipment
EST_LEGS = 5         -- api/X2Equipment
EST_MAINHAND = 14    -- api/X2Equipment
EST_NECK = 2         -- api/X2Equipment
EST_OFFHAND = 15     -- api/X2Equipment
EST_RANGED = 18      -- api/X2Equipment
EST_SHIELD = 20      -- api/X2Equipment
EST_TAIL = 27        -- api/X2Equipment
EST_UNDERPANTS = 13  -- api/X2Equipment
EST_UNDERSHIRT = 12  -- api/X2Equipment
EST_WAIST = 4        -- api/X2Equipment
ES_ARMS = 8          -- api/X2Equipment
ES_BACK = 9          -- api/X2Equipment
ES_BACKPACK = 27     -- api/X2Equipment
ES_BEARD = 26        -- api/X2Equipment
ES_BODY = 25         -- api/X2Equipment
ES_CHEST = 3         -- api/X2Equipment
ES_COSPLAY = 28      -- api/X2Equipment
ES_COSPLAYLOOKS = 32 -- api/X2Equipment
ES_EAR_1 = 10        -- api/X2Equipment
ES_EAR_2 = 11        -- api/X2Equipment
ES_FACE = 20         -- api/X2Equipment
ES_FEET = 7          -- api/X2Equipment
ES_FINGER_1 = 12     -- api/X2Equipment
ES_FINGER_2 = 13     -- api/X2Equipment
ES_GLASSES = 22      -- api/X2Equipment
ES_HAIR = 21         -- api/X2Equipment
ES_HANDS = 6         -- api/X2Equipment
ES_HEAD = 1          -- api/X2Equipment
ES_HORNS = 23        -- api/X2Equipment
ES_INVALID = 0       -- api/X2Equipment
ES_LEGS = 5          -- api/X2Equipment
ES_MAINHAND = 16     -- api/X2Equipment
ES_MUSICAL = 19      -- api/X2Equipment
ES_NECK = 2          -- api/X2Equipment
ES_OFFHAND = 17      -- api/X2Equipment
ES_RANGED = 18       -- api/X2Equipment
ES_TAIL = 24         -- api/X2Equipment
ES_UNDERPANTS = 15   -- api/X2Equipment
ES_UNDERSHIRT = 14   -- api/X2Equipment
ES_WAIST = 4         -- api/X2Equipment
X2Equipment = {}     -- api/X2Equipment

---api/X2Equipment
---Equip Slot Type
---@alias EST
---| `EST_1HANDED`
---| `EST_2HANDED`
---| `EST_AMMUNITION`
---| `EST_ARMS`
---| `EST_BACK`
---| `EST_BACKPACK`
---| `EST_BAG`
---| `EST_BEARD`
---| `EST_BODY`
---| `EST_CHEST`
---| `EST_COSPLAY`
---| `EST_EAR`
---| `EST_FACE`
---| `EST_FEET`
---| `EST_FINGER`
---| `EST_GLASSES`
---| `EST_HAIR`
---| `EST_HANDS`
---| `EST_HEAD`
---| `EST_HORNS`
---| `EST_INSTRUMENT`
---| `EST_INVALID`
---| `EST_LEGS`
---| `EST_MAINHAND`
---| `EST_NECK`
---| `EST_OFFHAND`
---| `EST_RANGED`
---| `EST_SHIELD`
---| `EST_TAIL`
---| `EST_UNDERPANTS`
---| `EST_UNDERSHIRT`
---| `EST_WAIST`

---api/X2Equipment
---Equip Slot
---@alias ES
---| `ES_ARMS`
---| `ES_BACK`
---| `ES_BACKPACK`
---| `ES_BEARD`
---| `ES_BODY`
---| `ES_CHEST`
---| `ES_COSPLAY`
---| `ES_COSPLAYLOOKS`
---| `ES_EAR_1`
---| `ES_EAR_2`
---| `ES_FACE`
---| `ES_FEET`
---| `ES_FINGER_1`
---| `ES_FINGER_2`
---| `ES_GLASSES`
---| `ES_HAIR`
---| `ES_HANDS`
---| `ES_HEAD`
---| `ES_HORNS`
---| `ES_INVALID`
---| `ES_LEGS`
---| `ES_MAINHAND`
---| `ES_MUSICAL`
---| `ES_NECK`
---| `ES_OFFHAND`
---| `ES_RANGED`
---| `ES_TAIL`
---| `ES_UNDERPANTS`
---| `ES_UNDERSHIRT`
---| `ES_WAIST`

---Retrieves tooltip information for the equipped item in the specified slot.
---@param equipSlot ES The equipment slot to query.
---@param targetEquippedItem boolean `true` to see the targets equipped item, `false` for the players equipped item.
---@return ItemInfo|nil equippedItemTooltipInfo The tooltip information, or `nil` if not found.
---@nodiscard
---@usage
---```
---local equippedItemTooltipInfo = X2Equipment:GetEquippedItemTooltipInfo(ES_HEAD, false)
---```
---@see ES
---@see ItemInfo
function X2Equipment:GetEquippedItemTooltipInfo(equipSlot, targetEquippedItem) end

---Retrieves the type of item equipped in the specified slot.
---@param equipSlot ES The equipment slot to query.
---@return number|nil equippedItemType The equipped item type, or `nil` if none.
---@nodiscard
---@usage
---```
---local equippedItemType = X2Equipment:GetEquippedItemType(ES_HEAD)
---```
---@see ES
function X2Equipment:GetEquippedItemType(equipSlot) end
