---@meta _

AP_BOTTOM = 8          -- objects/Editbox
AP_BOTTOMLEFT = 2      -- objects/Editbox
AP_BOTTOMRIGHT = 3     -- objects/Editbox
AP_CENTER = 4          -- objects/Editbox
AP_LEFT = 6            -- objects/Editbox
AP_RIGHT = 7           -- objects/Editbox
AP_TOP = 5             -- objects/Editbox
AP_TOPLEFT = 0         -- objects/Editbox
AP_TOPRIGHT = 1        -- objects/Editbox
CT_ABILITY = 2         -- objects/Editbox
CT_EXPEDITION_NAME = 3 -- objects/Editbox
CT_NAME = 1            -- objects/Editbox
DC_ALWAYS = 0          -- objects/Editbox
DC_SHIFT_KEY_DOWN = 1  -- objects/Editbox

---@TODO: Is appears editbox by itself does not work, only provides a textbox that can be typed into but none of the methods work.

---objects/Editbox
---@class Editbox: Widget, Editboxbase
---@field prefixStyle TextStyle
---@class editbox: Editbox
local Editbox = {}

---Adds a text entry to the Editbox history.
---@param text string The text to add to the history.
---@usage
---```
---widget:AddHistoryLine("Test")
---```
function Editbox:AddHistoryLine(text) end

---@TODO: Verify nameType and NRT_CHARACTER usage.
---Checks the name policy for the Editbox.
---@param nameType number The name type to check against (e.g., NRT_CHARACTER).
---@usage
---```
---widget:CheckNamePolicy(NRT_CHARACTER)
---```
function Editbox:CheckNamePolicy(nameType) end

---Clears focus from the Editbox.
---@usage
---```
---widget:ClearFocus()
---```
function Editbox:ClearFocus() end

---Clears the string content of the Editbox.
---@usage
---```
---widget:ClearString()
---```
function Editbox:ClearString() end

---Checks if the Editbox content is restricted to digits.
---@return boolean digit  `true` if restricted to digits, `false` otherwise. (default: `false`)
---@nodiscard
---@usage
---```
---local digit = widget:IsDigit()
---```
function Editbox:IsDigit() end

---Checks if the Editbox is in a composition state (e.g., IME input).
---@return boolean `true` if in composition state, `false` otherwise. (default: `false`)
---@nodiscard
---@usage
---```
---widget:IsNowComposition()
---```
function Editbox:IsNowComposition() end

---Checks if the Editbox is set as a password field.
---@return boolean password `true` if set as password, `false` otherwise. (default: `false`)
---@nodiscard
---@usage
---```
---local password = widget:IsPassword()
---```
function Editbox:IsPassword() end

---Enables or disables digit-only input for the Editbox.
---@param digit boolean `true` to restrict to digits, `false` to allow all characters. (default: `false`)
---@usage
---```
---widget:SetDigit(true)
---```
function Editbox:SetDigit(digit) end

---@TODO: Clarify empty parameter purpose.
---Sets whether the Editbox allows empty digit input.
---@param empty boolean `true` to allow empty input, `false` to disallow.
function Editbox:SetDigitEmpty(empty) end

---Sets the maximum value for digit input in the Editbox.
---@param max number The maximum digit value.
---@usage
---```
---widget:SetDigitMax(100)
---```
function Editbox:SetDigitMax(max) end

---Sets the English input mode for the Editbox.
---@param english boolean `true` to enable English input mode, `false` to disable. (default: `false`)
---@usage
---```
---widget:SetEnglish(true)
---```
function Editbox:SetEnglish(english) end

---Sets focus to the Editbox.
---@usage
---```
---widget:SetFocus()
---```
function Editbox:SetFocus() end

---Sets the maximum number of history lines for the Editbox.
---@param count number The maximum number of history lines. (default: `0`)
---@usage
---```
---widget:SetHistoryLines(20)
---```
function Editbox:SetHistoryLines(count) end

---@TODO: Broken?
---Sets the initial value for the Editbox.
---@param val number The initial value.
---@usage
---```
---widget:SetInitVal(100)
---```
function Editbox:SetInitVal(val) end

---Sets the inset for the Editbox.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```
---widget:SetInset(10, 10, 10, 10)
---```
function Editbox:SetInset(left, top, right, bottom) end

---Enables or disables password mode for the Editbox.
---@param password boolean `true` to enable password mode, `false` to disable. (default: `false`)
---@usage
---```
---widget:SetPassword(true)
---```
function Editbox:SetPassword(password) end

---Enables or disables allowing a leading zero in digit input.
---@param possibleFirstZero boolean `true` to allow leading zero, `false` to disallow. (default: `false`)
---@usage
---```
---widget:SetPossibleFirstZero(true)
---```
function Editbox:SetPossibleFirstZero(possibleFirstZero) end

---Sets the inset for the prefix text in the Editbox.
---@param left number The left inset for the prefix.
---@param top number The top inset for the prefix.
---@param right number The right inset for the prefix.
---@param bottom number The bottom inset for the prefix.
---@usage
---```
---widget:SetPrefixInset(10, 10, 10, 10)
---```
function Editbox:SetPrefixInset(left, top, right, bottom) end

---Sets the prefix text for the Editbox.
---@param prefixText string The prefix text to display.
---@usage
---```
---widget:SetPrefixText("Test")
---```
function Editbox:SetPrefixText(prefixText) end

---@TODO: Clarify re-clickable behavior.
---Enables or disables re-clickable behavior for the Editbox.
---@param click boolean `true` to enable re-clicking, `false` to disable.
---@usage
---```
---widget:SetReClickable(false)
---```
function Editbox:SetReClickable(click) end

---Enables or disables selecting all text when the Editbox gains focus.
---@param use boolean `true` to select all text on focus, `false` to disable. (default: `false`)
---@usage
---```
---widget:UseSelectAllWhenFocused(true)
---```
function Editbox:UseSelectAllWhenFocused(use) end
