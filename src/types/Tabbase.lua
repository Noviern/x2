---@meta _

---@class Tabbase
local Tabbase = {}

---Retrieves the index of the currently selected tab in the Tabbase.
---@return number selectedTab The index of the selected tab. (default: `1`)
---@nodiscard
---@usage
---```lua
---local selectedTab = widget:GetSelectedTab()
---```
function Tabbase:GetSelectedTab() end

---Removes all tabs from the Tabbase.
---@usage
---```lua
---widget:RemoveAllTabs()
---```
function Tabbase:RemoveAllTabs() end

---Removes the tab at the specified index from the Tabbase.
---@param idx number The index of the tab to remove.
function Tabbase:RemoveTab(idx) end

---Selects the tab at the specified index in the Tabbase.
---@param idx number The index of the tab to select.
---@usage
---```lua
---widget:SelectTab(2)
---```
function Tabbase:SelectTab(idx) end

---Sets the gap between tabs in the Tabbase.
---@param gap number The gap size between tabs.
---@usage
---```lua
---widget:SetGap(10)
---```
function Tabbase:SetGap(gap) end

---Sets the offset for the Tabbase.
---@param offset number The offset value for the tabs.
---@usage
---```lua
---widget:SetOffset(10)
---```
function Tabbase:SetOffset(offset) end
