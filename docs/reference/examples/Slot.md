# Slot Example
[Slot](../docs/objects/Slot.md)

```lua
ADDON:ImportObject(47) -- Slot
-- ADDON:ImportObject(OBJECT.Slot)

local slotExample = UIParent:CreateWidget("slot", "slotExample", "UIParent")
slotExample:SetExtent(64, 64)
slotExample:AddAnchor("CENTER", "UIParent", 0, 0)
slotExample:EstablishSlot(ISLOT_ACTION, 1)
slotExample:Show(true)
```

![Slot Example](https://i.imgur.com/nNglMB8.png)