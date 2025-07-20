---@meta _

AP_BOTTOM = 8      -- object/TextDrawable
AP_BOTTOMLEFT = 2  -- object/TextDrawable
AP_BOTTOMRIGHT = 3 -- object/TextDrawable
AP_CENTER = 4      -- object/TextDrawable
AP_LEFT = 6        -- object/TextDrawable
AP_RIGHT = 7       -- object/TextDrawable
AP_TOP = 5         -- object/TextDrawable
AP_TOPLEFT = 0     -- object/TextDrawable
AP_TOPRIGHT = 1    -- object/TextDrawable

---object/TextDrawable
---@class TextDrawable: Drawablebase
---@field style TextStyle
local TextDrawable = {}

---Sets the text `align` of the TextDrawable.
---@param align ALIGN
function TextDrawable:SetAlign(align) end

---TODO: No idea what this is
---@param a? any
---@param b? any
---@param c? any
---@param d? any
---@param e? any
---@param f? any
---@param g? any
---@param h? any
---@param i? any
---@param j? any
function TextDrawable:SetLText(a, b, c, d, e, f, g, h, i, j) end

---Enables/Disables the `outline` of the TextDrawable.
---@param outline boolean
function TextDrawable:SetOutline(outline) end

---Enables/Disables the `shadow` of the TextDrawable.
---@param shadow boolean
function TextDrawable:SetShadow(shadow) end

---Enables/Disables the `snap` of the TextDrawable.
---@param snap boolean
function TextDrawable:SetSnap(snap) end

---Sets the `text` of the TextDrawable.
---@param text string
function TextDrawable:SetText(text) end
