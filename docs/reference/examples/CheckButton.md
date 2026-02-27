# CheckButton Example
[CheckButton](../docs/objects/CheckButton.md)

```lua
ADDON:ImportObject(23) -- CheckButton
-- ADDON:ImportObject(OBJECT.CheckButton)
ADDON:ImportObject(10) -- ImageDrawable
-- ADDON:ImportObject(OBJECT.ImageDrawable)

local checkButtonExample = UIParent:CreateWidget("checkbutton", "checkButtonExample", "UIParent")
checkButtonExample:SetExtent(20, 20)
checkButtonExample:AddAnchor("CENTER", "UIParent", 0, 0)

local background = checkButtonExample:CreateDrawable("ui/button/check_button.dds", "btn_df", "background")
background:SetExtent(20, 20)
background:AddAnchor("CENTER", checkButtonExample, 0, 0)

local checkedBackground = checkButtonExample:CreateDrawable("ui/button/check_button.dds", "btn_chk_df", "background")
checkedBackground:SetExtent(20, 20)
checkedBackground:AddAnchor("CENTER", checkButtonExample, 0, 0)
checkButtonExample:SetCheckedBackground(checkedBackground)

checkButtonExample:Show(true)
```

![CheckButton Example](https://i.imgur.com/t7xIKFm.png)