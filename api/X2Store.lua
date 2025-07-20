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
---```
---ZoneInfo { continentName = "Nuia", zoneGroupName = "Gweonid Forest", id = 1 }
---```
---@class ZoneInfo
---@field continentName string
---@field zoneGroupName string
---@field id number

---Returns a collection of [ZoneInfo](lua://ZoneInfo) for all zones that packs can be crafted in.
---@return ZoneInfo[] [ZoneInfo](lua://ZoneInfo)
function X2Store:GetProductionZoneGroups() end

---Returns a collection of [ZoneInfo](lua://ZoneInfo) for all zones that a pack crafted in `fromZoneGroup` can be
---turned into.
---@param fromZoneGroup ZONE_ID [ZONE_ID](lua://ZONE_ID)
---@return ZoneInfo[] [ZoneInfo](lua://ZoneInfo)
function X2Store:GetSellableZoneGroups(fromZoneGroup) end

---Returns `specialtyRatio`.
---@return number specialtyRatio
function X2Store:GetSpecialtyRatio() end

---Returns `cooldownTime` and triggers
---[UIEVENT_TYPE.SPECIALTY_RATIO_BETWEEN_INFO](lua://UIEVENT_TYPE.SPECIALTY_RATIO_BETWEEN_INFO).
---@param fromZoneGroup ZONE_ID [ZONE_ID](lua://ZONE_ID)
---@param toZoneGroup ZONE_ID [ZONE_ID](lua://ZONE_ID)
---@return number cooldownTime miliseconds
function X2Store:GetSpecialtyRatioBetween(fromZoneGroup, toZoneGroup) end

---TODO:
---This probably triggers an event
function X2Store:GetZoneSpecialtyRatio() end
