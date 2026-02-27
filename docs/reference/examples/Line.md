# Line Example
[Line](../docs/objects/Line.md)

```lua
ADDON:ImportObject(48) -- Line
-- ADDON:ImportObject(OBJECT.Line)

local lineExample = UIParent:CreateWidget("line", "lineExample", "UIParent")
lineExample:SetExtent(400, 400)
lineExample:AddAnchor("CENTER", "UIParent", 0, 0)

lineExample:SetPoints({
  { beginX = 0,   beginY = 0,   endX = 200, endY = 0, },
  { beginX = 200, beginY = 0,   endX = 100, endY = 200, },
  { beginX = 100, beginY = 200, endX = 0,   endY = 0, },
})

lineExample:Show(true)
```

![Line Example](https://i.imgur.com/B2h7dk0.png)