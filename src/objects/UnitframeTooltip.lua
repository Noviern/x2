---@meta _

UFT_CUPLABOR = "|p8;"           -- objects/UnitframeTooltip UNIT_FRAME_TOOLTIP
UFT_CURHP = "|p2;"              -- objects/UnitframeTooltip UNIT_FRAME_TOOLTIP
UFT_CURMP = "|p5;"              -- objects/UnitframeTooltip UNIT_FRAME_TOOLTIP
UFT_GEARSCORE = "|p12;"         -- objects/UnitframeTooltip UNIT_FRAME_TOOLTIP
UFT_MAXHP = "|p3;"              -- objects/UnitframeTooltip UNIT_FRAME_TOOLTIP
UFT_MAXLABOR = "|p9;"           -- objects/UnitframeTooltip UNIT_FRAME_TOOLTIP
UFT_MAXMP = "|p6;"              -- objects/UnitframeTooltip UNIT_FRAME_TOOLTIP
UFT_NAME = "|p1;"               -- objects/UnitframeTooltip UNIT_FRAME_TOOLTIP
UFT_PERHP = "|p4;"              -- objects/UnitframeTooltip UNIT_FRAME_TOOLTIP
UFT_PERIOD_LEADERSHIP = "|p13;" -- objects/UnitframeTooltip UNIT_FRAME_TOOLTIP
UFT_PERMP = "|p7;"              -- objects/UnitframeTooltip UNIT_FRAME_TOOLTIP
UFT_PVPHONOR = "|p10;"          -- objects/UnitframeTooltip UNIT_FRAME_TOOLTIP
UFT_PVPKILL = "|p11;"           -- objects/UnitframeTooltip UNIT_FRAME_TOOLTIP

---[UnitframeTooltip](lua://UnitframeTooltip)
---
---A `UnitframeTooltip` widget is a specialized `GameTooltip` used to display
---unit-specific information in the UI, such as health, mana, labor, gear
---score, PvP statistics, and other dynamic stats. It supports placeholders for
---various unit attributes that can be inserted into tooltip text.
---
---@class UnitframeTooltip: GameTooltip
local UnitframeTooltip = {}
