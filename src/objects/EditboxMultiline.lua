---@meta _

---objects/EditboxMultiline
---@class EditboxMultiline: Widget, Editboxbase
local EditboxMultiline = {}
---@class editboxmultiline: EditboxMultiline

---Clears all text in the EditboxMultiline.
function EditboxMultiline:Clear() end

---Retrieves the x-coordinate of the cursor in the EditboxMultiline.
---@return number cursorPosX The x-coordinate of the cursor.
---@nodiscard
---@usage
---```lua
---local cursorPosX = widget:GetCursorPosX()
---```
function EditboxMultiline:GetCursorPosX() end

---Retrieves the y-coordinate of the cursor in the EditboxMultiline.
---@return number cursorPosY The y-coordinate of the cursor.
---@nodiscard
---@usage
---```lua
---local cursorPosY = widget:GetCursorPosY()
---```
function EditboxMultiline:GetCursorPosY() end

---Retrieves the number of lines in the EditboxMultiline.
---@return number lineCount The number of lines.
---@nodiscard
---@usage
---```lua
---local lineCount = widget:GetLineCount()
---```
function EditboxMultiline:GetLineCount() end

---Retrieves the height of a single line in the EditboxMultiline.
---@return number lineHeight The height of a line.
---@nodiscard
---@usage
---```lua
---local lineHeight = widget:GetLineHeight()
---```
function EditboxMultiline:GetLineHeight() end

---Retrieves the total height of the text in the EditboxMultiline.
---@return number textHeight The total text height.
---@nodiscard
---@usage
---```lua
---local textHeight = widget:GetTextHeight()
---```
function EditboxMultiline:GetTextHeight() end

---Retrieves the length of the text in the EditboxMultiline.
---@return number textLength The length of the text.
---@nodiscard
---@usage
---```lua
---local textLength = widget:GetTextLength()
---```
function EditboxMultiline:GetTextLength() end

---Sets the inset for the EditboxMultiline.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```lua
---widget:SetInset(10, 10, 10, 10)
---```
function EditboxMultiline:SetInset(left, top, right, bottom) end

---Sets the line spacing for the EditboxMultiline.
---@param space number The line spacing value.
---@usage
---```lua
---widget:SetLineSpace(2)
---```
function EditboxMultiline:SetLineSpace(space) end
