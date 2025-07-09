---@meta _

AP_BOTTOM = 8 -- object/GameTooltip
AP_BOTTOMLEFT = 2 -- object/GameTooltip
AP_BOTTOMRIGHT = 3 -- object/GameTooltip
AP_CENTER = 4 -- object/GameTooltip
AP_LEFT = 6 -- object/GameTooltip
AP_RIGHT = 7 -- object/GameTooltip
AP_TOP = 5 -- object/GameTooltip
AP_TOPLEFT = 0 -- object/GameTooltip
AP_TOPRIGHT = 1 -- object/GameTooltip
CT_ABILITY = 2 -- object/GameTooltip
CT_EXPEDITION_NAME = 3 -- object/GameTooltip
CT_NAME = 1 -- object/GameTooltip
DC_ALWAYS = 0 -- object/GameTooltip
DC_SHIFT_KEY_DOWN = 1 -- object/GameTooltip
UFT_CUPLABOR = "|p8;" -- object/GameTooltip
UFT_CURHP = "|p2;" -- object/GameTooltip
UFT_CURMP = "|p5;" -- object/GameTooltip
UFT_GEARSCORE = "|p12;" -- object/GameTooltip
UFT_MAXHP = "|p3;" -- object/GameTooltip
UFT_MAXLABOR = "|p9;" -- object/GameTooltip
UFT_MAXMP = "|p6;" -- object/GameTooltip
UFT_NAME = "|p1;" -- object/GameTooltip
UFT_PERHP = "|p4;" -- object/GameTooltip
UFT_PERIOD_LEADERSHIP = "|p13;" -- object/GameTooltip
UFT_PERMP = "|p7;" -- object/GameTooltip
UFT_PVPHONOR = "|p10;" -- object/GameTooltip
UFT_PVPKILL = "|p11;" -- object/GameTooltip

---object/GameTooltip
---@class GameTooltip: Widget
---@field style TextStyle
---@field AddAnotherSideLine fun(self: self, index: number, text: string, fontPath: FONT_PATH, fontSize: FONT_SIZE, textAlign: ALIGN, indentation: number)
---@field AddLine fun(self: self, text: string, fontPath: FONT_PATH, fontSize: FONT_SIZE, align: string, textAlign: ALIGN, indentation: number): number
---@field AttachLowerSpaceLine fun(self: self, index: number, height: number)
---@field AttachUpperSpaceLine fun(self: self, index: number, height: number)
---@field ClearLines fun(self: self)
---@field GetHeightToLastLine fun(self: self): number, number
---@field GetLastLine fun(self: self): number
---@field GetLineCount fun(self: self): number
---@field GetLineSpace fun(self: self): number
---@field SetAutoWordwrap fun(self: self, wrap: boolean)
---@field SetInset fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetLineSpace fun(self: self, space: TEXTBOX_LINE_SPACE|number)
---@field SetTooltipData fun(self: self)