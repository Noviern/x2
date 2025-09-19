---@meta _

AP_BOTTOM = 8                   -- objects/GameTooltip
AP_BOTTOMLEFT = 2               -- objects/GameTooltip
AP_BOTTOMRIGHT = 3              -- objects/GameTooltip
AP_CENTER = 4                   -- objects/GameTooltip
AP_LEFT = 6                     -- objects/GameTooltip
AP_RIGHT = 7                    -- objects/GameTooltip
AP_TOP = 5                      -- objects/GameTooltip
AP_TOPLEFT = 0                  -- objects/GameTooltip
AP_TOPRIGHT = 1                 -- objects/GameTooltip
CT_ABILITY = 2                  -- objects/GameTooltip
CT_EXPEDITION_NAME = 3          -- objects/GameTooltip
CT_NAME = 1                     -- objects/GameTooltip
DC_ALWAYS = 0                   -- objects/GameTooltip DRAG_CONDITION
DC_SHIFT_KEY_DOWN = 1           -- objects/GameTooltip DRAG_CONDITION
UFT_CUPLABOR = "|p8;"           -- objects/GameTooltip UFT
UFT_CURHP = "|p2;"              -- objects/GameTooltip UFT
UFT_CURMP = "|p5;"              -- objects/GameTooltip UFT
UFT_GEARSCORE = "|p12;"         -- objects/GameTooltip UFT
UFT_MAXHP = "|p3;"              -- objects/GameTooltip UFT
UFT_MAXLABOR = "|p9;"           -- objects/GameTooltip UFT
UFT_MAXMP = "|p6;"              -- objects/GameTooltip UFT
UFT_NAME = "|p1;"               -- objects/GameTooltip UFT
UFT_PERHP = "|p4;"              -- objects/GameTooltip UFT
UFT_PERIOD_LEADERSHIP = "|p13;" -- objects/GameTooltip UFT
UFT_PERMP = "|p7;"              -- objects/GameTooltip UFT
UFT_PVPHONOR = "|p10;"          -- objects/GameTooltip UFT
UFT_PVPKILL = "|p11;"           -- objects/GameTooltip UFT

---objects/GameTooltip
---@TODO: ? ? ?
---@alias UFT
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

---objects/GameTooltip
---@class GameTooltip: Widget
---@field style TextStyle
local GameTooltip = {}
---@class gametooltip: GameTooltip

---Adds text to an existing line in the GameTooltip on the opposite side.
---@param index number The line index to add the text to. (Starts at `0`)
---@param text string The text to add.
---@param fontPath FONT_PATH The font path for the text.
---@param fontSize FONT_SIZE The font size for the text.
---@param textAlign TEXT_ALIGN The text alignment.
---@param indentation number The indentation for the text.
---@usage
---```lua
---widget:AddAnotherSideLine(index, " - the first ArcheAge Private Server", FONT_PATH.DEFAULT, FONT_SIZE.DEFAULT, ALIGN_RIGHT, 0)
---```
---@see FONT_PATH
---@see FONT_SIZE
---@see TEXT_ALIGN
function GameTooltip:AddAnotherSideLine(index, text, fontPath, fontSize, textAlign, indentation) end

---Adds a new line to the GameTooltip and returns its index.
---@param text string The text to add.
---@param fontPath FONT_PATH The font path for the text.
---@param fontSize FONT_SIZE The font size for the text.
---@param align LINE_ALIGN The alignment type.
---@param textAlign TEXT_ALIGN The text alignment for the line.
---@param indentation number The indentation for the text.
---@return number index The index of the added line. (Starts at `0`)
---@usage
---```lua
---local index = widget:AddLine("Archerage.to", FONT_PATH.DEFAULT, FONT_SIZE.DEFAULT, "left", ALIGN_LEFT, 0)
---```
---@see FONT_PATH
---@see FONT_SIZE
---@see LINE_ALIGN
---@see TEXT_ALIGN
function GameTooltip:AddLine(text, fontPath, fontSize, align, textAlign, indentation) end

---Attaches a lower space to the specified line in the GameTooltip.
---@param index number The line index to attach the space to.
---@param height number The height of the lower space.
---@usage
---```lua
---widget:AttachLowerSpaceLine(0, 100)
---```
function GameTooltip:AttachLowerSpaceLine(index, height) end

---Attaches an upper space to the specified line in the GameTooltip.
---@param index number The line index to attach the space to.
---@param height number The height of the upper space.
---@usage
---```lua
---widget:AttachUpperSpaceLine(0, 100)
---```
function GameTooltip:AttachUpperSpaceLine(index, height) end

---Clears all lines from the GameTooltip.
---@usage
---```lua
---widget:ClearLines()
---```
function GameTooltip:ClearLines() end

---@TODO: Verify if heightIncludeSpace is broken (returns same as heightOnlyLine).
---Retrieves the height of the last line in the GameTooltip, with and without
---spacing.
---@return number heightOnlyLine The height of the last line without spacing.
---@return number heightIncludeSpace The height of the last line including spacing.
---@nodiscard
---@usage
---```lua
---local heightOnlyLine, heightIncludeSpace = widget:GetHeightToLastLine()
---```
function GameTooltip:GetHeightToLastLine() end

---Retrieves the index of the last line in the GameTooltip.
---@return number lastLine The index of the last line. (min: `0`)
---@nodiscard
---@usage
---```lua
---widget:GetLastLine()
---```
function GameTooltip:GetLastLine() end

---Retrieves the number of lines in the GameTooltip.
---@return number lineCount The number of lines.
---@nodiscard
---@usage
---```lua
---local lineCount = widget:GetLineCount()
---```
function GameTooltip:GetLineCount() end

---Retrieves the line spacing for the GameTooltip.
---@return number lineSpace The line spacing value.
---@nodiscard
---@usage
---```lua
---local lineSpace = widget:GetLineSpace()
---```
function GameTooltip:GetLineSpace() end

---Enables or disables automatic word wrapping in the GameTooltip (must be set
---before `GameTooltip:AddLine`).
---@param wrap boolean `true` to enable word wrap, `false` to disable. (default: `false`)
---@usage
---```lua
---widget:SetAutoWordwrap(true)
---```
function GameTooltip:SetAutoWordwrap(wrap) end

---Sets the inset for the GameTooltip.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```lua
---widget:SetInset(10, 10, 10, 10)
---```
function GameTooltip:SetInset(left, top, right, bottom) end

---Sets the line spacing for the GameTooltip (must be set before
---`GameTooltip:AddLine`).
---@param space TEXTBOX_LINE_SPACE|number The line spacing value.
---@usage
---```lua
---widget:GetLineSpace()
---```
---@see TEXTBOX_LINE_SPACE
function GameTooltip:SetLineSpace(space) end

---@TODO: Clarify data usage. (possibly "player", "target", etc.)
---Sets the tooltip data for the GameTooltip.
---@param data any The data to set for the tooltip.
function GameTooltip:SetTooltipData(data) end
