---@meta _

---objects/Folder
---@class Folder: Widget
---@field style TextStyle
local Folder = {}
---@class folder: Folder

---Closes the Folder.
---@usage
---```lua
---widget:CloseFolder()
---```
function Folder:CloseFolder() end

---Performs a fixed close operation on the Folder.
---@usage
---```lua
---widget:FixedCloseFolder()
---```
function Folder:FixedCloseFolder() end

---Retrieves the extend length of the Folder.
---@return number extendLength The extend length (default: `200`).
---@nodiscard
---@usage
---```lua
---local extendLength = widget:GetExtendLength()
---```
function Folder:GetExtendLength() end

---Retrieves the current state of the Folder.
---@return FOLDER_STATE state The state of the Folder. (default: `"close"`)
---@nodiscard
---@usage
---```lua
---widget:GetState()
---```
---@see FOLDER_STATE
function Folder:GetState() end

---Retrieves the title text of the Folder.
---@return string titleText The title text.
---@nodiscard
---@usage
---```lua
---local titleText = widget:GetTitleText()
---```
function Folder:GetTitleText() end

---Opens the Folder.
---@usage
---```lua
---widget:OpenFolder()
---```
function Folder:OpenFolder() end

---Sets the animation step height for the Folder.
---@param speed number The speed for the animation step. (default: `.5`)
---@usage
---```lua
---widget:SetAnimateStep(3)
---```
function Folder:SetAnimateStep(speed) end

---Sets the child widget table for the Folder.
---@param childTable Widget The table containing child widgets.
---@usage
---```lua
---local details = widget:CreateChildWidget("textbox", "details", 0, true)
---details.style:SetAlign(ALIGN_TOP_LEFT)
---details:SetText("The first ArcheAge Private Server")
---
---widget:SetChildWidget(details)
---```
function Folder:SetChildWidget(childTable) end

---Sets the button to show in the `"close"` state, requiring an OnClick event
---to call `Folder:OpenFolder()`.
---@param closeTable Button The button for the `"close"` state.
---@usage
---```lua
---local openBtn = widget:CreateChildWidget("button", "openBtn", 0, true)
---openBtn:AddAnchor("TOPLEFT", widget, 0, 5)
---openBtn:SetStyle("grid_folder_right_arrow")
---
---function openBtn:OnClick()
---  self:GetParent():ToggleState()
---end
---
---openBtn:SetHandler("OnClick", openBtn.OnClick)
---
---widget:SetCloseStateButton(openBtn)
---```
function Folder:SetCloseStateButton(closeTable) end

---Sets the extend length height for the Folder.
---@param height number The height to set for the extend length.
---@usage
---```lua
---widget:SetExtendLength(300)
---```
function Folder:SetExtendLength(height) end

---Sets the inset for the Folder.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```lua
---widget:SetInset(10, 10, 10, 10)
---```
function Folder:SetInset(left, top, right, bottom) end

---Sets the button to show in the `"open"` state, requiring an OnClick event to
---call `Folder:CloseFolder()`.
---@param openTable Button The button for the `"open"` state.
---@usage
---```lua
---local closeBtn = widget:CreateChildWidget("button", "closeBtn", 0, true)
---closeBtn:AddAnchor("TOPLEFT", widget, 0, 7)
---closeBtn:SetStyle("grid_folder_down_arrow")
---
---function closeBtn:OnClick()
---  self:GetParent():ToggleState()
---end
---
---widget:SetOpenStateButton(closeBtn)
---```
function Folder:SetOpenStateButton(openTable) end

---Sets the title button widget for the Folder. This will override
---`Folder:SetTitleText`.
---@param titleTable Button The button widget for the title.
---@usage
---```lua
---local titleBtn = widget:CreateChildWidget("button", "titleBtn", 0, true)
---titleBtn:SetText("ArcheRage.to")
---
---function titleBtn:OnClick()
---  self:GetParent():ToggleState()
---end
---
---titleBtn:SetHandler("OnClick", titleBtn.OnClick)
---
---widget:SetTitleButtonWidget(titleBtn)
---```
function Folder:SetTitleButtonWidget(titleTable) end

---Sets the title height for the Folder.
---@param height number The height of the title.
---@usage
---```lua
---widget:SetTitleHeight(15)
---```
function Folder:SetTitleHeight(height) end

---Sets the title text for the Folder.
---@param text string The title text to set.
---@usage
---```lua
---widget:SetTitleText("ArcheRage.to")
---```
function Folder:SetTitleText(text) end

---Toggles the state of the Folder between `"open"` and `"close"`.
---@usage
---```lua
---widget:ToggleState()
---```
function Folder:ToggleState() end

---Enables or disables animation for the Folder.
---@param useAnimation boolean `true` to enable animation, `false` to disable. (default: `false`)
---@usage
---```lua
---widget:UseAnimation(true)
---```
function Folder:UseAnimation(useAnimation) end
