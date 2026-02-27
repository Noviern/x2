# Grid Example
[PaintColorPicker](../docs/objects/PaintColorPicker.md)

```lua
ADDON:ImportObject(33) -- PaintColorPicker
-- ADDON:ImportObject(OBJECT.PaintColorPicker)
ADDON:ImportObject(8)  -- NinePartDrawable
-- ADDON:ImportObject(OBJECT.NinePartDrawable)
ADDON:ImportObject(46) -- EmptyWidget
-- ADDON:ImportObject(OBJECT.EmptyWidget)

local paintColorPickerExample = UIParent:CreateWidget("paintcolorpicker", "paintColorPickerExample", "UIParent")
paintColorPickerExample:SetExtent(300, 256)
paintColorPickerExample:AddAnchor("CENTER", "UIParent", 0, 0)

local spectrumBg = paintColorPickerExample:CreateDrawable("ui/login_stage/color_palette.dds", "color_bg", "background")
spectrumBg:AddAnchor("TOPLEFT", paintColorPickerExample.spectrumWidget, 0, 0)
spectrumBg:AddAnchor("BOTTOMRIGHT", paintColorPickerExample.spectrumWidget, 0, 0)
paintColorPickerExample:SetSpectrumBg(spectrumBg)

local luminanceBg = paintColorPickerExample:CreateDrawable("ui/login_stage/color_palette.dds", "color_bg", "background")
luminanceBg:AddAnchor("TOPLEFT", paintColorPickerExample.luminanceWidget, 0, 0)
luminanceBg:AddAnchor("BOTTOMRIGHT", paintColorPickerExample.luminanceWidget, 0, 0)
paintColorPickerExample:SetLuminanceBg(luminanceBg)

paintColorPickerExample:Show(true)
```

![PaintColorPicker Example](https://i.imgur.com/f3SriKz.png)