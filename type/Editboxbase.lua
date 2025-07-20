---@meta _

---@class InsetData: number[]
---@field [1]? number Left
---@field [2]? number Top
---@field [3]? number Bottom
---@field [4]? number Right

---@class Editboxbase
---@field guideTextstyle TextStyle
---@field style TextStyle
local Editboxbase = {}

---Sets the max text`length` of the Editboxbase.
---@param length number default is 128 max of 9215 TODO: tested on multiline not sure about the others.
function Editboxbase:SetMaxTextLength(length) end

---Enables/Disables clearing text on enter for the Editboxbase.
---@param clear boolean
function Editboxbase:ClearTextOnEnter(clear) end

---Returns `maxTextLength` for the Editboxbase.
---@return number maxTextLength
function Editboxbase:MaxTextLength() end

---Sets the cursor `offset` of the Editboxbase.
---@param offset number
function Editboxbase:SetCursorOffset(offset) end

---Sets the cursors `height` for the Editboxbase.
---@param height number
function Editboxbase:SetCursorHeight(height) end

---Sets the color of the cursor for the Editboxbase.
---@param r number
---@param g number
---@param b number
---@param a number
function Editboxbase:SetCursorColor(r, g, b, a) end

---Sets the color `colorKey` of the cursor for the Editboxbase.
---@param colorKey string
function Editboxbase:SetCursorColorByColorKey(colorKey) end

---Enables/Disables `readOnly` for the Editboxbase.
---@param readOnly boolean
function Editboxbase:SetReadOnly(readOnly) end

---Sets the guide `text` for the Editboxbase.
---@param text string
function Editboxbase:SetGuideText(text) end

---Sets the guide text `insetData` for the Editboxbase.
---@param insetData InsetData
function Editboxbase:SetGuideTextInset(insetData) end
