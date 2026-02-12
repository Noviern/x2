---@meta _

---[TextDrawable](lua://TextDrawable)
---
---A `TextDrawable` is a drawable that displays text with customizable style,
---alignment, outline, and shadow. It supports localized text and pixel
---snapping.
---
---**Dependencies**:
--- - [TextStyle](lua://TextStyle) used for the `style` field.
---
---@class TextDrawable: Drawablebase
---@field style TextStyle The optional text style applied to this drawable.
local TextDrawable = {}

---Sets the text alignment of the TextDrawable.
---@param align TEXT_ALIGN The text alignment type. (default: `ALIGN_LEFT`)
function TextDrawable:SetAlign(align) end

---Sets localized text for the TextDrawable with multiple optional parameters.
---@param key string The key from the database ui_texts table under the `COMMON_TEXT` category.
---@param ... string Arguments to replace placeholders (must match number of $).
function TextDrawable:SetLText(key, ...) end

---Sets localized text for the TextDrawable with multiple optional parameters.
---@param category UI_TEXT_CATEGORY_ID The UI text category. (default: `COMMON_TEXT`)
---@param key string The key from the database ui_texts table.
---@param ... string Arguments to replace placeholders (must match number of $).
function TextDrawable:SetLText(category, key, ...) end

---Enables or disables the outline for the TextDrawable.
---@param outline boolean `true` to enable outline, `false` to disable. (default: `false`)
function TextDrawable:SetOutline(outline) end

---Enables or disables the shadow for the TextDrawable.
---@param shadow boolean `true` to enable shadow, `false` to disable. (default: `true`)
function TextDrawable:SetShadow(shadow) end

---Enables or disables pixel snapping for the TextDrawable.
---@param snap boolean `true` to enable snapping, `false` to disable.
function TextDrawable:SetSnap(snap) end

---Sets the text for the TextDrawable.
---@param text string The text to set.
function TextDrawable:SetText(text) end
