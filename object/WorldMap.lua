---@meta _

AP_BOTTOM = 8                  -- object/WorldMap
AP_BOTTOMLEFT = 2              -- object/WorldMap
AP_BOTTOMRIGHT = 3             -- object/WorldMap
AP_CENTER = 4                  -- object/WorldMap
AP_LEFT = 6                    -- object/WorldMap
AP_RIGHT = 7                   -- object/WorldMap
AP_TOP = 5                     -- object/WorldMap
AP_TOPLEFT = 0                 -- object/WorldMap
AP_TOPRIGHT = 1                -- object/WorldMap
CT_ABILITY = 2                 -- object/WorldMap
CT_EXPEDITION_NAME = 3         -- object/WorldMap
CT_NAME = 1                    -- object/WorldMap
DC_ALWAYS = 0                  -- object/WorldMap
DC_SHIFT_KEY_DOWN = 1          -- object/WorldMap
MAX_SKILL_MAP_EFFECT_COUNT = 6 -- object/WorldMap

---object/WorldMap
---@class WorldMap: Widget, Map
local WorldMap = {}

---TODO:
---@param zoneId number
---@return table
---@nodiscard
function WorldMap:GetClimateInfo(zoneId) end

---TODO:
function WorldMap:GetCursorSextants() end

---TODO:
---@param level number
---@param id any
function WorldMap:GetIconDrawable(level, id) end

---TODO: Crash.
---@param level number
---@param id any
function WorldMap:GetRouteDrawable(level, id) end

---TODO:
function WorldMap:HideAllIconDrawable() end

---TODO:
---@param pingType number
function WorldMap:RemovePing(pingType) end

---TODO:
function WorldMap:RemovePingAll() end

---TODO:
---@param drawable table
function WorldMap:SetCommonFarmDrawable(drawable) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param a number
function WorldMap:SetFestivalZoneColor(r, g, b, a) end

---TODO:
---@param drawable table
function WorldMap:SetPortalDrawable(drawable) end

---TODO:
---@param color table
function WorldMap:SetTempNotifyColor(color) end

---TODO:
---@param isMain boolean
---@param coord table
function WorldMap:SetTempNotifyCoord(isMain, coord) end

---TODO:
---@param state number
---@param r number
---@param g number
---@param b number
---@param a number
function WorldMap:SetTroubleZoneColor(state, r, g, b, a) end

---TODO:
---@param farmGroupType number
---@param farmType number
---@param x number
---@param y number
function WorldMap:ShowCommonFarm(farmGroupType, farmType, x, y) end

---TODO:
---@param zoneId number
---@param x number
---@param y number
---@param z number
function WorldMap:ShowPortal(zoneId, x, y, z) end

---TODO:
---@param qType number
---@param decalIndex number
---@param hasDecal number
function WorldMap:ShowQuest(qType, decalIndex, hasDecal) end

---TODO:
function WorldMap:UpdateEventMap() end

---TODO:
---@param routeDrawable table
function WorldMap:UpdateRouteMap(routeDrawable) end

---TODO:
function WorldMap:UpdateZoneStateDrawable() end
