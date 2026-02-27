# EditboxMultiline Example
[EditboxMultiline](../docs/objects/EditboxMultiline.md)

```lua
ADDON:ImportObject(4)  -- EditboxMultiline
-- ADDON:ImportObject(OBJECT.EditboxMultiline)
ADDON:ImportObject(13) -- TextStyle
-- ADDON:ImportObject(OBJECT.TextStyle)
ADDON:ImportObject(8)  -- NinePartDrawable
-- ADDON:ImportObject(OBJECT.NinePartDrawable)

local editboxMultilineExample = UIParent:CreateWidget("editboxmultiline", "editboxMultilineExample", "UIParent")
editboxMultilineExample:SetExtent(400, 400)
editboxMultilineExample:AddAnchor("CENTER", "UIParent", 0, 0)
editboxMultilineExample.style:SetAlign(ALIGN_TOP_LEFT)
editboxMultilineExample.style:SetColorByKey("default")
editboxMultilineExample:SetCursorColorByColorKey("editbox_cursor_default")

local background = editboxMultilineExample:CreateDrawable("ui/common/default.dds", "editbox_df", "background")
background:AddAnchor("TOPLEFT", editboxMultilineExample, -10, -10)
background:AddAnchor("BOTTOMRIGHT", editboxMultilineExample, 10, 10)

editboxMultilineExample:Show(true)
```

![EditboxMultiline Example](https://i.imgur.com/hOJ2bm1.png)