---@meta _

ALIGN_BOTTOM = 7       -- objects/TextStyle
ALIGN_BOTTOM_LEFT = 6  -- objects/TextStyle
ALIGN_BOTTOM_RIGHT = 8 -- objects/TextStyle
ALIGN_CENTER = 4       -- objects/TextStyle
ALIGN_LEFT = 3         -- objects/TextStyle
ALIGN_RIGHT = 5        -- objects/TextStyle
ALIGN_TOP = 1          -- objects/TextStyle
ALIGN_TOP_LEFT = 0     -- objects/TextStyle
ALIGN_TOP_RIGHT = 2    -- objects/TextStyle
FTK_GENERAL = 0        -- objects/TextStyle
FTK_IMAGETEXT = 2      -- objects/TextStyle

---objects/TextStyle
---@alias TEXT_ALIGN
---| `ALIGN_BOTTOM`
---| `ALIGN_BOTTOM_LEFT`
---| `ALIGN_BOTTOM_RIGHT`
---| `ALIGN_CENTER`
---| `ALIGN_LEFT`
---| `ALIGN_RIGHT`
---| `ALIGN_TOP`
---| `ALIGN_TOP_LEFT`
---| `ALIGN_TOP_RIGHT`

---@alias FONT_KIND
---| `FTK_GENERAL`
---| `FTK_IMAGETEXT`

---objects/TextStyle
---@class TextStyle: Uiobject
---@class textstyle: TextStyle
local TextStyle = {}

---Retrieves the line height of the TextStyle.
---@return number lineHeight The height of a text line.
---@nodiscard
---@usage
---```lua
---local lineHeight = style:GetLineHeight()
---```
function TextStyle:GetLineHeight() end

---Retrieves the width of the specified text using the TextStyle.
---@param text string The text to measure.
---@return number textWidth The width of the text.
---@nodiscard
---@usage
---```lua
---local textWidth = style:GetTextWidth("ArcheRage.to")
---```
function TextStyle:GetTextWidth(text) end

---Sets the text alignment for the TextStyle.
---@param align TEXT_ALIGN The text alignment type.
---@usage
---```lua
---style:SetAlign(ALIGN_TOP_LEFT)
---```
function TextStyle:SetAlign(align) end

---Sets the color for the TextStyle.
---@param r number The red color component (min: `0`, max: `1`).
---@param g number The green color component (min: `0`, max: `1`).
---@param b number The blue color component (min: `0`, max: `1`).
---@param a number The alpha (opacity) component (min: `0`, max: `1`).
---@usage
---```lua
---style:SetColor(1, 0, 0, 1)
---```
function TextStyle:SetColor(r, g, b, a) end

---Sets the color for the TextStyle using a color key.
---@param key FONT_COLOR_KEY The color key to apply.
---@usage
---```lua
---style:SetColorByKey("title")
---```
function TextStyle:SetColorByKey(key) end

---Enables or disables ellipsis for the TextStyle when text overflows its
---extent.
---@param ellipsis boolean `true` to enable ellipsis, `false` to disable. (default: `false`)
---@usage
---```lua
---style:SetEllipsis(true)
---```
function TextStyle:SetEllipsis(ellipsis) end

---@TODO: IMG_ have fixed size and kind
---Sets the font path, size, and optional type for the TextStyle.
---@param fontPath FONT_PATH The path to the font.
---@param fontSize FONT_SIZE|number The size of the font.
---@param fontType? FONT_KIND The font type (optional). (default: `FTK_GENERAL`)
---@usage
---```lua
---style:SetFont(FONT_PATH.COMBAT, FONT_SIZE.XXLARGE)
---
------or
---
---widget.style:SetFont(FONT_PATH.IMG_NPC_HPBAR, 19, FTK_IMAGETEXT)
---widget.style:SetFont(FONT_PATH.IMG_ACTION_BAR, 13, FTK_IMAGETEXT)
---widget.style:SetFont(FONT_PATH.IMG_COMBAT, 60, FTK_IMAGETEXT)
---```
function TextStyle:SetFont(fontPath, fontSize, fontType) end

---Sets the font size for the TextStyle.
---@param size FONT_SIZE The font size to set.
---@usage
---```lua
---style:SetFontSize(FONT_SIZE.DEFAULT)
---```
function TextStyle:SetFontSize(size) end

---Enables or disables the outline for the TextStyle.
---@param outline boolean `true` to enable outline, `false` to disable. (default: `false`)
---@usage
---```lua
---style:SetOutline(true)
---```
function TextStyle:SetOutline(outline) end

---Enables or disables the shadow for the TextStyle.
---@param shadow boolean `true` to enable shadow, `false` to disable. (default: `false`)
---@usage
---```lua
---style:SetShadow(true)
---```
function TextStyle:SetShadow(shadow) end

---Enables or disables snapping for the TextStyle.
---@param snap boolean `true` to enable snapping, `false` to disable.
---@usage
---```lua
---style:SetSnap(true)
---```
function TextStyle:SetSnap(snap) end
