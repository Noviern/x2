# CircleDiagram Example
[CircleDiagram](../docs/objects/CircleDiagram.md)

```lua
ADDON:ImportObject(31) -- CircleDiagram
-- ADDON:ImportObject(OBJECT.CircleDiagram)
ADDON:ImportObject(10) -- ImageDrawable
-- ADDON:ImportObject(OBJECT.ImageDrawable)

local size = 75
local gapSize = 1.04
local rad21 = math.rad(21)
local rad36 = math.rad(36)
local rad54 = math.rad(54)
local pos = {
  { x = size, y = 0 },
  {
    x = size + math.cos(rad21) * size * gapSize,
    y = size - math.sin(rad21) * size * gapSize
  },
  {
    x = size + math.cos(rad54) * size,
    y = size + math.cos(rad36) * size
  },
  {
    x = size - math.cos(rad54) * size,
    y = size + math.cos(rad36) * size
  },
  {
    x = size - math.cos(rad21) * size * gapSize,
    y = size - math.sin(rad21) * size * gapSize
  }
}

local circleDiagramExample = UIParent:CreateWidget("circlediagram", "circleDiagramExample", "UIParent")
circleDiagramExample:SetExtent(size * 2, size * 2)
circleDiagramExample:AddAnchor("CENTER", "UIParent", 0, 0)
circleDiagramExample:SetDiagramColor(0.33, 0.62, 0.69, 0.7)
circleDiagramExample:SetMaxValue(15)

for i = 1, #pos do
  circleDiagramExample:AddPoint(pos[i].x, pos[i].y)
end

local background = circleDiagramExample:CreateDrawable("ui/login_stage/02_ability.dds", "diagram", "background")
background:AddAnchor("CENTER", circleDiagramExample, -1, -1)

local points = {
  15,
  15,
  15,
  15,
  15,
}

for i = 1, #pos do
  point = points[i]
  circleDiagramExample:SetPointValue(i, point)
end

circleDiagramExample:Show(true)
```

![CircleDiagram Example](https://i.imgur.com/dFSRKEf.png)