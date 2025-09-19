---@meta _

AP_BOTTOM = 8          -- objects/PaintColorPicker
AP_BOTTOMLEFT = 2      -- objects/PaintColorPicker
AP_BOTTOMRIGHT = 3     -- objects/PaintColorPicker
AP_CENTER = 4          -- objects/PaintColorPicker
AP_LEFT = 6            -- objects/PaintColorPicker
AP_RIGHT = 7           -- objects/PaintColorPicker
AP_TOP = 5             -- objects/PaintColorPicker
AP_TOPLEFT = 0         -- objects/PaintColorPicker
AP_TOPRIGHT = 1        -- objects/PaintColorPicker
CT_ABILITY = 2         -- objects/PaintColorPicker
CT_EXPEDITION_NAME = 3 -- objects/PaintColorPicker
CT_NAME = 1            -- objects/PaintColorPicker
DC_ALWAYS = 0          -- objects/PaintColorPicker DRAG_CONDITION
DC_SHIFT_KEY_DOWN = 1  -- objects/PaintColorPicker DRAG_CONDITION

---objects/PaintColorPicker
---@class PaintColorPicker: Widget
---@field luminanceWidget EmptyWidget
---@field spectrumWidget EmptyWidget
local PaintColorPicker = {}
---@class paintcolorpicker: PaintColorPicker

---Retrieves the HSL color values of the PaintColorPicker.
---@return number hue The hue component. (min: `0`, max: `1`)
---@return number saturation The saturation component. (min: `0`, max: `1`)
---@return number luminance The luminance component. (min: `0`, max: `1`)
---@nodiscard
---@usage
---```lua
---local hue, saturation, luminance = widget:GetHLSColor()
---```
function PaintColorPicker:GetHLSColor() end

---Retrieves the hue value of the PaintColorPicker.
---@return number hue The hue value. (min: `0`, max: `1`)
---@nodiscard
---@usage
---```lua
---local hue = widget:GetHue()
---```
function PaintColorPicker:GetHue() end

---Retrieves the luminance value of the PaintColorPicker.
---@return number luminance The luminance value. (min: `0`, max: `1`)
---@nodiscard
---@usage
---```lua
---widget:GetLum()
---```
function PaintColorPicker:GetLum() end

---Retrieves the luminance widget of the PaintColorPicker (same as
---`PaintColorPicker.luminanceWidget`).
---@return EmptyWidget luminanceWidget The luminance widget.
---@nodiscard
---@usage
---```lua
---local luminanceWidget = widget:GetLuminanceWidget()
---```
function PaintColorPicker:GetLuminanceWidget() end

---Retrieves the RGB color values of the PaintColorPicker.
---@return number red The red color component. (`0` to `255`)
---@return number green The green color component. (`0` to `255`)
---@return number blue The blue color component. (`0` to `255`)
---@nodiscard
---@usage
---```lua
---local red, green, blue = widget:GetRGBColor()
---```
function PaintColorPicker:GetRGBColor() end

---Retrieves the saturation value of the PaintColorPicker.
---@return number saturation The saturation value. (min: `0`, max: `1`)
---@nodiscard
---@usage
---```lua
---local saturation = widget:GetSat()
---```
function PaintColorPicker:GetSat() end

---Retrieves the spectrum widget of the PaintColorPicker (same as
---`PaintColorPicker.spectrumWidget`).
---@return EmptyWidget spectrumWidget The spectrum widget.
---@nodiscard
---@usage
---```lua
---local spectrumWidget = widget:GetSpectrumWidget()
---```
function PaintColorPicker:GetSpectrumWidget() end

---Sets the HSL color values for the PaintColorPicker and updates the
---`PaintColorPicker.luminanceWidget`.
---@param hue number The hue component. (min: `0`, max: `1`)
---@param lum number The luminance component. (min: `0`, max: `1`)
---@param sat number The saturation component. (min: `0`, max: `1`)
---@usage
---```lua
---widget:SetHLSColor(120 / 360, 175 / 360, 360 / 360)
---```
function PaintColorPicker:SetHLSColor(hue, lum, sat) end

---Sets the hue value for the PaintColorPicker but does not update the
---`PaintColorPicker.luminanceWidget`.
---@param hue number The hue value. (`0` to `240`)
---@usage
---```lua
---widget:SetHue(80)
---```
function PaintColorPicker:SetHue(hue) end

---Sets the luminance value for the PaintColorPicker but does not update the
---`PaintColorPicker.luminanceWidget`.
---@param lum number The luminance value. (`0` to `240`)
---@usage
---```lua
---widget:SetLum(120)
---```
function PaintColorPicker:SetLum(lum) end

---Sets the background for the luminance widget of the PaintColorPicker.
---@param bg Drawablebase The background drawable for the luminance widget.
---@usage
---```lua
---local luminanceBg = widget:CreateDrawable("ui/login_stage/color_palette.dds", "color_bg", "background")
---luminanceBg:AddAnchor("TOPLEFT", widget.luminanceWidget, 0, 0)
---luminanceBg:AddAnchor("BOTTOMRIGHT", widget.luminanceWidget, 0, 0)
---widget:SetLuminanceBg(luminanceBg)
---```
function PaintColorPicker:SetLuminanceBg(bg) end

---Sets the RGB color values for the PaintColorPicker and updates the
---`PaintColorPicker.luminanceWidget`.
---@param red number The red color component. (`0` to `255`)
---@param green number The green color component. (`0` to `255`)
---@param blue number The blue color component. (`0` to `255`)
---@usage
---```lua
---widget:SetRGBColor(255, 0, 0)
---```
function PaintColorPicker:SetRGBColor(red, green, blue) end

---Sets the saturation value for the PaintColorPicker and does not update the
---`PaintColorPicker.luminanceWidget`.
---@param sat number The saturation value. (`0` to `240`)
---@usage
---```lua
---widget:SetSat(240)
---```
function PaintColorPicker:SetSat(sat) end

---Sets the background for the spectrum widget of the PaintColorPicker.
---@param bg Drawablebase The background drawable for the spectrum widget.
---@usage
---```lua
---local spectrumBg = widget:CreateDrawable("ui/login_stage/color_palette.dds", "color_bg", "background")
---spectrumBg:AddAnchor("TOPLEFT", widget.spectrumWidget, 0, 0)
---spectrumBg:AddAnchor("BOTTOMRIGHT", widget.spectrumWidget, 0, 0)
---widget:SetSpectrumBg(spectrumBg)
---```
function PaintColorPicker:SetSpectrumBg(bg) end
