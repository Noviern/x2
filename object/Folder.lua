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

---object/Folder
---@class Folder: Widget
---@field style TextStyle
local Folder = {}

---Closes the Folder.
function Folder:CloseFolder() end

---TODO:
function Folder:FixedCloseFolder() end

---returns the `extendLength` of the Folder.
---@return number extendLength default is 200
---@nodiscard
function Folder:GetExtendLength() end

---Returns the `state` `"open"|"close"` of the Folder.
---@return string state
---@nodiscard
function Folder:GetState() end

---Returns the `titleText` of the Folder.
---@return string titleText
---@nodiscard
function Folder:GetTitleText() end

---Opens the Folder.
function Folder:OpenFolder() end

---TODO:
---@param height number
function Folder:SetAnimateStep(height) end

---TODO:
---@param childTable table
function Folder:SetChildWidget(childTable) end

---Sets the `closeTable` Button that will only show during the closed Folder
---state and will need a OnClick event that is responsible for
---`Folder:OpenFolder()`.
---@param closeTable Button
function Folder:SetCloseStateButton(closeTable) end

---Sets the `height` of the extend length for the Folder.
---@param height number
function Folder:SetExtendLength(height) end

---Sets the inset for the Folder.
---@param left number
---@param top number
---@param right number
---@param bottom number
function Folder:SetInset(left, top, right, bottom) end

---Sets the `openTable` Button that will only show during the open Folder state
---and will need a OnClick event that is responsible for `Folder:CloseFolder()`.
---@param openTable Button
function Folder:SetOpenStateButton(openTable) end

---Sets a `titleTable` Button for the Folder.
---@param titleTable Button
function Folder:SetTitleButtonWidget(titleTable) end

---Sets the `height` of the Folder.
---@param height number
function Folder:SetTitleHeight(height) end

---Sets the title `text` of the Folder.
---@param text string
function Folder:SetTitleText(text) end

---Toggles the state of the Folder.
function Folder:ToggleState() end

---TODO: Not sure this works.
---Enables/Disables the animation for Folder.
---@param useAnimation boolean
function Folder:UseAnimation(useAnimation) end
