---@meta _

AP_BOTTOM = 8           -- object/DamageDisplay
AP_BOTTOMLEFT = 2       -- object/DamageDisplay
AP_BOTTOMRIGHT = 3      -- object/DamageDisplay
AP_CENTER = 4           -- object/DamageDisplay
AP_LEFT = 6             -- object/DamageDisplay
AP_RIGHT = 7            -- object/DamageDisplay
AP_TOP = 5              -- object/DamageDisplay
AP_TOPLEFT = 0          -- object/DamageDisplay
AP_TOPRIGHT = 1         -- object/DamageDisplay
CT_ABILITY = 2          -- object/DamageDisplay
CT_EXPEDITION_NAME = 3  -- object/DamageDisplay
CT_NAME = 1             -- object/DamageDisplay
DC_ALWAYS = 0           -- object/DamageDisplay
DC_SHIFT_KEY_DOWN = 1   -- object/DamageDisplay
LAT_AFTERIMAGE = 4      -- object/DamageDisplay
LAT_COUNT = 2           -- object/DamageDisplay
LAT_LINEAR_DISPLAY = 16 -- object/DamageDisplay
LAT_MOVE = 1            -- object/DamageDisplay
LAT_NONE = 0            -- object/DamageDisplay
LAT_SHAKE = 8           -- object/DamageDisplay
PCT_DEFAULT = 0         -- object/DamageDisplay
PCT_SHIP_COLLISION = 1  -- object/DamageDisplay

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
local DamageDisplay = {}

---Enables/Disables animation for the DamageDisplay.
---@param anim boolean
function DamageDisplay:Animation(anim) end

---TODO:
---@return number left
---@return number top
---@return number right
---@return number bottom
---@nodiscard
function DamageDisplay:GetActualDrawn() end

---returns the inset of the DamageDisplay.
---@return number left
---@return number top
---@return number right
---@return number bottom
---@nodiscard
function DamageDisplay:GetInset() end

---Sets animation `frameInfo` for the DamageDisplay.
---@param frameInfo FrameInfo[]
function DamageDisplay:SetAnimFrameInfo(frameInfo) end

---Sets the initial position `x` and `y` of the DamageDisplay.
---@param x number
---@param y number
function DamageDisplay:SetInitPos(x, y) end

---Sets the inset of the DamageDisplay.
---@param left number
---@param top number
---@param right number
---@param bottom number
function DamageDisplay:SetInset(left, top, right, bottom) end

---Sets the `positionCalculationType` of the DamageDisplay.
---@param positionCalculationType PCT
function DamageDisplay:SetPositionCalculationType(positionCalculationType) end

---Sets the `sourceId` and `targetId` of the DamageDisplay.
---@param sourceId string
---@param targetId string
function DamageDisplay:SetUnitId(sourceId, targetId) end
