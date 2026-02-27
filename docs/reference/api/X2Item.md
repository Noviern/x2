# X2Item
## Globals
**BM_MILEAGE_ITEM_TYPE**

`integer`

**BM_MILEAGE_USABLE_ONE_ITEM_TYPE**

`integer`

**BPT_GOODS**

`integer`

**BPT_TRADEGOODS**

`integer`

**IIK_CATEGORY**

`integer`

**IIK_CONSUME_ITEM**

`integer`

**IIK_GRADE**

`integer`

**IIK_GRADE_STR**

`integer`

**IIK_IMPL**

`integer`

**IIK_NAME**

`integer`

**IIK_SELL**

`integer`

**IIK_SOCKET_MODIFIER**

`integer`

**IIK_STACK**

`integer`

**IIK_TYPE**

`integer`

**ISLOT_EQUIPMENT**

`integer`

**ISUS_MAX_UPGRADE**

`integer`

**ISUS_MISS_MATCH**

`integer`

**ISUS_UPGRADE**

`integer`

**ITEM_MATE_NOT_EQUIP**

`integer`

**ITEM_MATE_UNSUMMON**

`integer`

**ITEM_SECURITY_INVALID**

`integer`

**ITEM_SECURITY_LOCKED**

`integer`

**ITEM_SECURITY_UNLOCKED**

`integer`

**ITEM_SECURITY_UNLOCKING**

`integer`

**ITEM_SLAVE_NOT_EQUIP**

`integer`

**ITEM_SLAVE_UNSUMMON**

`integer`

**ITEM_TASK_CRAFT_PICKUP_PRODUCT**

`integer`

**ITEM_TASK_HOUSE_CREATION**

`integer`

**ITEM_TASK_INVALID**

`integer`

**ITEM_TASK_MAIL**

`integer`

**ITEM_TASK_TRADE**

`integer`

**MAX_ITEM_SOCKETS**

`integer`

**MAX_SET_ITEMS**

`integer`

**MONEY_ITEM_TYPE**

`integer`

**NORMAL_ITEM_GRADE**

`integer`

**POOR_ITEM_GRADE**

`integer`

**X2Item**

`X2Item`

## Aliases
**BPT**

`BPT_GOODS`|`BPT_TRADEGOODS`

```lua
-- api/X2Item
-- Back Pack Type
BPT:
    | `BPT_GOODS`
    | `BPT_TRADEGOODS`
```

**BUY_MODE_MILEAGE**

`BM_MILEAGE_ITEM_TYPE`|`BM_MILEAGE_USABLE_ONE_ITEM_TYPE`

```lua
-- api/X2Item
BUY_MODE_MILEAGE:
    | `BM_MILEAGE_ITEM_TYPE`
    | `BM_MILEAGE_USABLE_ONE_ITEM_TYPE`
```

**ITEM_INFORMATION_KIND**

`IIK_CATEGORY`|`IIK_CONSUME_ITEM`|`IIK_GRADE_STR`|`IIK_GRADE`|`IIK_IMPL`...(+5)

```lua
-- api/X2Item
-- Values can be added together to get more information.
ITEM_INFORMATION_KIND:
    | `IIK_CATEGORY`
    | `IIK_CONSUME_ITEM`
    | `IIK_GRADE`
    | `IIK_GRADE_STR`
    | `IIK_IMPL`
    | `IIK_NAME`
    | `IIK_SELL`
    | `IIK_SOCKET_MODIFIER`
    | `IIK_STACK`
    | `IIK_TYPE`
```

**ITEM_MATE**

`ITEM_MATE_NOT_EQUIP`|`ITEM_MATE_UNSUMMON`|`ITEM_SLAVE_NOT_EQUIP`|`ITEM_SLAVE_UNSUMMON`

```lua
-- api/X2Item
ITEM_MATE:
    | `ITEM_MATE_NOT_EQUIP`
    | `ITEM_MATE_UNSUMMON`
    | `ITEM_SLAVE_NOT_EQUIP`
    | `ITEM_SLAVE_UNSUMMON`
```

**ITEM_SECURITY**

`ITEM_SECURITY_INVALID`|`ITEM_SECURITY_LOCKED`|`ITEM_SECURITY_UNLOCKED`|`ITEM_SECURITY_UNLOCKING`

```lua
-- api/X2Item
ITEM_SECURITY:
    | `ITEM_SECURITY_INVALID`
    | `ITEM_SECURITY_LOCKED`
    | `ITEM_SECURITY_UNLOCKED`
    | `ITEM_SECURITY_UNLOCKING`
```

**ITEM_SOCKET_UPGRADE_STATE**

`ISUS_MAX_UPGRADE`|`ISUS_MISS_MATCH`|`ISUS_UPGRADE`

```lua
-- api/X2Item
ITEM_SOCKET_UPGRADE_STATE:
    | `ISUS_MAX_UPGRADE`
    | `ISUS_MISS_MATCH`
    | `ISUS_UPGRADE`
```

**ITEM_TASK**

`ITEM_TASK_CRAFT_PICKUP_PRODUCT`|`ITEM_TASK_HOUSE_CREATION`|`ITEM_TASK_INVALID`|`ITEM_TASK_MAIL`|`ITEM_TASK_TRADE`

```lua
-- api/X2Item
ITEM_TASK:
    | `ITEM_TASK_CRAFT_PICKUP_PRODUCT`
    | `ITEM_TASK_HOUSE_CREATION`
    | `ITEM_TASK_INVALID`
    | `ITEM_TASK_MAIL`
    | `ITEM_TASK_TRADE`
```

## Classes
### Class: X2Item
#### Method: InfoFromLink
```lua
(method) X2Item:InfoFromLink(linkText: string, kind?: "1"|"2"|"3")
  -> itemInfo: ItemInfo
```
> Retrieves item information from the specified link text.
> 
> @*param* `linkText` — The link text to query. (e.g., `"|i{itemType},{grade},{kind},{data}"`)
> 
> @*param* `kind` — Optional kind of link.
> 
> @*return* `itemInfo` — The item information.
> 
> ```lua
> kind:
>     | "1" -- Auction
>     | "2" -- Coffer
>     | "3" -- Guildbank
> ```
> 
> See: [ItemInfo](../types/classes.md#class-iteminfo)

