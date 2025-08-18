---@meta _

AP_BOTTOM = 8          -- object/Textbox
AP_BOTTOMLEFT = 2      -- object/Textbox
AP_BOTTOMRIGHT = 3     -- object/Textbox
AP_CENTER = 4          -- object/Textbox
AP_LEFT = 6            -- object/Textbox
AP_RIGHT = 7           -- object/Textbox
AP_TOP = 5             -- object/Textbox
AP_TOPLEFT = 0         -- object/Textbox
AP_TOPRIGHT = 1        -- object/Textbox
CT_ABILITY = 2         -- object/Textbox
CT_EXPEDITION_NAME = 3 -- object/Textbox
CT_NAME = 1            -- object/Textbox
DC_ALWAYS = 0          -- object/Textbox
DC_SHIFT_KEY_DOWN = 1  -- object/Textbox

---object/Textbox
---@class Textbox: Widget
---@field style TextStyle
local Textbox = {}

---Retrieves the inset of the Textbox.
---@return number left The left inset. (default: `0`)
---@return number top The top inset. (default: `0`)
---@return number right The right inset. (default: `0`)
---@return number bottom The bottom inset. (default: `0`)
---@nodiscard
---@usage
---```
---local left, top, right, bottom = widget:GetInset()
---```
function Textbox:GetInset() end

---Retrieves the number of lines in the Textbox.
---@return number lineCount The number of lines. (default: `0`)
---@nodiscard
---@usage
---```
---local lineCount = widget:GetLineCount()
---```
function Textbox:GetLineCount() end

---@TODO: Broken?
---Retrieves the length in pixels of the specified line in the Textbox.
---@param lineNum number The line number.
---@return number lineLength The length of the line in pixels. (default: `0`)
---@nodiscard
---@usage
---```
---local lineLegnth = widget:GetLineLength(1)
---```
function Textbox:GetLineLength(lineNum) end

---@TODO: Verify why this doesn't match GetLineLength results. BRoken?
---Retrieves the width of the longest line in the Textbox.
---@return number longestLineWidth The width of the longest line. (default: `0`)
---@nodiscard
---@usage
---```
---local longestLineWidth = widget:GetLongestLineWidth()
---```
function Textbox:GetLongestLineWidth() end

---@TODO: Broken? Currently its adding the height of each character and returning that.
---Retrieves the total text height of the Textbox.
---@return number textHeight The total text height. (default: `-1`)
---@nodiscard
---@usage
---```
---local textHeight = widget:GetTextHeight()
---```
function Textbox:GetTextHeight() end

---@TODO: Investigate why this always returns 0.
---Retrieves the text length of the Textbox.
---@return number textLength The text length. (default: `0`)
---@nodiscard
---@usage
---```
---local textLength = widget:GetTextLength()
---```
function Textbox:GetTextLength() end

---Enables or disables automatic resizing of the Textbox.
---@param resize boolean `true` to enable auto resizing, `false` to disable (default: `false`).
---@usage
---```
---widget:SetAutoResize(true)
---```
function Textbox:SetAutoResize(resize) end

---Enables or disables automatic word wrapping for the Textbox.
---@param wrap boolean `true` to enable word wrap, `false` to disable (default: `true`).
---@usage
---```
---widget:SetAutoWordwrap(false)
---```
function Textbox:SetAutoWordwrap(wrap) end

---Sets the inset for the Textbox.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```
---widget:SetInset(10, 10, 10, 10)
---```
function Textbox:SetInset(left, top, right, bottom) end

---Sets the color for the strikethrough and underline of the Textbox.
---@param r number The red color component (min: `0`, max: `1`).
---@param g number The green color component (min: `0`, max: `1`).
---@param b number The blue color component (min: `0`, max: `1`).
---@param a number The alpha (opacity) component (min: `0`, max: `1`).
---@usage
---```
---widget:SetLineColor(1, 0, 0, 1)
---```
function Textbox:SetLineColor(r, g, b, a) end

---Sets the height of the strikethrough and underline for the Textbox.
---@param height number The height of the strikethrough and underline.
---@usage
---```
---widget:SetLineHeight(15)
---```
function Textbox:SetLineHeight(height) end

---Sets the line spacing for the Textbox.
---@param space TEXTBOX_LINE_SPACE|number The line spacing value.
---@usage
---```
---widget:SetLineSpace(15)
---```
function Textbox:SetLineSpace(space) end

---Enables or disables strikethrough visibility for the Textbox.
---@param visible boolean `true` to show strikethrough, `false` to hide. (default: `false`)
---@usage
---```
---widget:SetStrikeThrough(true)
---```
function Textbox:SetStrikeThrough(visible) end

---Sets the initial width, text, and offset for the Textbox.
---@param initWidth number The initial width.
---@param text string The text to set.
---@param offset number The offset for the text.
---@usage
---```
---widget:SetTextAutoWidth(1000, "Archerage.to - the first ArcheAge Private Server", 10)
---```
function Textbox:SetTextAutoWidth(initWidth, text, offset) end

---Enables or disables underline visibility for the Textbox.
---@param visible boolean `true` to show underline, `false` to hide. (default: `false`)
---@usage
---```
---widget:SetUnderLine(true)
---```
function Textbox:SetUnderLine(visible) end
