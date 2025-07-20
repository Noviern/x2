---@meta _

AP_BOTTOM = 8                   -- object/GameTooltip
AP_BOTTOMLEFT = 2               -- object/GameTooltip
AP_BOTTOMRIGHT = 3              -- object/GameTooltip
AP_CENTER = 4                   -- object/GameTooltip
AP_LEFT = 6                     -- object/GameTooltip
AP_RIGHT = 7                    -- object/GameTooltip
AP_TOP = 5                      -- object/GameTooltip
AP_TOPLEFT = 0                  -- object/GameTooltip
AP_TOPRIGHT = 1                 -- object/GameTooltip
CT_ABILITY = 2                  -- object/GameTooltip
CT_EXPEDITION_NAME = 3          -- object/GameTooltip
CT_NAME = 1                     -- object/GameTooltip
DC_ALWAYS = 0                   -- object/GameTooltip
DC_SHIFT_KEY_DOWN = 1           -- object/GameTooltip
UFT_CUPLABOR = "|p8;"           -- object/GameTooltip
UFT_CURHP = "|p2;"              -- object/GameTooltip
UFT_CURMP = "|p5;"              -- object/GameTooltip
UFT_GEARSCORE = "|p12;"         -- object/GameTooltip
UFT_MAXHP = "|p3;"              -- object/GameTooltip
UFT_MAXLABOR = "|p9;"           -- object/GameTooltip
UFT_MAXMP = "|p6;"              -- object/GameTooltip
UFT_NAME = "|p1;"               -- object/GameTooltip
UFT_PERHP = "|p4;"              -- object/GameTooltip
UFT_PERIOD_LEADERSHIP = "|p13;" -- object/GameTooltip
UFT_PERMP = "|p7;"              -- object/GameTooltip
UFT_PVPHONOR = "|p10;"          -- object/GameTooltip
UFT_PVPKILL = "|p11;"           -- object/GameTooltip

---object/GameTooltip
---@class GameTooltip: Widget
---@field style TextStyle
local GameTooltip = {}

---Adds onto the line `index` in the GameTooltip.
---@param index number
---@param text string
---@param fontPath FONT_PATH
---@param fontSize FONT_SIZE
---@param textAlign ALIGN
---@param indentation number
function GameTooltip:AddAnotherSideLine(index, text, fontPath, fontSize,
                                        textAlign, indentation)
end

---Adds a new line to the GameTooltip.
---@param text string
---@param fontPath FONT_PATH
---@param fontSize FONT_SIZE
---@param align string
---@param textAlign ALIGN
---@param indentation number
---@return number index
---@nodiscard
function GameTooltip:AddLine(text, fontPath, fontSize, align, textAlign,
                             indentation)
end

---Attaches a lower spaace `height` to the line `index` for the GameTooltip.
---@param index number
---@param height number
function GameTooltip:AttachLowerSpaceLine(index, height) end

---Attaches a upper spaace `height` to the line `index` for the GameTooltip.
---@param index number
---@param height number
function GameTooltip:AttachUpperSpaceLine(index, height) end

---Clears all lines from the GameTooltip.
function GameTooltip:ClearLines() end

---TODO: heightIncludeSpace might be broken as it returns the same value as heightOnlyLine.
---Returns `heightOnlyLine` and `heightIncludeSpace` for the GameTooltip.
---@return number heightOnlyLine
---@return number heightIncludeSpace
---@nodiscard
function GameTooltip:GetHeightToLastLine() end

---Returns the `lastLine` index (starts at 0 instead of 1) for the GameTooltip.
---@return number lastLine
---@nodiscard
function GameTooltip:GetLastLine() end

---Returns `lineCount` for the GameTooltip.
---@return number lineCount
---@nodiscard
function GameTooltip:GetLineCount() end

---Returns `lineSpace` for the GameTooltip.
---@return number lineSpace
---@nodiscard
function GameTooltip:GetLineSpace() end

---Enables/Disables automatic word wrap in GameTooltip. Must be set before
---`GameTooltip:AddLine`.
---@param wrap boolean
function GameTooltip:SetAutoWordwrap(wrap) end

---Sets the inset for the GameTooltip.
---@param left number
---@param top number
---@param right number
---@param bottom number
function GameTooltip:SetInset(left, top, right, bottom) end

---Sets the line `space` for the GameTooltip. Must be set before
---`GameTooltip:AddLine`.
---@param space TEXTBOX_LINE_SPACE|number
function GameTooltip:SetLineSpace(space) end

---TODO:
---@param data any TODO: I added this and I think its "player" "target" etc but unsure how this data is used.
function GameTooltip:SetTooltipData(data) end
