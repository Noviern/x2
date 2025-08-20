---@meta _

CURRENCY_AA_POINT = 3            -- api/X2Store
CURRENCY_CONTRIBUTION_POINT = 5  -- api/X2Store
CURRENCY_GOLD = 0                -- api/X2Store
CURRENCY_GOLD_WITH_AA_POINT = 4  -- api/X2Store
CURRENCY_HONOR_POINT = 1         -- api/X2Store
CURRENCY_ITEM_POINT = 6          -- api/X2Store
CURRENCY_LIVING_POINT = 2        -- api/X2Store
MPT_ALLWAYS = 1                  -- api/X2Store
MPT_DALIY = 2                    -- api/X2Store
MPT_MONTHLY = 4                  -- api/X2Store
MPT_WEEKLY = 3                   -- api/X2Store
RANDOM_SHOP_REFRESH = 3          -- api/X2Store
SHOP_OPEN_BATTLEFIELD = 4        -- api/X2Store
SHOP_OPEN_CONTRIBUTION = 3       -- api/X2Store
SHOP_OPEN_DIRECT_RANDOM_SHOP = 6 -- api/X2Store
SHOP_OPEN_HONORPOINT = 2         -- api/X2Store
SHOP_OPEN_LIVINGPOINT = 1        -- api/X2Store
SHOP_OPEN_NORMAL = 0             -- api/X2Store
SHOP_OPEN_RANDOM_SHOP = 5        -- api/X2Store
X2Store = {}                     -- api/X2Store

---api/X2Store
---@class ZoneInfo
---@field continentName string
---@field id number
---@field zoneGroupName string

---Retrieves a list of zone information for all zones where packs can be
---crafted.
---@return ZoneInfo[] productionZoneGroups A table of zone information for the production zone groups.
---@nodiscard
---@usage
---```
---local productionZoneGroups = X2Store:GetProductionZoneGroups()
---```
---@see ZoneInfo
function X2Store:GetProductionZoneGroups() end

---Retrieves a list of zone information for all zones where a pack crafted in
---the specified zone can be turned in.
---@param fromZoneGroup ZONE_ID The source zone ID.
---@return ZoneInfo[] sellableZoneGroups A table of zone information for the sellable zone groups.
---@nodiscard
---@usage
---```
---local sellableZoneGroups = X2Store:GetSellableZoneGroups(1)
---```
---@see ZONE_ID
---@see ZoneInfo
function X2Store:GetSellableZoneGroups(fromZoneGroup) end

---Retrieves the specialty ratio.
---@return number specialtyRatio The specialty ratio.
---@nodiscard
---@usage
---```
---local specialtyRatio = X2Store:GetSpecialtyRatio()
---```
function X2Store:GetSpecialtyRatio() end

---Retrieves the cooldown time and triggers the `SPECIALTY_RATIO_BETWEEN_INFO`
---event.
---@param fromZoneGroup ZONE_ID The source zone ID.
---@param toZoneGroup ZONE_ID The destination zone ID.
---@return number cooldownTime The cooldown time in milliseconds.
---@nodiscard
---@usage
---```
---local sellableZoneGroups = X2Store:GetSellableZoneGroups(1)
---local cooldownTime = X2Store:GetSpecialtyRatioBetween(1, sellableZoneGroups[1].id)
---```
---@see ZONE_ID
function X2Store:GetSpecialtyRatioBetween(fromZoneGroup, toZoneGroup) end

---@TODO: Probably triggers an event.
---Retrieves the specialty ratio for zones.
function X2Store:GetZoneSpecialtyRatio() end
