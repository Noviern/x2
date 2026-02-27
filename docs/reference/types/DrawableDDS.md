# DrawableDDS
## Classes
### Class: DrawableDDS
Extends [Drawablebase](../types/Drawablebase.md#class-drawablebase)

> [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)
> 
> A `DrawableDDS` is a drawable with a DDS texture. It supports setting
> coordinates, insets, texture files, and applying colors or info keys.
> It is the base for `EffectDrawable`, `ImageDrawable`, `NinePartDrawable`,
> and `ThreePartDrawable`.
> 
#### Method: GetTextureSize
```lua
(method) DrawableDDS:GetTextureSize()
  -> width: number
  2. height: number
```
> Retrieves the width and height of the texture for the DrawableDDS.
> 
> @*return* `width` — The texture width.
> 
> @*return* `height` — The texture height.

#### Method: SetTexture
```lua
(method) DrawableDDS:SetTexture(filename: string)
```
> Sets the texture file for the DrawableDDS.
> 
> @*param* `filename` — The path to the texture file.

#### Method: SetTextureColor
```lua
(method) DrawableDDS:SetTextureColor(colorKey: string)
```
> Sets the texture color using a color key for the DrawableDDS.
> 
> @*param* `colorKey` — The color key to apply from the texture path `*.g` file.

#### Method: SetInset
```lua
(method) DrawableDDS:SetInset(left: number, top: number, right: number, bottom: number)
```
> Sets the inset for the DrawableDDS.
> 
> @*param* `left` — The left inset.
> 
> @*param* `top` — The top inset.
> 
> @*param* `right` — The right inset.
> 
> @*param* `bottom` — The bottom inset.

#### Method: SetCoords
```lua
(method) DrawableDDS:SetCoords(x: number, y: number, width: number, height: number)
```
> Sets the coordinates and dimensions of the texture for the DrawableDDS.
> 
> @*param* `x` — The x-coordinate of the texture.
> 
> @*param* `y` — The y-coordinate of the texture.
> 
> @*param* `width` — The width of the texture.
> 
> @*param* `height` — The height of the texture.

#### Method: SetTextureInfo
```lua
(method) DrawableDDS:SetTextureInfo(infoKey: string, colorKey?: string)
```
> Sets the texture information using an info key for the DrawableDDS.
> 
> @*param* `infoKey` — The info key taken from the texture path `*.g` file.
> 
> @*param* `colorKey` — The color key to apply from the texture path `*.g` file.

