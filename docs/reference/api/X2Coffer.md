# X2Coffer
## Globals
**X2Coffer**

`X2Coffer`

## Classes
### Class: X2Coffer
#### Method: CountItems
```lua
(method) X2Coffer:CountItems()
  -> itemCount: number
```
> Returns the total number of items in the player's coffer.
> 
> @*return* `itemCount` — The total count of items currently in the coffer.

#### Method: GetBagItemInfo
```lua
(method) X2Coffer:GetBagItemInfo(slot: number, neededInfo?: `IIK_CATEGORY`|`IIK_CONSUME_ITEM`|`IIK_GRADE_STR`|`IIK_GRADE`|`IIK_IMPL`...(+5))
  -> cofferItemInfo: ItemInfo|nil
```
> Retrieves item information for the specified slot if it exists. The player
> must interact with a coffer for this to return anything.
> 
> @*param* `slot` — The slot to query. (min:  `1`)
> 
> @*param* `neededInfo` — Optional additional information for the item.
> 
> @*return* `cofferItemInfo` — The item information, or `nil` if the slot is empty or doesn't exist.
> 
> ```lua
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

#### Method: ItemStack
```lua
(method) X2Coffer:ItemStack(slot: number)
  -> itemStack: number
```
> Returns the current stack size of the item in the specified coffer slot.
> 
> @*param* `slot` — The coffer slot index. (min: `1`)
> 
> @*return* `itemStack` — The number of items in the stack.

