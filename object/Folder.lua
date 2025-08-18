---@meta _

AP_BOTTOM = 8          -- object/Folder
AP_BOTTOMLEFT = 2      -- object/Folder
AP_BOTTOMRIGHT = 3     -- object/Folder
AP_CENTER = 4          -- object/Folder
AP_LEFT = 6            -- object/Folder
AP_RIGHT = 7           -- object/Folder
AP_TOP = 5             -- object/Folder
AP_TOPLEFT = 0         -- object/Folder
AP_TOPRIGHT = 1        -- object/Folder
CT_ABILITY = 2         -- object/Folder
CT_EXPEDITION_NAME = 3 -- object/Folder
CT_NAME = 1            -- object/Folder
DC_ALWAYS = 0          -- object/Folder
DC_SHIFT_KEY_DOWN = 1  -- object/Folder

---@enum FOLDER_STATE
local FOLDER_STATE = {
  CLOSE = "close",
  OPEN = "open",
}

---object/Folder
---@class Folder: Widget
---@field style TextStyle
local Folder = {}

---Closes the Folder.
---@usage
---```
---widget:CloseFolder()
---```
function Folder:CloseFolder() end

---@TODO: Clarify purpose and behavior.
---Performs a fixed close operation on the Folder.
---@usage
---```
---widget:FixedCloseFolder()
---```
function Folder:FixedCloseFolder() end

---Retrieves the extend length of the Folder.
---@return number extendLength The extend length (default: `200`).
---@nodiscard
---@usage
---```
---local extendLength = widget:GetExtendLength()
---```
function Folder:GetExtendLength() end

---Retrieves the current state of the Folder.
---@return FOLDER_STATE state The state of the Folder. (default: `"close"`)
---@nodiscard
---@usage
---```
---widget:GetState()
---```
---@see FOLDER_STATE
function Folder:GetState() end

---Retrieves the title text of the Folder.
---@return string titleText The title text.
---@nodiscard
---@usage
---```
---local titleText = widget:GetTitleText()
---```
function Folder:GetTitleText() end

---Opens the Folder.
---@usage
---```
---widget:OpenFolder()
---```
function Folder:OpenFolder() end

---Sets the animation step height for the Folder.
---@param speed number The speed for the animation step.
---@usage
---```
---widget:SetAnimateStep(3)
---```
function Folder:SetAnimateStep(speed) end

---Sets the child widget table for the Folder.
---@param childTable Widget The table containing child widgets.
---@usage
---```
---local details = widget:CreateChildWidget("textbox", "details", 3, true)
---details.style:SetAlign(ALIGN_TOP_LEFT)
---details:SetText("The first ArcheAge Private Server")
---
---widget:SetChildWidget(details)
---```
function Folder:SetChildWidget(childTable) end

---Sets the button to show in the `"close"` state, requiring an OnClick event to call `Folder:OpenFolder()`.
---@param closeTable Button The button for the `"close"` state.
---@usage
---```
---local openBtn = widget:CreateChildWidget("button", "openBtn", 1, true)
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
---```
---widget:SetExtendLength(300)
---```
function Folder:SetExtendLength(height) end

---Sets the inset for the Folder.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```
---widget:SetInset(10, 10, 10, 10)
---```
function Folder:SetInset(left, top, right, bottom) end

---Sets the button to show in the `"open"` state, requiring an OnClick event to call `Folder:CloseFolder()`.
---@param openTable Button The button for the `"open"` state.
---@usage
---```
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

---Sets the title button widget for the Folder. This will override `Folder:SetTitleText`.
---@param titleTable Button The button widget for the title.
---@usage
---```
---local titleBtn = widget:CreateChildWidget("button", "titleBtn", 2, true)
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
---```
---widget:SetTitleHeight(15)
---```
function Folder:SetTitleHeight(height) end

---Sets the title text for the Folder.
---@param text string The title text to set.
---@usage
---```
---widget:SetTitleText("ArcheRage.to")
---```
function Folder:SetTitleText(text) end

---Toggles the state of the Folder between `"open"` and `"close"`.
---@usage
---```
---widget:ToggleState()
---```
function Folder:ToggleState() end

---Enables or disables animation for the Folder.
---@param useAnimation boolean `true` to enable animation, `false` to disable. (default: `false`)
---@usage
---```
---widget:UseAnimation(true)
---```
function Folder:UseAnimation(useAnimation) end
