---@meta _

CURRENCY_AA_POINT = 3            -- api/X2Store CURRENCY
CURRENCY_CONTRIBUTION_POINT = 5  -- api/X2Store CURRENCY
CURRENCY_GOLD = 0                -- api/X2Store CURRENCY
CURRENCY_GOLD_WITH_AA_POINT = 4  -- api/X2Store CURRENCY
CURRENCY_HONOR_POINT = 1         -- api/X2Store CURRENCY
CURRENCY_ITEM_POINT = 6          -- api/X2Store CURRENCY
CURRENCY_LIVING_POINT = 2        -- api/X2Store CURRENCY
MPT_ALLWAYS = 1                  -- api/X2Store MPT
MPT_DALIY = 2                    -- api/X2Store MPT
MPT_MONTHLY = 4                  -- api/X2Store MPT
MPT_WEEKLY = 3                   -- api/X2Store MPT
RANDOM_SHOP_REFRESH = 3          -- api/X2Store
SHOP_OPEN_BATTLEFIELD = 4        -- api/X2Store SHOP_OPEN
SHOP_OPEN_CONTRIBUTION = 3       -- api/X2Store SHOP_OPEN
SHOP_OPEN_DIRECT_RANDOM_SHOP = 6 -- api/X2Store SHOP_OPEN
SHOP_OPEN_HONORPOINT = 2         -- api/X2Store SHOP_OPEN
SHOP_OPEN_LIVINGPOINT = 1        -- api/X2Store SHOP_OPEN
SHOP_OPEN_NORMAL = 0             -- api/X2Store SHOP_OPEN
SHOP_OPEN_RANDOM_SHOP = 5        -- api/X2Store SHOP_OPEN
---@class X2Store
X2Store = {}                     -- api/X2Store

---api/X2Store
---@alias CURRENCY
---| `CURRENCY_AA_POINT`
---| `CURRENCY_CONTRIBUTION_POINT`
---| `CURRENCY_GOLD`
---| `CURRENCY_GOLD_WITH_AA_POINT`
---| `CURRENCY_HONOR_POINT`
---| `CURRENCY_ITEM_POINT`
---| `CURRENCY_LIVING_POINT`

---api/X2Store
---Market Period Time
---@alias MPT
---| `MPT_ALLWAYS`
---| `MPT_DALIY`
---| `MPT_MONTHLY`
---| `MPT_WEEKLY`

---api/X2Store
---@alias SHOP_OPEN
---| `SHOP_OPEN_BATTLEFIELD`
---| `SHOP_OPEN_CONTRIBUTION`
---| `SHOP_OPEN_DIRECT_RANDOM_SHOP`
---| `SHOP_OPEN_HONORPOINT`
---| `SHOP_OPEN_LIVINGPOINT`
---| `SHOP_OPEN_NORMAL`
---| `SHOP_OPEN_RANDOM_SHOP`

---Retrieves a list of zone information for all zones where packs can be
---crafted.
---@return ZoneInfo[] productionZoneGroups A table of zone information for the production zone groups.
---@nodiscard
---@see ZoneInfo
function X2Store:GetProductionZoneGroups() end

---Retrieves a list of zone information for all zones where a pack crafted in
---the specified zone can be turned in.
---@param fromZoneGroup ZONE_ID The source zone ID.
---@return ZoneInfo[] sellableZoneGroups A table of zone information for the sellable zone groups.
---@nodiscard
---@see ZoneInfo
function X2Store:GetSellableZoneGroups(fromZoneGroup) end

---Retrieves the specialty ratio.
---@return number specialtyRatio The specialty ratio.
---@nodiscard
function X2Store:GetSpecialtyRatio() end

---Retrieves the cooldown time and triggers the `SPECIALTY_RATIO_BETWEEN_INFO`
---event.
---@param fromZoneGroup ZONE_ID The source zone ID.
---@param toZoneGroup ZONE_ID The destination zone ID.
---@return number cooldownTime The cooldown time in milliseconds.
---@nodiscard
---@usage
---```lua
---local sellableZoneGroups = X2Store:GetSellableZoneGroups(1)
---local cooldownTime = X2Store:GetSpecialtyRatioBetween(1, sellableZoneGroups[1].id)
---```
function X2Store:GetSpecialtyRatioBetween(fromZoneGroup, toZoneGroup) end

---Retrieves the specialty ratio for zones. Triggers the
---`SELL_SPECIALTY_CONTENT_INFO` event.
function X2Store:GetZoneSpecialtyRatio() end
