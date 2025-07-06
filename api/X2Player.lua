---@meta _

ACCOUNT_RESTRICT_CODE_NEXON = 80 -- api/X2Player
ACCOUNT_RESTRICT_CODE_NONE = 0 -- api/X2Player
ACCOUNT_RESTRICT_CODE_XL = 81 -- api/X2Player
APPELATION_ROUTE_TYPE_ACHIEVEMENTS = 2 -- api/X2Player
APPELATION_ROUTE_TYPE_ETC = 5 -- api/X2Player
APPELATION_ROUTE_TYPE_HIDDEN = 4 -- api/X2Player
APPELATION_ROUTE_TYPE_MAX = 6 -- api/X2Player
APPELATION_ROUTE_TYPE_MERCHANT_PACKS = 3 -- api/X2Player
APPELATION_ROUTE_TYPE_QUEST_CONTEXTS = 1 -- api/X2Player
APPELLATION_LIST_PER_PAGE = 50 -- api/X2Player
BOT_CHECK_ANSWER_COUNT = 3 -- api/X2Player
BOT_QUESTION_CHAR_SIZE = 5 -- api/X2Player
HIRAMAKAND_SAVE_PEOPLE_BUFF_TYPE = 23281 -- api/X2Player
INSTANT_TIME_EXPEDITION_REJOIN = 4 -- api/X2Player
SCREEN_BASE = 8 -- api/X2Player
SCREEN_CHARACTER_CREATE = 4 -- api/X2Player
SCREEN_CHARACTER_SELECT = 3 -- api/X2Player
SCREEN_INIT_WORLD = 5 -- api/X2Player
SCREEN_INTRO = 7 -- api/X2Player
SCREEN_LOGIN = 1 -- api/X2Player
SCREEN_NONE = 0 -- api/X2Player
SCREEN_WORLD = 6 -- api/X2Player
SCREEN_WORLD_SELECT = 2 -- api/X2Player
X2Player = {} -- api/X2Player
ZPW_ENTER = 0 -- api/X2Player
ZPW_EXPEL = 3 -- api/X2Player
ZPW_OUT = 2 -- api/X2Player
ZPW_WAIT = 1 -- api/X2Player
ZP_RESERVED = 4 -- api/X2Player

---Sets the player's appellation name and effect.
---@param nameType number
---@param effectType number
---@return boolean successful this still returns true even if the provided Types are not real
function X2Player:ChangeAppellation(nameType, effectType) end

---Returns a collection of [AppellationBuffInfo](lua://AppellationBuffInfo) which contains information related to each
---appellation level.
---@return AppellationBuffInfo[] [AppellationBuffInfo](lua://AppellationBuffInfo)
function X2Player:GetAppellationBuffInfoByLevels() end

---Returns a table of item requirements to change a appellation. Currently there is not a required item for changing a
---appellation so this function shouldn't be used.
---@return AppellationChangeItemInfo [AppellationChangeItemInfo](lua://AppellationChangeItemInfo)
function X2Player:GetAppellationChangeItemInfo() end

---Returns the player's unlocked appellation count.
---@return number appellationCount
function X2Player:GetAppellationCount() end

---Returns the player's appellation level information.
---@return AppellationMyLevelInfo [AppellationMyLevelInfo](lua://AppellationMyLevelInfo)
function X2Player:GetAppellationMyLevelInfo() end

---Returns current stamp information.
---@return AppellationMyStamp [AppellationMyStamp](lua://AppellationMyStamp)
function X2Player:GetAppellationMyStamp() end

---Returns appellation route information based on the appellation id.
---@param type number appellation id
---@return AppellationRouteInfo [AppellationRouteInfo](lua://AppellationRouteInfo)
function X2Player:GetAppellationRouteInfo(type) end

---Returns a collection of [StampInfo](lua://StampInfo). This may have a hidden param `X2Player:GetAppellationStampInfo(info.id)`
---@return StampInfo[] [StampInfo](lua://StampInfo)
function X2Player:GetAppellationStampInfo() end

---Returns a collection of up to 50 [Appellation](lua://AppellationRouteInfo) instances.
---@param routeFilter APPELATION_ROUTE_TYPE [APPELATION_ROUTE_TYPE](lua://APPELATION_ROUTE_TYPE)
---@param pageIndex number
---@return Appellation[] [Appellation](lua://Appellation)
function X2Player:GetAppellations(routeFilter, pageIndex) end

---Returns the total count of appellations in a appellation route type.
---@param routeFilter APPELATION_ROUTE_TYPE [APPELATION_ROUTE_TYPE](lua://APPELATION_ROUTE_TYPE)
---@return number appellationsCount
function X2Player:GetAppellationsCount(routeFilter) end

---Returns a table of information on the current showing appellation buff.  
---@usage
---```
---local effectInfo = X2Player:GetEffectAppellation()
---local effectDescription = effectInfo[APPELLATION_INFO.BUFF_INFO].description
---```
---@return Appellation [Appellation](lua://Appellation)
function X2Player:GetEffectAppellation() end

---Returns a table of information on the current showing appellation.
---@usage
---```
---local showingInfo = X2Player:GetShowingAppellation()
---local appellationName = showingInfo[APPELLATION_INFO.NAME]
---```
---@return Appellation [Appellation](lua://Appellation)
function X2Player:GetShowingAppellation() end

---Returns a table of item requirements to change a stamp.
---@return StampChangeItemInfo [StampChangeItemInfo](lua://StampChangeItemInfo)
function X2Player:GetStampChangeItemInfo() end

---Returns a collection of `{ key: number, value: string }` pairs where each key and value is representing the
---appellation route type.
---@return UnitAppellationRoute[] [UnitAppellationRoute](lua://UnitAppellationRoute)
function X2Player:GetUnitAppellationRouteList() end