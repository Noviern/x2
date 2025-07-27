---@meta _

HOUSING_LIST_FILTER_ALL = 1                  -- api/X2Resident
HOUSING_LIST_FILTER_FARM = 5                 -- api/X2Resident
HOUSING_LIST_FILTER_FLOATING = 10            -- api/X2Resident
HOUSING_LIST_FILTER_HOUSE_NAME = 3           -- api/X2Resident
HOUSING_LIST_FILTER_LARGE = 9                -- api/X2Resident
HOUSING_LIST_FILTER_MANSION = 11             -- api/X2Resident
HOUSING_LIST_FILTER_MEDIUM = 8               -- api/X2Resident
HOUSING_LIST_FILTER_PUBLIC = 12              -- api/X2Resident
HOUSING_LIST_FILTER_SELLER_NAME = 2          -- api/X2Resident
HOUSING_LIST_FILTER_SMALL = 7                -- api/X2Resident
HOUSING_LIST_FILTER_UNDERWATER_STRUCTURE = 6 -- api/X2Resident
HOUSING_LIST_FILTER_WORKTABLE = 4            -- api/X2Resident
X2Resident = {}                              -- api/X2Resident

---api/X2Resident
---@alias HOUSING_LIST_FILTER
---| `HOUSING_LIST_FILTER_ALL`
---| `HOUSING_LIST_FILTER_FARM`
---| `HOUSING_LIST_FILTER_FLOATING`
---| `HOUSING_LIST_FILTER_HOUSE_NAME`
---| `HOUSING_LIST_FILTER_LARGE`
---| `HOUSING_LIST_FILTER_MANSION`
---| `HOUSING_LIST_FILTER_MEDIUM`
---| `HOUSING_LIST_FILTER_PUBLIC`
---| `HOUSING_LIST_FILTER_SELLER_NAME`
---| `HOUSING_LIST_FILTER_SMALL`
---| `HOUSING_LIST_FILTER_UNDERWATER_STRUCTURE`
---| `HOUSING_LIST_FILTER_WORKTABLE`

---api/X2Resident
---@class ResidentBoardContent
---@field [1] string?
---@field [2] string?
---@field [3] string?
---@field [4] string?
---@field contents ResidentBoardContent
---@field faction string
---@field title string

---Searches for housing trade listings in the current zone with the given
---filter and search word, triggering the `RESIDENT_HOUSING_TRADE_LIST` event.
---@param filterindex HOUSING_LIST_FILTER The filter to apply.
---@param searchWord string The search term.
---@return boolean unknown TODO: Unsure how this used.
---@usage
---```
---X2Resident:FilterHousingTradeList(HOUSING_LIST_FILTER_SMALL, "")
---```
---@see HOUSING_LIST_FILTER
function X2Resident:FilterHousingTradeList(filterindex, searchWord) end

---Retrieves resident board content for the specified board type in the current
---zone.
---@param boardType RESIDENT_BOARD_TYPE The type of resident board.
---@return ResidentBoardContent residentBoardContent The board content, or an empty table if not found.
---@nodiscard
---@usage
---```
---local residentBoardContent = X2Resident:GetResidentBoardContent(1)
---```
---@see RESIDENT_BOARD_TYPE
---@see ResidentBoardContent
function X2Resident:GetResidentBoardContent(boardType) end

---Searches for housing trade listings in the specified zone with the given
---filter and search word, triggering the `RESIDENT_HOUSING_TRADE_LIST` event.
---@param zoneGroupType ZONE_ID The zone ID to search.
---@param filterindex HOUSING_LIST_FILTER The filter to apply.
---@param searchWord string The search term.
---@usage
---```
---X2Resident:RequestHousingTradeList(1, HOUSING_LIST_FILTER_SMALL, "")
---```
---@see ZONE_ID
---@see HOUSING_LIST_FILTER
function X2Resident:RequestHousingTradeList(zoneGroupType, filterindex, searchWord) end
