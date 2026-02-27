# RadioGroup Example
[RadioGroup](../docs/objects/RadioGroup.md)

```lua
ADDON:ImportObject(55) -- RadioGroup
-- ADDON:ImportObject(OBJECT.RadioGroup)
ADDON:ImportObject(46) -- EmptyWidget
-- ADDON:ImportObject(OBJECT.EmptyWidget)
ADDON:ImportObject(23) -- CheckButton
-- ADDON:ImportObject(OBJECT.CheckButton)
ADDON:ImportObject(10) -- ImageDrawable
-- ADDON:ImportObject(OBJECT.ImageDrawable)

local function SetRadioButtonStyle(checkButton)
  local path        = "ui/common/default.dds"
  local key         = "radio_button"
  local textureData = UIParent:GetTextureData(path, string.format("%s_df", key))

  if textureData == nil then
    return
  end

  local background = checkButton:CreateImageDrawable(path, "background")
  if background == nil then
    return
  end
  background:SetTextureInfo(key .. "_df")
  background:AddAnchor("TOPLEFT", checkButton, 0, 0)
  background:AddAnchor("BOTTOMRIGHT", checkButton, 0, 0)

  local checkedBackground = checkButton:CreateImageDrawable(path, "background")
  if checkedBackground == nil then
    return
  end
  checkedBackground:SetTextureInfo(key .. "_chk_df")
  checkedBackground:AddAnchor("TOPLEFT", checkButton, 0, 0)
  checkedBackground:AddAnchor("BOTTOMRIGHT", checkButton, 0, 0)
  checkButton:SetCheckedBackground(checkedBackground)

  checkButton:SetExtent(textureData.extent[1], textureData.extent[2])
end

local radiogroupExample = UIParent:CreateWidget("radiogroup", "radiogroupExample", "UIParent")
radiogroupExample:SetExtent(400, 400)
radiogroupExample:AddAnchor("CENTER", "UIParent", 0, 0)

local radio1 = radiogroupExample:CreateRadioItem(1)
radio1:SetExtent(20, 20)
radio1:SetText("asdf")
radio1:AddAnchor("TOPLEFT", radiogroupExample, 0, 0)
radio1.check:AddAnchor("TOPLEFT", radio1, 0, 0)
SetRadioButtonStyle(radio1.check)

local radio2 = radiogroupExample:CreateRadioItem(1)
radio2:SetExtent(20, 20)
radio2:SetText("asdf")
radio2:AddAnchor("TOPLEFT", radio1, "BOTTOMLEFT", 0, 0)
radio2.check:AddAnchor("TOPLEFT", radio2, 0, 0)
SetRadioButtonStyle(radio2.check)

radio2.check:SetChecked(true)

radiogroupExample:Show(true)
```

![RadioGroup Example](https://i.imgur.com/PQ36QaH.png)