# RoadMap
## Globals
**MAX_SKILL_MAP_EFFECT_COUNT**

`integer`

## Classes
### Class: RoadMap
Extends [Widget](../types/Widget.md#class-widget), [Map](../types/Map.md#class-map)

> [RoadMap](../types/RoadMap.md#class-roadmap)
> 
> A `RoadMap` widget represents a minimap, capable of showing NPCs, pings, and
> other map-related elements.
> 
#### Method: InitMapData
```lua
(method) RoadMap:InitMapData()
```
> Initializes map data. Requires `Map:ReloadAllInfo`.

#### Method: SetRoadMapNpc
```lua
(method) RoadMap:SetRoadMapNpc(isShow: boolean)
```
> Shows or hides NPCs on the RoadMap.
> 
> @*param* `isShow` — `true` to show NPCs, `false` to hide. (default: `false`)

#### Method: SetMapSize
```lua
(method) RoadMap:SetMapSize(radioValue: number)
```
> Sets the size of the RoadMap.
> 
> @*param* `radioValue` — The size value for the map.

#### Method: IsPingMode
```lua
(method) RoadMap:IsPingMode()
  -> pingMode: boolean
```
> Checks if the RoadMap is in ping mode.
> 
> @*return* `pingMode` — `true` if ping mode is active, `false` otherwise. (default: `false`)

#### Method: ShowLeaderPing
```lua
(method) RoadMap:ShowLeaderPing(isShow: boolean)
```
> Shows or hides the leader ping on the RoadMap.
> 
> @*param* `isShow` — `true` to show the leader ping, `false` to hide.

