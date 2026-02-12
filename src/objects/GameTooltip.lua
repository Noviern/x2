---@meta _

UFT_CUPLABOR = "|p8;"           -- objects/GameTooltip UNIT_FRAME_TOOLTIP
UFT_CURHP = "|p2;"              -- objects/GameTooltip UNIT_FRAME_TOOLTIP
UFT_CURMP = "|p5;"              -- objects/GameTooltip UNIT_FRAME_TOOLTIP
UFT_GEARSCORE = "|p12;"         -- objects/GameTooltip UNIT_FRAME_TOOLTIP
UFT_MAXHP = "|p3;"              -- objects/GameTooltip UNIT_FRAME_TOOLTIP
UFT_MAXLABOR = "|p9;"           -- objects/GameTooltip UNIT_FRAME_TOOLTIP
UFT_MAXMP = "|p6;"              -- objects/GameTooltip UNIT_FRAME_TOOLTIP
UFT_NAME = "|p1;"               -- objects/GameTooltip UNIT_FRAME_TOOLTIP
UFT_PERHP = "|p4;"              -- objects/GameTooltip UNIT_FRAME_TOOLTIP
UFT_PERIOD_LEADERSHIP = "|p13;" -- objects/GameTooltip UNIT_FRAME_TOOLTIP
UFT_PERMP = "|p7;"              -- objects/GameTooltip UNIT_FRAME_TOOLTIP
UFT_PVPHONOR = "|p10;"          -- objects/GameTooltip UNIT_FRAME_TOOLTIP
UFT_PVPKILL = "|p11;"           -- objects/GameTooltip UNIT_FRAME_TOOLTIP

---objects/GameTooltip
---@alias UNIT_FRAME_TOOLTIP
---| `UFT_CUPLABOR`
---| `UFT_CURHP`
---| `UFT_CURMP`
---| `UFT_GEARSCORE`
---| `UFT_MAXHP`
---| `UFT_MAXLABOR`
---| `UFT_MAXMP`
---| `UFT_NAME`
---| `UFT_PERHP`
---| `UFT_PERIOD_LEADERSHIP`
---| `UFT_PERMP`
---| `UFT_PVPHONOR`
---| `UFT_PVPKILL`

---[GameTooltip](lua://GameTooltip)
---
---A `GameTooltip` widget displays formatted tooltip text with multiple lines.
---Supports line insertion, spacing, indentation, and word wrapping, Allows
---adding text on either side of a line, attaching upper or lower spacing, and
---managing tooltip content programmatically.
---
---**Dependencies**:
--- - [TextStyle](lua://TextStyle) used for the `style` field and `textAlign` param of both methods `AddAnotherSideLine` and `AddLine`.
---
---@class GameTooltip: Widget
---@field style TextStyle The text style applied to all tooltip lines.
local GameTooltip = {}

---Adds text to an existing line in the GameTooltip on the opposite side.
---@param index number The line index to add the text to. (Starts at `0`)
---@param text string The text to add.
---@param fontPath FONT_PATH The font path for the text.
---@param fontSize number The font size for the text.
---@param textAlign TEXT_ALIGN The text alignment.
---@param indentation number The indentation for the text.
function GameTooltip:AddAnotherSideLine(index, text, fontPath, fontSize, textAlign, indentation) end

---Adds a new line to the GameTooltip and returns its index.
---@param text string The text to add.
---@param fontPath FONT_PATH The font path for the text.
---@param fontSize number The font size for the text.
---@param align LINE_ALIGN The alignment type.
---@param textAlign TEXT_ALIGN The text alignment for the line.
---@param indentation number The indentation for the text.
---@return number index The index of the added line. (Starts at `0`)
function GameTooltip:AddLine(text, fontPath, fontSize, align, textAlign, indentation) end

---Attaches a lower space to the specified line in the GameTooltip.
---@param index number The line index to attach the space to. (min: `0`)
---@param height number The height of the lower space.
function GameTooltip:AttachLowerSpaceLine(index, height) end

---Attaches an upper space to the specified line in the GameTooltip.
---@param index number The line index to attach the space to. (min: `0`)
---@param height number The height of the upper space.
function GameTooltip:AttachUpperSpaceLine(index, height) end

---Clears all lines from the GameTooltip.
function GameTooltip:ClearLines() end

---Retrieves the height of the last line in the GameTooltip, with and without
---spacing.
---@return number heightOnlyLine The height of the last line without spacing.
---@return number heightIncludeSpace The height of the last line including spacing.
---@nodiscard
function GameTooltip:GetHeightToLastLine() end

---Retrieves the index of the last line in the GameTooltip.
---@return number lastLine The index of the last line. (min: `0`)
---@nodiscard
function GameTooltip:GetLastLine() end

---Retrieves the number of lines in the GameTooltip.
---@return number lineCount The number of lines. (default: `0`)
---@nodiscard
function GameTooltip:GetLineCount() end

---Retrieves the line spacing for the GameTooltip.
---@return number lineSpace The line spacing value. (default: `0`)
---@nodiscard
function GameTooltip:GetLineSpace() end

---Enables or disables automatic word wrapping in the GameTooltip (must be set
---before `GameTooltip:AddLine`).
---@param wrap boolean `true` to enable word wrap, `false` to disable. (default: `false`)
function GameTooltip:SetAutoWordwrap(wrap) end

---Sets the inset for the GameTooltip.
---@param left number The left inset. (default: `0`)
---@param top number The top inset. (default: `0`)
---@param right number The right inset. (default: `0`)
---@param bottom number The bottom inset. (default: `0`)
function GameTooltip:SetInset(left, top, right, bottom) end

---Sets the line spacing for the GameTooltip (must be set before
---`GameTooltip:AddLine`).
---@param space number The line spacing value. (default: `0`)
function GameTooltip:SetLineSpace(space) end

---@TODO: unsure what this does exactly.
---Sets the tooltip data for the GameTooltip.
---@param data string The data to set for the tooltip.
function GameTooltip:SetTooltipData(data) end
