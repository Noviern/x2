---@meta _

X2Time = {} -- api/X2Time

---Retrieves the current game time.
---@return boolean am True if the time is AM, false if PM.
---@return number hour The hour of the game time.
---@return number minute The minute of the game time.
---@nodiscard
---@usage
---```
---local am, hour, minute = X2Time:GetGameTime()
---```
function X2Time:GetGameTime() end

---Retrieves the current server time.
---@return Time serverTime The server time.
---@nodiscard
---@usage
---```
---local serverTime = X2Time:GetServerTime()
---```
---@see Time
function X2Time:GetServerTime() end
