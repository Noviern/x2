# ModelView Example
[ModelView](../docs/objects/ModelView.md)

```lua
ADDON:ImportObject(29) -- ModelView
-- ADDON:ImportObject(OBJECT.ModelView)
ADDON:ImportObject(10) -- ImageDrawable
-- ADDON:ImportObject(OBJECT.ImageDrawable)

local modelViewExample = UIParent:CreateWidget("modelview", "modelViewExample", "UIParent")
modelViewExample:AddAnchor("CENTER", "UIParent", 0, 0)
modelViewExample:SetExtent(512, 512)
modelViewExample:SetModelViewBackground("ui/preview_bg.dds", "bg")
modelViewExample:SetTextureSize(512, 512)
modelViewExample:SetModelViewExtent(512, 512)
modelViewExample:SetModelViewCoords(0, 0, 512, 512)
modelViewExample:SetDisableColorGrading(true)
modelViewExample:InitBeautyShop()
modelViewExample:ZoomInOutBeautyShop(2)
modelViewExample:PlayAnimation("fist_ac_stage_idle", true)
modelViewExample:Show(true)
```

![ModelView Example](https://i.imgur.com/ba0E8pm.png)