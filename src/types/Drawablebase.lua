---@meta _

---@FIXME: These dont appear to exist on any drawable and they dont appear in the scriptsbin. Im also missing TextureDrawable and Drawable
------@field GetEffectPhaseCount fun(self: self)
------@field GetEffectPhaseProperties fun(self: self, phase)
------@field GetMoveEffectPhaseCount fun(self: self)
------@field GetMoveEffectPhaseProperties fun(self: self, phase)
------@field SetEffectPhaseProperties fun(self: self, phase, properties)
------@field SetMoveEffectPhaseProperties fun(self: self, phase, properties)

---@class Drawablebase: Uibounds, Uiobject
local Drawablebase = {}

---Returns a boolean indicating if the Drawablebase is visible.
---@return boolean visible `true` if the Drawablebase is visible, `false` otherwise.
---@nodiscard
function Drawablebase:IsVisible() end

---Sets the color for the Drawablebase.
---@param r number The red color component (min: `0`, max: `1`).
---@param g number The green color component (min: `0`, max: `1`).
---@param b number The blue color component (min: `0`, max: `1`).
---@param a number The alpha (opacity) component (min: `0`, max: `1`).
function Drawablebase:SetColor(r, g, b, a) end

---Sets the rotation angle of the Drawablebase. Works on `ImageDrawable` and
---`IconDrawable`.
---@param angle number The rotation angle in degrees.
function Drawablebase:SetRotation(angle) end

---@TODO: Unsure what is the default, id imagine its false. r_UseSRGB = 1
---Enables or disables sRGB for the Drawablebase.
---@param srgb boolean `true` to enable sRGB, `false` to disable.
function Drawablebase:SetSRGB(srgb) end

---Shows or hides the Drawablebase.
---@param visible boolean `true` to show, `false` to hide. (default: `true`)
function Drawablebase:SetVisible(visible) end

---Sets the visibility condition based on a string value range.
---@param minValue string The minimum value for visibility.
---@param maxValue string The maximum value for visibility.
---@param value string The value to check (`value > minValue and value < maxValue`).
function Drawablebase:SetVisibleForString(minValue, maxValue, value) end

---Shows or hides the Drawablebase. Showing before the extents and anchors are set can cause issues.
---@param show boolean `true` to show, `false` to hide. (default: `true`)
function Drawablebase:Show(show) end
