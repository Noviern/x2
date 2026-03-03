# Uibounds
## Globals
**AP_BOTTOM**

`integer`

**AP_BOTTOMLEFT**

`integer`

**AP_BOTTOMRIGHT**

`integer`

**AP_CENTER**

`integer`

**AP_LEFT**

`integer`

**AP_RIGHT**

`integer`

**AP_TOP**

`integer`

**AP_TOPLEFT**

`integer`

**AP_TOPRIGHT**

`integer`

## Classes
### Class: Uibounds
#### Method: AddAnchor
```lua
(method) Uibounds:AddAnchor(anchor: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), x: number, y: number)
```
> Aligns the UI bounds to the specified anchor point at the given coordinates.
> 
> **Warning:** Although this variant implicitly uses the parent of the current
> object, `AddAnchor(anchor, parentId, x, y)` is usually recommended because it
> makes the anchor relationship explicit and much easier for future readers to
> understand which object this UI element is actually anchored to.
> 
> @*param* `anchor` — Sets both the anchor point and anchor origin. (default: `"TOPLEFT"`)
> 
> @*param* `x` — The x-coordinate offset. (default: `0`)
> 
> @*param* `y` — The y-coordinate offset. (default: `0`)
> 
> ```lua
> -- ○ = Anchor Point
> -- ● = Anchor Origin (X,Y) ──► +X (right)
> -- │      ●──────┐
> -- ▼ +Y   │ obj1 │  Aligns obj1 TOPLEFT to the parent obj TOPLEFT at the offset of (0,0).
> -- (down) └──────┘
> obj1:AddAnchor("TOPLEFT", 0, 0)
> ```
> 
> ```lua
> anchor:
>     | "TOPLEFT"
>     | "TOP"
>     | "TOPRIGHT"
>     | "LEFT"
>     | "CENTER"
>     | "RIGHT"
>     | "BOTTOMLEFT"
>     | "BOTTOM"
>     | "BOTTOMRIGHT"
> ```

#### Method: GetOffset
```lua
(method) Uibounds:GetOffset()
  -> offX: number
  2. offY: number
```
> Retrieves the UI scaled offset (right, center) of the UI bounds.
> 
> @*return* `offX` — The x-offset, scaled up by 1 / UI scale.
> 
> @*return* `offY` — The y-offset, scaled up by 1 / UI scale.

#### Method: GetHeight
```lua
(method) Uibounds:GetHeight()
  -> height: number
```
> Retrieves the unscaled height of the UI bounds.
> 
> @*return* `height` — The unscaled height.

#### Method: GetExtent
```lua
(method) Uibounds:GetExtent()
  -> width: number
  2. height: number
```
> Retrieves the unscaled width and height of the UI bounds.
> 
> @*return* `width` — The unscaled width.
> 
> @*return* `height` — The unscaled height.

#### Method: GetWidth
```lua
(method) Uibounds:GetWidth()
  -> width: number
```
> Retrieves the unscaled width of the UI bounds.
> 
> @*return* `width` — The unscaled width.

#### Method: SetExtent
```lua
(method) Uibounds:SetExtent(width: number, height: number)
```
> Sets the width and height of the UI bounds.
> 
> @*param* `width` — The width to set.
> 
> @*param* `height` — The height to set.

#### Method: RemoveAllAnchors
```lua
(method) Uibounds:RemoveAllAnchors()
```
> Removes all anchors from the UI bounds, excluding anchor origin.

#### Method: SetHeight
```lua
(method) Uibounds:SetHeight(height: number)
```
> Sets the height of the UI bounds.
> 
> @*param* `height` — The height to set.

#### Method: GetEffectiveOffset
```lua
(method) Uibounds:GetEffectiveOffset()
  -> effectiveOffX: number
  2. effectiveOffY: number
```
> Retrieves the effective rendered offset (left, top) of the UI bounds.
> 
> @*return* `effectiveOffX` — The effective x-offset.
> 
> @*return* `effectiveOffY` — The effective y-offset.

#### Method: CorrectOffsetByScreen
```lua
(method) Uibounds:CorrectOffsetByScreen()
  -> offX: number
  2. offY: number
```
> Retrieves the effective rendered offset (left, top) of the UI bounds,
> constrained by screen dimensions.
> 
> @*return* `offX` — The x-offset (min: `0`, max: `screen width - effective width`).
> 
> @*return* `offY` — The y-offset (min: `0`, max: `screen height - effective height`).

#### Method: AddAnchor
```lua
(method) Uibounds:AddAnchor(anchor: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), parentId: "UIParent"|Drawablebase|Widget, x: number, y: number)
```
> Aligns the UI bounds to the specified anchor point at the given coordinates.
> 
> @*param* `anchor` — Sets both the anchor point and anchor origin. (default: `"TOPLEFT"`)
> 
> @*param* `parentId` — The parent widget or UIParent.
> 
> @*param* `x` — The x-coordinate offset. (default: `0`)
> 
> @*param* `y` — The y-coordinate offset. (default: `0`)
> 
> ```lua
> -- ○ = Anchor Point
> -- ● = Anchor Origin (X,Y) ──► +X (right)
> -- │      ●──────┐
> -- ▼ +Y   │ obj2 │  Aligns obj2 TOPLEFT to obj1 TOPLEFT at the offset of (0,0).
> -- (down) └──────┘
> obj2:AddAnchor("TOPLEFT", obj1, 0, 0)
> ```
> 
> ```lua
> anchor:
>     | "TOPLEFT"
>     | "TOP"
>     | "TOPRIGHT"
>     | "LEFT"
>     | "CENTER"
>     | "RIGHT"
>     | "BOTTOMLEFT"
>     | "BOTTOM"
>     | "BOTTOMRIGHT"
> 
> -- [Drawablebase](../types/Drawablebase.md#class-drawablebase)
> -- 
> -- A `Drawablebase` is the most basic type of drawable. It supports visibility,
> -- color, rotation, and sRGB settings. Many other drawables like
> -- `DrawableDDS` and `ColorDrawable` inherit from this base class.
> -- 
> parentId:
>     | "UIParent"
> ```
> 
> See:
>   * [Widget](../types/Widget.md#class-widget)
>   * [Drawablebase](../types/Drawablebase.md#class-drawablebase)

#### Method: GetEffectiveExtent
```lua
(method) Uibounds:GetEffectiveExtent()
  -> effectiveWidth: number
  2. effectiveHeight: number
```
> Retrieves the effective rednered extent (width, height) of the UI bounds.
> 
> @*return* `effectiveWidth` — The effective width.
> 
> @*return* `effectiveHeight` — The effective height.

#### Method: AddAnchor
```lua
(method) Uibounds:AddAnchor(anchorPoint: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), parentId: "UIParent"|Drawablebase|Widget, anchorOrigin: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), x: number, y: number)
```
> Aligns the UI bounds' anchor point to the specified parent and origin at the
> given coordinates.
> 
> @*param* `anchorPoint` — The anchor point of the UI bounds. (default: `"TOPLEFT"`)
> 
> @*param* `parentId` — The parent widget or UIParent.
> 
> @*param* `anchorOrigin` — The anchor origin on the parent. (default: `"TOPLEFT"`)
> 
> @*param* `x` — The x-coordinate offset. (default: `0`)
> 
> @*param* `y` — The y-coordinate offset. (default: `0`)
> 
> ```lua
> -- ○ = Anchor Point
> -- ● = Anchor Origin (X,Y) ──► +X (right)
> -- │      ┌──────┐
> -- ▼ +Y   │ obj1 │ Aligns obj2 TOPLEFT to obj1 BOTTOMRIGHT at the offset of (0,0).
> -- (down) └──────●○──────┐
> --                │ obj2 │
> --                └──────┘
> obj2:AddAnchor("TOPLEFT", obj1, "BOTTOMRIGHT", 0, 0)
> ```
> 
> ```lua
> anchorPoint:
>     | "TOPLEFT"
>     | "TOP"
>     | "TOPRIGHT"
>     | "LEFT"
>     | "CENTER"
>     | "RIGHT"
>     | "BOTTOMLEFT"
>     | "BOTTOM"
>     | "BOTTOMRIGHT"
> 
> -- [Drawablebase](../types/Drawablebase.md#class-drawablebase)
> -- 
> -- A `Drawablebase` is the most basic type of drawable. It supports visibility,
> -- color, rotation, and sRGB settings. Many other drawables like
> -- `DrawableDDS` and `ColorDrawable` inherit from this base class.
> -- 
> parentId:
>     | "UIParent"
> 
> anchorOrigin:
>     | "TOPLEFT"
>     | "TOP"
>     | "TOPRIGHT"
>     | "LEFT"
>     | "CENTER"
>     | "RIGHT"
>     | "BOTTOMLEFT"
>     | "BOTTOM"
>     | "BOTTOMRIGHT"
> ```
> 
> See:
>   * [Widget](../types/Widget.md#class-widget)
>   * [Drawablebase](../types/Drawablebase.md#class-drawablebase)

#### Method: CheckOutOfScreen
```lua
(method) Uibounds:CheckOutOfScreen()
  -> outsideOfScreen: boolean
```
> Checks if the UI bounds is outside the screen.
> 
> @*return* `outsideOfScreen` — `true` if the UI bounds is outside the screen, `false` otherwise.

#### Method: BindWidth
```lua
(method) Uibounds:BindWidth(width: number)
```
> Binds the width of the UI bounds.
> 
> @*param* `width` — The width to bind.

#### Method: SetWidth
```lua
(method) Uibounds:SetWidth(width: number)
```
> Sets the width of the UI bounds.
> 
> @*param* `width` — The width to set.

