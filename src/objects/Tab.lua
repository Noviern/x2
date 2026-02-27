---@meta _

---[Tab](lua://Tab)
---
---A `Tab` widget organizes multiple pages or windows under clickable tab
---buttons. Each tab can have a selected and unselected button state, an
---associated window, and supports automatic tab creation, alignment,
---visibility toggling, and orientation settings.
---
---**Dependencies**:
--- - [Button](lua://Button) used for the `selectedButton` and `unselectedButton` fields.
--- - [Window](lua://Window) used for the `window` field.
---
---@class Tab: Widget, Tabbase
---@field selectedButton Button[]|nil List of button widgets for the selected state of each tab.
---@field unselectedButton Button[]|nil List of button widgets for the unselected state of each tab.
---@field window Window[]|nil List of window widgets associated with each tab.
local Tab = {}

---Adds a new tab to the Tab with specified button and window widgets.
---@param tabName string The name of the tab.
---@param selectedButtonWidget Button The button widget for the selected state.
---@param unselectedButtonWidget Button The button widget for the unselected state.
---@param windowWidget Window The window widget associated with the tab.
---@usage
---```lua
---local selectedButton = UIParent:CreateWidget("button", "tab2selectedButton", "UIParent")
---local unselectedButton = UIParent:CreateWidget("button", "tab2unselectedButton", "UIParent")
---local window = UIParent:CreateWidget("window", "tab2window", "UIParent")
---widget:AddNewTab("Tab 2", selectedButton, unselectedButton, window)
---```
function Tab:AddNewTab(tabName, selectedButtonWidget, unselectedButtonWidget, windowWidget) end

---Adds a simple tab with the specified name to the Tab, automatically creating
---`selectedButton`, `unselectedButton`, and `window` widgets stored as
---`widget.selectedButton[i]`, `widget.unselectedButton[i]`, and
---`widget.window[i]`. Handles all events necessary for tab switching.
---@param tabName string The name of the tab.
function Tab:AddSimpleTab(tabName) end

---Aligns the tab buttons in the Tab. Should be called after all tabs have been
---created and their extents set.
function Tab:AlignTabButtons() end

---Retrieves the number of active tabs in the Tab.
---@return number activateTabCount The number of active tabs.
---@nodiscard
function Tab:GetActivateTabCount() end

---Retrieves the total number of tabs in the Tab.
---@return number tabCount The total number of tabs.
---@nodiscard
function Tab:GetTabCount() end

---Hides the tab at the specified index in the Tab.
---@param idx number The index of the tab to hide. (min: `1`)
function Tab:HideTab(idx) end

---Checks if the tab at the specified index is hidden.
---@param index number The index of the tab to check.
---@return boolean hideTab `true` if the tab is hidden, `false` otherwise.
---@nodiscard
function Tab:IsHideTab(index) end

---Sets the number of active tabs in the Tab.
---@param activateTabCount number The number of active tabs (default: `0`, max: `Tab:GetTabCount()`).
function Tab:SetActivateTabCount(activateTabCount) end

---Sets the corner where tabs are placed in the Tab. Should be called before
---`Tab:AlignTabButtons()`.
---@param corner TAB_CORNER The corner to place the tabs. (default: `"TOPLEFT"`)
function Tab:SetCorner(corner) end

---Sets the orientation of the tabs in the Tab. Should be called before
---`Tab:AlignTabButtons()`.
---@param vertical boolean `true` for vertical orientation, `false` for horizontal. (default: `false`)
function Tab:SetVertical(vertical) end

---Shows the tab at the specified index in the Tab.
---@param idx number The index of the tab to show.
function Tab:ShowTab(idx) end
