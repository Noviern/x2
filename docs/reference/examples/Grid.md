# Grid Example
[Grid](../docs/objects/Grid.md)

```lua
ADDON:ImportObject(28) -- Grid
-- ADDON:ImportObject(OBJECT.Grid)
ADDON:ImportObject(39) -- Textbox
-- ADDON:ImportObject(OBJECT.Textbox)

local gridExample = UIParent:CreateWidget("grid", "gridExample", "UIParent")
gridExample:ApplyUIScale(false)
gridExample:SetExtent(400, 400)
gridExample:AddAnchor("CENTER", "UIParent", 0, 0)

gridExample:SetDefaultColWidth(100)
gridExample:SetColCount(5)

gridExample:SetDefaultRowHeight(100)
gridExample:SetRowCount(5)

gridExample:SetLineBackGround(true)
gridExample:SetLineColor(0, 0, 1, 1)

for column = 1, 5 do
  for row = 1, 5 do
    local textbox = gridExample:CreateChildWidget("textbox", "textboxExample" .. column .. row, 0, true)
    textbox:SetText(column .. ":" .. row)
    grgridExample:SetItem(textbox, row, column, true, column * row, false)
  end
end

gridExample:SetSelectedLine(true)
gridExample:SetSelectedColor(1, 0, 0, 1)
gridExample:LineSelect(2)

gridExample:SetCurrentLine(true)
gridExample:SetCurrentColor(0, 1, 0, 1)

gridExample:Show(true)
```

![Grid Example](https://i.imgur.com/WdfI0lL.png)