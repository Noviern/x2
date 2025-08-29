---@meta _

AP_BOTTOM = 8          -- objects/Slider
AP_BOTTOMLEFT = 2      -- objects/Slider
AP_BOTTOMRIGHT = 3     -- objects/Slider
AP_CENTER = 4          -- objects/Slider
AP_LEFT = 6            -- objects/Slider
AP_RIGHT = 7           -- objects/Slider
AP_TOP = 5             -- objects/Slider
AP_TOPLEFT = 0         -- objects/Slider
AP_TOPRIGHT = 1        -- objects/Slider
CT_ABILITY = 2         -- objects/Slider
CT_EXPEDITION_NAME = 3 -- objects/Slider
CT_NAME = 1            -- objects/Slider
DC_ALWAYS = 0          -- objects/Slider
DC_SHIFT_KEY_DOWN = 1  -- objects/Slider

---objects/Slider
---@enum SLIDER_SCROLL_TYPE
local SLIDER_SCROLL_TYPE = {
  VERTICAL   = 0,
  HORIZONTAL = 1,
}

---objects/Slider
---@class Slider: Widget
---@class slider: Slider
local Slider = {}

---Moves the slider down for vertical orientation or right for horizontal
---orientation.
---@param step number The amount to move the slider.
---@usage
---```
---widget:Down(15)
---```
function Slider:Down(step) end

---Retrieves the minimum and maximum values of the Slider.
---@return number minValue The minimum value (default: `0`).
---@return number maxValue The maximum value (default: `10`).
---@nodiscard
---@usage
---```
---local minValue, maxValue = widget:GetMinMaxValues()
---```
function Slider:GetMinMaxValues() end

---Retrieves the orientation of the Slider.
---@return SLIDER_SCROLL_TYPE orientation The orientation of the Slider (default: `0`).
---@nodiscard
---@usage
---```
---local orientation = widget:GetOrientation()
---```
---@see SLIDER_SCROLL_TYPE
function Slider:GetOrientation() end

---@TODO: Can this be anything or just Button?
---Retrieves the thumb button widget of the Slider.
---@return Button|nil thumbButtonWidget The thumb button widget, or `nil` if not set.
---@nodiscard
---@usage
---```
---local thumbButtonWidget = widget:GetThumbButtonWidget()
---```
---@see Button
function Slider:GetThumbButtonWidget() end

---@TODO: This and GetThumbButtonWidget appear to return the same value so unsure what this exists for.
---Retrieves the thumb drawable of the Slider.
---@return Button|nil thumbDrawable The thumb drawable, or `nil` if not set.
---@nodiscard
---@usage
---```
---local thumbDrawable = widget:GetThumbDrawable()
---```
---@see Button
function Slider:GetThumbDrawable() end

---Retrieves the current value of the Slider.
---@return number value The current value (default: `0`).
---@nodiscard
---@usage
---```
---local value = widget:GetValue()
---```
function Slider:GetValue() end

---Retrieves the value step of the Slider.
---@return number valueStep The value step (default: `1`).
---@nodiscard
---@usage
---```
---local valueStep = widget:GetValueStep()
---```
function Slider:GetValueStep() end

---Sets whether the thumb size is fixed for the Slider.
---@param bool boolean `true` to fix the thumb size, `false` to allow resizing.
---@usage
---```
---widget:SetFixedThumb(true)
---```
function Slider:SetFixedThumb(bool) end

---Sets the inset for the Slider.
---@param inset number The inset value (default: `0`).
---@usage
---```
---widget:SetInset(10)
---```
function Slider:SetInset(inset) end

---Sets the minimum and maximum values for the Slider.
---@param min number The minimum value.
---@param max number The maximum value.
---@usage
---```
---widget:SetMinMaxValues(0, 100)
---```
function Slider:SetMinMaxValues(min, max) end

---Sets the minimum length of the thumb for the Slider.
---@param length number The minimum thumb length.
---@usage
---```
---widget:SetMinThumbLength(17)
---```
function Slider:SetMinThumbLength(length) end

---Sets the orientation of the Slider.
---@param scrollType SLIDER_SCROLL_TYPE The orientation type (default: `0`).
---@see SLIDER_SCROLL_TYPE
---@usage
---```
---widget:SetOrientation(1)
---```
function Slider:SetOrientation(scrollType) end

---Sets the step value for clicking within the Slider.
---@param pageStep number The step value for page navigation.
---@usage
---```
---widget:SetPageStep(5)
---```
function Slider:SetPageStep(pageStep) end

---Sets the thumb button widget for the Slider.
---@param buttonWidget Button The button widget to use as the thumb.
---@usage
---```
---local thumb = widget:CreateChildWidget("button", "thumb", 0, true)
---thumb.bg = thumb:CreateNinePartDrawable(TEXTURE_PATH.SCROLL, "background")
---thumb.bg:SetTextureInfo("thumb_df")
---thumb.bg:AddAnchor("TOPLEFT", thumb, 0, 0)
---thumb.bg:AddAnchor("BOTTOMRIGHT", thumb, 0, 0)
---widget:SetThumbButtonWidget(thumb)
---```
---@see Button
function Slider:SetThumbButtonWidget(buttonWidget) end

---Sets the value of the Slider with optional event triggering.
---@param value number The value to set.
---@param triggerEvent boolean `true` to trigger them `"OnSliderChanged"` event, `false` otherwise.
---@usage
---```
---widget:SetValue(15, true)
---```
function Slider:SetValue(value, triggerEvent) end

---Sets the step value for dragging the Slider.
---@param value number The step value for dragging.
---@usage
---```
---widget:SetValueStep(5)
---```
function Slider:SetValueStep(value) end

---Moves the slider up for vertical orientation or left for horizontal
---orientation.
---@param step number The amount to move the slider.
---@usage
---```
---widget:Up(15)
---```
function Slider:Up(step) end
