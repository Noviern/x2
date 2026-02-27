# Listbox Example
[Listbox](../docs/objects/Listbox.md)

```lua
ADDON:ImportObject(5)  -- Listbox
-- ADDON:ImportObject(OBJECT.Listbox)
ADDON:ImportObject(10) -- ImageDrawable
-- ADDON:ImportObject(OBJECT.ImageDrawable)

local listbox = UIParent:CreateWidget("listbox", "listboxExample", "UIParent")
listbox:SetExtent(400, 80)
listbox:AddAnchor("CENTER", "UIParent", 0, 0)
listbox:SetItemTrees({
  {
    child = {
      {
        text = "child 1",
        value = 1
      },
      {
        text = "child 2",
        value = 2
      }
    },
    text = "change",
    subtext = "test",
    subColor = { 1, 0, 0, 1 },
    useColor = true,
    defaultColor = { 0, 0, 0, 1 },
    opened = true,
    value = 1
  },
  {
    text = "item 2",
    value = 2
  }
})

local opened = listbox:CreateOpenedImageDrawable("ui/button/grid.dds")
opened:SetTextureInfo("opened_normal")
local closed = listbox:CreateClosedImageDrawable("ui/button/grid.dds")
closed:SetTextureInfo("closed_normal")

listbox:Show(true)
```

![Listbox Example](https://i.imgur.com/s9rpK67.png)