---@meta _

AP_BOTTOM = 8          -- object/Editbox
AP_BOTTOMLEFT = 2      -- object/Editbox
AP_BOTTOMRIGHT = 3     -- object/Editbox
AP_CENTER = 4          -- object/Editbox
AP_LEFT = 6            -- object/Editbox
AP_RIGHT = 7           -- object/Editbox
AP_TOP = 5             -- object/Editbox
AP_TOPLEFT = 0         -- object/Editbox
AP_TOPRIGHT = 1        -- object/Editbox
CT_ABILITY = 2         -- object/Editbox
CT_EXPEDITION_NAME = 3 -- object/Editbox
CT_NAME = 1            -- object/Editbox
DC_ALWAYS = 0          -- object/Editbox
DC_SHIFT_KEY_DOWN = 1  -- object/Editbox

---object/Editbox
---@class Editbox: Widget, Editboxbase
---@field prefixStyle TextStyle
local Editbox = {}

---TODO:
---@param text string
function Editbox:AddHistoryLine(text) end

---TODO: Check NRT_CHARACTER
---@param nameType number
function Editbox:CheckNamePolicy(nameType) end

---TODO:
function Editbox:ClearFocus() end

---TODO:
function Editbox:ClearString() end

---TODO:
function Editbox:GetText() end

---TODO:
function Editbox:IsDigit() end

---TODO:
function Editbox:IsNowComposition() end

---TODO:
function Editbox:IsPassword() end

---TODO:
---@param digit boolean
function Editbox:SetDigit(digit) end

---TODO:
---@param empty boolean
function Editbox:SetDigitEmpty(empty) end

---TODO:
---@param max number
function Editbox:SetDigitMax(max) end

---TODO:
---@param english number
function Editbox:SetEnglish(english) end

---TODO:
function Editbox:SetFocus() end

---TODO:
---@param count number
function Editbox:SetHistoryLines(count) end

---TODO:
---@param val number
function Editbox:SetInitVal(val) end

---TODO:
---@param left number
---@param top number
---@param right number
---@param bottom number
function Editbox:SetInset(left, top, right, bottom) end

---TODO:
---@param password boolean
function Editbox:SetPassword(password) end

---TODO:
---@param possibleFirstZero boolean
function Editbox:SetPossibleFirstZero(possibleFirstZero) end

---TODO:
---@param left number
---@param top number
---@param right number
---@param bottom number
function Editbox:SetPrefixInset(left, top, right, bottom) end

---TODO:
---@param prefixText string
function Editbox:SetPrefixText(prefixText) end

---TODO:
---@param click boolean
function Editbox:SetReClickable(click) end

---TODO:
---@param text string
function Editbox:SetText(text) end

---TODO:
---@param use boolean
function Editbox:UseSelectAllWhenFocused(use) end
