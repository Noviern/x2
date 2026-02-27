# Message Example
[Message](../docs/objects/Message.md)

```lua
ADDON:ImportObject(16) -- Message
-- ADDON:ImportObject(OBJECT.Message)

local messageExample = UIParent:CreateWidget("message", "messageExample", "UIParent")
messageExample:SetExtent(400, 200)
messageExample:AddAnchor("CENTER", "UIParent", 0, 0)
messageExample:AddMessage("Example Text.")
messageExample:AddMessage("Testing")

messageExample:Show(true)
```

![Message Example](https://i.imgur.com/qBzsBXh.png)