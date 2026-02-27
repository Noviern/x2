# X2Auction
## Globals
**ASK_ACCOUNT_BUFF**

`integer`

**ASK_NORMAL**

`integer`

**ASK_PCBANG**

`integer`

**ASK_PREMIUM**

`integer`

**PT_BID**

`integer`

**PT_PARTITION**

`integer`

**X2Auction**

`X2Auction`

## Aliases
**AUCTION_SERVICE_KIND**

`ASK_ACCOUNT_BUFF`|`ASK_NORMAL`|`ASK_PCBANG`|`ASK_PREMIUM`

```lua
-- api/X2Auction
AUCTION_SERVICE_KIND:
    | `ASK_ACCOUNT_BUFF`
    | `ASK_NORMAL`
    | `ASK_PCBANG`
    | `ASK_PREMIUM`
```

**POST_TYPE**

`PT_BID`|`PT_PARTITION`

```lua
-- api/X2Auction
POST_TYPE:
    | `PT_BID`
    | `PT_PARTITION`
```

## Classes
### Class: X2Auction
#### Method: AskMarketPrice
```lua
(method) X2Auction:AskMarketPrice(itemType: number, itemGrade: `0`|`10`|`11`|`12`|`1`...(+8), askMarketPriceUi: boolean)
```
> Requests the market price for an item, triggering the `DIAGONAL_ASR` event.
> 
> @*param* `itemType` — The type of item.
> 
> @*param* `itemGrade` — The grade of the item.
> 
> @*param* `askMarketPriceUi` — `true` to open the market price UI, `false` otherwise. Buggy: only opens if UI was opened previously.
> 
> ```lua
> itemGrade:
>     | `0` -- NONE
>     | `1` -- BASIC
>     | `2` -- GRAND
>     | `3` -- RARE
>     | `4` -- ARCANE
>     | `5` -- HEROIC
>     | `6` -- UNIQUE
>     | `7` -- CELESTIAL
>     | `8` -- DIVNE
>     | `9` -- EPIC
>     | `10` -- LEGENDARY
>     | `11` -- MYTHIC
>     | `12` -- ETERNAL
> ```

#### Method: GetSearchedItemPage
```lua
(method) X2Auction:GetSearchedItemPage()
  -> currentPage: number
```
> Retrieves the current auction house page number.
> 
> @*return* `currentPage` — The current page number. (min: `1`, max: `50`, default: `1`)

#### Method: GetSearchedItemTotalCount
```lua
(method) X2Auction:GetSearchedItemTotalCount()
  -> maxSearchablePages: number
```
> Retrieves the maximum number of searchable pages for the auction house.
> 
> @*return* `maxSearchablePages` — The maximum number of searchable pages. (max: `50`)

#### Method: GetSearchedItemInfo
```lua
(method) X2Auction:GetSearchedItemInfo(idx: number)
  -> itemInfo: ItemInfo|nil
```
> Retrieves item information for the specified index on the current auction
> house search page.
> 
> @*param* `idx` — The item index on the current page. (min: `1`, max: `9`).
> 
> @*return* `itemInfo` — The item information, or `nil` if not found.
> 
> See: [ItemInfo](../types/classes.md#class-iteminfo)

#### Method: GetLowestPrice
```lua
(method) X2Auction:GetLowestPrice(itemType: number, itemGrade: `0`|`10`|`11`|`12`|`1`...(+8))
  -> lowestPrice: string|nil
```
> Retrieves the lowest market price for an item.
> 
> @*param* `itemType` — The type of item.
> 
> @*param* `itemGrade` — The grade of the item.
> 
> @*return* `lowestPrice` — The lowest price as a string, or `nil` if not available.
> 
> ```lua
> itemGrade:
>     | `0` -- NONE
>     | `1` -- BASIC
>     | `2` -- GRAND
>     | `3` -- RARE
>     | `4` -- ARCANE
>     | `5` -- HEROIC
>     | `6` -- UNIQUE
>     | `7` -- CELESTIAL
>     | `8` -- DIVNE
>     | `9` -- EPIC
>     | `10` -- LEGENDARY
>     | `11` -- MYTHIC
>     | `12` -- ETERNAL
> ```

#### Method: GetSearchedItemCount
```lua
(method) X2Auction:GetSearchedItemCount()
  -> searchedItemCount: number
```
> Retrieves the number of searched items displayed in the auction house.
> 
> @*return* `searchedItemCount` — The number of items displayed. (min: `0`, max: `9`, default: `9`)

#### Method: SearchAuctionArticle
```lua
(method) X2Auction:SearchAuctionArticle(page: number, minLevel: number, maxLevel: number, grade: `10`|`11`|`12`|`13`|`1`...(+8), category: `0`|`10`|`11`|`12`|`13`...(+76), exactMatch: boolean, keywords: string, minDirectPriceStr: string, maxDirectPriceStr: string)
```
> Searches the auction house with the specified parameters. Only works when
> the auction house is open.
> 
> @*param* `page` — The page to search (min: `1`, max: `50`, see `X2Auction:GetSearchedItemTotalCount()`).
> 
> @*param* `minLevel` — The minimum level (min: `0`, max: `125`, base 0-55 + ancestral 1-70).
> 
> @*param* `maxLevel` — The maximum level (min: `0`, max: `125`, base 0-55 + ancestral 1-70).
> 
> @*param* `grade` — The item grade filter.
> 
> @*param* `category` — The item category.
> 
> @*param* `exactMatch` — Whether to use exact keyword matching.
> 
> @*param* `keywords` — The search keywords.
> 
> @*param* `minDirectPriceStr` — The minimum direct price in copper as a string.
> 
> @*param* `maxDirectPriceStr` — The maximum direct price in copper as a string.
> 
> ```lua
> grade:
>     | `1` -- ALL
>     | `2` -- BASIC
>     | `3` -- GRAND
>     | `4` -- RARE
>     | `5` -- ARCANE
>     | `6` -- HEROIC
>     | `7` -- UNIQUE
>     | `8` -- CELESTIAL
>     | `9` -- DIVINE
>     | `10` -- EPIC
>     | `11` -- LEGENDARY
>     | `12` -- MYTHIC
>     | `13` -- ETERNAL
> 
> category:
>     | `0` -- ALL
>     | `1` -- DAGGER
>     | `2` -- SWORD
>     | `3` -- BLADE
>     | `4` -- SPEAR
>     | `5` -- AXE
>     | `6` -- MACE
>     | `7` -- STAFF
>     | `8` -- TWOHAND_SWORD
>     | `9` -- TWOHAND_BLADE
>     | `10` -- TWOHAND_SPEAR
>     | `11` -- TWOHAND_AXE
>     | `12` -- TWOHAND_MACE
>     | `13` -- TWOHAND_STAFF
>     | `14` -- BOW
>     | `15` -- LIGHT_ARMOR_HEAD
>     | `16` -- LIGHT_ARMOR_CHEST
>     | `17` -- LIGHT_ARMOR_WAIST
>     | `18` -- LIGHT_ARMOR_ARMS
>     | `19` -- LIGHT_ARMOR_HANDS
>     | `20` -- LIGHT_ARMOR_LEGS
>     | `21` -- LIGHT_ARMOR_FEET
>     | `22` -- NORMAL_ARMOR_HEAD
>     | `23` -- NORMAL_ARMOR_CHEST
>     | `24` -- NORMAL_ARMOR_WAIST
>     | `25` -- NORMAL_ARMOR_ARMS
>     | `26` -- NORMAL_ARMOR_HANDS
>     | `27` -- NORMAL_ARMOR_LEGS
>     | `28` -- NORMAL_ARMOR_FEET
>     | `29` -- HEAVY_ARMOR_HEAD
>     | `30` -- HEAVY_ARMOR_CHEST
>     | `31` -- HEAVY_ARMOR_WAIST
>     | `32` -- HEAVY_ARMOR_ARMS
>     | `33` -- HEAVY_ARMOR_HANDS
>     | `34` -- HEAVY_ARMOR_LEGS
>     | `35` -- HEAVY_ARMOR_FEET
>     | `36` -- ORE
>     | `37` -- RAW_LUMBER
>     | `38` -- ROCK
>     | `39` -- RAWHIDE
>     | `40` -- FIBER
>     | `41` -- PARTS
>     | `42` -- MEAT
>     | `43` -- MARINE_PRODUCT
>     | `44` -- GRAIN
>     | `45` -- VEGETABLES
>     | `46` -- FRUIT
>     | `47` -- SPICE
>     | `48` -- DRUG_MATERIAL
>     | `49` -- FLOWER
>     | `50` -- SOIL
>     | `51` -- JEWEL
>     | `52` -- PAPER
>     | `53` -- METAL
>     | `54` -- WOOD
>     | `55` -- STONE
>     | `56` -- LEATHER
>     | `57` -- CLOTH
>     | `58` -- MACHINE
>     | `59` -- GLASS
>     | `60` -- RUBBER
>     | `61` -- NOBLE_METAL
>     | `62` -- ALCHEMY_MATERIAL
>     | `63` -- CRAFT_MATERIAL
>     | `64` -- ANIMAL
>     | `65` -- YOUNG_PLANT
>     | `66` -- SEED
>     | `67` -- FURNITURE
>     | `68` -- ADVENTURE
>     | `69` -- TOY
>     | `70` -- DYE
>     | `71` -- COOKING_OIL
>     | `72` -- SEASONING
>     | `73` -- MOON_STONE_SCALE_RED
>     | `74` -- MOON_STONE_SCALE_YELLOW
>     | `75` -- MOON_STONE_SCALE_GREEN
>     | `76` -- MOON_STONE_SCALE_BLUE
>     | `77` -- MOON_STONE_SCALE_PURPLE
>     | `78` -- MOON_STONE_SHADOW_CRAFT
>     | `79` -- MOON_STONE_SHADOW_HONOR
>     | `80` -- SHOTGUN
> ```

