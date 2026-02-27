# Avi Example
[Avi](../docs/objects/Avi.md)

```lua
ADDON:ImportObject(52) -- Avi
-- ADDON:ImportObject(OBJECT.Avi)

local aviExample = UIParent:CreateWidget("avi", "aviExample", "UIParent")
aviExample:SetExtent(640, 360)
aviExample:AddAnchor("CENTER", "UIParent", 0, 0)
aviExample:SetAviName("objects/machinima/avi/id_300_01.avi")
aviExample:Show(true)
```

![Avi Example](https://i.imgur.com/8fHaYtm.png)