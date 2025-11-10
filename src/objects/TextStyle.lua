---@meta _

ALIGN_BOTTOM = 7       -- objects/TextStyle TEXT_ALIGN
ALIGN_BOTTOM_LEFT = 6  -- objects/TextStyle TEXT_ALIGN
ALIGN_BOTTOM_RIGHT = 8 -- objects/TextStyle TEXT_ALIGN
ALIGN_CENTER = 4       -- objects/TextStyle TEXT_ALIGN
ALIGN_LEFT = 3         -- objects/TextStyle TEXT_ALIGN
ALIGN_RIGHT = 5        -- objects/TextStyle TEXT_ALIGN
ALIGN_TOP = 1          -- objects/TextStyle TEXT_ALIGN
ALIGN_TOP_LEFT = 0     -- objects/TextStyle TEXT_ALIGN
ALIGN_TOP_RIGHT = 2    -- objects/TextStyle TEXT_ALIGN
FTK_GENERAL = 0        -- objects/TextStyle FONT_KIND
---@alias FTK_GENERAL 0
FTK_IMAGETEXT = 2      -- objects/TextStyle FONT_KIND
---@alias FTK_IMAGETEXT 2

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
local TextStyle = {}
---@class textstyle: TextStyle

---Retrieves the line height of the TextStyle.
---@return number lineHeight The height of a text line.
---@nodiscard
function TextStyle:GetLineHeight() end

---Retrieves the width of the specified text using the TextStyle.
---@param text string The text to measure.
---@return number textWidth The width of the text.
---@nodiscard
function TextStyle:GetTextWidth(text) end

---Sets the text alignment for the TextStyle.
---@param align TEXT_ALIGN The text alignment type.
function TextStyle:SetAlign(align) end

---Sets the color for the TextStyle.
---@param r number The red color component (min: `0`, max: `1`).
---@param g number The green color component (min: `0`, max: `1`).
---@param b number The blue color component (min: `0`, max: `1`).
---@param a number The alpha (opacity) component (min: `0`, max: `1`).
function TextStyle:SetColor(r, g, b, a) end

---Sets the color for the TextStyle using a color key.
---@param key FONT_COLOR_KEY The color key to apply.
function TextStyle:SetColorByKey(key) end

---Enables or disables ellipsis for the TextStyle when text overflows its
---extent.
---@param ellipsis boolean `true` to enable ellipsis, `false` to disable. (default: `false`)
function TextStyle:SetEllipsis(ellipsis) end

---Sets the font path, size, and optional type for the TextStyle. When using
---`FONT_PATH.IMG_` variants (e.g., `IMG_NPC_HPBAR`, `IMG_ACTION_BAR`,
---`IMG_COMBAT`), the `fontSize` and `fontType` must match the fixed values:
---`IMG_NPC_HPBAR` requires `fontSize` of 19 and `fontType` of `FTK_IMAGETEXT`;
---`IMG_ACTION_BAR` requires `fontSize` of 13 and `fontType` of `FTK_IMAGETEXT`;
---`IMG_COMBAT` requires `fontSize` of 60 and `fontType` of `FTK_IMAGETEXT`.
---@param fontPath string The path to the font.
---@param fontSize number The size of the font. Must be 19 for `FONT_PATH.IMG_NPC_HPBAR`, 13 for `FONT_PATH.IMG_ACTION_BAR`, or 60 for `FONT_PATH.IMG_COMBAT`.
---@param fontType? FONT_KIND The optional font type. Must be `FTK_IMAGETEXT` for `FONT_PATH.IMG_` variants, otherwise defaults to `FTK_GENERAL`.
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
---@overload fun(self: self, fontPath: "img_font_npc_hpbar", fontSize: 19, fontType: FTK_IMAGETEXT)
---@overload fun(self: self, fontPath: "img_font_action_bar", fontSize: 13, fontType: FTK_IMAGETEXT)
---@overload fun(self: self, fontPath: "img_font_combat", fontSize: 60, fontType: FTK_IMAGETEXT)
---@overload fun(self: self, fontPath: FONT_PATH, fontSize: FONT_SIZE, fontType: FTK_IMAGETEXT)
function TextStyle:SetFont(fontPath, fontSize, fontType) end

---Sets the font size for the TextStyle.
---@param size FONT_SIZE The font size to set.
function TextStyle:SetFontSize(size) end

---Enables or disables the outline for the TextStyle.
---@param outline boolean `true` to enable outline, `false` to disable. (default: `false`)
function TextStyle:SetOutline(outline) end

---Enables or disables the shadow for the TextStyle.
---@param shadow boolean `true` to enable shadow, `false` to disable. (default: `false`)
function TextStyle:SetShadow(shadow) end

---Enables or disables snapping for the TextStyle.
---@param snap boolean `true` to enable snapping, `false` to disable.
function TextStyle:SetSnap(snap) end
