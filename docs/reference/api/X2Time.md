# X2Time
## Globals
**X2Time**

`X2Time`

## Classes
### Class: X2Time
#### Method: GetGameTime
```lua
(method) X2Time:GetGameTime()
  -> am: boolean
  2. hour: number
  3. minute: number
```
> Retrieves the current game time.
> 
> @*return* `am` — `true` if the time is AM, `false` if PM.
> 
> @*return* `hour` — The hour of the game time.
> 
> @*return* `minute` — The minute of the game time.

#### Method: GetServerTime
```lua
(method) X2Time:GetServerTime()
  -> serverTime: Time
```
> Retrieves the current server time.
> 
> @*return* `serverTime` — The server time.
> 
> See: [Time](../types/classes.md#class-time)

