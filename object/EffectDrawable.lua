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
---@class EffectDrawable: DrawableDDS
local EffectDrawable = {}

---TODO:
function EffectDrawable:ClearEffect() end

---TODO:
function EffectDrawable:ClearMoveEffect() end

---TODO:
function EffectDrawable:IsRunning() end

---TODO:
---@param phase any
---@param needClip any
function EffectDrawable:SetEffectClip(phase, needClip) end

---TODO:
---@param phase any
---@param finalR any
---@param finalG any
---@param finalB any
---@param finalA any
function EffectDrawable:SetEffectFinalColor(phase, finalR, finalG, finalB, finalA) end

---TODO:
---@param phase any
---@param initialR any
---@param initialG any
---@param initialB any
---@param intialA any
function EffectDrawable:SetEffectInitialColor(phase, initialR, initialG, initialB,
                                              intialA) end

---TODO:
---@param phase any
---@param interval any
function EffectDrawable:SetEffectInterval(phase, interval) end

---TODO:
---@param phase any
---@param priority any
---@param velocityTime any
---@param accelerationTime any
function EffectDrawable:SetEffectPriority(phase, priority, velocityTime,
                                          accelerationTime) end

---TODO:
---@param phase any
---@param initial any
---@param final any
function EffectDrawable:SetEffectRotate(phase, initial, final) end

---TODO:
---@param phase any
---@param initialX any
---@param finalX any
---@param initialY any
---@param finalY any
function EffectDrawable:SetEffectScale(phase, initialX, finalX, initialY, finalY) end

---TODO:
---@param phase any
---@param axis any
function EffectDrawable:SetEffectScaleAxis(phase, axis) end

---TODO:
---@param drawType any
function EffectDrawable:SetInternalDrawType(drawType) end

---TODO:
---@param initialInterval any
function EffectDrawable:SetInterval(initialInterval) end

---TODO:
---@param phase any
---@param initial any
---@param final any
function EffectDrawable:SetMoveEffectCircle(phase, initial, final) end

---TODO:
---@param phase any
---@param initial any
---@param final any
function EffectDrawable:SetMoveEffectEdge(phase, initial, final) end

---TODO:
---@param phase any
---@param interval any
function EffectDrawable:SetMoveEffectInterval(phase, interval) end

---TODO:
---@param phase any
---@param moveType any
---@param horizontalRadius any
---@param verticalRadius any
---@param velocityTime any
---@param accelerationTime any
function EffectDrawable:SetMoveEffectType(phase, moveType, horizontalRadius,
                                          verticalRadius, velocityTime,
                                          accelerationTime) end

---TODO:
---@param InitialInterval any
function EffectDrawable:SetMoveInterval(InitialInterval) end

---TODO:
---@param repeatCount any
function EffectDrawable:SetMoveRepeatCount(repeatCount) end

---TODO:
---@param needRotate any
function EffectDrawable:SetMoveRotate(needRotate) end

---TODO:
---@param repeatCount any
function EffectDrawable:SetRepeatCount(repeatCount) end

---TODO:
---@param start boolean
function EffectDrawable:SetStartEffect(start) end
