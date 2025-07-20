---@meta _

---TODO: These dont appear to exist on any drawable and they dont appear in the scriptsbin. Im also missing TextureDrawable and Drawable
------@field GetEffectPhaseCount fun(self: self)
------@field GetEffectPhaseProperties fun(self: self, phase)
------@field GetMoveEffectPhaseCount fun(self: self)
------@field GetMoveEffectPhaseProperties fun(self: self, phase)
------@field SetEffectPhaseProperties fun(self: self, phase, properties)
------@field SetMoveEffectPhaseProperties fun(self: self, phase, properties)

---@class Drawablebase: Uibounds, Uiobject
local Drawablebase = {}

---Returns a boolean `visible` indicating if the Drawablebase is visible.
---@return boolean visible
function Drawablebase:IsVisible() end

---Sets the color for the Drawablebase.
---@param r number
---@param g number
---@param b number
---@param a number
function Drawablebase:SetColor(r, g, b, a) end

---TODO: Broken?
---Sets the rotation `angle` of the Drawablebase.
---@param angle number
function Drawablebase:SetRotation(angle) end

---Enables/Disables `srgb` for the Drawablebase.
---@param srgb boolean
function Drawablebase:SetSRGB(srgb) end

---TODO: Isn't this just the same as `Drawablebase:Show`?
---Show/Hides the Drawablebase.
---@param visible boolean
function Drawablebase:SetVisible(visible) end

---TODO: This may be different for different Drawables.
---Sets the visibility condition `value > minValue and value < maxValue` for the
---Drawablebase.
---@param minValue string
---@param maxValue string
---@param value string
function Drawablebase:SetVisibleForString(minValue, maxValue, value) end

---Show/Hides the Drawablebase.
---@param show boolean
function Drawablebase:Show(show) end
