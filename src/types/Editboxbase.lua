---@meta _

---@class Editboxbase
---@field guideTextStyle TextStyle
---@field style TextStyle
local Editboxbase = {}

---Sets the maximum text length for the Editboxbase.
---@param length number The maximum text length.
function Editboxbase:SetMaxTextLength(length) end

---Enables or disables clearing text when the Enter key is pressed.
---@param clear boolean `true` to clear text on Enter, `false` to disable. (default: `false`)
function Editboxbase:ClearTextOnEnter(clear) end

---Retrieves the maximum text length for the Editboxbase.
---@return number maxTextLength The maximum text length.
---@nodiscard
function Editboxbase:MaxTextLength() end

---Sets the cursor offset for the Editboxbase.
---@param offset number The cursor offset position.
function Editboxbase:SetCursorOffset(offset) end

---Sets the cursor height for the Editboxbase.
---@param height number The height of the cursor.
function Editboxbase:SetCursorHeight(height) end

---Sets the color of the cursor for the Editboxbase.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
---@param a number The alpha (opacity) component. (min: `0`, max: `1`)
function Editboxbase:SetCursorColor(r, g, b, a) end

---Sets the cursor color using a color key for the Editboxbase.
---@param colorKey ETC_COLOR The color key for the cursor.
function Editboxbase:SetCursorColorByColorKey(colorKey) end

---Enables or disables read-only mode for the Editboxbase.
---@param readOnly boolean `true` to make read-only, `false` to allow editing. (default: `false`)
function Editboxbase:SetReadOnly(readOnly) end

---Sets the guide text for the Editboxbase.
---@param text string The guide text to display.
function Editboxbase:SetGuideText(text) end

---Sets the guide text inset for the Editboxbase.
---@param insetData InsetData The inset data for the guide text.
---@see InsetData
function Editboxbase:SetGuideTextInset(insetData) end
