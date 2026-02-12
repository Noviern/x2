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

---[DamageDisplay](lua://DamageDisplay)
---
---A `DamageDisplay` widget displays animated damage or combat-related text.
---Supports configurable animation sequences, positional calculation modes, and
---dynamic placement relative to source and target units. Provides control over
---insets, initial positioning, and animation behavior, enabling effects such
---as movement, shaking, scaling, fading, and afterimages commonly used in
---combat feedback and hit indicators.
---
---**Dependencies**:
--- - [TextStyle](lua://TextStyle)  used for the `style` and `extraStyle` fields.
---
---@class DamageDisplay: Widget
---@field extraStyle TextStyle @TODO: what is extraStyle used for?
---@field style TextStyle The text style applied to the widget's text.
local DamageDisplay = {}

---Enables or disables animation for the DamageDisplay.
---@param anim boolean `true` to enable animation, `false` to disable. (default: `false`)
function DamageDisplay:Animation(anim) end

---Retrieves the actual drawn coordinates of the DamageDisplay text when animating.
---@return number x1 The left coordinate. (default: `0`)
---@return number y1 The top coordinate. (default: `0`)
---@return number x2 The right coordinate. (default: `0`)
---@return number y2 The bottom coordinate. (default: `0`)
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
