---@meta _

---@class X2Time
X2Time = {} -- api/X2Time

---Retrieves the current game time.
---@return boolean am `true` if the time is AM, `false` if PM.
---@return number hour The hour of the game time.
---@return number minute The minute of the game time.
---@nodiscard
function X2Time:GetGameTime() end

---Retrieves the current server time.
---@return Time serverTime The server time.
---@nodiscard
---@see Time
function X2Time:GetServerTime() end
