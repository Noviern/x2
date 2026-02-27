# ListCtrl Example
[ListCtrl](../docs/objects/ListCtrl.md)

```lua
ADDON:ImportObject(45) -- ListCtrl
-- ADDON:ImportObject(OBJECT.ListCtrl)
ADDON:ImportObject(2)  -- Button
-- ADDON:ImportObject(OBJECT.Button)
ADDON:ImportObject(0)  -- Window
-- ADDON:ImportObject(OBJECT.Window)
ADDON:ImportObject(39) -- Textbox
-- ADDON:ImportObject(OBJECT.Textbox)
ADDON:ImportObject(13) -- TextStyle
-- ADDON:ImportObject(OBJECT.TextStyle)

local listCtrl = UIParent:CreateWidget("listctrl", "listctrlExample", "UIParent")
listCtrl:SetExtent(200, 400)
listCtrl:AddAnchor("CENTER", "UIParent", 0, 0)

listCtrl:InsertColumn(100, LCCIT_BUTTON)
listCtrl:InsertColumn(100, LCCIT_TEXTBOX)
listCtrl:InsertRows(3, false)
listCtrl:InsertData(0, 1, "Button 1")
listCtrl:InsertData(0, 2, "Textbox 1")
listCtrl:InsertData(1, 1, "Button 2")
listCtrl:InsertData(1, 2, "Textbox 2")
listCtrl:InsertData(2, 1, "Button 3")
listCtrl:InsertData(2, 2, "Textbox 3")

if listCtrl.items ~= nil then
  for i = 1, #listCtrl.items do
    local button, textbox = unpack(listCtrl.items[i].subItems)
    button:SetStyle("text_default")
    textbox.style:SetColorByKey("red")
  end
end

listCtrl:Show(true)
```

![ListCtrl Example](https://i.imgur.com/tG6Qex5.png)