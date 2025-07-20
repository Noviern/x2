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

---Returns the inset for the Textbox.
---@return number left
---@return number top
---@return number right
---@return number bottom
---@nodiscard
function Textbox:GetInset() end

---Returns the `lineCount` of the Textbox.
---@return number lineCount
---@nodiscard
function Textbox:GetLineCount() end

---Returns the `lineLength` in pixels of the `lineNum` in the Textbox.
---@param lineNum number
---@return number lineLength
---@nodiscard
function Textbox:GetLineLength(lineNum) end

---TODO: This doesnt match any of the `GetLineLength`
---@return number
---@nodiscard
function Textbox:GetLongestLineWidth() end

---Returns the `textHeight` of the Textbox.
---@return number textHeight
---@nodiscard
function Textbox:GetTextHeight() end

---TODO: I think this is broken? I only ever get 0 back.
---@return number
---@nodiscard
function Textbox:GetTextLength() end

---Enables/Disables automatic resizing of the Textbox.
---@param resize boolean default is false.
function Textbox:SetAutoResize(resize) end

---Enable/Disables automatic word wrap for the Textbox.
---@param wrap boolean default is true
function Textbox:SetAutoWordwrap(wrap) end

---Sets the inset for the Textbox.
---@param left number
---@param top number
---@param right number
---@param bottom number
function Textbox:SetInset(left, top, right, bottom) end

---Sets the color of the `StrikeThrough` and `Underline` for the Textbox.
---@param r number
---@param g number
---@param b number
---@param a number
function Textbox:SetLineColor(r, g, b, a) end

---Sets the `height` of the `StrikeThrough` and `Underline` for the Textbox.
---@param height number
function Textbox:SetLineHeight(height) end

---Sets the line `space` for the Textbox.
---@param space TEXTBOX_LINE_SPACE|number
function Textbox:SetLineSpace(space) end

---Enables/Disables strikethrough `visible` of the Textbox.
---@param visible boolean
function Textbox:SetStrikeThrough(visible) end

---Sets `text` for the Textbox.
---@param text string
function Textbox:SetText(text) end

---Sets the `initWidth` and `offset` for `text` of the Textbox.
---@param initWidth number
---@param text string
---@param offset number
function Textbox:SetTextAutoWidth(initWidth, text, offset) end

---Enables/Disables underline `visible` for the Textbox.
---@param visible boolean
function Textbox:SetUnderLine(visible) end
