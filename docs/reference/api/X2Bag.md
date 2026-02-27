# X2Bag
## Globals
**X2Bag**

`X2Bag`

## Classes
### Class: X2Bag
#### Method: EquipBagItem
```lua
(method) X2Bag:EquipBagItem(slot: number, isAuxEquip: boolean)
```
> Attempts to equip an item from the specified slot.
> 
> @*param* `slot` — The slot containing the item to equip. (min: `1`)
> 
> @*param* `isAuxEquip` — Whether to equip as auxiliary equipment.

#### Method: GetBagItemInfo
```lua
(method) X2Bag:GetBagItemInfo(bagId: 1, slot: number, neededInfo?: `IIK_CATEGORY`|`IIK_CONSUME_ITEM`|`IIK_GRADE_STR`|`IIK_GRADE`|`IIK_IMPL`...(+5))
  -> bagItemInfo: ItemInfo|nil
```
> Retrieves item information for the specified slot if it exists.
> 
> @*param* `bagId` — The bag ID.
> 
> @*param* `slot` — The slot to query. (min:  `1`)
> 
> @*param* `neededInfo` — Optional additional information for the item.
> 
> @*return* `bagItemInfo` — The item information, or `nil` if the slot is empty or doesn't exist.
> 
> ```lua
> bagId:
>     | 1
> 
> -- api/X2Item
> -- Values can be added together to get more information.
> neededInfo:
>     | `IIK_CATEGORY`
>     | `IIK_CONSUME_ITEM`
>     | `IIK_GRADE`
>     | `IIK_GRADE_STR`
>     | `IIK_IMPL`
>     | `IIK_NAME`
>     | `IIK_SELL`
>     | `IIK_SOCKET_MODIFIER`
>     | `IIK_STACK`
>     | `IIK_TYPE`
> ```
> 
> See: [ItemInfo](../types/classes.md#class-iteminfo)

