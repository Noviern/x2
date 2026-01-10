---@meta _

---objects/Textbox
---@class Textbox: Widget
---@field style TextStyle
local Textbox = {}

---objects/Textbox
---@class textbox: Textbox

---Retrieves the inset of the Textbox.
---@return number left The left inset. (default: `0`)
---@return number top The top inset. (default: `0`)
---@return number right The right inset. (default: `0`)
---@return number bottom The bottom inset. (default: `0`)
---@nodiscard
function Textbox:GetInset() end

---Retrieves the number of lines in the Textbox.
---@return number lineCount The number of lines. (default: `0`)
---@nodiscard
function Textbox:GetLineCount() end

---Retrieves the scaled UI width in pixels of the specified line in the Textbox.
---@param lineNum number The line number.
---@return number lineWidth The scaled UI width of the line in pixels. (default: `0`)
---@nodiscard
function Textbox:GetLineLength(lineNum) end

---Retrieves the unscaled UI width of the longest line in the Textbox.
---@return number longestLineWidth The unscaled UI width of the longest line. (default: `0`)
---@nodiscard
function Textbox:GetLongestLineWidth() end

---Retrieves the total unscaled UI text height of the Textbox.
---@return number textHeight The total unscaled UI text height. (default: `-1`)
---@nodiscard
function Textbox:GetTextHeight() end

---Retrieves the text length of the Textbox.
---@return number textLength The text length. (default: `-1`)
---@nodiscard
function Textbox:GetTextLength() end

---Enables or disables automatic resizing of the Textbox.
---@param resize boolean `true` to enable auto resizing, `false` to disable (default: `false`).
function Textbox:SetAutoResize(resize) end

---Enables or disables automatic word wrapping for the Textbox. Must be used
---before `Widget:SetText`.
---@param wrap boolean `true` to enable word wrap, `false` to disable (default: `true`).
function Textbox:SetAutoWordwrap(wrap) end

---Sets the inset for the Textbox.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
function Textbox:SetInset(left, top, right, bottom) end

---Sets the color for the strikethrough and underline of the Textbox.
---@param r number The red color component (min: `0`, max: `1`).
---@param g number The green color component (min: `0`, max: `1`).
---@param b number The blue color component (min: `0`, max: `1`).
---@param a number The alpha (opacity) component (min: `0`, max: `1`).
function Textbox:SetLineColor(r, g, b, a) end

---Sets the height of the strikethrough and underline for the Textbox.
---@param height number The height of the strikethrough and underline.
function Textbox:SetLineHeight(height) end

---Sets the line spacing for the Textbox.
---@param space number The line spacing value. (default: `1`)
function Textbox:SetLineSpace(space) end

---Enables or disables strikethrough visibility for the Textbox.
---@param visible boolean `true` to show strikethrough, `false` to hide. (default: `false`)
function Textbox:SetStrikeThrough(visible) end

---Sets the initial width, text, and offset for the Textbox.
---@param initWidth number The initial width.
---@param text string The text to set.
---@param offset number The offset for the text.
function Textbox:SetTextAutoWidth(initWidth, text, offset) end

---Enables or disables underline visibility for the Textbox.
---@param visible boolean `true` to show underline, `false` to hide. (default: `false`)
function Textbox:SetUnderLine(visible) end
