---@meta _

---@class Tabbase
local Tabbase = {}

---Returns the `selectedTab` of the Tabbase.
---@return number selectedTab
---@nodiscard
function Tabbase:GetSelectedTab() end

---Removes all the tabs of the Tabbase.
function Tabbase:RemoveAllTabs() end

---Removes the `idx` tab from the Tabbase.
---@param idx number
function Tabbase:RemoveTab(idx) end

---Selects the `idx` tab from the Tabbbase.
---@param idx number
function Tabbase:SelectTab(idx) end

---Sets the `gap` for the Tabbase.
---@param gap number
function Tabbase:SetGap(gap) end

---Sets the `offset` of the Tabbase.
---@param offset number
function Tabbase:SetOffset(offset) end
