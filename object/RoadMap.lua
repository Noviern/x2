---@meta _

AP_BOTTOM = 8                  -- object/RoadMap
AP_BOTTOMLEFT = 2              -- object/RoadMap
AP_BOTTOMRIGHT = 3             -- object/RoadMap
AP_CENTER = 4                  -- object/RoadMap
AP_LEFT = 6                    -- object/RoadMap
AP_RIGHT = 7                   -- object/RoadMap
AP_TOP = 5                     -- object/RoadMap
AP_TOPLEFT = 0                 -- object/RoadMap
AP_TOPRIGHT = 1                -- object/RoadMap
CT_ABILITY = 2                 -- object/RoadMap
CT_EXPEDITION_NAME = 3         -- object/RoadMap
CT_NAME = 1                    -- object/RoadMap
DC_ALWAYS = 0                  -- object/RoadMap
DC_SHIFT_KEY_DOWN = 1          -- object/RoadMap
MAX_SKILL_MAP_EFFECT_COUNT = 6 -- object/RoadMap

---object/RoadMap
---@class RoadMap: Widget, Map
local RoadMap = {}

function RoadMap:InitMapData() end

---Checks if the RoadMap is in ping mode.
---@return boolean pingMode `true` if ping mode is active, `false` otherwise.
---@nodiscard
---@usage
---```
---local pingMod = widget:IsPingMode()
---```
function RoadMap:IsPingMode() end

---Sets the size of the RoadMap.
---@param radioValue number The size value for the map.
---@usage
---```
---widget:SetMapSize(300)
---```
function RoadMap:SetMapSize(radioValue) end

---Shows or hides NPCs on the RoadMap.
---@param isShow boolean `true` to show NPCs, `false` to hide. (default: `false`)
---@usage
---```
---widget:SetRoadMapNpc(true)
---```
function RoadMap:SetRoadMapNpc(isShow) end

---@TODO: Confirm default value for leader ping visibility.
---Shows or hides the leader ping on the RoadMap.
---@param isShow boolean `true` to show the leader ping, `false` to hide.
---@usage
---```
---widget:ShowLeaderPing(true)
---```
function RoadMap:ShowLeaderPing(isShow) end
