# Webbrowser Example
[Webbrowser](../docs/objects/Webbrowser.md)

```lua
ADDON:ImportObject(30) -- Webbrowser
-- ADDON:ImportObject(OBJECT.Webbrowser)

local webbrowserExample = UIParent:CreateWidget("webbrowser", "wwebbrowserExample", "UIParent")
webbrowserExample:SetExtent(1280, 720)
webbrowserExample:AddAnchor("CENTER", "UIParent", 0, 0)
webbrowserExample:SetURL("https://wiki.archerage.to/na-en")
webbrowserExample:Show(true)
```

![Webbrowser Example](https://i.imgur.com/ePyxf5F.png)