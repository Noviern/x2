
# Pageable Example
[Pageable](../docs/objects/Pageable.md)

```lua
ADDON:ImportObject(25) -- Pageable
-- ADDON:ImportObject(OBJECT.Pageable)
ADDON:ImportObject(39) -- Textbox
-- ADDON:ImportObject(OBJECT.Textbox)

local pageableExample = UIParent:CreateWidget("pageable", "pageableExample", "UIParent")
pageableExample:SetExtent(400, 400)
pageableExample:AddAnchor("CENTER", "UIParent", 0, 0)
pageableExample:SetPageCount(3)

for i = 1, 3 do
  local page = pageableExample:CreateChildWidget("textbox", "page", i, true)
  page:SetText("page" .. i .. "\nscroll up to go to previous page\nscroll down to go to next apge")
  page:AddAnchor("TOPLEFT", pageableExample, 0, 0)
  page:AddAnchor("BOTTOMRIGHT", pageableExample, 0, 0)
  pageableExample:AddWidgetToPage(page, i)
end

pageableExample:SetHandler("OnWheelUp", function (self, delta)
  pageableExample:PrevPage()
end)

pageableExample:SetHandler("OnWheelDown", function (self, delta)
  pageableExample:NextPage()
end)

pageableExample:Show(true)
```

![Pageable Example](https://i.imgur.com/XPn8bAg.png)