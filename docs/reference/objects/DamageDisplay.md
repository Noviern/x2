# DamageDisplay
## Globals
**LAT_AFTERIMAGE**

`integer`

**LAT_COUNT**

`integer`

**LAT_LINEAR_DISPLAY**

`integer`

**LAT_MOVE**

`integer`

**LAT_NONE**

`integer`

**LAT_SHAKE**

`integer`

**PCT_DEFAULT**

`integer`

**PCT_SHIP_COLLISION**

`integer`

## Aliases
**LINEAR_ANIMATION_TYPE**

`LAT_AFTERIMAGE`|`LAT_COUNT`|`LAT_LINEAR_DISPLAY`|`LAT_MOVE`|`LAT_NONE`...(+1)

```lua
-- objects/DamageDisplay
LINEAR_ANIMATION_TYPE:
    | `LAT_AFTERIMAGE`
    | `LAT_COUNT`
    | `LAT_LINEAR_DISPLAY`
    | `LAT_MOVE`
    | `LAT_NONE`
    | `LAT_SHAKE`
```

**POSITION_CALCULATION_TYPE**

`PCT_DEFAULT`|`PCT_SHIP_COLLISION`

```lua
-- objects/DamageDisplay
POSITION_CALCULATION_TYPE:
    | `PCT_DEFAULT`
    | `PCT_SHIP_COLLISION`
```

## Classes
### Class: DamageDisplay
Extends [Widget](../types/Widget.md#class-widget)

> [DamageDisplay](../types/DamageDisplay.md#class-damagedisplay)
> 
> A `DamageDisplay` widget displays animated damage or combat-related text.
> Supports configurable animation sequences, positional calculation modes, and
> dynamic placement relative to source and target units. Provides control over
> insets, initial positioning, and animation behavior, enabling effects such
> as movement, shaking, scaling, fading, and afterimages commonly used in
> combat feedback and hit indicators.
> 
> **Dependencies**:
>  - [TextStyle](../types/TextStyle.md#class-textstyle)  used for the `style` and `extraStyle` fields.
> 
#### Field: style
```lua
TextStyle
```
> The text style applied to the widget's text.

#### Field: extraStyle
```lua
TextStyle
```
> TODO: what is extraStyle used for?

#### Method: SetInset
```lua
(method) DamageDisplay:SetInset(left: number, top: number, right: number, bottom: number)
```
> Sets the inset of the DamageDisplay.
> 
> @*param* `left` — The left inset. (default: `0`)
> 
> @*param* `top` — The top inset. (default: `0`)
> 
> @*param* `right` — The right inset. (default: `0`)
> 
> @*param* `bottom` — The bottom inset. (default: `0`)

#### Method: SetUnitId
```lua
(method) DamageDisplay:SetUnitId(sourceId: string, targetId: string)
```
> Sets the source and target unit IDs for the DamageDisplay.
> 
> @*param* `sourceId` — The source unit ID.
> 
> @*param* `targetId` — The target unit ID.

#### Method: SetPositionCalculationType
```lua
(method) DamageDisplay:SetPositionCalculationType(positionCalculationType: `PCT_DEFAULT`|`PCT_SHIP_COLLISION`)
```
> Sets the position calculation type for the DamageDisplay.
> 
> @*param* `positionCalculationType` — The position calculation type. (default: `PCT_DEFAULT`)
> 
> ```lua
> -- objects/DamageDisplay
> positionCalculationType:
>     | `PCT_DEFAULT`
>     | `PCT_SHIP_COLLISION`
> ```

#### Method: SetInitPos
```lua
(method) DamageDisplay:SetInitPos(x: number, y: number)
```
> Sets the initial position of the DamageDisplay.
> 
> @*param* `x` — The x-coordinate of the initial position. (default: `0`)
> 
> @*param* `y` — The y-coordinate of the initial position. (default: `0`)

#### Method: GetInset
```lua
(method) DamageDisplay:GetInset()
  -> left: number
  2. top: number
  3. right: number
  4. bottom: number
```
> Retrieves the inset of the DamageDisplay.
> 
> @*return* `left` — The left inset. (default: `0`)
> 
> @*return* `top` — The top inset. (default: `0`)
> 
> @*return* `right` — The right inset. (default: `0`)
> 
> @*return* `bottom` — The bottom inset. (default: `0`)

#### Method: SetAnimFrameInfo
```lua
(method) DamageDisplay:SetAnimFrameInfo(frameInfo: FrameInfo[])
```
> Sets the animation frame information for the DamageDisplay.
> 
> @*param* `frameInfo` — An array of frame information for the animation.
> 
> See: [FrameInfo](../types/classes.md#class-frameinfo)

#### Method: GetActualDrawn
```lua
(method) DamageDisplay:GetActualDrawn()
  -> x1: number
  2. y1: number
  3. x2: number
  4. y2: number
```
> Retrieves the actual drawn coordinates of the DamageDisplay text when animating.
> 
> @*return* `x1` — The left coordinate. (default: `0`)
> 
> @*return* `y1` — The top coordinate. (default: `0`)
> 
> @*return* `x2` — The right coordinate. (default: `0`)
> 
> @*return* `y2` — The bottom coordinate. (default: `0`)

#### Method: Animation
```lua
(method) DamageDisplay:Animation(anim: boolean)
```
> Enables or disables animation for the DamageDisplay.
> 
> @*param* `anim` — `true` to enable animation, `false` to disable. (default: `false`)

