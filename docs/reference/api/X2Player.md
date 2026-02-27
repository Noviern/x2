# X2Player
## Globals
**ACCOUNT_RESTRICT_CODE_NEXON**

`integer`

**ACCOUNT_RESTRICT_CODE_NONE**

`integer`

**ACCOUNT_RESTRICT_CODE_XL**

`integer`

**APPELATION_ROUTE_TYPE_ACHIEVEMENTS**

`integer`

**APPELATION_ROUTE_TYPE_ETC**

`integer`

**APPELATION_ROUTE_TYPE_HIDDEN**

`integer`

**APPELATION_ROUTE_TYPE_MAX**

`integer`

**APPELATION_ROUTE_TYPE_MERCHANT_PACKS**

`integer`

**APPELATION_ROUTE_TYPE_QUEST_CONTEXTS**

`integer`

**APPELLATION_LIST_PER_PAGE**

`integer`

**BOT_CHECK_ANSWER_COUNT**

`integer`

**BOT_QUESTION_CHAR_SIZE**

`integer`

**HIRAMAKAND_SAVE_PEOPLE_BUFF_TYPE**

`integer`

**INSTANT_TIME_EXPEDITION_REJOIN**

`integer`

**SCREEN_BASE**

`integer`

**SCREEN_CHARACTER_CREATE**

`integer`

**SCREEN_CHARACTER_SELECT**

`integer`

**SCREEN_INIT_WORLD**

`integer`

**SCREEN_INTRO**

`integer`

**SCREEN_LOGIN**

`integer`

**SCREEN_NONE**

`integer`

**SCREEN_WORLD**

`integer`

**SCREEN_WORLD_SELECT**

`integer`

**X2Player**

`X2Player`

**ZPW_ENTER**

`integer`

**ZPW_EXPEL**

`integer`

**ZPW_OUT**

`integer`

**ZPW_WAIT**

`integer`

**ZP_RESERVED**

`integer`

## Aliases
**ACCOUNT_RESTRICT_CODE**

`ACCOUNT_RESTRICT_CODE_NEXON`|`ACCOUNT_RESTRICT_CODE_NONE`|`ACCOUNT_RESTRICT_CODE_XL`

```lua
-- api/X2Player
ACCOUNT_RESTRICT_CODE:
    | `ACCOUNT_RESTRICT_CODE_NEXON`
    | `ACCOUNT_RESTRICT_CODE_NONE`
    | `ACCOUNT_RESTRICT_CODE_XL`
```

**APPELATION_ROUTE_TYPE**

`APPELATION_ROUTE_TYPE_ACHIEVEMENTS`|`APPELATION_ROUTE_TYPE_ETC`|`APPELATION_ROUTE_TYPE_HIDDEN`|`APPELATION_ROUTE_TYPE_MAX`|`APPELATION_ROUTE_TYPE_MERCHANT_PACKS`...(+1)

```lua
-- api/X2Player
APPELATION_ROUTE_TYPE:
    | `APPELATION_ROUTE_TYPE_ACHIEVEMENTS`
    | `APPELATION_ROUTE_TYPE_ETC`
    | `APPELATION_ROUTE_TYPE_HIDDEN`
    | `APPELATION_ROUTE_TYPE_MAX`
    | `APPELATION_ROUTE_TYPE_MERCHANT_PACKS`
    | `APPELATION_ROUTE_TYPE_QUEST_CONTEXTS`
```

**SCREEN_STATE**

`SCREEN_BASE`|`SCREEN_CHARACTER_CREATE`|`SCREEN_CHARACTER_SELECT`|`SCREEN_INIT_WORLD`|`SCREEN_INTRO`...(+4)

```lua
-- api/X2Player
SCREEN_STATE:
    | `SCREEN_BASE`
    | `SCREEN_CHARACTER_CREATE`
    | `SCREEN_CHARACTER_SELECT`
    | `SCREEN_INIT_WORLD`
    | `SCREEN_INTRO`
    | `SCREEN_LOGIN`
    | `SCREEN_NONE`
    | `SCREEN_WORLD`
    | `SCREEN_WORLD_SELECT`
```

**ZONE_PERMISSION_WINDOW**

`ZPW_ENTER`|`ZPW_EXPEL`|`ZPW_OUT`|`ZPW_WAIT`|`ZP_RESERVED`

```lua
-- api/X2Player
ZONE_PERMISSION_WINDOW:
    | `ZPW_ENTER`
    | `ZPW_EXPEL`
    | `ZPW_OUT`
    | `ZPW_WAIT`
    | `ZP_RESERVED`
```

## Classes
### Class: X2Player
#### Method: ChangeAppellation
```lua
(method) X2Player:ChangeAppellation(appellationNameType: number, appellationEffectType: number)
  -> successful: boolean
```
> Sets the player's appellation name and effect.
> 
> @*param* `appellationNameType` — The appellation name type.
> 
> @*param* `appellationEffectType` — The appellation effect type.
> 
> @*return* `successful` — `true` if the change was successful, even if types are invalid.

#### Method: GetAppellations
```lua
(method) X2Player:GetAppellations(appellationRouteFilter: `APPELATION_ROUTE_TYPE_ACHIEVEMENTS`|`APPELATION_ROUTE_TYPE_ETC`|`APPELATION_ROUTE_TYPE_HIDDEN`|`APPELATION_ROUTE_TYPE_MAX`|`APPELATION_ROUTE_TYPE_MERCHANT_PACKS`...(+1), appellationPageIndex: number)
  -> appellations: Appellation[]
```
> Retrieves a list of up to 50 appellation instances.
> 
> @*param* `appellationRouteFilter` — The route type filter.
> 
> @*param* `appellationPageIndex` — The page index for the appellation list.
> 
> @*return* `appellations` — A table of appellation instances.
> 
> ```lua
> -- api/X2Player
> appellationRouteFilter:
>     | `APPELATION_ROUTE_TYPE_ACHIEVEMENTS`
>     | `APPELATION_ROUTE_TYPE_ETC`
>     | `APPELATION_ROUTE_TYPE_HIDDEN`
>     | `APPELATION_ROUTE_TYPE_MAX`
>     | `APPELATION_ROUTE_TYPE_MERCHANT_PACKS`
>     | `APPELATION_ROUTE_TYPE_QUEST_CONTEXTS`
> ```
> 
> See: [Appellation](../types/classes.md#class-appellation)

#### Method: GetAppellationStampInfos
```lua
(method) X2Player:GetAppellationStampInfos()
  -> appellationStampInfo: StampInfo[]
```
> Retrieves a list of stamp information.
> 
> @*return* `appellationStampInfo` — A table of stamp information.
> 
> See: [StampInfo](../types/classes.md#class-stampinfo)

#### Method: GetAppellationsCount
```lua
(method) X2Player:GetAppellationsCount(appellationRouteFilter: `APPELATION_ROUTE_TYPE_ACHIEVEMENTS`|`APPELATION_ROUTE_TYPE_ETC`|`APPELATION_ROUTE_TYPE_HIDDEN`|`APPELATION_ROUTE_TYPE_MAX`|`APPELATION_ROUTE_TYPE_MERCHANT_PACKS`...(+1))
  -> appellationsCount: number
```
> Retrieves the total count of appellations for the specified route type.
> 
> @*param* `appellationRouteFilter` — The route type filter.
> 
> @*return* `appellationsCount` — The total number of appellations.
> 
> ```lua
> -- api/X2Player
> appellationRouteFilter:
>     | `APPELATION_ROUTE_TYPE_ACHIEVEMENTS`
>     | `APPELATION_ROUTE_TYPE_ETC`
>     | `APPELATION_ROUTE_TYPE_HIDDEN`
>     | `APPELATION_ROUTE_TYPE_MAX`
>     | `APPELATION_ROUTE_TYPE_MERCHANT_PACKS`
>     | `APPELATION_ROUTE_TYPE_QUEST_CONTEXTS`
> ```

#### Method: GetShowingAppellation
```lua
(method) X2Player:GetShowingAppellation()
  -> showingAppellation: Appellation
```
> Retrieves information on the currently displayed appellation.
> 
> @*return* `showingAppellation` — The displayed appellation information.
> 
> ```lua
> local showingAppellation = X2Player:GetShowingAppellation()
> local appellationName = showingAppellation[2]
> ```
> See: [Appellation](../types/classes.md#class-appellation)

#### Method: GetEffectAppellation
```lua
(method) X2Player:GetEffectAppellation()
  -> showingEffectAppellation: Appellation
```
> Retrieves information on the currently active appellation buff.
> 
> @*return* `showingEffectAppellation` — The active appellation buff information.
> 
> ```lua
> local showingEffectAppellation = X2Player:GetEffectAppellation()
> local effectDescription = showingEffectAppellation[6].description
> ```
> See: [Appellation](../types/classes.md#class-appellation)

#### Method: GetStampChangeItemInfo
```lua
(method) X2Player:GetStampChangeItemInfo()
  -> stampChangeItemInfo: StampChangeItemInfo
```
> Retrieves item requirements for changing a stamp.
> 
> @*return* `stampChangeItemInfo` — The item requirements for changing a stamp.
> 
> See: [StampChangeItemInfo](../types/classes.md#class-stampchangeiteminfo)

#### Method: GetAppellationStampInfo
```lua
(method) X2Player:GetAppellationStampInfo(id: number)
  -> appellationStampInfo: StampInfo
```
> Retrieves stamp information.
> 
> @*param* `id` — The id of the stamp.
> 
> @*return* `appellationStampInfo` — The stamp information.
> 
> See: [StampInfo](../types/classes.md#class-stampinfo)

#### Method: GetAppellationMyStamp
```lua
(method) X2Player:GetAppellationMyStamp()
  -> appellationMyStamp: AppellationMyStamp
```
> Retrieves current stamp information.
> 
> @*return* `appellationMyStamp` — The current stamp information.
> 
> See: [AppellationMyStamp](../types/classes.md#class-appellationmystamp)

#### Method: GetAppellationBuffInfoByLevels
```lua
(method) X2Player:GetAppellationBuffInfoByLevels()
  -> appellationBuffInfo: AppellationBuffInfo[]
```
> Retrieves a list of appellation buff information for each appellation level.
> 
> @*return* `appellationBuffInfo` — A table of appellation buff information.
> 
> See: [AppellationBuffInfo](../types/classes.md#class-appellationbuffinfo)

#### Method: GetAppellationRouteInfo
```lua
(method) X2Player:GetAppellationRouteInfo(appellationType: number)
  -> appellationRouteInfo: AppellationRouteInfo
```
> Retrieves appellation route information for the specified appellation ID.
> 
> @*param* `appellationType` — The appellation ID.
> 
> @*return* `appellationRouteInfo` — The appellation route information.
> 
> See: [AppellationRouteInfo](../types/classes.md#class-appellationrouteinfo)

#### Method: GetAppellationChangeItemInfo
```lua
(method) X2Player:GetAppellationChangeItemInfo()
  -> appellationChangeItemInfo: AppellationChangeItemInfo
```
> Retrieves item requirements for changing an appellation (currently not
> required).
> 
> @*return* `appellationChangeItemInfo` — The item requirements for changing an appellation.
> 
> See: [AppellationChangeItemInfo](../types/classes.md#class-appellationchangeiteminfo)

#### Method: GetAppellationMyLevelInfo
```lua
(method) X2Player:GetAppellationMyLevelInfo()
  -> appellationMyLevelInfo: AppellationMyLevelInfo
```
> Retrieves the player's appellation level information.
> 
> @*return* `appellationMyLevelInfo` — The appellation level information.
> 
> See: [AppellationMyLevelInfo](../types/classes.md#class-appellationmylevelinfo)

#### Method: GetAppellationCount
```lua
(method) X2Player:GetAppellationCount()
  -> appellationCount: number
```
> Retrieves the count of the player's unlocked appellations.
> 
> @*return* `appellationCount` — The number of unlocked appellations.

#### Method: GetUnitAppellationRouteList
```lua
(method) X2Player:GetUnitAppellationRouteList()
  -> unitAppellationRoute: UnitAppellationRoute[]
```
> Retrieves a list of key-value pairs representing appellation route types.
> 
> @*return* `unitAppellationRoute` — A table of appellation route types.
> 
> See: [UnitAppellationRoute](../types/classes.md#class-unitappellationroute)

