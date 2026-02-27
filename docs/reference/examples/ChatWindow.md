# ChatWindow Example
[ChatWindow](../docs/objects/ChatWindow.md)

```lua
ADDON:ImportObject(38) -- ChatWindow
-- ADDON:ImportObject(OBJECT.ChatWindow)

local chatWindowExample = UIParent:CreateWidget("chatwindow", "chatWindowExample", "UIParent")
chatWindowExample:SetExtent(640, 360)
chatWindowExample:AddAnchor("CENTER", "UIParent", 0, 0)
chatWindowExample:SetChatWindowId(0)
chatWindowExample:Show(true)
```

![ChatWindow Example](https://i.imgur.com/X1vOyXu.png)