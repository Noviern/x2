---@meta _

AP_BOTTOM = 8          -- object/Tab
AP_BOTTOMLEFT = 2      -- object/Tab
AP_BOTTOMRIGHT = 3     -- object/Tab
AP_CENTER = 4          -- object/Tab
AP_LEFT = 6            -- object/Tab
AP_RIGHT = 7           -- object/Tab
AP_TOP = 5             -- object/Tab
AP_TOPLEFT = 0         -- object/Tab
AP_TOPRIGHT = 1        -- object/Tab
CT_ABILITY = 2         -- object/Tab
CT_EXPEDITION_NAME = 3 -- object/Tab
CT_NAME = 1            -- object/Tab
DC_ALWAYS = 0          -- object/Tab
DC_SHIFT_KEY_DOWN = 1  -- object/Tab

---@enum TAB_CORNER
local TAB_CORNER = {
  TOPLEFT     = "TOPLEFT",
  TOPRIGHT    = "TOPRIGHT",
  BOTOMLEFT   = "BOTOMLEFT",
  BOTTOMRIGHT = "BOTTOMRIGHT",
}

---object/Tab
---@class Tab: Widget, Tabbase
local Tab = {}

---TODO:
---@param tabName string
---@param selectedButtonWidget Button
---@param unselectedButtonWidget Button
---@param windowWidget Window
function Tab:AddNewTab(tabName, selectedButtonWidget, unselectedButtonWidget,
                       windowWidget)
end

---Adds a simple tab `tabName` for the Tab.
---@param tabName string
function Tab:AddSimpleTab(tabName) end

---TODO:
function Tab:AlignTabButtons() end

---Returns `activateTabCount` of the Tab.
---@return number activateTabCount
---@nodiscard
function Tab:GetActivateTabCount() end

---Returns `tabCount` of the Tab.
---@return number tabCount
---@nodiscard
function Tab:GetTabCount() end

---Hides the `idx` tab for the Tab.
---@param idx number
function Tab:HideTab(idx) end

---Returns a boolean indicating if the tab in hidden in the Tab.
---@param index number
---@return boolean
---@nodiscard
function Tab:IsHideTab(index) end

---Sets `activateTabCount` for the Tab.
---@param activateTabCount number 0 to `GetTabCount()`.
function Tab:SetActivateTabCount(activateTabCount) end

---Set the `corner` to place tabs in Tab.
---@param corner TAB_CORNER
function Tab:SetCorner(corner) end

---TODO:
---@param vertical boolean
function Tab:SetVertical(vertical) end

---Shows the `idx` tab for the Tab.
---@param idx number
function Tab:ShowTab(idx) end
