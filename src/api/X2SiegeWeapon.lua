---@meta _

---@class X2SiegeWeapon
X2SiegeWeapon = {} -- api/X2SiegeWeapon

---Retrieves the speed of the currently driven vehicle.
---@return number siegeWeaponSpeed The vehicle's speed.
---@nodiscard
---@usage
---```lua
---local siegeWeaponSpeed = X2SiegeWeapon:GetSiegeWeaponSpeed()
---```
function X2SiegeWeapon:GetSiegeWeaponSpeed() end

---Retrieves the turning speed of the currently driven vehicle.
---@return number siegeWeaponTurnSpeed The vehicle's turning speed.
---@nodiscard
---@usage
---```lua
---local siegeWeaponTurnSpeed = X2SiegeWeapon:GetSiegeWeaponTurnSpeed()
---```
function X2SiegeWeapon:GetSiegeWeaponTurnSpeed() end
