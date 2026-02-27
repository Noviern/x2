# Label Example
[Label](../docs/objects/Label.md)

```lua
ADDON:ImportObject(1) -- Label
-- ADDON:ImportObject(OBJECT.Label)

local lableExample = UIParent:CreateWidget("label", "lableExample", "UIParent")
lableExample:SetExtent(400, 100)
lableExample:AddAnchor("CENTER", "UIParent", 0, 0)
lableExample:SetNumberOnly(true)
lableExample:SetText("1234567890")
lableExample:Show(true)
```

![Label Example](https://i.imgur.com/zfsHI61.png)