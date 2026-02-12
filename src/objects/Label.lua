---@meta _

---[Label](lua://Label)
---
---A `Label` widget displays a string with configurable style, insets,
---auto-resizing, and optional number-only formatting.
---
---**Dependencies**:
--- - [TextStyle](lua://TextStyle) used for the `style` field.
---
---@class Label: Widget
---@field style TextStyle The text style applied to the label's text.
local Label = {}

---Retrieves the inset of the Label.
---@return number left The left inset. (default: `0`)
---@return number top The top inset. (default: `0`)
---@return number right The right inset. (default: `0`)
---@return number bottom The bottom inset. (default: `0`)
---@nodiscard
function Label:GetInset() end

---Enables or disables automatic resizing of the Label.
---@param resize boolean `true` to enable auto resizing, `false` to disable. (default: `false`)
function Label:SetAutoResize(resize) end

---Sets the inset for the Label.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
function Label:SetInset(left, top, right, bottom) end

---Enables or disables number formatting for the Label's text. Must be set
---before `Label:SetText`.
---@param only boolean `true` to format text as if it were numbers only, `false` to allow any text. (default: `false`)
function Label:SetNumberOnly(only) end
