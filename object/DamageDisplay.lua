---@meta _

AP_BOTTOM = 8 -- object/DamageDisplay
AP_BOTTOMLEFT = 2 -- object/DamageDisplay
AP_BOTTOMRIGHT = 3 -- object/DamageDisplay
AP_CENTER = 4 -- object/DamageDisplay
AP_LEFT = 6 -- object/DamageDisplay
AP_RIGHT = 7 -- object/DamageDisplay
AP_TOP = 5 -- object/DamageDisplay
AP_TOPLEFT = 0 -- object/DamageDisplay
AP_TOPRIGHT = 1 -- object/DamageDisplay
CT_ABILITY = 2 -- object/DamageDisplay
CT_EXPEDITION_NAME = 3 -- object/DamageDisplay
CT_NAME = 1 -- object/DamageDisplay
DC_ALWAYS = 0 -- object/DamageDisplay
DC_SHIFT_KEY_DOWN = 1 -- object/DamageDisplay
LAT_AFTERIMAGE = 4 -- object/DamageDisplay
LAT_COUNT = 2 -- object/DamageDisplay
LAT_LINEAR_DISPLAY = 16 -- object/DamageDisplay
LAT_MOVE = 1 -- object/DamageDisplay
LAT_NONE = 0 -- object/DamageDisplay
LAT_SHAKE = 8 -- object/DamageDisplay
PCT_DEFAULT = 0 -- object/DamageDisplay
PCT_SHIP_COLLISION = 1 -- object/DamageDisplay

---object/DamageDisplay
---
---May not be accurate.
---@class FrameInfo
---@field x? number
---@field y? number
---@field w? number
---@field h? number
---@field time? number
---@field scale? number
---@field moveY? number
---@field moveX? number
---@field animTime? number
---@field alpha? number
---@field animType? number

---object/DamageDisplay
---@alias PCT
---| `PCT_DEFAULT`
---| `PCT_SHIP_COLLISION`

---object/DamageDisplay
---@class DamageDisplay: Widget
---@field extraStyle TextStyle
---@field style TextStyle
---@field Animation fun(self: self, anim: boolean)
---@field GetActualDrawn fun(self: self): left: number, top: number, right: number, bottom: number
---@field GetInset fun(self: self): left: number, top: number, right: number, bottom: number
---@field SetAnimFrameInfo fun(self: self, frameInfo: FrameInfo[])
---@field SetInitPos fun(self: self, x: number, y: number)
---@field SetInset fun(self: self, left: number, top: number, right: number, bottom: number)
---@field SetPositionCalculationType fun(self: self, positionCalculationType: PCT)
---@field SetUnitId fun(self: self, sourceId: string, targetId: string)