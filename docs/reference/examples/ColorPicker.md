# ColorPicker Example
[ColorPicker](../docs/objects/ColorPicker.md)

```lua
ADDON:ImportObject(32) --ColorPicker
-- ADDON:ImportObject(OBJECT.ColorPicker)

local colorPickerExample = UIParent:CreateWidget("colorpicker", "colorPickerExample", "UIParent")
colorPickerExample:SetExtent(128, 256)
colorPickerExample:AddAnchor("CENTER", "UIParent", 0, 0)
colorPickerExample:SetPaletteImage("ui/raid.dds")
colorPickerExample:Show(true)
```

![ColorPicker Example](https://i.imgur.com/j8lvzzL.png)