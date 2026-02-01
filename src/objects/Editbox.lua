---@meta _

---@FIXME: Is appears editbox by itself does not work, only provides a textbox that can be typed into but none of the methods work.

---objects/Editbox
---@class Editbox: Widget, Editboxbase
---@field prefixStyle TextStyle
local Editbox = {}

---objects/Editbox
---@class editbox: Editbox

---Adds a text entry to the Editbox history.
---@param text string The text to add to the history.
function Editbox:AddHistoryLine(text) end

---Checks the name policy for the Editbox.
---@param nameType NAME_RENAME_TYPE The name type to check against.
function Editbox:CheckNamePolicy(nameType) end

---Clears focus from the Editbox.
function Editbox:ClearFocus() end

---Clears the string content of the Editbox.
function Editbox:ClearString() end

---Checks if the Editbox content is restricted to digits.
---@return boolean digit  `true` if restricted to digits, `false` otherwise. (default: `false`)
---@nodiscard
function Editbox:IsDigit() end

---Checks if the Editbox is in a composition state (e.g., IME input).
---@return boolean `true` if in composition state, `false` otherwise. (default: `false`)
---@nodiscard
function Editbox:IsNowComposition() end

---Checks if the Editbox is set as a password field.
---@return boolean password `true` if set as password, `false` otherwise. (default: `false`)
---@nodiscard
function Editbox:IsPassword() end

---Enables or disables digit-only input for the Editbox.
---@param digit boolean `true` to restrict to digits, `false` to allow all characters. (default: `false`)
function Editbox:SetDigit(digit) end

---Sets whether the Editbox allows empty digit input.
---@param empty boolean `true` to allow empty input, `false` to disallow. (default: `false`)
function Editbox:SetDigitEmpty(empty) end

---Sets the maximum value for digit input in the Editbox.
---@param max number The maximum digit value.
function Editbox:SetDigitMax(max) end

---Sets the English input mode for the Editbox.
---@param english boolean `true` to enable English input mode, `false` to disable. (default: `false`)
function Editbox:SetEnglish(english) end

---Sets focus to the Editbox.
function Editbox:SetFocus() end

---Sets the maximum number of history lines for the Editbox.
---@param count number The maximum number of history lines. (default: `0`)
function Editbox:SetHistoryLines(count) end

---@FIXME: Broken?
---Sets the initial value for the Editbox.
---@param val number The initial value.
function Editbox:SetInitVal(val) end

---Sets the inset for the Editbox.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
function Editbox:SetInset(left, top, right, bottom) end

---Enables or disables password mode for the Editbox.
---@param password boolean `true` to enable password mode, `false` to disable. (default: `false`)
function Editbox:SetPassword(password) end

---Enables or disables allowing a leading zero in digit input.
---@param possibleFirstZero boolean `true` to allow leading zero, `false` to disallow. (default: `false`)
function Editbox:SetPossibleFirstZero(possibleFirstZero) end

---Sets the inset for the prefix text in the Editbox.
---@param left number The left inset for the prefix.
---@param top number The top inset for the prefix.
---@param right number The right inset for the prefix.
---@param bottom number The bottom inset for the prefix.
function Editbox:SetPrefixInset(left, top, right, bottom) end

---Sets the prefix text for the Editbox.
---@param prefixText string The prefix text to display.
function Editbox:SetPrefixText(prefixText) end

---@FIXME: Clarify re-clickable behavior.
---Enables or disables re-clickable behavior for the Editbox.
---@param click boolean `true` to enable re-clicking, `false` to disable.
function Editbox:SetReClickable(click) end

---Enables or disables selecting all text when the Editbox gains focus.
---@param use boolean `true` to select all text on focus, `false` to disable. (default: `true`)
function Editbox:UseSelectAllWhenFocused(use) end
