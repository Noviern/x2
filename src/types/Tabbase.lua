---@meta _

---@class Tabbase
local Tabbase = {}

---Retrieves the index of the currently selected tab in the Tabbase.
---@return number selectedTab The index of the selected tab. (default: `1`)
---@nodiscard
function Tabbase:GetSelectedTab() end

---Removes all tabs from the Tabbase.
function Tabbase:RemoveAllTabs() end

---Removes the tab at the specified index from the Tabbase.
---@param idx number The index of the tab to remove.
function Tabbase:RemoveTab(idx) end

---Selects the tab at the specified index in the Tabbase.
---@param idx number The index of the tab to select.
function Tabbase:SelectTab(idx) end

---Sets the gap between tabs in the Tabbase.
---@param gap number The gap size between tabs. (default: `0`)
function Tabbase:SetGap(gap) end

---Sets the offset for the Tabbase.
---@param offset number The offset value for the tabs. (default: `0`)
function Tabbase:SetOffset(offset) end
