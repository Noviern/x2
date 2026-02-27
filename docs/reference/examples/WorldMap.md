# WorldMap Example
[WorldMap](../docs/objects/WorldMap.md)

```lua
ADDON:ImportObject(26) -- WorldMap
-- ADDON:ImportObject(OBJECT.WorldMap)
ADDON:ImportObject(10) -- ImageDrawable
-- ADDON:ImportObject(OBJECT.ImageDrawable)

local worldMapExample = UIParent:CreateWidget("worldmap", "worldMapExample", "UIParent")
worldMapExample:SetExtent(928, 556)
worldMapExample:AddAnchor("CENTER", "UIParent", 0, 0)
worldMapExample:InitMapData(928, 556, "ui/map/image_map.tga", "ui/map/frame_map.dds")

local playerDrawable = worldMapExample:CreateDrawable("ui/map/icon/player_cursor.dds", "player_cursor", "overlay")
worldMapExample:SetPlayerDrawable(playerDrawable)

worldMapExample:Show(true)
```

![WorldMap Example](https://i.imgur.com/dH9q7Uf.png)