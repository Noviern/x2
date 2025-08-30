---@meta _

AP_BOTTOM = 8                  -- objects/RoadMap
AP_BOTTOMLEFT = 2              -- objects/RoadMap
AP_BOTTOMRIGHT = 3             -- objects/RoadMap
AP_CENTER = 4                  -- objects/RoadMap
AP_LEFT = 6                    -- objects/RoadMap
AP_RIGHT = 7                   -- objects/RoadMap
AP_TOP = 5                     -- objects/RoadMap
AP_TOPLEFT = 0                 -- objects/RoadMap
AP_TOPRIGHT = 1                -- objects/RoadMap
CT_ABILITY = 2                 -- objects/RoadMap
CT_EXPEDITION_NAME = 3         -- objects/RoadMap
CT_NAME = 1                    -- objects/RoadMap
DC_ALWAYS = 0                  -- objects/RoadMap
DC_SHIFT_KEY_DOWN = 1          -- objects/RoadMap
MAX_SKILL_MAP_EFFECT_COUNT = 6 -- objects/RoadMap

---objects/RoadMap
---@class RoadMap: Widget, Map
---@class roadmap: RoadMap
local RoadMap = {}

function RoadMap:InitMapData() end

---Checks if the RoadMap is in ping mode.
---@return boolean pingMode `true` if ping mode is active, `false` otherwise.
---@nodiscard
---@usage
---```lua
---local pingMod = widget:IsPingMode()
---```
function RoadMap:IsPingMode() end

---Sets the size of the RoadMap.
---@param radioValue number The size value for the map.
---@usage
---```lua
---widget:SetMapSize(300)
---```
function RoadMap:SetMapSize(radioValue) end

---Shows or hides NPCs on the RoadMap.
---@param isShow boolean `true` to show NPCs, `false` to hide. (default: `false`)
---@usage
---```lua
---widget:SetRoadMapNpc(true)
---```
function RoadMap:SetRoadMapNpc(isShow) end

---@TODO: Confirm default value for leader ping visibility.
---Shows or hides the leader ping on the RoadMap.
---@param isShow boolean `true` to show the leader ping, `false` to hide.
---@usage
---```lua
---widget:ShowLeaderPing(true)
---```
function RoadMap:ShowLeaderPing(isShow) end
