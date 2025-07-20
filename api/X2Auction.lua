---@meta _

ASK_ACCOUNT_BUFF = 3 -- api/X2Auction
ASK_NORMAL = 0       -- api/X2Auction
ASK_PCBANG = 1       -- api/X2Auction
ASK_PREMIUM = 2      -- api/X2Auction
PT_BID = 0           -- api/X2Auction
PT_PARTITION = 1     -- api/X2Auction
X2Auction = {}       -- api/X2Auction

---api/X2Auction
---@enum AUCTION_GRADE_FILTER
local AUCTION_GRADE_FILTER = {
  ALL       = 1,
  BASIC     = 2,
  CRUDE     = 3,
  GRAND     = 4,
  RARE      = 5,
  ARCANE    = 6,
  HEROIC    = 7,
  UNIQUE    = 8,
  CELESTIAL = 9,
  DIVINE    = 10,
  EPIC      = 11,
  LEGENDARY = 12,
  MYTHIC    = 13,
  ETERNAL   = 14,
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
function X2Auction:SearchAuctionArticle(page, minLevel, maxLevel, grade, category,
                                        exactMatch, keywords, minDirectPriceStr,
                                        maxDirectPriceStr)
end
