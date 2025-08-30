---@meta _

AP_BOTTOM = 8      -- objects/TextDrawable
AP_BOTTOMLEFT = 2  -- objects/TextDrawable
AP_BOTTOMRIGHT = 3 -- objects/TextDrawable
AP_CENTER = 4      -- objects/TextDrawable
AP_LEFT = 6        -- objects/TextDrawable
AP_RIGHT = 7       -- objects/TextDrawable
AP_TOP = 5         -- objects/TextDrawable
AP_TOPLEFT = 0     -- objects/TextDrawable
AP_TOPRIGHT = 1    -- objects/TextDrawable

---objects/TextDrawable
---@class TextDrawable: Drawablebase
---@field style TextStyle
local TextDrawable = {}

---Sets the text alignment of the TextDrawable.
---@param align TEXT_ALIGN The text alignment type. (default: `ALIGN_LEFT`)
---@usage
---```lua
---drawable:SetAlign(ALIGN_TOP_LEFT)
---```
---@see TEXT_ALIGN
function TextDrawable:SetAlign(align) end

---@TODO: Unsure what this does.
---Sets localized text for the TextDrawable with multiple optional parameters.
---@param a? any Optional parameter (purpose TBD).
---@param b? any Optional parameter (purpose TBD).
---@param c? any Optional parameter (purpose TBD).
---@param d? any Optional parameter (purpose TBD).
---@param e? any Optional parameter (purpose TBD).
---@param f? any Optional parameter (purpose TBD).
---@param g? any Optional parameter (purpose TBD).
---@param h? any Optional parameter (purpose TBD).
---@param i? any Optional parameter (purpose TBD).
---@param j? any Optional parameter (purpose TBD).
function TextDrawable:SetLText(a, b, c, d, e, f, g, h, i, j) end

---Enables or disables the outline for the TextDrawable.
---@param outline boolean `true` to enable outline, `false` to disable. (default: `false`)
---@usage
---```lua
---drawable:SetOutline(true)
---```
function TextDrawable:SetOutline(outline) end

---Enables or disables the shadow for the TextDrawable.
---@param shadow boolean `true` to enable shadow, `false` to disable. (default: `true`)
---@usage
---```lua
---drawable:SetShadow(false)
---```
function TextDrawable:SetShadow(shadow) end

---@TODO: Unsure what this does.
---Enables or disables snapping for the TextDrawable.
---@param snap boolean `true` to enable snapping, `false` to disable.
---@usage
---```lua
---drawable:SetSnap(true)
---```
function TextDrawable:SetSnap(snap) end

---Sets the text for the TextDrawable.
---@param text string The text to set.
---@usage
---```lua
---drawable:SetText("Archerage.to - the first ArcheAge Private Server")
---```
function TextDrawable:SetText(text) end
