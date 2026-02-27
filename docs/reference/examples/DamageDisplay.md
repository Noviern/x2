# DamageDisplay Example
[DamageDisplay](../docs/objects/DamageDisplay.md)

```lua
ADDON:ImportObject(35) -- DamageDisplay
-- ADDON:ImportObject(OBJECT.DamageDisplay)
ADDON:ImportAPI(42)    -- X2Unit
-- ADDON:ImportAPI(API.X2Unit)

local damageDisplayExample = UIParent:CreateWidget("damagedisplay", "damageDisplayExample", "UIParent")
damageDisplayExample:SetUnitId(X2Unit:GetUnitId("player"), X2Unit:GetUnitId("target"))
damageDisplayExample:SetInitPos(-50, -100)
damageDisplayExample:SetText("Example Text")
damageDisplayExample:Show(true)
```

![DamageDisplay Example](https://i.imgur.com/rytTzjE.png)