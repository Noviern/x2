---@meta _

AP_BOTTOM = 8 -- object/WorldMap
AP_BOTTOMLEFT = 2 -- object/WorldMap
AP_BOTTOMRIGHT = 3 -- object/WorldMap
AP_CENTER = 4 -- object/WorldMap
AP_LEFT = 6 -- object/WorldMap
AP_RIGHT = 7 -- object/WorldMap
AP_TOP = 5 -- object/WorldMap
AP_TOPLEFT = 0 -- object/WorldMap
AP_TOPRIGHT = 1 -- object/WorldMap
CT_ABILITY = 2 -- object/WorldMap
CT_EXPEDITION_NAME = 3 -- object/WorldMap
CT_NAME = 1 -- object/WorldMap
DC_ALWAYS = 0 -- object/WorldMap
DC_SHIFT_KEY_DOWN = 1 -- object/WorldMap
MAX_SKILL_MAP_EFFECT_COUNT = 6 -- object/WorldMap

---object/WorldMap
---@class WorldMap: Widget, Map
---@field GetClimateInfo fun(self: self, zoneId: number)
---@field GetCursorSextants fun(self: self)
---@field GetIconDrawable fun(self: self, level: number, id)
---@field GetRouteDrawable fun(self: self, level: number, id)
---@field HideAllIconDrawable fun(self: self)
---@field RemovePing fun(self: self, pingType: number)
---@field RemovePingAll fun(self: self)
---@field SetCommonFarmDrawable fun(self: self, drawable: table)
---@field SetFestivalZoneColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetPortalDrawable fun(self: self, drawable: table)
---@field SetTempNotifyColor fun(self: self, color: table)
---@field SetTempNotifyCoord fun(self: self, isMain: boolean, coord)
---@field SetTroubleZoneColor fun(self: self, state: number, r: number, g: number, b: number, a: number)
---@field ShowCommonFarm fun(self: self, farmGroupType: number, farmType, x, y)
---@field ShowPortal fun(self: self, zoneId, x, y, z)
---@field ShowQuest fun(self: self, qType: number, decalIndex, hasDecal)
---@field UpdateEventMap fun(self: self)
---@field UpdateRouteMap fun(self: self, routeDrawable: table)
---@field UpdateZoneStateDrawable fun(self: self)