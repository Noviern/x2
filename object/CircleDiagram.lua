---@meta _

AP_BOTTOM = 8 -- object/CircleDiagram
AP_BOTTOMLEFT = 2 -- object/CircleDiagram
AP_BOTTOMRIGHT = 3 -- object/CircleDiagram
AP_CENTER = 4 -- object/CircleDiagram
AP_LEFT = 6 -- object/CircleDiagram
AP_RIGHT = 7 -- object/CircleDiagram
AP_TOP = 5 -- object/CircleDiagram
AP_TOPLEFT = 0 -- object/CircleDiagram
AP_TOPRIGHT = 1 -- object/CircleDiagram
CT_ABILITY = 2 -- object/CircleDiagram
CT_EXPEDITION_NAME = 3 -- object/CircleDiagram
CT_NAME = 1 -- object/CircleDiagram
DC_ALWAYS = 0 -- object/CircleDiagram
DC_SHIFT_KEY_DOWN = 1 -- object/CircleDiagram

---object/CircleDiagram
---@class CircleDiagram: Widget
---@field AddPoint fun(self: self, offX: number, offY: number)
---@field AddPointsByAngle fun(self: self, pointNum: number)
---@field ClearPoints fun(self: self)
---@field GetCenterOffset fun(self: self)
---@field GetPointOffset fun(self: self, index: number)
---@field SetDiagramColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetLineThickness fun(self: self, thickness: number)
---@field SetMaxValue fun(self: self, maxValue: number)
---@field SetPointValue fun(self: self, index, value)