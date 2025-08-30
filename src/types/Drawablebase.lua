---@meta _

---@TODO: These dont appear to exist on any drawable and they dont appear in the scriptsbin. Im also missing TextureDrawable and Drawable
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
---@usage
---```lua
---local visible = drawable:IsVisible()
---```
function Drawablebase:IsVisible() end

---Sets the color for the Drawablebase.
---@param r number The red color component (min: `0`, max: `1`).
---@param g number The green color component (min: `0`, max: `1`).
---@param b number The blue color component (min: `0`, max: `1`).
---@param a number The alpha (opacity) component (min: `0`, max: `1`).
---@usage
---```lua
---drawable:SetColor(1, 0, 0, 1)
---```
function Drawablebase:SetColor(r, g, b, a) end

---@TODO: Verify if this is broken.
---Sets the rotation angle of the Drawablebase.
---@param angle number The rotation angle.
function Drawablebase:SetRotation(angle) end

---@TODO: Unsure what is the default, id imagine its false.
---Enables or disables sRGB for the Drawablebase.
---@param srgb boolean `true` to enable sRGB, `false` to disable.
---@usage
---```lua
---drawable:SetSRGB(true)
---```
function Drawablebase:SetSRGB(srgb) end

---@TODO: Confirm if this is redundant with Drawablebase:Show.
---Shows or hides the Drawablebase.
---@param visible boolean `true` to show, `false` to hide. (default: `true`)
---@usage
---```lua
---drawable:SetVisible(false)
---```
function Drawablebase:SetVisible(visible) end

---@TODO: Verify behavior for different Drawables.
---Sets the visibility condition based on a string value range.
---@param minValue string The minimum value for visibility.
---@param maxValue string The maximum value for visibility.
---@param value string The value to check (`value > minValue and value < maxValue`).
---@usage
---```lua
---drawable:SetVisibleForString("1", "100", "50")
---```
function Drawablebase:SetVisibleForString(minValue, maxValue, value) end

---Shows or hides the Drawablebase.
---@param show boolean `true` to show, `false` to hide. (default: `true`)
---@usage
---```lua
---drawable:Show(false)
---```
function Drawablebase:Show(show) end
