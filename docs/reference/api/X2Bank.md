# X2Bank
## Globals
**X2Bank**

`X2Bank`

## Classes
### Class: X2Bank
#### Method: CountItems
```lua
(method) X2Bank:CountItems()
  -> itemCount: number
```
> Returns the total number of items in the player's bank.
> 
> @*return* `itemCount` — The total count of items currently in the bank.

#### Method: GetBagItemInfo
```lua
(method) X2Bank:GetBagItemInfo(bankId: 1, slot: number, neededInfo?: `IIK_CATEGORY`|`IIK_CONSUME_ITEM`|`IIK_GRADE_STR`|`IIK_GRADE`|`IIK_IMPL`...(+5))
  -> bankItemInfo: ItemInfo|nil
```
> Retrieves item information for the specified slot if it exists.
> 
> @*param* `bankId` — The bank ID.
> 
> @*param* `slot` — The slot to query. (min:  `1`)
> 
> @*param* `neededInfo` — Optional additional information for the item.
> 
> @*return* `bankItemInfo` — The item information, or `nil` if the slot is empty or doesn't exist.
> 
> ```lua
> bankId:
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

#### Method: ItemStack
```lua
(method) X2Bank:ItemStack(slot: number)
  -> itemStack: number
```
> Returns the current stack size of the item in the specified bank slot.
> 
> @*param* `slot` — The bank slot index. (min: `1`)
> 
> @*return* `itemStack` — The number of items in the stack.

