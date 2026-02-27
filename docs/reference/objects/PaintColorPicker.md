# PaintColorPicker
## Classes
### Class: PaintColorPicker
Extends [Widget](../types/Widget.md#class-widget)

> [PaintColorPicker](../types/PaintColorPicker.md#class-paintcolorpicker)
> 
> A `PaintColorPicker` widget selects colors using HSL (Hue, Saturation,
> Luminance) or RGB. Provides a spectrum and luminance widget for visual color
> selection, along with functions to get and set colors programmatically.
> 
> **Dependencies**:
>  - [EmptyWidget](../types/EmptyWidget.md#class-emptywidget) used for the `luminanceWidget` and `spectrumWidget` fields.
> 
#### Field: spectrumWidget
```lua
EmptyWidget
```
> The widget displaying the color spectrum.

#### Field: luminanceWidget
```lua
EmptyWidget
```
> The widget controlling luminance.

#### Method: SetSat
```lua
(method) PaintColorPicker:SetSat(sat: number)
```
> Sets the saturation value for the PaintColorPicker and does not update the
> `PaintColorPicker.luminanceWidget`.
> 
> @*param* `sat` — The saturation value. (`0` to `240`)

#### Method: SetLum
```lua
(method) PaintColorPicker:SetLum(lum: number)
```
> Sets the luminance value for the PaintColorPicker but does not update the
> `PaintColorPicker.luminanceWidget`.
> 
> @*param* `lum` — The luminance value. (`0` to `240`)

#### Method: SetSpectrumBg
```lua
(method) PaintColorPicker:SetSpectrumBg(bg: Drawablebase)
```
> Sets the background for the spectrum widget of the PaintColorPicker.
> 
> @*param* `bg` — The background drawable for the spectrum widget.
> 
> ```lua
> local spectrumBg = widget:CreateDrawable("ui/login_stage/color_palette.dds", "color_bg", "background")
> spectrumBg:AddAnchor("TOPLEFT", widget.spectrumWidget, 0, 0)
> spectrumBg:AddAnchor("BOTTOMRIGHT", widget.spectrumWidget, 0, 0)
> widget:SetSpectrumBg(spectrumBg)
> ```

#### Method: SetLuminanceBg
```lua
(method) PaintColorPicker:SetLuminanceBg(bg: Drawablebase)
```
> Sets the background for the luminance widget of the PaintColorPicker.
> 
> @*param* `bg` — The background drawable for the luminance widget.
> 
> ```lua
> local luminanceBg = widget:CreateDrawable("ui/login_stage/color_palette.dds", "color_bg", "background")
> luminanceBg:AddAnchor("TOPLEFT", widget.luminanceWidget, 0, 0)
> luminanceBg:AddAnchor("BOTTOMRIGHT", widget.luminanceWidget, 0, 0)
> widget:SetLuminanceBg(luminanceBg)
> ```

#### Method: SetHue
```lua
(method) PaintColorPicker:SetHue(hue: number)
```
> Sets the hue value for the PaintColorPicker but does not update the
> `PaintColorPicker.luminanceWidget`.
> 
> @*param* `hue` — The hue value. (`0` to `240`)

#### Method: SetRGBColor
```lua
(method) PaintColorPicker:SetRGBColor(red: number, green: number, blue: number)
```
> Sets the RGB color values for the PaintColorPicker and updates the
> `PaintColorPicker.luminanceWidget`.
> 
> @*param* `red` — The red color component. (`0` to `255`)
> 
> @*param* `green` — The green color component. (`0` to `255`)
> 
> @*param* `blue` — The blue color component. (`0` to `255`)

#### Method: SetHLSColor
```lua
(method) PaintColorPicker:SetHLSColor(hue: number, lum: number, sat: number)
```
> Sets the HSL color values for the PaintColorPicker and updates the
> `PaintColorPicker.luminanceWidget`.
> 
> @*param* `hue` — The hue component. (min: `0`, max: `1`)
> 
> @*param* `lum` — The luminance component. (min: `0`, max: `1`)
> 
> @*param* `sat` — The saturation component. (min: `0`, max: `1`)

#### Method: GetSat
```lua
(method) PaintColorPicker:GetSat()
  -> saturation: number
```
> Retrieves the saturation value of the PaintColorPicker.
> 
> @*return* `saturation` — The saturation value. (min: `0`, max: `1`)

#### Method: GetHue
```lua
(method) PaintColorPicker:GetHue()
  -> hue: number
```
> Retrieves the hue value of the PaintColorPicker.
> 
> @*return* `hue` — The hue value. (min: `0`, max: `1`)

#### Method: GetSpectrumWidget
```lua
(method) PaintColorPicker:GetSpectrumWidget()
  -> spectrumWidget: EmptyWidget
```
> Retrieves the spectrum widget of the PaintColorPicker (same as
> `PaintColorPicker.spectrumWidget`).
> 
> @*return* `spectrumWidget` — The spectrum widget.

#### Method: GetLum
```lua
(method) PaintColorPicker:GetLum()
  -> luminance: number
```
> Retrieves the luminance value of the PaintColorPicker.
> 
> @*return* `luminance` — The luminance value. (min: `0`, max: `1`)

#### Method: GetRGBColor
```lua
(method) PaintColorPicker:GetRGBColor()
  -> red: number
  2. green: number
  3. blue: number
```
> Retrieves the RGB color values of the PaintColorPicker.
> 
> @*return* `red` — The red color component. (`0` to `255`)
> 
> @*return* `green` — The green color component. (`0` to `255`)
> 
> @*return* `blue` — The blue color component. (`0` to `255`)

#### Method: GetLuminanceWidget
```lua
(method) PaintColorPicker:GetLuminanceWidget()
  -> luminanceWidget: EmptyWidget
```
> Retrieves the luminance widget of the PaintColorPicker (same as
> `PaintColorPicker.luminanceWidget`).
> 
> @*return* `luminanceWidget` — The luminance widget.

#### Method: GetHLSColor
```lua
(method) PaintColorPicker:GetHLSColor()
  -> hue: number
  2. saturation: number
  3. luminance: number
```
> Retrieves the HSL color values of the PaintColorPicker.
> 
> @*return* `hue` — The hue component. (min: `0`, max: `1`)
> 
> @*return* `saturation` — The saturation component. (min: `0`, max: `1`)
> 
> @*return* `luminance` — The luminance component. (min: `0`, max: `1`)

