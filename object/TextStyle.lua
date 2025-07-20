---@meta _

ALIGN_BOTTOM = 7       -- object/TextStyle
ALIGN_BOTTOM_LEFT = 6  -- object/TextStyle
ALIGN_BOTTOM_RIGHT = 8 -- object/TextStyle
ALIGN_CENTER = 4       -- object/TextStyle
ALIGN_LEFT = 3         -- object/TextStyle
ALIGN_RIGHT = 5        -- object/TextStyle
ALIGN_TOP = 1          -- object/TextStyle
ALIGN_TOP_LEFT = 0     -- object/TextStyle
ALIGN_TOP_RIGHT = 2    -- object/TextStyle
FTK_GENERAL = 0        -- object/TextStyle
FTK_IMAGETEXT = 2      -- object/TextStyle

---object/TextStyle
---@alias ALIGN
---| `ALIGN_BOTTOM`
---| `ALIGN_BOTTOM_LEFT`
---| `ALIGN_BOTTOM_RIGHT`
---| `ALIGN_CENTER`
---| `ALIGN_LEFT`
---| `ALIGN_RIGHT`
---| `ALIGN_TOP`
---| `ALIGN_TOP_LEFT`
---| `ALIGN_TOP_RIGHT`

---object/TextStyle
---@class TextStyle: Uiobject
local TextStyle = {}

---Returns the `lineHeight` of the TextStyle.
---@return number lineHeight
---@nodiscard
function TextStyle:GetLineHeight() end

---Returns the `textWidth` for `text`.
---@param text string
---@return number textWidth
---@nodiscard
function TextStyle:GetTextWidth(text) end

---Sets the text `align` of the TextStyle.
---@param align ALIGN
function TextStyle:SetAlign(align) end

---Sets the color of the TextStyle.
---@param r number 0 to 1
---@param g number 0 to 1
---@param b number 0 to 1
---@param a number 0 to 1
function TextStyle:SetColor(r, g, b, a) end

---Sets the color by `key` for the TextStyle.
---@param key FONT_COLOR_KEY
function TextStyle:SetColorByKey(key) end

---Enables/Disables `ellipsis` for the TextStyle if the text overflows the
---extent.
---@param ellipsis boolean
function TextStyle:SetEllipsis(ellipsis) end

---Sets the `fontPath` and `fontSize` of the TextStyle.
---@param fontPath FONT_PATH
---@param fontSize FONT_SIZE
function TextStyle:SetFont(fontPath, fontSize) end

---Sets the font `size` of the TextStyle.
---@param size FONT_SIZE
function TextStyle:SetFontSize(size) end

---Enables/Disables the `outline` of the TextStyle.
---@param outline boolean
function TextStyle:SetOutline(outline) end

---Enables/Disables the `shadow` of the TextStyle.
---@param shadow boolean
function TextStyle:SetShadow(shadow) end

---Enables/Disables the `snap` of the TextStyle.
---@param snap boolean
function TextStyle:SetSnap(snap) end
