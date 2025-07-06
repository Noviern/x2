---@meta _

HOUSING_LIST_FILTER_ALL = 1 -- api/X2Resident
HOUSING_LIST_FILTER_FARM = 5 -- api/X2Resident
HOUSING_LIST_FILTER_FLOATING = 10 -- api/X2Resident
HOUSING_LIST_FILTER_HOUSE_NAME = 3 -- api/X2Resident
HOUSING_LIST_FILTER_LARGE = 9 -- api/X2Resident
HOUSING_LIST_FILTER_MANSION = 11 -- api/X2Resident
HOUSING_LIST_FILTER_MEDIUM = 8 -- api/X2Resident
HOUSING_LIST_FILTER_PUBLIC = 12 -- api/X2Resident
HOUSING_LIST_FILTER_SELLER_NAME = 2 -- api/X2Resident
HOUSING_LIST_FILTER_SMALL = 7 -- api/X2Resident
HOUSING_LIST_FILTER_UNDERWATER_STRUCTURE = 6 -- api/X2Resident
HOUSING_LIST_FILTER_WORKTABLE = 4 -- api/X2Resident
X2Resident = {} -- api/X2Resident

---Searches `searchWord` the resident task board with the filter `filterindex`.
---Only works when Sales tab is open on resident task board.
---@param filterindex HOUSING_LIST_FILTER [HOUSING_LIST_FILTER](lua://HOUSING_LIST_FILTER)
---@param searchWord string
---@return boolean
function X2Resident:FilterHousingTradeList(filterindex, searchWord) end

---Returns [ResidentBoardContent](lua://ResidentBoardContent) for the
---`boardType` in the current zone if it exists, otherwise returns a empty
---table.
---@param boardType RESIDENT_BOARD_TYPE [RESIDENT_BOARD_TYPE](lua://RESIDENT_BOARD_TYPE) 
---@return ResidentBoardContent [ResidentBoardContent](lua://ResidentBoardContent)
function X2Resident:GetResidentBoardContent(boardType) end

---Searches `searchWord` in `zoneGroupType` and filtered by `filterindex` and triggers [UIEVENT_TYPE.RESIDENT_HOUSING_TRADE_LIST](lua://UIEVENT_TYPE.RESIDENT_HOUSING_TRADE_LIST).
---@param zoneGroupType ZONE_ID
---@param filterindex HOUSING_LIST_FILTER [HOUSING_LIST_FILTER](lua://HOUSING_LIST_FILTER)
---@param searchWord string
function X2Resident:RequestHousingTradeList(zoneGroupType, filterindex, searchWord) end