# X2Equipment
## Globals
**EST_1HANDED**

`integer`

**EST_2HANDED**

`integer`

**EST_AMMUNITION**

`integer`

**EST_ARMS**

`integer`

**EST_BACK**

`integer`

**EST_BACKPACK**

`integer`

**EST_BAG**

`integer`

**EST_BEARD**

`integer`

**EST_BODY**

`integer`

**EST_CHEST**

`integer`

**EST_COSPLAY**

`integer`

**EST_EAR**

`integer`

**EST_FACE**

`integer`

**EST_FEET**

`integer`

**EST_FINGER**

`integer`

**EST_GLASSES**

`integer`

**EST_HAIR**

`integer`

**EST_HANDS**

`integer`

**EST_HEAD**

`integer`

**EST_HORNS**

`integer`

**EST_INSTRUMENT**

`integer`

**EST_INVALID**

`integer`

**EST_LEGS**

`integer`

**EST_MAINHAND**

`integer`

**EST_NECK**

`integer`

**EST_OFFHAND**

`integer`

**EST_RACE_COSPLAY**

`integer`

**EST_RANGED**

`integer`

**EST_SHIELD**

`integer`

**EST_TAIL**

`integer`

**EST_UNDERPANTS**

`integer`

**EST_UNDERSHIRT**

`integer`

**EST_WAIST**

`integer`

**ES_ARMS**

`integer`

**ES_BACK**

`integer`

**ES_BACKPACK**

`integer`

**ES_BEARD**

`integer`

**ES_BODY**

`integer`

**ES_CHEST**

`integer`

**ES_COSPLAY**

`integer`

**ES_COSPLAYLOOKS**

`integer`

**ES_EAR_1**

`integer`

**ES_EAR_2**

`integer`

**ES_FACE**

`integer`

**ES_FEET**

`integer`

**ES_FINGER_1**

`integer`

**ES_FINGER_2**

`integer`

**ES_GLASSES**

`integer`

**ES_HAIR**

`integer`

**ES_HANDS**

`integer`

**ES_HEAD**

`integer`

**ES_HORNS**

`integer`

**ES_INVALID**

`integer`

**ES_LEGS**

`integer`

**ES_MAINHAND**

`integer`

**ES_MUSICAL**

`integer`

**ES_NECK**

`integer`

**ES_OFFHAND**

`integer`

**ES_RACE_COSPLAY**

`integer`

**ES_RACE_COSPLAYLOOKS**

`integer`

**ES_RANGED**

`integer`

**ES_TAIL**

`integer`

**ES_UNDERPANTS**

`integer`

**ES_UNDERSHIRT**

`integer`

**ES_WAIST**

`integer`

**X2Equipment**

`X2Equipment`

## Aliases
**EQUIPMENT_SLOT**

`ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27)

```lua
-- api/X2Equipment
EQUIPMENT_SLOT:
    | `ES_ARMS`
    | `ES_BACK`
    | `ES_BACKPACK`
    | `ES_BEARD`
    | `ES_BODY`
    | `ES_CHEST`
    | `ES_COSPLAY`
    | `ES_COSPLAYLOOKS`
    | `ES_EAR_1`
    | `ES_EAR_2`
    | `ES_FACE`
    | `ES_FEET`
    | `ES_FINGER_1`
    | `ES_FINGER_2`
    | `ES_GLASSES`
    | `ES_HAIR`
    | `ES_HANDS`
    | `ES_HEAD`
    | `ES_HORNS`
    | `ES_INVALID`
    | `ES_LEGS`
    | `ES_MAINHAND`
    | `ES_MUSICAL`
    | `ES_NECK`
    | `ES_OFFHAND`
    | `ES_RACE_COSPLAY`
    | `ES_RACE_COSPLAYLOOKS`
    | `ES_RANGED`
    | `ES_TAIL`
    | `ES_UNDERPANTS`
    | `ES_UNDERSHIRT`
    | `ES_WAIST`
```

**EQUIPMENT_SLOT_TYPE**

`EST_1HANDED`|`EST_2HANDED`|`EST_AMMUNITION`|`EST_ARMS`|`EST_BACKPACK`...(+28)

```lua
-- api/X2Equipment
EQUIPMENT_SLOT_TYPE:
    | `EST_1HANDED`
    | `EST_2HANDED`
    | `EST_AMMUNITION`
    | `EST_ARMS`
    | `EST_BACK`
    | `EST_BACKPACK`
    | `EST_BAG`
    | `EST_BEARD`
    | `EST_BODY`
    | `EST_CHEST`
    | `EST_COSPLAY`
    | `EST_EAR`
    | `EST_FACE`
    | `EST_FEET`
    | `EST_FINGER`
    | `EST_GLASSES`
    | `EST_HAIR`
    | `EST_HANDS`
    | `EST_HEAD`
    | `EST_HORNS`
    | `EST_INSTRUMENT`
    | `EST_INVALID`
    | `EST_LEGS`
    | `EST_MAINHAND`
    | `EST_NECK`
    | `EST_OFFHAND`
    | `EST_RACE_COSPLAY`
    | `EST_RANGED`
    | `EST_SHIELD`
    | `EST_TAIL`
    | `EST_UNDERPANTS`
    | `EST_UNDERSHIRT`
    | `EST_WAIST`
```

## Classes
### Class: X2Equipment
#### Method: GetEquippedItemTooltipInfo
```lua
(method) X2Equipment:GetEquippedItemTooltipInfo(equipSlot: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27), targetEquippedItem: boolean)
  -> equippedItemTooltipInfo: ItemInfo|nil
```
> Retrieves tooltip information for the equipped item in the specified slot.
> 
> @*param* `equipSlot` — The equipment slot to query.
> 
> @*param* `targetEquippedItem` — `true` to see the targets equipped item, `false` for the players equipped item.
> 
> @*return* `equippedItemTooltipInfo` — The tooltip information, or `nil` if not found.
> 
> ```lua
> -- api/X2Equipment
> equipSlot:
>     | `ES_ARMS`
>     | `ES_BACK`
>     | `ES_BACKPACK`
>     | `ES_BEARD`
>     | `ES_BODY`
>     | `ES_CHEST`
>     | `ES_COSPLAY`
>     | `ES_COSPLAYLOOKS`
>     | `ES_EAR_1`
>     | `ES_EAR_2`
>     | `ES_FACE`
>     | `ES_FEET`
>     | `ES_FINGER_1`
>     | `ES_FINGER_2`
>     | `ES_GLASSES`
>     | `ES_HAIR`
>     | `ES_HANDS`
>     | `ES_HEAD`
>     | `ES_HORNS`
>     | `ES_INVALID`
>     | `ES_LEGS`
>     | `ES_MAINHAND`
>     | `ES_MUSICAL`
>     | `ES_NECK`
>     | `ES_OFFHAND`
>     | `ES_RACE_COSPLAY`
>     | `ES_RACE_COSPLAYLOOKS`
>     | `ES_RANGED`
>     | `ES_TAIL`
>     | `ES_UNDERPANTS`
>     | `ES_UNDERSHIRT`
>     | `ES_WAIST`
> ```
> 
> See: [ItemInfo](../types/classes.md#class-iteminfo)

#### Method: MateUnequipItem
```lua
(method) X2Equipment:MateUnequipItem(targetName: "playerpet"|"playerpet1"|"playerpet2", slotNo: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27))
  -> success: boolean
```
> Attempts to unequip an item from a mate and move it to the player's
> inventory.
> 
> @*param* `targetName` — The mate's unit identifier.
> 
> @*param* `slotNo` — The equipment slot to query.
> 
> @*return* `success` — `true` if the item was successfully moved, `false` otherwise (e.g., inventory full).
> 
> ```lua
> targetName:
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
> 
> -- api/X2Equipment
> slotNo:
>     | `ES_ARMS`
>     | `ES_BACK`
>     | `ES_BACKPACK`
>     | `ES_BEARD`
>     | `ES_BODY`
>     | `ES_CHEST`
>     | `ES_COSPLAY`
>     | `ES_COSPLAYLOOKS`
>     | `ES_EAR_1`
>     | `ES_EAR_2`
>     | `ES_FACE`
>     | `ES_FEET`
>     | `ES_FINGER_1`
>     | `ES_FINGER_2`
>     | `ES_GLASSES`
>     | `ES_HAIR`
>     | `ES_HANDS`
>     | `ES_HEAD`
>     | `ES_HORNS`
>     | `ES_INVALID`
>     | `ES_LEGS`
>     | `ES_MAINHAND`
>     | `ES_MUSICAL`
>     | `ES_NECK`
>     | `ES_OFFHAND`
>     | `ES_RACE_COSPLAY`
>     | `ES_RACE_COSPLAYLOOKS`
>     | `ES_RANGED`
>     | `ES_TAIL`
>     | `ES_UNDERPANTS`
>     | `ES_UNDERSHIRT`
>     | `ES_WAIST`
> ```

#### Method: GetEquippedItemType
```lua
(method) X2Equipment:GetEquippedItemType(equipSlot: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27))
  -> equippedItemType: number|nil
```
> Retrieves the type of item equipped in the specified slot.
> 
> @*param* `equipSlot` — The equipment slot to query.
> 
> @*return* `equippedItemType` — The equipped item type, or `nil` if none.
> 
> ```lua
> -- api/X2Equipment
> equipSlot:
>     | `ES_ARMS`
>     | `ES_BACK`
>     | `ES_BACKPACK`
>     | `ES_BEARD`
>     | `ES_BODY`
>     | `ES_CHEST`
>     | `ES_COSPLAY`
>     | `ES_COSPLAYLOOKS`
>     | `ES_EAR_1`
>     | `ES_EAR_2`
>     | `ES_FACE`
>     | `ES_FEET`
>     | `ES_FINGER_1`
>     | `ES_FINGER_2`
>     | `ES_GLASSES`
>     | `ES_HAIR`
>     | `ES_HANDS`
>     | `ES_HEAD`
>     | `ES_HORNS`
>     | `ES_INVALID`
>     | `ES_LEGS`
>     | `ES_MAINHAND`
>     | `ES_MUSICAL`
>     | `ES_NECK`
>     | `ES_OFFHAND`
>     | `ES_RACE_COSPLAY`
>     | `ES_RACE_COSPLAYLOOKS`
>     | `ES_RANGED`
>     | `ES_TAIL`
>     | `ES_UNDERPANTS`
>     | `ES_UNDERSHIRT`
>     | `ES_WAIST`
> ```

#### Method: PickupMateEquippedItem
```lua
(method) X2Equipment:PickupMateEquippedItem(targetName: "playerpet"|"playerpet1"|"playerpet2", slotNo: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27))
```
> Picks up the equipped item from a mate's slot. The item is placed in the
> cursor for manual placement.
> 
> @*param* `targetName` — The mate's unit identifier.
> 
> @*param* `slotNo` — The equipment slot to pick up from.
> 
> ```lua
> targetName:
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
> 
> -- api/X2Equipment
> slotNo:
>     | `ES_ARMS`
>     | `ES_BACK`
>     | `ES_BACKPACK`
>     | `ES_BEARD`
>     | `ES_BODY`
>     | `ES_CHEST`
>     | `ES_COSPLAY`
>     | `ES_COSPLAYLOOKS`
>     | `ES_EAR_1`
>     | `ES_EAR_2`
>     | `ES_FACE`
>     | `ES_FEET`
>     | `ES_FINGER_1`
>     | `ES_FINGER_2`
>     | `ES_GLASSES`
>     | `ES_HAIR`
>     | `ES_HANDS`
>     | `ES_HEAD`
>     | `ES_HORNS`
>     | `ES_INVALID`
>     | `ES_LEGS`
>     | `ES_MAINHAND`
>     | `ES_MUSICAL`
>     | `ES_NECK`
>     | `ES_OFFHAND`
>     | `ES_RACE_COSPLAY`
>     | `ES_RACE_COSPLAYLOOKS`
>     | `ES_RANGED`
>     | `ES_TAIL`
>     | `ES_UNDERPANTS`
>     | `ES_UNDERSHIRT`
>     | `ES_WAIST`
> ```

