# CircleDiagram
## Classes
### Class: CircleDiagram
Extends [Widget](../types/Widget.md#class-widget)

> [CircleDiagram](../types/CircleDiagram.md#class-circlediagram)
> 
> A `CircleDiagram` widget displays circular diagrams.
> 
#### Method: AddPoint
```lua
(method) CircleDiagram:AddPoint(offX: number, offY: number)
```
> Adds a point at the specified offset coordinates for the CircleDiagram.
> 
> @*param* `offX` — The x-coordinate offset.
> 
> @*param* `offY` — The y-coordinate offset.

#### Method: SetDiagramColor
```lua
(method) CircleDiagram:SetDiagramColor(r: number, g: number, b: number, a: number)
```
> Sets the color for the CircleDiagram.
> 
> @*param* `r` — The red color component (min: `0`, max: `1`).
> 
> @*param* `g` — The green color component (min: `0`, max: `1`).
> 
> @*param* `b` — The blue color component (min: `0`, max: `1`).
> 
> @*param* `a` — The alpha (opacity) component (min: `0`, max: `1`).

#### Method: SetLineThickness
```lua
(method) CircleDiagram:SetLineThickness(thickness: number)
```
> Sets the line thickness for the CircleDiagram.
> 
> @*param* `thickness` — The thickness of the diagram's lines.

#### Method: SetMaxValue
```lua
(method) CircleDiagram:SetMaxValue(maxValue: number)
```
> Sets the maximum value for the CircleDiagram.
> 
> @*param* `maxValue` — The maximum value for the diagram.

#### Method: GetPointOffset
```lua
(method) CircleDiagram:GetPointOffset(index: number)
  -> offX: number
  2. offY: number
```
> Retrieves the offset coordinates for the specified point index of the
> CircleDiagram.
> 
> @*param* `index` — The index of the point.
> 
> @*return* `offX` — The x-coordinate offset of the point.
> 
> @*return* `offY` — The y-coordinate offset of the point.

#### Method: ClearPoints
```lua
(method) CircleDiagram:ClearPoints()
```
> Clears all points from the CircleDiagram.

#### Method: GetCenterOffset
```lua
(method) CircleDiagram:GetCenterOffset()
  -> offX: number
  2. offY: number
```
> Retrieves the offset coordinates of the CircleDiagram's center.
> 
> @*return* `offX` — The x-coordinate offset of the center.
> 
> @*return* `offY` — The y-coordinate offset of the center.

#### Method: AddPointsByAngle
```lua
(method) CircleDiagram:AddPointsByAngle(pointNum: number)
```
> Adds a point by angle for the CircleDiagram.
> 
> @*param* `pointNum` — The angle value (in radians) for the point.

#### Method: SetPointValue
```lua
(method) CircleDiagram:SetPointValue(index: number, value: number)
```
> Sets the value for a specific point index of the CircleDiagram.
> 
> @*param* `index` — The index of the point.
> 
> @*param* `value` — The value to set for the point.

