---@meta _

---@class X2Input
X2Input = {} -- api/X2Input

---Checks if the Alt key is currently pressed.
---@return boolean altKeyDown `true` if Alt is down, `false` otherwise.
---@nodiscard
function X2Input:IsAltKeyDown() end

---Checks if the Control key is currently pressed.
---@return boolean controlKeyDown `true` if Control is down, `false` otherwise.
---@nodiscard
function X2Input:IsControlKeyDown() end

---Checks if the Shift key is currently pressed.
---@return boolean shiftKeyDown `true` if Shift is down, `false` otherwise.
---@nodiscard
function X2Input:IsShiftKeyDown() end
