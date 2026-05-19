# X2Squad
## Globals
**MAX_SQUAD_SELECT_COUNT_PER_PAGE**

`integer`

**SCI_BATTLE_FIELD**

`integer`

**SCI_INDUN**

`integer`

**SOT_DIRECT_MATCHING**

`integer`

**SOT_MUST_PUBLIC**

`integer`

**SOT_PRIVATE**

`integer`

**SOT_PUBLIC**

`integer`

**X2Squad**

`X2Squad`

## Aliases
**SQUAD_CATEGORY_INSTANCE**

`SCI_BATTLE_FIELD`|`SCI_INDUN`

```lua
-- api/X2Squad
SQUAD_CATEGORY_INSTANCE:
    | `SCI_BATTLE_FIELD`
    | `SCI_INDUN`
```

**SQUAD_OPEN_TYPE**

`SOT_DIRECT_MATCHING`|`SOT_MUST_PUBLIC`|`SOT_PRIVATE`|`SOT_PUBLIC`

```lua
-- api/X2Squad
SQUAD_OPEN_TYPE:
    | `SOT_DIRECT_MATCHING`
    | `SOT_MUST_PUBLIC`
    | `SOT_PRIVATE`
    | `SOT_PUBLIC`
```

## Classes
### Class: X2Squad
#### Method: CreateSquad
```lua
(method) X2Squad:CreateSquad(selectedField: number, openType: `SOT_DIRECT_MATCHING`|`SOT_MUST_PUBLIC`|`SOT_PRIVATE`|`SOT_PUBLIC`, explanation: string, partyInvitation: boolean, limitLevel: number, limitGearScore: number)
  -> success: boolean
```
> Creates a new squad for an instance.
> 
> @*param* `selectedField` — The selected instance/field ID.
> 
> @*param* `openType` — The squad open type.
> 
> @*param* `explanation` — The squad description/explanation.
> 
> @*param* `partyInvitation` — `true` to allow party invitations, `false` otherwise.
> 
> @*param* `limitLevel` — The minimum level required to join.
> 
> @*param* `limitGearScore` — The minimum gear score required to join.
> 
> @*return* `success` — `true` if the squad was created successfully, `false` otherwise.
> 
> ```lua
> -- api/X2Squad
> openType:
>     | `SOT_DIRECT_MATCHING`
>     | `SOT_MUST_PUBLIC`
>     | `SOT_PRIVATE`
>     | `SOT_PUBLIC`
> ```

