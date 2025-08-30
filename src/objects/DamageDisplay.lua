---@meta _

AP_BOTTOM = 8           -- objects/DamageDisplay
AP_BOTTOMLEFT = 2       -- objects/DamageDisplay
AP_BOTTOMRIGHT = 3      -- objects/DamageDisplay
AP_CENTER = 4           -- objects/DamageDisplay
AP_LEFT = 6             -- objects/DamageDisplay
AP_RIGHT = 7            -- objects/DamageDisplay
AP_TOP = 5              -- objects/DamageDisplay
AP_TOPLEFT = 0          -- objects/DamageDisplay
AP_TOPRIGHT = 1         -- objects/DamageDisplay
CT_ABILITY = 2          -- objects/DamageDisplay
CT_EXPEDITION_NAME = 3  -- objects/DamageDisplay
CT_NAME = 1             -- objects/DamageDisplay
DC_ALWAYS = 0           -- objects/DamageDisplay
DC_SHIFT_KEY_DOWN = 1   -- objects/DamageDisplay
LAT_AFTERIMAGE = 4      -- objects/DamageDisplay
LAT_COUNT = 2           -- objects/DamageDisplay
LAT_LINEAR_DISPLAY = 16 -- objects/DamageDisplay
LAT_MOVE = 1            -- objects/DamageDisplay
LAT_NONE = 0            -- objects/DamageDisplay
LAT_SHAKE = 8           -- objects/DamageDisplay
PCT_DEFAULT = 0         -- objects/DamageDisplay
PCT_SHIP_COLLISION = 1  -- objects/DamageDisplay

---@alias LAT
---| `LAT_AFTERIMAGE`
---| `LAT_COUNT`
---| `LAT_LINEAR_DISPLAY`
---| `LAT_MOVE`
---| `LAT_NONE`
---| `LAT_SHAKE`

---@TODO: each animType has it own fields
---objects/DamageDisplay
---
---May not be accurate.
---@class FrameInfo
---@field alpha? number
---@field animTime? number
---@field animType? LAT This can add multiple LAT
---@field h? number
---@field moveX? number
---@field moveY? number
---@field scale? number
---@field showTime? number
---@field time? number
---@field w? number
---@field x? number
---@field y? number

---objects/DamageDisplay
---@alias PCT
---| `PCT_DEFAULT`
---| `PCT_SHIP_COLLISION`

---objects/DamageDisplay
---@class DamageDisplay: Widget
---@field extraStyle TextStyle
---@field style TextStyle
---@class damagedisplay: DamageDisplay
local DamageDisplay = {}

---Enables or disables animation for the DamageDisplay.
---@param anim boolean `true` to enable animation, `false` to disable. (default: `false`)
---@usage
---```lua
---widget:Animation(true)
---```
function DamageDisplay:Animation(anim) end

---@TODO: Clarify what actual drawn values represent.
---Retrieves the actual drawn inset of the DamageDisplay.
---@return number left The left inset.
---@return number top The top inset.
---@return number right The right inset.
---@return number bottom The bottom inset.
---@nodiscard
---@usage
---```lua
---local left, top, right, bottom = widget:GetActualDrawn()
---```
function DamageDisplay:GetActualDrawn() end

---Retrieves the inset of the DamageDisplay.
---@return number left The left inset.
---@return number top The top inset.
---@return number right The right inset.
---@return number bottom The bottom inset.
---@nodiscard
---@usage
---```lua
---local left, top, right, bottom = widget:GetInset()
---```
function DamageDisplay:GetInset() end

---Sets the animation frame information for the DamageDisplay.
---@param frameInfo FrameInfo[] An array of frame information for the animation.
---@usage
---```lua
---widget:SetAnimFrameInfo({
---  {
---    scale = 1.5,
---    timeToNextFrame = 70,
---    alpha = 0.2,
---  },
---  {
---    scale = .5,
---    timeToNextFrame = 30,
---  },
---  {
---    scale = .62,
---    timeToNextFrame = 30,
---  },
---  {
---    scale = .55,
---    showTime = 400,
---    timeToNextFrame = 120,
---  },
---  {
---    alpha = 1,
---    scale = .55,
---  },
---})
---```
---@see FrameInfo
function DamageDisplay:SetAnimFrameInfo(frameInfo) end

---Sets the initial position of the DamageDisplay.
---@param x number The x-coordinate of the initial position. (default: `0`)
---@param y number The y-coordinate of the initial position. (default: `0`)
---@usage
---```lua
---widget:SetInitPos(0, 0)
---```
function DamageDisplay:SetInitPos(x, y) end

---Sets the inset of the DamageDisplay.
---@param left number The left inset. (default: `0`)
---@param top number The top inset. (default: `0`)
---@param right number The right inset. (default: `0`)
---@param bottom number The bottom inset. (default: `0`)
---@usage
---```lua
---widget:SetInset(10, 10, 10, 10)
---```
function DamageDisplay:SetInset(left, top, right, bottom) end

---Sets the position calculation type for the DamageDisplay.
---@param positionCalculationType PCT The position calculation type. (default: `PCT_DEFAULT`)
---@usage
---```lua
---widget:SetPositionCalculationType(PCT_SHIP_COLLISION)
---```
---@see PCT
function DamageDisplay:SetPositionCalculationType(positionCalculationType) end

---Sets the source and target unit IDs for the DamageDisplay.
---@param sourceId string The source unit ID.
---@param targetId string The target unit ID.
---@usage
---```lua
---widget:SetUnitId(X2Unit:GetUnitId("player"), X2Unit:GetUnitId("target"))
---```
function DamageDisplay:SetUnitId(sourceId, targetId) end
