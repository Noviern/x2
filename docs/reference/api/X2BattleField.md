# X2BattleField
## Globals
**NIBC_BUFF_LEFT_TIME**

`integer`

**NIBC_BUFF_STACK**

`integer`

**VS_DRAW**

`integer`

**VS_LOSE**

`integer`

**VS_WIN**

`integer`

**X2BattleField**

`X2BattleField`

## Aliases
**NPC_INFORMATION_BROAD_CAST**

`NIBC_BUFF_LEFT_TIME`|`NIBC_BUFF_STACK`

```lua
-- api/X2BattleField
NPC_INFORMATION_BROAD_CAST:
    | `NIBC_BUFF_LEFT_TIME`
    | `NIBC_BUFF_STACK`
```

**VS**

`VS_DRAW`|`VS_LOSE`|`VS_WIN`

```lua
-- api/X2BattleField
VS:
    | `VS_DRAW`
    | `VS_LOSE`
    | `VS_WIN`
```

## Classes
### Class: X2BattleField
#### Method: GetDetailInstanceInfo
```lua
(method) X2BattleField:GetDetailInstanceInfo(instanceType: number)
  -> detailInfo: DetailInstanceInfo|nil
```
> Returns detailed information about a specific instance.
> Returns `nil` if the player does not meet the level requirements.
> 
> @*param* `instanceType` — The instance type to query.
> 
> @*return* `detailInfo` — The instance details, or `nil` if requirements not met.
> 
> See: [DetailInstanceInfo](../types/classes.md#class-detailinstanceinfo)

#### Method: GetInstanceName
```lua
(method) X2BattleField:GetInstanceName(instanceType: number)
  -> instanceName: string|nil
```
> Returns the name of the specified instance.
> 
> @*param* `instanceType` — The instance type to query.
> 
> @*return* `instanceName` — The instance name, or `nil` if not found.

#### Method: GetInstanceListByKind
```lua
(method) X2BattleField:GetInstanceListByKind(kind: number)
  -> instanceList: InstanceByKind[]|nil
```
> Returns a list of instances for the specified kind.
> Returns `nil` if the player does not meet the level requirements.
> 
> @*param* `kind` — The instance kind to query.
> 
> @*return* `instanceList` — The list of instances, or `nil` if requirements not met.

#### Method: GetInstanceUiKindList
```lua
(method) X2BattleField:GetInstanceUiKindList()
  -> instanceUiKindList: InstanceUiKind[]
```
> Returns a list of available instance kinds for the UI.
> 
> @*return* `instanceUiKindList` — The list of instance UI kinds.
> 
> See: [InstanceUiKind](../types/classes.md#class-instanceuikind)

