---@meta _

---@class Editboxbase
---@field guideTextStyle TextStyle
---@field style TextStyle
local Editboxbase = {}

---@TODO: Verify max length behavior for non-multiline Editboxbase types (default: `128`, max: `9215`).
---Sets the maximum text length for the Editboxbase.
---@param length number The maximum text length. (default: `128`, max: `9215`)
---@usage
---```lua
---widget:SetMaxTextLength(9215)
---```
function Editboxbase:SetMaxTextLength(length) end

---Enables or disables clearing text when the Enter key is pressed.
---@param clear boolean `true` to clear text on Enter, `false` to disable. (default: `false`)
---@usage
---```lua
---widget:ClearTextOnEnter(true)
---```
function Editboxbase:ClearTextOnEnter(clear) end

---Retrieves the maximum text length for the Editboxbase.
---@return number maxTextLength The maximum text length.
---@nodiscard
---@usage
---```lua
---local maxTextLength = widget:MaxTextLength()
---```
function Editboxbase:MaxTextLength() end

---Sets the cursor offset for the Editboxbase.
---@param offset number The cursor offset position.
---@usage
---```lua
---widget:SetCursorOffset(10)
---```
function Editboxbase:SetCursorOffset(offset) end

---Sets the cursor height for the Editboxbase.
---@param height number The height of the cursor.
---@usage
---```lua
---widget:SetCursorHeight(20)
---```
function Editboxbase:SetCursorHeight(height) end

---Sets the color of the cursor for the Editboxbase.
---@param r number The red color component.
---@param g number The green color component.
---@param b number The blue color component.
---@param a number The alpha (opacity) component.
---@usage
---```lua
---widget:SetCursorColor(1, 0, 0, 1)
---```
function Editboxbase:SetCursorColor(r, g, b, a) end

---Sets the cursor color using a color key for the Editboxbase.
---@param colorKey ETC_COLOR The color key for the cursor.
---@usage
---```lua
---widget:SetCursorColorByColorKey("editbox_cursor_light")
---```
---@see ETC_COLOR
function Editboxbase:SetCursorColorByColorKey(colorKey) end

---Enables or disables read-only mode for the Editboxbase.
---@param readOnly boolean `true` to make read-only, `false` to allow editing. (default: `false`)
---@usage
---```lua
---widget:SetReadOnly(true)
---```
function Editboxbase:SetReadOnly(readOnly) end

---Sets the guide text for the Editboxbase.
---@param text string The guide text to display.
---@usage
---```lua
---widget:SetGuideText("Enter item name.")
---```
function Editboxbase:SetGuideText(text) end

---Sets the guide text inset for the Editboxbase.
---@param insetData InsetData The inset data for the guide text.
---@usage
---```lua
---widget:SetGuideTextInset({ 10, 10 })
---```
---@see InsetData
function Editboxbase:SetGuideTextInset(insetData) end
