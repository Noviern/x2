---@meta _

AP_BOTTOM = 8          -- object/EditboxMultiline
AP_BOTTOMLEFT = 2      -- object/EditboxMultiline
AP_BOTTOMRIGHT = 3     -- object/EditboxMultiline
AP_CENTER = 4          -- object/EditboxMultiline
AP_LEFT = 6            -- object/EditboxMultiline
AP_RIGHT = 7           -- object/EditboxMultiline
AP_TOP = 5             -- object/EditboxMultiline
AP_TOPLEFT = 0         -- object/EditboxMultiline
AP_TOPRIGHT = 1        -- object/EditboxMultiline
CT_ABILITY = 2         -- object/EditboxMultiline
CT_EXPEDITION_NAME = 3 -- object/EditboxMultiline
CT_NAME = 1            -- object/EditboxMultiline
DC_ALWAYS = 0          -- object/EditboxMultiline
DC_SHIFT_KEY_DOWN = 1  -- object/EditboxMultiline

---object/EditboxMultiline
---@class EditboxMultiline: Widget, Editboxbase
local EditboxMultiline = {}

---Clears the EditboxMultiline.
function EditboxMultiline:Clear() end

---Returns `cursorPosX` for the EditboxMultiline.
---@return number cursorPosX
---@nodiscard
function EditboxMultiline:GetCursorPosX() end

---Returns `cursorPosY` for the EditboxMultiline.
---@return number cursorPosY
---@nodiscard
function EditboxMultiline:GetCursorPosY() end

---Returns `lineCount` for the EditboxMultiline.
---@return number lineCount
---@nodiscard
function EditboxMultiline:GetLineCount() end

---Returns `lineHeight` for the EditboxMultiline.
---@return number lineHeight
---@nodiscard
function EditboxMultiline:GetLineHeight() end

---Returns `text` for the EditboxMultiline.
---@return string text
---@nodiscard
function EditboxMultiline:GetText() end

---Returns `textHeight` for the EditboxMultiline.
---@return number textHeight
---@nodiscard
function EditboxMultiline:GetTextHeight() end

---Returns `textLength` for the EditboxMultiline.
---@return number textLength
---@nodiscard
function EditboxMultiline:GetTextLength() end

---Sets the inset for the EditboxMultiline.
---@param left number
---@param top number
---@param right number
---@param bottom number
function EditboxMultiline:SetInset(left, top, right, bottom) end

---Sets the line `space` for the EditboxMultiline.
---@param space number
function EditboxMultiline:SetLineSpace(space) end
