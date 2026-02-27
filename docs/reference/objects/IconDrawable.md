# IconDrawable
## Classes
### Class: IconDrawable
Extends [Drawablebase](../types/Drawablebase.md#class-drawablebase)

> [IconDrawable](../types/IconDrawable.md#class-icondrawable)
> 
> A `IconDrawable` is a drawable that can display one or multiple textures.
> Textures can be added, assigned a key, or cleared entirely.
> 
#### Method: AddTexture
```lua
(method) IconDrawable:AddTexture(filename: string)
```
> Adds a texture to the IconDrawable.
> 
> @*param* `filename` — The path to the texture file.

#### Method: AddTextureWithInfo
```lua
(method) IconDrawable:AddTextureWithInfo(filename: string, key: string)
```
> Adds a texture with a specific key to the IconDrawable.
> 
> @*param* `filename` — The path to the texture file.
> 
> @*param* `key` — The key information for the texture.

#### Method: ClearAllTextures
```lua
(method) IconDrawable:ClearAllTextures()
```
> Clears all textures from the IconDrawable.

