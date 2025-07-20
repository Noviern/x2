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

---TODO:
---@return boolean
---@nodiscard
function RoadMap:IsPingMode() end

---TODO:
---@param radioValue number
function RoadMap:SetMapSize(radioValue) end

---TODO:
---@param isShow boolean
function RoadMap:SetRoadMapNpc(isShow) end

---TODO:
---@param isShow boolean
function RoadMap:ShowLeaderPing(isShow) end
