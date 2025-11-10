---@meta _

MAX_SKILL_MAP_EFFECT_COUNT = 6 -- objects/Roadmap

---objects/RoadMap
---@class RoadMap: Widget, Map
local RoadMap = {}
---@class roadmap: RoadMap

---Initializes map data. Requires `Map:ReloadAllInfo`.
function RoadMap:InitMapData() end

---Checks if the RoadMap is in ping mode.
---@return boolean pingMode `true` if ping mode is active, `false` otherwise. (default: `false`)
---@nodiscard
function RoadMap:IsPingMode() end

---Sets the size of the RoadMap.
---@param radioValue number The size value for the map.
function RoadMap:SetMapSize(radioValue) end

---Shows or hides NPCs on the RoadMap.
---@param isShow boolean `true` to show NPCs, `false` to hide. (default: `false`)
function RoadMap:SetRoadMapNpc(isShow) end

---@FIXME: Broken?
---Shows or hides the leader ping on the RoadMap.
---@param isShow boolean `true` to show the leader ping, `false` to hide.
function RoadMap:ShowLeaderPing(isShow) end
