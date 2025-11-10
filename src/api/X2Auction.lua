---@meta _

ASK_ACCOUNT_BUFF = 3 -- api/X2Auction ASK
ASK_NORMAL = 0       -- api/X2Auction ASK
ASK_PCBANG = 1       -- api/X2Auction ASK
ASK_PREMIUM = 2      -- api/X2Auction ASK
PT_BID = 0           -- api/X2Auction PT
PT_PARTITION = 1     -- api/X2Auction PT
---@class X2Auction
X2Auction = {}       -- api/X2Auction

---api/X2Auction
---Auction Service Kind
---@alias ASK
---| `ASK_ACCOUNT_BUFF`
---| `ASK_NORMAL`
---| `ASK_PCBANG`
---| `ASK_PREMIUM`

---api/X2Auction
---Post Type
---@alias PT
---| `PT_BID`
---| `PT_PARTITION`

---@FIXME: Buggy: only opens if UI was opened previously.
---Requests the market price for an item, triggering the `DIAGONAL_ASR` event.
---@param itemType number The type of item.
---@param itemGrade ITEM_GRADE_TYPE The grade of the item.
---@param askMarketPriceUi boolean `true` to open the market price UI, `false` otherwise. Buggy: only opens if UI was opened previously.
---@see ITEM_GRADE_TYPE
function X2Auction:AskMarketPrice(itemType, itemGrade, askMarketPriceUi) end

---@FIXME: this is broken and doesnt always return a value, needs more testing
---Retrieves the lowest market price for an item.
---@param itemType number The type of item.
---@param itemGrade ITEM_GRADE_TYPE The grade of the item.
---@return string|nil lowestPrice The lowest price as a string, or `nil` if not available.
---@nodiscard
---@see ITEM_GRADE_TYPE
function X2Auction:GetLowestPrice(itemType, itemGrade) end

---Retrieves the number of searched items displayed in the auction house.
---@return number searchedItemCount The number of items displayed. (min: `0`, max: `9`, default: `9`)
---@nodiscard
function X2Auction:GetSearchedItemCount() end

---Retrieves item information for the specified index on the current auction
---house search page.
---@param idx number The item index on the current page. (min: `1`, max: `9`).
---@return ItemInfo|nil itemInfo The item information, or `nil` if not found.
---@nodiscard
---@see ItemInfo
function X2Auction:GetSearchedItemInfo(idx) end

---Retrieves the current auction house page number.
---@return number currentPage The current page number. (min: `1`, max: `50`, default: `1`)
---@nodiscard
function X2Auction:GetSearchedItemPage() end

---Retrieves the maximum number of searchable pages for the auction house.
---@return number maxSearchablePages The maximum number of searchable pages. (max: `50`)
---@nodiscard
function X2Auction:GetSearchedItemTotalCount() end

---Searches the auction house with the specified parameters. Only works when
---the auction house is open.
---@param page number The page to search (1 to 50, see `X2Auction:GetSearchedItemTotalCount()`).
---@param minLevel number The minimum level (0 to 125, base 0-55 + ancestral 1-70).
---@param maxLevel number The maximum level (0 to 125, base 0-55 + ancestral 1-70).
---@param grade AUCTION_GRADE_FILTER The item grade filter.
---@param category AUCTION_CATEGORY The item category.
---@param exactMatch boolean Whether to use exact keyword matching.
---@param keywords string The search keywords.
---@param minDirectPriceStr string The minimum direct price in copper as a string.
---@param maxDirectPriceStr string The maximum direct price in copper as a string.
---@see AUCTION_GRADE_FILTER
---@see AUCTION_CATEGORY
function X2Auction:SearchAuctionArticle(page, minLevel, maxLevel, grade, category, exactMatch, keywords,
  minDirectPriceStr, maxDirectPriceStr)
end
