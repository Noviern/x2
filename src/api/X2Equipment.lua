---@meta _

EST_1HANDED = 17          -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_2HANDED = 16          -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_AMMUNITION = 19       -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_ARMS = 8              -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_BACK = 9              -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_BACKPACK = 30         -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_BAG = 22              -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_BEARD = 29            -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_BODY = 28             -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_CHEST = 3             -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_COSPLAY = 31          -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_EAR = 10              -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_FACE = 23             -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_FEET = 7              -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_FINGER = 11           -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_GLASSES = 25          -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_HAIR = 24             -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_HANDS = 6             -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_HEAD = 1              -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_HORNS = 26            -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_INSTRUMENT = 21       -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_INVALID = 0           -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_LEGS = 5              -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_MAINHAND = 14         -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_NECK = 2              -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_OFFHAND = 15          -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_RACE_COSPLAY = 33     -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_RANGED = 18           -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_SHIELD = 20           -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_TAIL = 27             -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_UNDERPANTS = 13       -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_UNDERSHIRT = 12       -- api/X2Equipment EQUIPMENT_SLOT_TYPE
EST_WAIST = 4             -- api/X2Equipment EQUIPMENT_SLOT_TYPE
ES_ARMS = 8               -- api/X2Equipment EQUIPMENT_SLOT
ES_BACK = 9               -- api/X2Equipment EQUIPMENT_SLOT
ES_BACKPACK = 27          -- api/X2Equipment EQUIPMENT_SLOT
ES_BEARD = 26             -- api/X2Equipment EQUIPMENT_SLOT
ES_BODY = 25              -- api/X2Equipment EQUIPMENT_SLOT
ES_CHEST = 3              -- api/X2Equipment EQUIPMENT_SLOT
ES_COSPLAY = 28           -- api/X2Equipment EQUIPMENT_SLOT
ES_COSPLAYLOOKS = 32      -- api/X2Equipment EQUIPMENT_SLOT
ES_EAR_1 = 10             -- api/X2Equipment EQUIPMENT_SLOT
ES_EAR_2 = 11             -- api/X2Equipment EQUIPMENT_SLOT
ES_FACE = 20              -- api/X2Equipment EQUIPMENT_SLOT
ES_FEET = 7               -- api/X2Equipment EQUIPMENT_SLOT
ES_FINGER_1 = 12          -- api/X2Equipment EQUIPMENT_SLOT
ES_FINGER_2 = 13          -- api/X2Equipment EQUIPMENT_SLOT
ES_GLASSES = 22           -- api/X2Equipment EQUIPMENT_SLOT
ES_HAIR = 21              -- api/X2Equipment EQUIPMENT_SLOT
ES_HANDS = 6              -- api/X2Equipment EQUIPMENT_SLOT
ES_HEAD = 1               -- api/X2Equipment EQUIPMENT_SLOT
ES_HORNS = 23             -- api/X2Equipment EQUIPMENT_SLOT
ES_INVALID = 0            -- api/X2Equipment EQUIPMENT_SLOT
ES_LEGS = 5               -- api/X2Equipment EQUIPMENT_SLOT
ES_MAINHAND = 16          -- api/X2Equipment EQUIPMENT_SLOT
ES_MUSICAL = 19           -- api/X2Equipment EQUIPMENT_SLOT
ES_NECK = 2               -- api/X2Equipment EQUIPMENT_SLOT
ES_OFFHAND = 17           -- api/X2Equipment EQUIPMENT_SLOT
ES_RACE_COSPLAY = 33      -- api/X2Equipment EQUIPMENT_SLOT
ES_RACE_COSPLAYLOOKS = 34 -- api/X2Equipment EQUIPMENT_SLOT
ES_RANGED = 18            -- api/X2Equipment EQUIPMENT_SLOT
ES_TAIL = 24              -- api/X2Equipment EQUIPMENT_SLOT
ES_UNDERPANTS = 15        -- api/X2Equipment EQUIPMENT_SLOT
ES_UNDERSHIRT = 14        -- api/X2Equipment EQUIPMENT_SLOT
ES_WAIST = 4              -- api/X2Equipment EQUIPMENT_SLOT
---@class X2Equipment
X2Equipment = {}          -- api/X2Equipment

---api/X2Equipment
---@alias EQUIPMENT_SLOT_TYPE
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
---| `EST_RACE_COSPLAY`
---| `EST_RANGED`
---| `EST_SHIELD`
---| `EST_TAIL`
---| `EST_UNDERPANTS`
---| `EST_UNDERSHIRT`
---| `EST_WAIST`

---api/X2Equipment
---@alias EQUIPMENT_SLOT
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
---| `ES_RACE_COSPLAY`
---| `ES_RACE_COSPLAYLOOKS`
---| `ES_RANGED`
---| `ES_TAIL`
---| `ES_UNDERPANTS`
---| `ES_UNDERSHIRT`
---| `ES_WAIST`

---Retrieves tooltip information for the equipped item in the specified slot.
---@param equipSlot EQUIPMENT_SLOT The equipment slot to query.
---@param targetEquippedItem boolean `true` to see the targets equipped item, `false` for the players equipped item.
---@return ItemInfo|nil equippedItemTooltipInfo The tooltip information, or `nil` if not found.
---@nodiscard
---@see ItemInfo
function X2Equipment:GetEquippedItemTooltipInfo(equipSlot, targetEquippedItem) end

---Retrieves the type of item equipped in the specified slot.
---@param equipSlot EQUIPMENT_SLOT The equipment slot to query.
---@return number|nil equippedItemType The equipped item type, or `nil` if none.
---@nodiscard
function X2Equipment:GetEquippedItemType(equipSlot) end

---Picks up the equipped item from a mate's slot. The item is placed in the
---cursor for manual placement.
---@param targetName UNIT_PET The mate's unit identifier.
---@param slotNo EQUIPMENT_SLOT The equipment slot to pick up from.
function X2Equipment:PickupMateEquippedItem(targetName, slotNo) end

---Attempts to unequip an item from a mate and move it to the player's
---inventory.
---@param targetName UNIT_PET The mate's unit identifier.
---@param slotNo EQUIPMENT_SLOT The equipment slot to query.
---@return boolean success `true` if the item was successfully moved, `false` otherwise (e.g., inventory full).
function X2Equipment:MateUnequipItem(targetName, slotNo) end
