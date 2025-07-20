---@meta _

AP_BOTTOM = 8          -- object/Slider
AP_BOTTOMLEFT = 2      -- object/Slider
AP_BOTTOMRIGHT = 3     -- object/Slider
AP_CENTER = 4          -- object/Slider
AP_LEFT = 6            -- object/Slider
AP_RIGHT = 7           -- object/Slider
AP_TOP = 5             -- object/Slider
AP_TOPLEFT = 0         -- object/Slider
AP_TOPRIGHT = 1        -- object/Slider
CT_ABILITY = 2         -- object/Slider
CT_EXPEDITION_NAME = 3 -- object/Slider
CT_NAME = 1            -- object/Slider
DC_ALWAYS = 0          -- object/Slider
DC_SHIFT_KEY_DOWN = 1  -- object/Slider

---object/Slider
---@class Slider: Widget
local Slider = {}

---TODO:
---@param step number
function Slider:Down(step) end

---TODO:
---@return number
---@return number
---@nodiscard
function Slider:GetMinMaxValues() end

---TODO:
---@return number
---@nodiscard
function Slider:GetOrientation() end

---TODO:
function Slider:GetThumbButtonWidget() end

---TODO:
function Slider:GetThumbDrawable() end

---TODO:
---@return number
---@nodiscard
function Slider:GetValue() end

---TODO:
---@return number
---@nodiscard
function Slider:GetValueStep() end

---TODO:
---@param bool boolean
function Slider:SetFixedThumb(bool) end

---TODO:
---@param inset number
function Slider:SetInset(inset) end

---TODO:
---@param min number
---@param max number
function Slider:SetMinMaxValues(min, max) end

---TODO:
---@param length number
function Slider:SetMinThumbLength(length) end

---TODO:
---@param scrollType number
function Slider:SetOrientation(scrollType) end

---TODO:
---@param pageStep number
function Slider:SetPageStep(pageStep) end

---TODO:
---@param buttonWidget table
function Slider:SetThumbButtonWidget(buttonWidget) end

---TODO:
---@param value number
---@param triggerEvent boolean
function Slider:SetValue(value, triggerEvent) end

---TODO:
---@param value number
function Slider:SetValueStep(value) end

---TODO:
---@param step number
function Slider:Up(step) end
