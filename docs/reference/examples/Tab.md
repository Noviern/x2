# Tab Example
[Tab](../docs/objects/Tab.md)

```lua
ADDON:ImportObject(36) -- Tab
-- ADDON:ImportObject(OBJECT.Tab)
ADDON:ImportObject(2) -- Button
-- ADDON:ImportObject(OBJECT.Button)
ADDON:ImportObject(0) -- Window
-- ADDON:ImportObject(OBJECT.Window)


local tabExample = UIParent:CreateWidget("tab", "tabExample", "UIParent")
tabExample:SetExtent(1000, 500)
tabExample:AddAnchor("CENTER", 0, 0)
tabExample:AddSimpleTab("Auroria")
tabExample:AddSimpleTab("Nuia")
tabExample:AddSimpleTab("Haranya")
tabExample:SetGap(10)

for i = 1, #tabExample.window do
  local selectedButton = tabExample.selectedButton[i]
  selectedButton:SetStyle("text_default")
  local unselectedButton = tabExample.unselectedButton[i]
  unselectedButton:SetStyle("text_default")
  local window = tabExample.window[i]
  window:SetTitleText("tab " .. i)
end

tabExample:AlignTabButtons()
tabExample:Show(true)

```

![Tab Example](https://i.imgur.com/W6w2Lwl.png)