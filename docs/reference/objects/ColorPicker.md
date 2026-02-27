# ColorPicker
## Classes
### Class: ColorPicker
Extends [Widget](../types/Widget.md#class-widget)

> [ColorPicker](../types/ColorPicker.md#class-colorpicker)
> 
> A `ColorPicker` widget allows users to select colors from a palette image.
> Provides conversion between palette coordinates and RGB color values,
> enabling precise color picking and reverse lookup of color positions.
> Supports custom palette images for flexible color layouts.
> 
#### Method: GetColor
```lua
(method) ColorPicker:GetColor(xPos: number, yPos: number)
  -> red: number
  2. green: number
  3. blue: number
```
> Retrieves the color at the specified point on the ColorPicker.
> 
> @*param* `xPos` — The x-coordinate of the point.
> 
> @*param* `yPos` — The y-coordinate of the point.
> 
> @*return* `red` — The red color component (min: `0`, max: `1`).
> 
> @*return* `green` — The green color component (min: `0`, max: `1`).
> 
> @*return* `blue` — The blue color component (min: `0`, max: `1`).

#### Method: GetPoint
```lua
(method) ColorPicker:GetPoint(colorR: number, colorG: number, colorB: number)
  -> xPos: number
  2. yPos: number
```
> Retrieves the coordinates for the specified RGB color on the ColorPicker.
> 
> @*param* `colorR` — The red color component.
> 
> @*param* `colorG` — The green color component.
> 
> @*param* `colorB` — The blue color component.
> 
> @*return* `xPos` — The x-coordinate of the point.
> 
> @*return* `yPos` — The y-coordinate of the point.

#### Method: SetPaletteImage
```lua
(method) ColorPicker:SetPaletteImage(imageName: string)
```
> Sets the palette image for the ColorPicker.
> 
> @*param* `imageName` — The path to the palette image. This can be `"ui/..."` or `"addon/myaddon/image.png"`

