---@meta _

---objects/Folder
---@class Folder: Widget
---@field style TextStyle
local Folder = {}

---objects/Folder
---@class folder: Folder

---Closes the Folder.
function Folder:CloseFolder() end

---Performs a fixed close operation on the Folder.
function Folder:FixedCloseFolder() end

---Retrieves the extend length of the Folder.
---@return number extendLength The extend length (default: `200`).
---@nodiscard
function Folder:GetExtendLength() end

---Retrieves the current state of the Folder.
---@return FOLDER_STATE state The state of the Folder. (default: `"close"`)
---@nodiscard
function Folder:GetState() end

---Retrieves the title text of the Folder.
---@return string titleText The title text.
---@nodiscard
function Folder:GetTitleText() end

---Opens the Folder.
function Folder:OpenFolder() end

---Sets the animation step height for the Folder.
---@param speed number The speed for the animation step. (default: `.5`)
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
function Folder:SetExtendLength(height) end

---Sets the inset for the Folder.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
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
---`Folder:SetTitleText` and you will need to create your own `"OnClick"` event.
---@param titleTable Button The button widget for the title.
function Folder:SetTitleButtonWidget(titleTable) end

---Sets the title height for the Folder.
---@param height number The height of the title.
function Folder:SetTitleHeight(height) end

---Sets the title text for the Folder.
---@param text string The title text to set.
function Folder:SetTitleText(text) end

---Toggles the state of the Folder between `"open"` and `"close"`.
function Folder:ToggleState() end

---Enables or disables animation for the Folder.
---@param useAnimation boolean `true` to enable animation, `false` to disable. (default: `false`)
function Folder:UseAnimation(useAnimation) end
