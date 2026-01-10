---@meta _

GEIP_ALL = 1         -- api/X2EventCenter GAME_EVENT_INFO_PERIOD
GEIP_ENDED = 4       -- api/X2EventCenter GAME_EVENT_INFO_PERIOD
GEIP_IN_PROGRESS = 2 -- api/X2EventCenter GAME_EVENT_INFO_PERIOD
GEIP_SCHEDULED = 3   -- api/X2EventCenter GAME_EVENT_INFO_PERIOD
---@class X2EventCenter
X2EventCenter = {}   -- api/X2EventCenter

---api/X2EventCenter
---Game Event Info Period
---@alias GAME_EVENT_INFO_PERIOD
---| `GEIP_ALL`
---| `GEIP_ENDED`
---| `GEIP_IN_PROGRESS`
---| `GEIP_SCHEDULED`
