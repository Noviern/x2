# RoadMap Example
[RoadMap](../docs/objects/RoadMap.md)

```lua
ADDON:ImportObject(27) -- RoadMap
-- ADDON:ImportObject(OBJECT.RoadMap)
ADDON:ImportObject(10) -- ImageDrawable
-- ADDON:ImportObject(OBJECT.ImageDrawable)

local roadMapExample = UIParent:CreateWidget("roadmap", "roadMapExample", "UIParent")
roadMapExample:SetExtent(928, 556)
roadMapExample:AddAnchor("CENTER", "UIParent", 0, 0)
roadMapExample:InitMapData()
roadMapExample:ReloadAllInfo()

local playerDrawable = roadMapExample:CreateDrawable("ui/map/icon/player_cursor.dds", "player_cursor", "overlay")
roadMapExample:SetPlayerDrawable(playerDrawable)

roadMapExample:Show(true)
```

![RoadMap Example](https://i.imgur.com/4Q1TuZB.png)