# Folder Example
[Folder](../docs/objects/Folder.md)

```lua
ADDON:ImportObject(34) -- Folder
-- ADDON:ImportObject(OBJECT.Folder)
ADDON:ImportObject(13) -- TextStyle
-- ADDON:ImportObject(OBJECT.TextStyle)
ADDON:ImportObject(39) -- Textbox
-- ADDON:ImportObject(OBJECT.Textbox)

local folderExample = UIParent:CreateWidget("folder", "folderExample", "UIParent")
folderExample:AddAnchor("CENTER", "UIParent", 0, 0)
folderExample:SetExtent(400, 16)
folderExample:SetTitleText("Hello, ArcheRage!")
folderExample.style:SetAlign(ALIGN_TOP_LEFT)
folderExample:SetTitleHeight(19)
folderExample:SetExtendLength(100)

local details = folderExample:CreateChildWidget("textbox", "details", 0, true)
details.style:SetAlign(ALIGN_TOP_LEFT)
details:SetText("The first ArcheAge Private Server")

folderExample:SetChildWidget(details)
folderExample:Show(true)
```

![Folder Example 1](https://i.imgur.com/7jVTXml.png)

> After clicking on the folder it expands to show its contents.

![Folder Example 2](https://i.imgur.com/aRBf0Th.png)