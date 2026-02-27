# Window Example
[Window](../docs/objects/Window.md)

```lua
ADDON:ImportObject(0) -- Window
-- ADDON:ImportObject(OBJECT.Window)

local windowExample = UIParent:CreateWidget("window", "windowExample", "UIParent")
windowExample:SetExtent(400, 400)
windowExample:AddAnchor("CENTER", "UIParent", 0, 0)
windowExample:SetTitleText("Example Text.")
windowExample:SetWindowModal(true)
windowExample:Show(true)
```

![Window Example](https://i.imgur.com/407wixP.png)