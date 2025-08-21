---@meta _

AP_BOTTOM = 8      -- object/EffectDrawable
AP_BOTTOMLEFT = 2  -- object/EffectDrawable
AP_BOTTOMRIGHT = 3 -- object/EffectDrawable
AP_CENTER = 4      -- object/EffectDrawable
AP_LEFT = 6        -- object/EffectDrawable
AP_RIGHT = 7       -- object/EffectDrawable
AP_TOP = 5         -- object/EffectDrawable
AP_TOPLEFT = 0     -- object/EffectDrawable
AP_TOPRIGHT = 1    -- object/EffectDrawable

---object/EffectDrawable
---@enum EFFECT_PRIORITY
local EFFECT_PRIORITY = {
  ALPHA  = "alpha",
  SCALEX = "scalex",
  ROTATE = "rotate",
  COLORR = "colorr",
}

---object/EffectDrawable
---@enum MOVE_TYPE
local MOVE_TYPE = {
  LEFT   = "left",
  TOP    = "top",
  RIGHT  = "right",
  BOTTOM = "bottom",
  CIRCLE = "circle",
}

---object/EffectDrawable
---@class EffectDrawable: DrawableDDS
local EffectDrawable = {}

---Clears all effects from the EffectDrawable.
---@usage
---```
---drawable:ClearEffect()
---```
function EffectDrawable:ClearEffect() end

---Clears all move effects from the EffectDrawable.
---@usage
---```
---drawable:ClearMoveEffect()
---```
function EffectDrawable:ClearMoveEffect() end

---Checks if the EffectDrawable is currently running.
---@return boolean running `true` if the effect is running, `false` otherwise.
---@nodiscard
---@usage
---```
---local running = drawable:IsRunning()
---```
function EffectDrawable:IsRunning() end

---Sets the clipping behavior for the specified effect phase.
---@param phase number The effect phase. (min: `1`)
---@param needClip boolean `true` to enable clipping, `false` to disable. (default: `false`)
---@usage
---```
---drawable:SetEffectClip(1, true)
---```
function EffectDrawable:SetEffectClip(phase, needClip) end

---Sets the final color for the specified effect phase.
---@param phase number The effect phase. (min: `1`)
---@param finalR number The red color component. (min: `0`, max: `1`)
---@param finalG number The green color component. (min: `0`, max: `1`)
---@param finalB number The blue color component. (min: `0`, max: `1`)
---@param finalA number The alpha (opacity) component. (min: `0`, max: `1`)
---@usage
---```
---drawable:SetEffectFinalColor(1, 0, 0, 1, 1)
---```
function EffectDrawable:SetEffectFinalColor(phase, finalR, finalG, finalB, finalA) end

---Sets the initial color for the specified effect phase.
---@param phase number The effect phase. (min: `1`)
---@param initialR number The red color component. (min: `0`, max: `1`)
---@param initialG number The green color component. (min: `0`, max: `1`)
---@param initialB number The blue color component. (min: `0`, max: `1`)
---@param initialA number The alpha (opacity) component. (min: `0`, max: `1`)
---@usage
---```
---drawable:SetEffectInitialColor(1, 1, 0, 0, 1)
---```
function EffectDrawable:SetEffectInitialColor(phase, initialR, initialG, initialB,
                                              initialA)
end

---Sets the time interval after the specified effect phase.
---@param phase number The effect phase. (min: `1`)
---@param interval number The interval in seconds.
---@usage
---```
---drawable:SetEffectInterval(1, 1)
---```
function EffectDrawable:SetEffectInterval(phase, interval) end

---Sets the priority and timing for the specified effect phase.
---@param phase number The effect phase. (min: `1`)
---@param priority EFFECT_PRIORITY The priority of the effect.
---@param velocityTime number The velocity duration in seconds.
---@param accelerationTime number The acceleration duration in seconds.
---@usage
---```
---drawable:SetEffectPriority(1, "alpha", 1, 1)
---```
---@see EFFECT_PRIORITY
function EffectDrawable:SetEffectPriority(phase, priority, velocityTime,
                                          accelerationTime)
end

---Sets the rotation effect for the specified phase.
---@param phase number The effect phase. (min: `1`)
---@param initial number The initial rotation in degrees. (default: `0`)
---@param final number The final rotation in degrees. (default: `0`)
---@usage
---```
---drawable:SetEffectRotate(1, 0, 360)
---```
function EffectDrawable:SetEffectRotate(phase, initial, final) end

---Sets the scale effect for the specified phase.
---@param phase number The effect phase. (min: `1`)
---@param initialX number The initial X scale (default: `1`).
---@param finalX number The final X scale (default: `1`).
---@param initialY number The initial Y scale (default: `1`).
---@param finalY number The final Y scale (default: `1`).
---@usage
---```
---drawable:SetEffectScale(1, 1, 1, 1, 1)
---```
function EffectDrawable:SetEffectScale(phase, initialX, finalX, initialY, finalY) end

---@TODO: Clarify axis parameter and its effect.
---Sets the axis for the scale effect in the specified phase.
---@param phase number The effect phase. (min: `1`)
---@param axis string The axis for scaling.
function EffectDrawable:SetEffectScaleAxis(phase, axis) end

---@TODO: Verify drawType parameter and its effect.
---Sets the internal draw type for the EffectDrawable.
---@param drawType string The draw type to set.
function EffectDrawable:SetInternalDrawType(drawType) end

---Sets the initial delay before effect phases start.
---@param initialInterval number The initial delay in seconds.
---@usage
---```
---drawable:SetInterval(1)
---```
function EffectDrawable:SetInterval(initialInterval) end

---Sets a circular move effect for the specified phase.
---@param phase number The effect phase. (min: `1`)
---@param initial number The initial angle in degrees.
---@param final number The final angle in degrees.
---@usage
---```
---drawable:SetMoveEffectCircle(1, 0, 360)
---```
function EffectDrawable:SetMoveEffectCircle(phase, initial, final) end

---Sets an edge-based move effect for the specified phase.
---@param phase number The effect phase. (min: `1`)
---@param initial number The initial scale. (min: `0`, max: `1`)
---@param final number The final scale. (min: `0`, max: `1`)
---@usage
---```
---drawable:SetMoveEffectEdge(1, 0, 1)
---```
function EffectDrawable:SetMoveEffectEdge(phase, initial, final) end

---Sets the interval between move effects for the specified phase.
---@param phase number The effect phase. (min: `1`)
---@param interval number The interval in seconds.
---@usage
---```
---drawable:SetMoveEffectInterval(1, 3)
---```
function EffectDrawable:SetMoveEffectInterval(phase, interval) end

---Sets the move effect type and parameters for the specified phase.
---@param phase number The effect phase. (min: `1`)
---@param moveType MOVE_TYPE The type of move effect.
---@param horizontalRadius number The horizontal radius of the effect.
---@param verticalRadius number The vertical radius of the effect.
---@param velocityTime number The velocity duration in seconds.
---@param accelerationTime number The acceleration duration in seconds.
---@usage
---```
---drawable:SetMoveEffectType(1, "right", 0, 0, 0.4, 0.4)
---```
---@see MOVE_TYPE
function EffectDrawable:SetMoveEffectType(phase, moveType, horizontalRadius,
                                          verticalRadius, velocityTime,
                                          accelerationTime)
end

---Sets the initial delay for move effects.
---@param InitialInterval number The initial delay in seconds.
---@usage
---```
---drawable:SetMoveInterval(5)
---```
function EffectDrawable:SetMoveInterval(InitialInterval) end

---Sets the repeat count for move effects.
---@param repeatCount number The number of repeats. (`0` for infinite, default: `0`)
---@usage
---```
---drawable:SetMoveRepeatCount(1)
---```
function EffectDrawable:SetMoveRepeatCount(repeatCount) end

---Enables or disables rotation for move effects.
---@param needRotate boolean `true` to enable rotation, `false` to disable. (default: `true`)
---@usage
---```
---drawable:SetMoveRotate(false)
---```
function EffectDrawable:SetMoveRotate(needRotate) end

---Sets the repeat count for effects.
---@param repeatCount number The number of repeats. (`0` for infinite, default: `0`)
---@usage
---```
---drawable:SetRepeatCount(1)
---```
function EffectDrawable:SetRepeatCount(repeatCount) end

---Starts or stops the effect.
---@param start boolean `true` to start the effect, `false` to stop. (default: `false`)
---@usage
---```
---drawable:SetStartEffect(true)
---```
function EffectDrawable:SetStartEffect(start) end
