# ThreeColorDrawable
## Classes
### Class: ThreeColorDrawable
Extends [Drawablebase](../types/Drawablebase.md#class-drawablebase)

> [ThreeColorDrawable](../types/ThreeColorDrawable.md#class-threecolordrawable)
> 
> A `ThreeColorDrawable` is a drawable that supports three separate colors
> applied to its texture, with optional user-defined or predefined images.
> Colors can be changed individually, and the drawable's position and size
> can be adjusted.
> 
#### Method: ChangeColor1
```lua
(method) ThreeColorDrawable:ChangeColor1(r: number, g: number, b: number)
```
> Sets the first color for the ThreeColorDrawable.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`)

#### Method: ChangeImageFile
```lua
(method) ThreeColorDrawable:ChangeImageFile(typeNumber: number)
```
> Changes the image file for the ThreeColorDrawable based on type.
> 
> @*param* `typeNumber` — The type number for the image file.

#### Method: ChangeUserImageFile
```lua
(method) ThreeColorDrawable:ChangeUserImageFile(idx: number)
```
> Changes the user-defined image file for the ThreeColorDrawable.
> 
> @*param* `idx` — The index of the user image file.

#### Method: ChangeColor3
```lua
(method) ThreeColorDrawable:ChangeColor3(r: number, g: number, b: number)
```
> Sets the third color for the ThreeColorDrawable.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`)

#### Method: ChangeColor2
```lua
(method) ThreeColorDrawable:ChangeColor2(r: number, g: number, b: number)
```
> Sets the second color for the ThreeColorDrawable.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`)

#### Method: SetCoords
```lua
(method) ThreeColorDrawable:SetCoords(x: number, y: number, width: number, height: number)
```
> Sets the coordinates and dimensions of the ThreeColorDrawable.
> 
> @*param* `x` — The x-coordinate of the drawable.
> 
> @*param* `y` — The y-coordinate of the drawable.
> 
> @*param* `width` — The width of the drawable.
> 
> @*param* `height` — The height of the drawable.

