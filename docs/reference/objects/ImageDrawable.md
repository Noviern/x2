# ImageDrawable
## Globals
**DAT_LINEAR_ALPHA**

`integer`

**DAT_LINEAR_SCALE**

`integer`

**DAT_MOVE**

`integer`

## Aliases
**DRAWABLE_ANIMATION_TYPE**

`DAT_LINEAR_ALPHA`|`DAT_LINEAR_SCALE`|`DAT_MOVE`

```lua
-- objects/ImageDrawable
DRAWABLE_ANIMATION_TYPE:
    | `DAT_LINEAR_ALPHA`
    | `DAT_LINEAR_SCALE`
    | `DAT_MOVE`
```

## Classes
### Class: ImageDrawable
Extends [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)

> [ImageDrawable](../types/ImageDrawable.md#class-imagedrawable)
> 
> A `ImageDrawable` is a drawable that displays a texture with optional
> animation. Supports frame-based animation, TGA or UCC textures, tiling,
> pixel snapping, and color checks.
> 
#### Method: Animation
```lua
(method) ImageDrawable:Animation(anim: boolean, loop: boolean)
```
> Enables or disables animation and looping for the texture of the
> `ImageDrawable`. Must be used after `ImageDrawable:SetAnimFrameInfo` to
> render the `ImageDrawable`.
> 
> @*param* `anim` — `true` to enable animation, `false` to disable. (default: `false`)
> 
> @*param* `loop` — `true` to enable looping, `false` to disable. (default: `false`)

#### Method: SetTgaTexture
```lua
(method) ImageDrawable:SetTgaTexture(filename: string)
  -> success: boolean
```
> Sets a TGA texture for the ImageDrawable.
> 
> @*param* `filename` — The path to the TGA texture file.

#### Method: SetTiling
```lua
(method) ImageDrawable:SetTiling(tiling: boolean)
```
> Enables or disables tiling for the ImageDrawable.
> 
> @*param* `tiling` — `true` to enable tiling, `false` to disable. (default: `false`)

#### Method: SetUccTextureByUccId
```lua
(method) ImageDrawable:SetUccTextureByUccId(complexId: string, isBack: boolean)
```
> Sets a UCC texture for the `ImageDrawable` by UCC ID.
> 
> @*param* `complexId` — The UCC ID for the texture.
> 
> @*param* `isBack` — `true` for background, `false` for foreground.

#### Method: SetSnap
```lua
(method) ImageDrawable:SetSnap(snap: boolean)
```
> Enables or disables pixel snapping for the ImageDrawable.
> 
> @*param* `snap` — `true` to enable snapping, `false` to disable. (default: `true`)

#### Method: IsWhiteTexture
```lua
(method) ImageDrawable:IsWhiteTexture()
  -> whiteTexture: boolean
```
> Checks if the texture of the `ImageDrawable` is white.
> 
> @*return* `whiteTexture` — `true` if the texture is white, `false` otherwise.

#### Method: SetAnimFrameInfo
```lua
(method) ImageDrawable:SetAnimFrameInfo(frameInfo: FrameInfo)
```
> Sets the animation frame information for the texture of the `ImageDrawable`.
> Once animation frame information has been set `ImageDrawable:Animation` is
> required to render the `ImageDrawable`.
> 
> @*param* `frameInfo` — The frame information for the animation.
> 
> ```lua
> local imageDrawable = widget:CreateImageDrawable("ui/hud/timer.dds", "background")
> imageDrawable:SetAnimFrameInfo({
>   { x = 0,   y = 0,  w = 61, h = 61, time = 100 },
>   { x = 61,  y = 0,  w = 61, h = 61, time = 100 },
>   { x = 122, y = 0,  w = 61, h = 61, time = 100 },
>   { x = 183, y = 0,  w = 61, h = 61, time = 100 },
>   { x = 0,   y = 61, w = 61, h = 61, time = 100 },
>   { x = 61,  y = 61, w = 61, h = 61, time = 100 },
>   { x = 122, y = 61, w = 61, h = 61, time = 100 },
>   { x = 0,   y = 0,  w = 61, h = 61, time = 500 },
> })
> imageDrawable:Animation(true, true)
> ```
> See: [FrameInfo](../types/classes.md#class-frameinfo)

#### Method: IsGrayTexture
```lua
(method) ImageDrawable:IsGrayTexture()
  -> grayTexture: boolean
```
> Checks if the texture of the `ImageDrawable` is gray.
> 
> @*return* `grayTexture` — `true` if the texture is gray, `false` otherwise.

#### Method: SetUccTextureInDoodad
```lua
(method) ImageDrawable:SetUccTextureInDoodad(doodadId: string, isBack: boolean)
```
> Sets a UCC texture for the `ImageDrawable` within a doodad.
> 
> @*param* `doodadId` — The doodad ID for the texture.
> 
> @*param* `isBack` — `true` for background, `false` for foreground.

