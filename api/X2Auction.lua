---@meta _

ASK_ACCOUNT_BUFF = 3 -- api/X2Auction
ASK_NORMAL = 0 -- api/X2Auction
ASK_PCBANG = 1 -- api/X2Auction
ASK_PREMIUM = 2 -- api/X2Auction
PT_BID = 0 -- api/X2Auction
PT_PARTITION = 1 -- api/X2Auction
X2Auction = {} -- api/X2Auction

---Returns `searchedItemCount` which can be between 0 and 9 searched items displayed.
---Only works when player is currently searching the auction house.
---@return number searchedItemCount
function X2Auction:GetSearchedItemCount() end

---Returns [ItemInfo](lua://ItemInfo) for the item index `idx` of the current searched auction house page. 
---Only works when player is currently searching the auction house.
---@param idx number item index of the current auction house page. Ranges from 1 to 9.
---@return ItemInfo? [ItemInfo](lua://ItemInfo)
function X2Auction:GetSearchedItemInfo(idx) end

---Returns currentPage` which can be between 1 and `maxSearchablePages` (50).
---Only works when player is currently searching the auction house.
---@return number currentPage
function X2Auction:GetSearchedItemPage() end

---Returns `maxSearchablePages` (50) for the auction house.
---@return number maxSearchablePages
function X2Auction:GetSearchedItemTotalCount() end

---Searches the auction house.
---Only works when player is currently searching the auction house.
---@param page number 1 to 50 - `X2Auction:GetSearchedItemTotalCount()`
---@param minLevel number 0 to 125 Base Level (0 to 55) + Ancestral Level (1 to 70)
---@param maxLevel number 0 to 125 Base Level (0 to 55) + Ancestral Level (1 to 70)
---@param grade AUCTION_GRADE_FILTER [AUCTION_GRADE_FILTER](lua://AUCTION_GRADE_FILTER)
---@param category AUCTION_CATEGORY [AUCTION_CATEGORY](lua://AUCTION_CATEGORY)
---@param exactMatch boolean
---@param keywords string
---@param minDirectPriceStr string
---@param maxDirectPriceStr string
function X2Auction:SearchAuctionArticle(page, minLevel, maxLevel, grade, category, exactMatch, keywords, minDirectPriceStr, maxDirectPriceStr) end
