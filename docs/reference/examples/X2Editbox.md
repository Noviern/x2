# X2Editbox Example
[X2Editbox](../docs/objects/X2Editbox.md)

```lua
ADDON:ImportObject(53) -- X2Editbox
-- ADDON:ImportObject(OBJECT.X2Editbox)
ADDON:ImportObject(8)  -- NinePartDrawable
-- ADDON:ImportObject(OBJECT.NinePartDrawable)

local x2EditboxExample = UIParent:CreateWidget("x2editbox", "x2EditboxExample", "UIParent")
x2EditboxExample:SetExtent(100, 30)
x2EditboxExample:AddAnchor("CENTER", "UIParent", 0, 0)

local background = x2EditboxExample:CreateDrawable("ui/common/default.dds", "editbox_df", "background")
background:AddAnchor("TOPLEFT", x2EditboxExample, 0, 0)
background:AddAnchor("BOTTOMRIGHT", x2EditboxExample, 0, 0)

x2EditboxExample:Show(true)
```

![X2Editbox Example](https://i.imgur.com/hikbJOX.png)