---@meta _

ACCOUNT_RESTRICT_CODE_NEXON = 80         -- api/X2Player
ACCOUNT_RESTRICT_CODE_NONE = 0           -- api/X2Player
ACCOUNT_RESTRICT_CODE_XL = 81            -- api/X2Player
APPELATION_ROUTE_TYPE_ACHIEVEMENTS = 2   -- api/X2Player
APPELATION_ROUTE_TYPE_ETC = 5            -- api/X2Player
APPELATION_ROUTE_TYPE_HIDDEN = 4         -- api/X2Player
APPELATION_ROUTE_TYPE_MAX = 6            -- api/X2Player
APPELATION_ROUTE_TYPE_MERCHANT_PACKS = 3 -- api/X2Player
APPELATION_ROUTE_TYPE_QUEST_CONTEXTS = 1 -- api/X2Player
APPELLATION_LIST_PER_PAGE = 50           -- api/X2Player
BOT_CHECK_ANSWER_COUNT = 3               -- api/X2Player
BOT_QUESTION_CHAR_SIZE = 5               -- api/X2Player
HIRAMAKAND_SAVE_PEOPLE_BUFF_TYPE = 23281 -- api/X2Player
INSTANT_TIME_EXPEDITION_REJOIN = 4       -- api/X2Player
SCREEN_BASE = 8                          -- api/X2Player
SCREEN_CHARACTER_CREATE = 4              -- api/X2Player
SCREEN_CHARACTER_SELECT = 3              -- api/X2Player
SCREEN_INIT_WORLD = 5                    -- api/X2Player
SCREEN_INTRO = 7                         -- api/X2Player
SCREEN_LOGIN = 1                         -- api/X2Player
SCREEN_NONE = 0                          -- api/X2Player
SCREEN_WORLD = 6                         -- api/X2Player
SCREEN_WORLD_SELECT = 2                  -- api/X2Player
X2Player = {}                            -- api/X2Player
ZPW_ENTER = 0                            -- api/X2Player
ZPW_EXPEL = 3                            -- api/X2Player
ZPW_OUT = 2                              -- api/X2Player
ZPW_WAIT = 1                             -- api/X2Player
ZP_RESERVED = 4                          -- api/X2Player

---api/X2Player
---@alias SCREEN_STATE
---| `SCREEN_BASE`
---| `SCREEN_CHARACTER_CREATE`
---| `SCREEN_CHARACTER_SELECT`
---| `SCREEN_INIT_WORLD`
---| `SCREEN_INTRO`
---| `SCREEN_LOGIN`
---| `SCREEN_NONE`
---| `SCREEN_WORLD`
---| `SCREEN_WORLD_SELECT`

---api/X2Player
---@class AppellationChangeItemInfo
---@field enough boolean
---@field has number
---@field itemType number
---@field need number

---api/X2Player
---@class AppellationMyLevelInfo
---@field exp number
---@field level number
---@field maxExp number
---@field maxlevel number
---@field minExp number

---api/X2Player
---@class AppellationMyStamp
---@field id number
---@field path string

---api/X2Player
---@class StampInfo: AppellationMyStamp
---@field canEquip number
---@field effectDescription string
---@field modifier table
---@field name string
---@field reqLevel number

---api/X2Player
---@class AppellationRouteInfo
---@field kind number
---@field routeDesc string
---@field routePopup number
---@field type number

---api/X2Player
---@alias APPELATION_ROUTE_TYPE
---| `APPELATION_ROUTE_TYPE_ACHIEVEMENTS`
---| `APPELATION_ROUTE_TYPE_ETC`
---| `APPELATION_ROUTE_TYPE_HIDDEN`
---| `APPELATION_ROUTE_TYPE_MAX`
---| `APPELATION_ROUTE_TYPE_MERCHANT_PACKS`
---| `APPELATION_ROUTE_TYPE_QUEST_CONTEXTS`

---api/X2Player
---@class Appellation
---@field [1] number APPELLATION_INFO.TYPE
---@field [2]? string APPELLATION_INFO.NAME
---@field [3] number APPELLATION_INFO.GRADE
---@field [4] number APPELLATION_INFO.ISHAVE
---@field [5] number APPELLATION_INFO.ORDER
---@field [6]? AppellationBuffInfo APPELLATION_INFO.BUFF_INFO

---api/X2Player
---@class StampChangeItemInfo
---@field enough boolean
---@field has number
---@field itemType number
---@field need number

---api/X2Player
---@class UnitAppellationRoute
---@field key number
---@field value string

---Sets the player's appellation name and effect.
---@param appellationNameType number The appellation name type.
---@param appellationEffectType number The appellation effect type.
---@return boolean successful True if the change was successful, even if types are invalid.
---@usage
---```
---X2Player:ChangeAppellation(0, 0)
---```
function X2Player:ChangeAppellation(appellationNameType, appellationEffectType) end

---Retrieves a list of appellation buff information for each appellation level.
---@return AppellationBuffInfo[] appellationBuffInfo A table of appellation buff information.
---@nodiscard
---@usage
---```
---local appellationBuffInfo = X2Player:GetAppellationBuffInfoByLevels()
---```
---@see AppellationBuffInfo
function X2Player:GetAppellationBuffInfoByLevels() end

---Retrieves item requirements for changing an appellation (currently not required).
---@return AppellationChangeItemInfo appellationChangeItemInfo The item requirements for changing an appellation.
---@nodiscard
---@usage
---```
---local appellationChangeItemInfo = X2Player:GetAppellationChangeItemInfo()
---```
---@see AppellationChangeItemInfo
function X2Player:GetAppellationChangeItemInfo() end

---Retrieves the count of the player's unlocked appellations.
---@return number appellationCount The number of unlocked appellations.
---@nodiscard
---@usage
---```
---local appellationCount = X2Player:GetAppellationCount()
---```
function X2Player:GetAppellationCount() end

---Retrieves the player's appellation level information.
---@return AppellationMyLevelInfo appellationMyLevelInfo The appellation level information.
---@nodiscard
---@usage
---```
---local appellationMyLevelInfo = X2Player:GetAppellationMyLevelInfo()
---```
---@see AppellationMyLevelInfo
function X2Player:GetAppellationMyLevelInfo() end

---Retrieves current stamp information.
---@return AppellationMyStamp appellationMyStamp The current stamp information.
---@nodiscard
---@usage
---```
---local appellationMyStamp = X2Player:GetAppellationMyStamp()
---```
---@see AppellationMyStamp
function X2Player:GetAppellationMyStamp() end

---Retrieves appellation route information for the specified appellation ID.
---@param appellationType number The appellation ID.
---@return AppellationRouteInfo appellationRouteInfo The appellation route information.
---@nodiscard
---@usage
---```
---local appellationRouteInfo = X2Player:GetAppellationRouteInfo(9000080)
---```
---@see AppellationRouteInfo
function X2Player:GetAppellationRouteInfo(appellationType) end

---Retrieves a list of stamp information.
---@return StampInfo[] appellationStampInfo A table of stamp information.
---@nodiscard
---@usage
---```
---local appellationStampInfo = X2Player:GetAppellationStampInfo()
---```
---@see StampInfo
function X2Player:GetAppellationStampInfo() end

---Retrieves a list of up to 50 appellation instances.
---@param appellationRouteFilter APPELATION_ROUTE_TYPE The route type filter.
---@param appellationPageIndex number The page index for the appellation list.
---@return Appellation[] appellations A table of appellation instances.
---@nodiscard
---@usage
---```
---local appellations = X2Player:GetAppellations(APPELATION_ROUTE_TYPE_MAX, 1)
---```
---@see APPELATION_ROUTE_TYPE
---@see Appellation
function X2Player:GetAppellations(appellationRouteFilter, appellationPageIndex) end

---Retrieves the total count of appellations for the specified route type.
---@param appellationRouteFilter APPELATION_ROUTE_TYPE The route type filter.
---@return number appellationsCount The total number of appellations.
---@nodiscard
---@usage
---```
---local appellationsCount = X2Player:GetAppellationsCount(APPELATION_ROUTE_TYPE_ACHIEVEMENTS)
---```
---@see APPELATION_ROUTE_TYPE
function X2Player:GetAppellationsCount(appellationRouteFilter) end

---Retrieves information on the currently active appellation buff.
---@return Appellation showingEffectAppellation The active appellation buff information.
---@nodiscard
---@usage
---```
---local showingEffectAppellation = X2Player:GetEffectAppellation()
---local effectDescription = showingEffectAppellation[APPELLATION_INFO.BUFF_INFO].description
---```
---@see Appellation
function X2Player:GetEffectAppellation() end

---Retrieves information on the currently displayed appellation.
---@return Appellation showingAppellation The displayed appellation information.
---@nodiscard
---@usage
---```
---local showingAppellation = X2Player:GetShowingAppellation()
---local appellationName = showingAppellation[APPELLATION_INFO.NAME]
---```
---@see Appellation
function X2Player:GetShowingAppellation() end

---Retrieves item requirements for changing a stamp.
---@return StampChangeItemInfo stampChangeItemInfo The item requirements for changing a stamp.
---@nodiscard
---@usage
---```
---local stampChangeItemInfo = X2Player:GetStampChangeItemInfo()
---```
---@see StampChangeItemInfo
function X2Player:GetStampChangeItemInfo() end

---Retrieves a list of key-value pairs representing appellation route types.
---@return UnitAppellationRoute[] unitAppellationRoute A table of appellation route types.
---@nodiscard
---@usage
---```
---local unitAppellationRoute = X2Player:GetUnitAppellationRouteList()
---```
---@see UnitAppellationRoute
function X2Player:GetUnitAppellationRouteList() end
