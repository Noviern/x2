---@meta _

---[EditboxMultiline](lua://EditboxMultiline)
---
---A `EditboxMultiline` widget is for entering and displaying multiple lines of
---text. Provides cursor position queries, line and text metrics, configurable
---insets, and adjustable line spacing. Intended for longer text.
---
---@class EditboxMultiline: Widget, Editboxbase
local EditboxMultiline = {}

---Clears all text in the EditboxMultiline.
function EditboxMultiline:Clear() end

---Retrieves the x-coordinate of the cursor in the EditboxMultiline.
---@return number cursorPosX The x-coordinate of the cursor.
---@nodiscard
function EditboxMultiline:GetCursorPosX() end

---Retrieves the y-coordinate of the cursor in the EditboxMultiline.
---@return number cursorPosY The y-coordinate of the cursor.
---@nodiscard
function EditboxMultiline:GetCursorPosY() end

---Retrieves the number of lines in the EditboxMultiline.
---@return number lineCount The number of lines.
---@nodiscard
function EditboxMultiline:GetLineCount() end

---Retrieves the height of a single line in the EditboxMultiline.
---@return number lineHeight The height of a line.
---@nodiscard
function EditboxMultiline:GetLineHeight() end

---Retrieves the total height of the text in the EditboxMultiline.
---@return number textHeight The total text height.
---@nodiscard
function EditboxMultiline:GetTextHeight() end

---Retrieves the length of the text in the EditboxMultiline.
---@return number textLength The length of the text.
---@nodiscard
function EditboxMultiline:GetTextLength() end

---Sets the inset for the EditboxMultiline.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
function EditboxMultiline:SetInset(left, top, right, bottom) end

---Sets the line spacing for the EditboxMultiline.
---@param space number The line spacing value.
function EditboxMultiline:SetLineSpace(space) end
