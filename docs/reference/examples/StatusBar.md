# StatusBar Example
[StatusBar](../docs/objects/StatusBar.md)

```lua
ADDON:ImportObject(17) -- StatusBar
-- ADDON:ImportObject(OBJECT.StatusBar)
ADDON:ImportObject(10) -- ImageDrawable
-- ADDON:ImportObject(OBJECT.ImageDrawable)

local statusBarExample = UIParent:CreateWidget("statusbar", "statusBarExample", "UIParent")
statusBarExample:SetExtent(785, 6)
statusBarExample:AddAnchor("CENTER", "UIParent", 0, 0)

local PATH = "ui/gauge.dds"
local info = UIParent:GetTextureData(PATH, "gauge_orange")
statusBarExample:SetBarTexture(PATH, "overlay")
statusBarExample:SetBarTextureCoords(info.coords[1], info.coords[2], info.coords[3], info.coords[4])
statusBarExample:SetOrientation("HORIZONTAL")
statusBarExample:SetBarColor(1, 1, 1, 1)
statusBarExample:SetMinMaxValues(0, 100)
statusBarExample:SetValue(50)

local background = statusBarExample:CreateDrawable(PATH, "gauge_bg", "artwork")
background:AddAnchor("TOPLEFT", statusBarExample, -6, -8)
background:AddAnchor("BOTTOMRIGHT", statusBarExample, 6, 8)

statusBarExample:Show(true)
```

![StatusBar Example](https://i.imgur.com/oDd8h9f.png)