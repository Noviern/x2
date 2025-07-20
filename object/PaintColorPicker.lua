---@meta _

AP_BOTTOM = 8          -- object/PaintColorPicker
AP_BOTTOMLEFT = 2      -- object/PaintColorPicker
AP_BOTTOMRIGHT = 3     -- object/PaintColorPicker
AP_CENTER = 4          -- object/PaintColorPicker
AP_LEFT = 6            -- object/PaintColorPicker
AP_RIGHT = 7           -- object/PaintColorPicker
AP_TOP = 5             -- object/PaintColorPicker
AP_TOPLEFT = 0         -- object/PaintColorPicker
AP_TOPRIGHT = 1        -- object/PaintColorPicker
CT_ABILITY = 2         -- object/PaintColorPicker
CT_EXPEDITION_NAME = 3 -- object/PaintColorPicker
CT_NAME = 1            -- object/PaintColorPicker
DC_ALWAYS = 0          -- object/PaintColorPicker
DC_SHIFT_KEY_DOWN = 1  -- object/PaintColorPicker

---object/PaintColorPicker
---@class PaintColorPicker: Widget
---@field luminanceWidget EmptyWidget
---@field spectrumWidget EmptyWidget
local PaintColorPicker = {}

---Returns the HSL color for the PaintColorPicker.
---@return number hue
---@return number saturation
---@return number luminance
---@nodiscard
function PaintColorPicker:GetHLSColor() end

---Returns the `hue` for the PaintColorPicker.
---@return number hue
---@nodiscard
function PaintColorPicker:GetHue() end

---Returns the `luminance` for the PaintColorPicker.
---@return number luminance
---@nodiscard
function PaintColorPicker:GetLum() end

---Returns the `luminanceWidget` of the PaintColorPicker. This is the same as
---`PaintColorPicker.luminanceWidget`.
---@return EmptyWidget luminanceWidget
---@nodiscard
function PaintColorPicker:GetLuminanceWidget() end

---Returns the RGB color of the PaintColorPicker.
---@return number red
---@return number green
---@return number blue
---@nodiscard
function PaintColorPicker:GetRGBColor() end

---Returns the `staturation` for the PaintColorPicker.
---@return number staturation
---@nodiscard
function PaintColorPicker:GetSat() end

---Returns the `spectrumWidget` of the PaintColorPicker. This is the same as
---`PaintColorPicker.spectrumWidget`.
---@return EmptyWidget spectrumWidget
---@nodiscard
function PaintColorPicker:GetSpectrumWidget() end

---Sets the HSL color of the PaintColorPicker.
---@param hue number
---@param lum number
---@param sat number
function PaintColorPicker:SetHLSColor(hue, lum, sat) end

---Sets the `hue` of the PaintColorPicker.
---@param hue number
function PaintColorPicker:SetHue(hue) end

---Sets the `lum` of the PaintColorPicker.
---@param lum number
function PaintColorPicker:SetLum(lum) end

---Sets the background `bg` of the luminanceWidget for the PaintColorPicker.
---@param bg Drawable
function PaintColorPicker:SetLuminanceBg(bg) end

---Sets the RGB color of the PaintColorPicker.
---@param red number
---@param green number
---@param blue number
function PaintColorPicker:SetRGBColor(red, green, blue) end

---Sets the `lum` of the PaintColorPicker.
---@param sat number
function PaintColorPicker:SetSat(sat) end

---Sets the background `bg` of the spectrumWidget for the PaintColorPicker.
---@param bg Drawable
function PaintColorPicker:SetSpectrumBg(bg) end
