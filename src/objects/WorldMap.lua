---@meta _

MAX_SKILL_MAP_EFFECT_COUNT = 6 -- objects/WorldMap

---@FIXME: Worldmap is highly tied to the actual world map and one can have an effect on the other, for instance changing things in the Worldmap can change things on the real world map.

---objects/WorldMap
---@class WorldMap: Widget, Map
local WorldMap = {}
---@class worldmap: WorldMap

---Retrieves climate information for a specific zone.
---@param zoneId ZONE_ID The ID of the zone.
---@return ZONE_CLIMATE[] climateInfo The climate information for the zone.
---@nodiscard
function WorldMap:GetClimateInfo(zoneId) end

---Retrieves the sextant location of the cursor on the world map.
---@return SEXTANT|nil The cursor's sextant data, or `nil` if not available.
---@nodiscard
function WorldMap:GetCursorSextants() end

---Retrieves the icon drawable for a specific zoom level and zone ID.
---@param level WORLD_MAP_ZOOM The zoom level.
---@param id ZONE_ID The zone ID.
---@return ImageDrawable iconDrawable The icon drawable, empty table if the object `ImageDrawable` hasn't been imported, or `nil` if not found.
---@nodiscard
---@see ImageDrawable
function WorldMap:GetIconDrawable(level, id) end

---Retrieves or creates a route drawable for a specific zoom level and ID.
---Crashes if an invalid level is provided.
---@param level WORLD_MAP_ZOOM The zoom level.
---@param id number The route ID.
---@return ImageDrawable routeDrawable The route drawable, empty table if the object `ImageDrawable` hasn't been imported, or `nil` if not found.
---@return boolean created `true` if the drawable was created, `false` if it already existed.
---@nodiscard
---@see ImageDrawable
function WorldMap:GetRouteDrawable(level, id) end

---Hides all icon drawables on the world map.
function WorldMap:HideAllIconDrawable() end

---Initializes map data with specified dimensions and texture paths. Must be
---called before showing the widget to ensure proper rendering.
---@param width number The width of the map.
---@param height number The height of the map.
---@param tgaPath "ui/map/image_map.tga"|string The path to the map texture.
---@param iconPath "ui/map/frame_map.dds"|string The path to the icon texture.
function WorldMap:InitMapData(width, height, tgaPath, iconPath) end

---Removes a ping from the world map by its type.
---@param pingType PING_TYPE The type of ping to remove.
function WorldMap:RemovePing(pingType) end

---Removes all pings from the world map.
function WorldMap:RemovePingAll() end

---Sets the drawable for common farm icons on the world map.
---@param drawable EffectDrawable The drawable for the farm icon.
---@usage
---```lua
---local farmDrawable = widget:CreateEffectDrawableByKey("ui/map/icon/npc_icon.dds", "portal", "overlay")
---farmDrawable:SetVisible(false)
---farmDrawable:SetEffectPriority(1, "alpha", 0.5, 0.4)
---farmDrawable:SetMoveRepeatCount(0)
---farmDrawable:SetMoveRotate(false)
---farmDrawable:SetMoveEffectType(1, "right", 0, 0, 0.4, 0.4)
---farmDrawable:SetMoveEffectEdge(1, 0.3, 0.5)
---farmDrawable:SetMoveEffectType(2, "right", 0, 0, 0.4, 0.4)
---farmDrawable:SetMoveEffectEdge(2, 0.5, 0.3)
---widget:SetCommonFarmDrawable(farmDrawable)
---```
---@see EffectDrawable
function WorldMap:SetCommonFarmDrawable(drawable) end

---Sets the color for festival zones on the world map.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
function WorldMap:SetFestivalZoneColor(r, g, b, a) end

---Sets the drawable for portal icons on the world map. May accept any drawable
---type.
---@param drawable EffectDrawable The drawable for the portal icon.
---@usage
---```lua
---local portalDrawable = widget:CreateEffectDrawableByKey("ui/map/icon/npc_icon.dds", "portal", "overlay")
---portalDrawable:SetVisible(false)
---portalDrawable:SetEffectPriority(1, "alpha", 0.5, 0.4)
---portalDrawable:SetMoveRepeatCount(0)
---portalDrawable:SetMoveRotate(false)
---portalDrawable:SetMoveEffectType(1, "right", 0, 0, 0.4, 0.4)
---portalDrawable:SetMoveEffectEdge(1, 0.3, 0.5)
---portalDrawable:SetMoveEffectType(2, "right", 0, 0, 0.4, 0.4)
---portalDrawable:SetMoveEffectEdge(2, 0.5, 0.3)
---widget:SetPortalDrawable(portalDrawable)
---```
---@see EffectDrawable
function WorldMap:SetPortalDrawable(drawable) end

---@TODO: Confirm if RGBAColor is correct and clarify functionality. may allow values up to 255.
---Sets a temporary notification color for the world map.
---@param color RGBAColor The color for the temporary notification.
---@see RGBAColor
function WorldMap:SetTempNotifyColor(color) end

---@TODO: Confirm if RGBAColor is correct and clarify functionality.
---Sets temporary notification coordinates for the world map.
---@param isMain boolean Whether the coordinate is for the main notification.
---@param coord table The coordinate data.
function WorldMap:SetTempNotifyCoord(isMain, coord) end

---Sets the color for trouble zones on the world map based on their state.
---@param state ZONE_STATE The state of the trouble zone.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha component. (min: `0`, max: `1`)
function WorldMap:SetTroubleZoneColor(state, r, g, b, a) end

---Shows a common farm icon on the world map at the specified coordinates.
---@param farmGroupType number The farm group type.
---@param farmType number The farm type.
---@param x number The x-coordinate.
---@param y number The y-coordinate.
function WorldMap:ShowCommonFarm(farmGroupType, farmType, x, y) end

---@FIXME: Crashes if `SetPortalDrawable` is not called first.
---Shows a portal location on the world map at the specified coordinates.
---Crashes if `SetPortalDrawable` is not called first.
---@param zoneId ZONE_KEY The zone ID.
---@param x number The x-coordinate.
---@param y number The y-coordinate.
---@param z number The z-coordinate.
function WorldMap:ShowPortal(zoneId, x, y, z) end

---Shows a quest indicator on the world map.
---@param qType number The quest type.
---@param decalIndex number The decal index for the quest.
---@param hasDecal boolean Whether the quest has a decal.
function WorldMap:ShowQuest(qType, decalIndex, hasDecal) end

---Updates the event map data on the world map.
function WorldMap:UpdateEventMap() end

---Updates the route map with the specified drawable.
---@param routeDrawable ImageDrawable The drawable for the route.
---@usage
---```lua
---local routeDrawable, created = widget:GetRouteDrawable(3, 17)
---widget:UpdateRouteMap(routeDrawable)
---```
---@see ImageDrawable
function WorldMap:UpdateRouteMap(routeDrawable) end

---Updates the zone state drawables on the world map.
function WorldMap:UpdateZoneStateDrawable() end
