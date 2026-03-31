# X2Craft
## Globals
**COPT_INSTANT**

`integer`

**COPT_INVALID**

`integer`

**COPT_PC**

`integer`

**COSK_ACTABILITY_GROUP**

`integer`

**COSK_DEFAULT**

`integer`

**COSK_FEE**

`integer`

**COSO_ASC**

`integer`

**COSO_DESC**

`integer`

**CRAFT_ORDER_ENTRY_PER_CHARACTER**

`integer`

**CRAFT_ORDER_ENTRY_PER_SEARCH**

`integer`

**MFCR_FAIL**

`integer`

**MFCR_FAIL_LIMIT**

`integer`

**MFCR_FAIL_WAIT**

`integer`

**MFCR_SUCCESS**

`integer`

**X2Craft**

`X2Craft`

## Aliases
**CRAFT_ORDER_PROCESS_TYPE**

`COPT_INSTANT`|`COPT_INVALID`|`COPT_PC`

```lua
-- api/X2Craft
CRAFT_ORDER_PROCESS_TYPE:
    | `COPT_INSTANT`
    | `COPT_INVALID`
    | `COPT_PC`
```

**CRAFT_ORDER_SORT_KIND**

`COSK_ACTABILITY_GROUP`|`COSK_DEFAULT`|`COSK_FEE`

```lua
-- api/X2Craft
CRAFT_ORDER_SORT_KIND:
    | `COSK_ACTABILITY_GROUP`
    | `COSK_DEFAULT`
    | `COSK_FEE`
```

**CRAFT_ORDER_SORT_ORDER**

`COSO_ASC`|`COSO_DESC`

```lua
-- api/X2Craft
CRAFT_ORDER_SORT_ORDER:
    | `COSO_ASC`
    | `COSO_DESC`
```

**MODIFY_FAVORITE_CRAFT_RESULT**

`MFCR_FAIL_LIMIT`|`MFCR_FAIL_WAIT`|`MFCR_FAIL`|`MFCR_SUCCESS`

```lua
-- api/X2Craft
MODIFY_FAVORITE_CRAFT_RESULT:
    | `MFCR_FAIL`
    | `MFCR_FAIL_LIMIT`
    | `MFCR_FAIL_WAIT`
    | `MFCR_SUCCESS`
```

## Classes
### Class: X2Craft
#### Method: GetCraftBaseInfo
```lua
(method) X2Craft:GetCraftBaseInfo(craftType: number, doodadId?: number)
  -> craftBaseInfo: CraftBaseInfo|nil
```
> Retrieves the base craft information for the specified craft type, excluding
> material information.
> 
> @*param* `craftType` — The type of craft to query.
> 
> @*param* `doodadId` — Optional doodad ID.
> 
> @*return* `craftBaseInfo` — The base craft information, or `nil` if not found.
> 
> See: [CraftBaseInfo](../types/classes.md#class-craftbaseinfo)

#### Method: GetCraftMaterialInfo
```lua
(method) X2Craft:GetCraftMaterialInfo(craftType: number, doodadId?: number)
```
> Retrieves the material information for the specified craft type.
> 
> @*param* `craftType` — The type of craft to query.
> 
> @*param* `doodadId` — The doodad ID.

#### Method: GetCraftProductInfo
```lua
(method) X2Craft:GetCraftProductInfo(craftType: number)
  -> craftProductInfo: CraftProductInfo[]|nil
```
> Retrieves a list containing craft product information.
> 
> @*param* `craftType` — The type of craft to query.
> 
> @*return* `craftProductInfo` — A table of craft product info, or `nil` if not found.
> 
> See: [CraftProductInfo](../types/classes.md#class-craftproductinfo)

