---@meta _

ASK_ACCOUNT_BUFF = 3 -- api/X2Auction
ASK_NORMAL = 0       -- api/X2Auction
ASK_PCBANG = 1       -- api/X2Auction
ASK_PREMIUM = 2      -- api/X2Auction
PT_BID = 0           -- api/X2Auction
PT_PARTITION = 1     -- api/X2Auction
---@class X2Auction
X2Auction = {}       -- api/X2Auction

---api/X2Auction
---@enum AUCTION_GRADE_FILTER
local AUCTION_GRADE_FILTER = {
  ALL       = 1,
  BASIC     = 2,
  GRAND     = 3,
  RARE      = 4,
  ARCANE    = 5,
  HEROIC    = 6,
  UNIQUE    = 7,
  CELESTIAL = 8,
  DIVINE    = 9,
  EPIC      = 10,
  LEGENDARY = 11,
  MYTHIC    = 12,
  ETERNAL   = 13,
}

---api/X2Auction
---@enum AUCTION_CATEGORY
local AUCTION_CATEGORY = {
  ALL                     = 0,
  DAGGER                  = 1,
  SWORD                   = 2,
  BLADE                   = 3,
  SPEAR                   = 4,
  AXE                     = 5,
  MACE                    = 6,
  STAFF                   = 7,
  TWOHAND_SWORD           = 8,
  TWOHAND_BLADE           = 9,
  TWOHAND_SPEAR           = 10,
  TWOHAND_AXE             = 11,
  TWOHAND_MACE            = 12,
  TWOHAND_STAFF           = 13,
  BOW                     = 14,
  LIGHT_ARMOR_HEAD        = 15,
  LIGHT_ARMOR_CHEST       = 16,
  LIGHT_ARMOR_WAIST       = 17,
  LIGHT_ARMOR_ARMS        = 18,
  LIGHT_ARMOR_HANDS       = 19,
  LIGHT_ARMOR_LEGS        = 20,
  LIGHT_ARMOR_FEET        = 21,
  NORMAL_ARMOR_HEAD       = 22,
  NORMAL_ARMOR_CHEST      = 23,
  NORMAL_ARMOR_WAIST      = 24,
  NORMAL_ARMOR_ARMS       = 25,
  NORMAL_ARMOR_HANDS      = 26,
  NORMAL_ARMOR_LEGS       = 27,
  NORMAL_ARMOR_FEET       = 28,
  HEAVY_ARMOR_HEAD        = 29,
  HEAVY_ARMOR_CHEST       = 30,
  HEAVY_ARMOR_WAIST       = 31,
  HEAVY_ARMOR_ARMS        = 32,
  HEAVY_ARMOR_HANDS       = 33,
  HEAVY_ARMOR_LEGS        = 34,
  HEAVY_ARMOR_FEET        = 35,
  ORE                     = 36,
  RAW_LUMBER              = 37,
  ROCK                    = 38,
  RAWHIDE                 = 39,
  FIBER                   = 40,
  PARTS                   = 41,
  MEAT                    = 42,
  MARINE_PRODUCT          = 43,
  GRAIN                   = 44,
  VEGETABLES              = 45,
  FRUIT                   = 46,
  SPICE                   = 47,
  DRUG_MATERIAL           = 48,
  FLOWER                  = 49,
  SOIL                    = 50,
  JEWEL                   = 51,
  PAPER                   = 52,
  METAL                   = 53,
  WOOD                    = 54,
  STONE                   = 55,
  LEATHER                 = 56,
  CLOTH                   = 57,
  MACHINE                 = 58,
  GLASS                   = 59,
  RUBBER                  = 60,
  NOBLE_METAL             = 61,
  ALCHEMY_MATERIAL        = 62,
  CRAFT_MATERIAL          = 63,
  ANIMAL                  = 64,
  YOUNG_PLANT             = 65,
  SEED                    = 66,
  FURNITURE               = 67,
  ADVENTURE               = 68,
  TOY                     = 69,
  DYE                     = 70,
  COOKING_OIL             = 71,
  SEASONING               = 72,
  MOON_STONE_SCALE_RED    = 73,
  MOON_STONE_SCALE_YELLOW = 74,
  MOON_STONE_SCALE_GREEN  = 75,
  MOON_STONE_SCALE_BLUE   = 76,
  MOON_STONE_SCALE_PURPLE = 77,
  MOON_STONE_SHADOW_CRAFT = 78,
  MOON_STONE_SHADOW_HONOR = 79,
  SHOTGUN                 = 80,
}

---Requests the market price for an item, triggering the `DIAGONAL_ASR` event.
---@param itemType number The type of item.
---@param itemGrade ITEM_GRADE_TYPE The grade of the item.
---@param askMarketPriceUi boolean `true` to open the market price UI, `false` otherwise. Buggy: only opens if UI was opened previously.
---@usage
---```
---X2Auction:AskMarketPrice(8343, 0, true)
---```
---@see ITEM_GRADE_TYPE
function X2Auction:AskMarketPrice(itemType, itemGrade, askMarketPriceUi) end

---@TODO: this is broken and doesnt always return a value, needs more testing
---Retrieves the lowest market price for an item.
---@param itemType number The type of item.
---@param itemGrade ITEM_GRADE_TYPE The grade of the item.
---@return string|nil lowestPrice The lowest price as a string, or `nil` if not available.
---@nodiscard
---@usage
---```
---local lowestPrice = X2Auction:GetLowestPrice(8343, 0)
---```
---@see ITEM_GRADE_TYPE
function X2Auction:GetLowestPrice(itemType, itemGrade) end

---Retrieves the number of searched items displayed in the auction house.
---@return number searchedItemCount The number of items displayed. (min: `0`, max: `9`, default: `9`)
---@nodiscard
---@usage
---```
---local searchedItemCount = X2Auction:GetSearchedItemCount()
---```
function X2Auction:GetSearchedItemCount() end

---Retrieves item information for the specified index on the current auction
---house search page.
---@param idx number The item index on the current page. (min: `1`, max: `9`).
---@return ItemInfo|nil itemInfo The item information, or `nil` if not found.
---@nodiscard
---@usage
---```
---local itemInfo = X2Auction:GetSearchedItemInfo(1)
---```
---@see ItemInfo
function X2Auction:GetSearchedItemInfo(idx) end

---Retrieves the current auction house page number.
---@return number currentPage The current page number. (min: `1`, max: `50`, default: `1`)
---@nodiscard
---@usage
---```
---local currentPage = X2Auction:GetSearchedItemPage()
---```
function X2Auction:GetSearchedItemPage() end

---Retrieves the maximum number of searchable pages for the auction house.
---@return number maxSearchablePages The maximum number of searchable pages. (max: `50`)
---@nodiscard
---@usage
---```
---local maxSearchablePages = X2Auction:GetSearchedItemTotalCount()
---```
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
---@usage
---```
---X2Auction:SearchAuctionArticle(1, 0, 0, 13, 0, false, "Erenor", "0", "0")
---```
---@see AUCTION_GRADE_FILTER
---@see AUCTION_CATEGORY
function X2Auction:SearchAuctionArticle(page, minLevel, maxLevel, grade, category,
                                        exactMatch, keywords, minDirectPriceStr,
                                        maxDirectPriceStr)
end
