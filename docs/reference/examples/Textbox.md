# Textbox Example
[Textbox](../docs/objects/Textbox.md)

```lua
ADDON:ImportObject(39) -- Textbox
-- ADDON:ImportObject(OBJECT.Textbox)
ADDON:ImportObject(13) -- TextStyle
-- ADDON:ImportObject(OBJECT.TextStyle)

local textboxExample = UIParent:CreateWidget("textbox", "textboxExample", "UIParent")
textboxExample:SetExtent(400, 400)
textboxExample:AddAnchor("CENTER", "UIParent", 0, 0)
textboxExample.style:SetFont("font_combat", 30)
textboxExample.style:SetColorByKey("red")
textboxExample.style:SetEllipsis(true)
textboxExample.style:SetAlign(ALIGN_BOTTOM_LEFT)
-- textboxExample.style:SetOutline(true)
textboxExample.style:SetShadow(true)
textboxExample:SetText("Example Text that overflows triggering the ellipsis.")
textboxExample:SetLineColor(0, 1, 1, 1)
textboxExample:SetStrikeThrough(true)
textboxExample:SetUnderLine(true)
textboxExample:Show(true)
```

![Textbox Example](https://i.imgur.com/9nS2O4L.png)