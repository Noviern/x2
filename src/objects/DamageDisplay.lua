---@meta _

LAT_AFTERIMAGE = 4      -- objects/DamageDisplay LINEAR_ANIMATION_TYPE
LAT_COUNT = 2           -- objects/DamageDisplay LINEAR_ANIMATION_TYPE
LAT_LINEAR_DISPLAY = 16 -- objects/DamageDisplay LINEAR_ANIMATION_TYPE
LAT_MOVE = 1            -- objects/DamageDisplay LINEAR_ANIMATION_TYPE
LAT_NONE = 0            -- objects/DamageDisplay LINEAR_ANIMATION_TYPE
LAT_SHAKE = 8           -- objects/DamageDisplay LINEAR_ANIMATION_TYPE
PCT_DEFAULT = 0         -- objects/DamageDisplay POSITION_CALCULATION_TYPE
PCT_SHIP_COLLISION = 1  -- objects/DamageDisplay POSITION_CALCULATION_TYPE

---objects/DamageDisplay
---@alias LINEAR_ANIMATION_TYPE
---| `LAT_AFTERIMAGE`
---| `LAT_COUNT`
---| `LAT_LINEAR_DISPLAY`
---| `LAT_MOVE`
---| `LAT_NONE`
---| `LAT_SHAKE`


---objects/DamageDisplay
---@alias POSITION_CALCULATION_TYPE
---| `PCT_DEFAULT`
---| `PCT_SHIP_COLLISION`

---objects/DamageDisplay
---@class DamageDisplay: Widget
---@field extraStyle TextStyle
---@field style TextStyle
local DamageDisplay = {}

---objects/DamageDisplay
---@class damagedisplay: DamageDisplay

---Enables or disables animation for the DamageDisplay.
---@param anim boolean `true` to enable animation, `false` to disable. (default: `false`)
function DamageDisplay:Animation(anim) end

---@TODO: Clarify what actual drawn values represent.
---Retrieves the actual drawn inset of the DamageDisplay.
---@return number left The left inset. (default: `0`)
---@return number top The top inset. (default: `0`)
---@return number right The right inset. (default: `0`)
---@return number bottom The bottom inset. (default: `0`)
---@nodiscard
function DamageDisplay:GetActualDrawn() end

---Retrieves the inset of the DamageDisplay.
---@return number left The left inset. (default: `0`)
---@return number top The top inset. (default: `0`)
---@return number right The right inset. (default: `0`)
---@return number bottom The bottom inset. (default: `0`)
---@nodiscard
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
function DamageDisplay:SetInitPos(x, y) end

---Sets the inset of the DamageDisplay.
---@param left number The left inset. (default: `0`)
---@param top number The top inset. (default: `0`)
---@param right number The right inset. (default: `0`)
---@param bottom number The bottom inset. (default: `0`)
function DamageDisplay:SetInset(left, top, right, bottom) end

---Sets the position calculation type for the DamageDisplay.
---@param positionCalculationType POSITION_CALCULATION_TYPE The position calculation type. (default: `PCT_DEFAULT`)
function DamageDisplay:SetPositionCalculationType(positionCalculationType) end

---Sets the source and target unit IDs for the DamageDisplay.
---@param sourceId string The source unit ID.
---@param targetId string The target unit ID.
function DamageDisplay:SetUnitId(sourceId, targetId) end
