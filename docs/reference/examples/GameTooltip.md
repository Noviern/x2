# GameTooltip Example
[GameTooltip](../docs/objects/GameTooltip.md)

```lua
ADDON:ImportObject(18) -- GameTooltip
-- ADDON:ImportObject(OBJECT.GameTooltip)
ADDON:ImportObject(13) -- TextStyle
-- ADDON:ImportObject(OBJECT.TextStyle)

local gametooltip = UIParent:CreateWidget("gametooltip", "gametooltipExample", "UIParent")
gametooltip:SetExtent(400, 400)
gametooltip:AddAnchor("CENTER", "UIParent", 0, 0)
gametooltip:AddLine("LEFT TEXT", "font_main", 20, "left", ALIGN_LEFT, 0)
gametooltip:AddLine("CENTER TEXT", "font_main", 20, "left", ALIGN_CENTER, 0)
gametooltip:AddAnotherSideLine(0, "RIGHT TEXT", "font_main", 20, ALIGN_RIGHT, 0)
gametooltip:Show(true)
```

![GameTooltip Example](https://i.imgur.com/EsTZB4V.png)