# Slider Example
[Slider](../docs/objects/Slider.md)

```lua
ADDON:ImportObject(24) -- Slider
-- ADDON:ImportObject(OBJECT.Slider)
ADDON:ImportObject(8)  -- NinePartDrawable
-- ADDON:ImportObject(OBJECT.NinePartDrawable)
ADDON:ImportObject(2)  -- Button
-- ADDON:ImportObject(OBJECT.Button)

local sliderExample = UIParent:CreateWidget("slider", "sliderExample", "UIParent")
sliderExample:SetExtent(20, 400)
sliderExample:AddAnchor("CENTER", "UIParent", 0, 0)

local background = sliderExample:CreateDrawable("ui/button/scroll_button.dds", "scroll_frame_bg", "background")
background:SetTextureColor("default")
background:AddAnchor("TOPLEFT", sliderExample, 3, -9)
background:AddAnchor("BOTTOMRIGHT", sliderExample, -3, 9)

local button = sliderExample:CreateChildWidget("button", "buttonExample", 0, true)
button:SetStyle("text_default")
button:SetWidth(20)
sliderExample:SetThumbButtonWidget(button)

sliderExample:Show(true)
```

![Slider Example](https://i.imgur.com/bzUnW0K.png)