# Button Example
[Button](../docs/objects/Button.md)

```lua
ADDON:ImportObject(2) -- Button
-- ADDON:ImportObject(OBJECT.Button)

local buttonExample = UIParent:CreateWidget("button", "buttonExample", "UIParent")
buttonExample:AddAnchor("CENTER", "UIParent", 0, 0)
buttonExample:SetStyle("text_default")
buttonExample:SetText("Click Me")
buttonExample:Show(true)
```

![Button Example](https://i.imgur.com/4VLmX1h.png)