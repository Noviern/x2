# DrawableDDS
## Classes
### Class: DrawableDDS
#### Method: AddAnchor
```lua
(method) Uibounds:AddAnchor(anchor: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), x: number, y: number)
```
Aligns the UI bounds to the specified anchor point at the given coordinates.

**Although this variant implicitly uses the parent of the current object,
`AddAnchor(anchor, parentId, x, y)` is usually recommended** because it makes
the anchor relationship explicit and much easier for future readers to
understand which object this UI element is actually anchored to.

@*param* `anchor` — Sets both the anchor point and anchor origin. (default: `"TOPLEFT"`)

@*param* `x` — The x-coordinate offset. (default: `0`)

@*param* `y` — The y-coordinate offset. (default: `0`)

```lua
-- ○ = Anchor Point
-- ● = Anchor Origin (X,Y) ──► +X (right)
-- │      ●──────┐
-- ▼ +Y   │ obj1 │  Aligns obj1 TOPLEFT to the parent obj TOPLEFT at the offset of (0,0).
-- (down) └──────┘
obj1:AddAnchor("TOPLEFT", 0, 0)
```

```lua
anchor:
    | "TOPLEFT"
    | "TOP"
    | "TOPRIGHT"
    | "LEFT"
    | "CENTER"
    | "RIGHT"
    | "BOTTOMLEFT"
    | "BOTTOM"
    | "BOTTOMRIGHT"
```

#### Method: AddAnchor
```lua
(method) Uibounds:AddAnchor(anchor: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), parentId: "UIParent"|Drawablebase|Widget, x: number, y: number)
```
Aligns the UI bounds to the specified anchor point at the given coordinates.

@*param* `anchor` — Sets both the anchor point and anchor origin. (default: `"TOPLEFT"`)

@*param* `parentId` — The parent widget or UIParent.

@*param* `x` — The x-coordinate offset. (default: `0`)

@*param* `y` — The y-coordinate offset. (default: `0`)

```lua
-- ○ = Anchor Point
-- ● = Anchor Origin (X,Y) ──► +X (right)
-- │      ●──────┐
-- ▼ +Y   │ obj2 │  Aligns obj2 TOPLEFT to obj1 TOPLEFT at the offset of (0,0).
-- (down) └──────┘
obj2:AddAnchor("TOPLEFT", obj1, 0, 0)
```

```lua
anchor:
    | "TOPLEFT"
    | "TOP"
    | "TOPRIGHT"
    | "LEFT"
    | "CENTER"
    | "RIGHT"
    | "BOTTOMLEFT"
    | "BOTTOM"
    | "BOTTOMRIGHT"

parentId:
    | "UIParent"
```

See:
  * [Widget](../types/Widget.md#class-widget)
  * [Drawablebase](../types/Drawablebase.md#class-drawablebase)

#### Method: AddAnchor
```lua
(method) Uibounds:AddAnchor(anchorPoint: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), parentId: "UIParent"|Drawablebase|Widget, anchorOrigin: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), x: number, y: number)
```
Aligns the UI bounds' anchor point to the specified parent and origin at the
given coordinates.

@*param* `anchorPoint` — The anchor point of the UI bounds. (default: `"TOPLEFT"`)

@*param* `parentId` — The parent widget or UIParent.

@*param* `anchorOrigin` — The anchor origin on the parent. (default: `"TOPLEFT"`)

@*param* `x` — The x-coordinate offset. (default: `0`)

@*param* `y` — The y-coordinate offset. (default: `0`)

```lua
-- ○ = Anchor Point
-- ● = Anchor Origin (X,Y) ──► +X (right)
-- │      ┌──────┐
-- ▼ +Y   │ obj1 │ Aligns obj2 TOPLEFT to obj1 BOTTOMRIGHT at the offset of (0,0).
-- (down) └──────●○──────┐
--                │ obj2 │
--                └──────┘
obj2:AddAnchor("TOPLEFT", obj1, "BOTTOMRIGHT", 0, 0)
```

```lua
anchorPoint:
    | "TOPLEFT"
    | "TOP"
    | "TOPRIGHT"
    | "LEFT"
    | "CENTER"
    | "RIGHT"
    | "BOTTOMLEFT"
    | "BOTTOM"
    | "BOTTOMRIGHT"

parentId:
    | "UIParent"

anchorOrigin:
    | "TOPLEFT"
    | "TOP"
    | "TOPRIGHT"
    | "LEFT"
    | "CENTER"
    | "RIGHT"
    | "BOTTOMLEFT"
    | "BOTTOM"
    | "BOTTOMRIGHT"
```

See:
  * [Widget](../types/Widget.md#class-widget)
  * [Drawablebase](../types/Drawablebase.md#class-drawablebase)

#### Method: BindWidth
```lua
(method) Uibounds:BindWidth(width: number)
```
Binds the width of the UI bounds.

@*param* `width` — The width to bind.

#### Method: CheckOutOfScreen
```lua
(method) Uibounds:CheckOutOfScreen()
  -> outsideOfScreen: boolean
```
Checks if the UI bounds is outside the screen.

@*return* `outsideOfScreen` — `true` if the UI bounds is outside the screen, `false` otherwise.

#### Method: CorrectOffsetByScreen
```lua
(method) Uibounds:CorrectOffsetByScreen()
  -> offX: number
  2. offY: number
```
Retrieves the offset coordinates of the UI bounds, constrained by screen
dimensions.

@*return* `offX` — The x-offset (min: `0`, max: `screen width - effective width`).

@*return* `offY` — The y-offset (min: `0`, max: `screen height - effective height`).

#### Method: GetEffectiveExtent
```lua
(method) Uibounds:GetEffectiveExtent()
  -> effectiveWidth: number
  2. effectiveHeight: number
```
Retrieves the effective width and height of the UI bounds, scaled if
ApplyUIScale is true.

@*return* `effectiveWidth` — The effective width.

@*return* `effectiveHeight` — The effective height.

#### Method: GetEffectiveOffset
```lua
(method) Uibounds:GetEffectiveOffset()
  -> effectiveOffX: number
  2. effectiveOffY: number
```
Retrieves the effective offset (left, top) of the UI bounds.

@*return* `effectiveOffX` — The effective x-offset.

@*return* `effectiveOffY` — The effective y-offset.

#### Method: GetExtent
```lua
(method) Uibounds:GetExtent()
  -> width: number
  2. height: number
```
Retrieves the unscaled width and height of the UI bounds.

@*return* `width` — The unscaled width.

@*return* `height` — The unscaled height.

#### Method: GetHeight
```lua
(method) Uibounds:GetHeight()
  -> height: number
```
Retrieves the unscaled height of the UI bounds.

@*return* `height` — The unscaled height.

#### Method: GetId
```lua
(method) Uiobject:GetId()
  -> id: string
```
Retrieves the ID of the UI object.

@*return* `id` — The UI object's ID.

#### Method: GetName
```lua
(method) Uiobject:GetName()
  -> name: string
```
Retrieves the name of the UI object.

#### Method: GetObjectType
```lua
(method) Uiobject:GetObjectType()
  -> objectType: "avi"|"button"|"chatwindow"|"checkbutton"|"circlediagram"...(+34)
```
Retrieves the object type of the UI object.

@*return* `objectType` — The UI object's type.

```lua
objectType:
    | "avi"
    | "button"
    | "chatwindow"
    | "checkbutton"
    | "circlediagram"
    | "colorpicker"
    | "combobox"
    | "cooldownbutton"
    | "cooldownconstantbutton"
    | "cooldowninventorybutton"
    | "damagedisplay"
    | "dynamiclist"
    | "editbox"
    | "editboxmultiline"
    | "emptywidget"
    | "folder"
    | "gametooltip"
    | "grid"
    | "label"
    | "line"
    | "listbox"
    | "listctrl"
    | "megaphonechatedit"
    | "message"
    | "modelview"
    | "pageable"
    | "paintcolorpicker"
    | "radiogroup"
    | "roadmap"
    | "slider"
    | "slot"
    | "statusbar"
    | "tab"
    | "textbox"
    | "unitframetooltip"
    | "webbrowser"
    | "window"
    | "worldmap"
    | "x2editbox"
```

#### Method: GetOffset
```lua
(method) Uibounds:GetOffset()
  -> offX: number
  2. offY: number
```
Retrieves the UI scaled offset (right, center) of the UI bounds.

@*return* `offX` — The x-offset, scaled up by 1 / UI scale.

@*return* `offY` — The y-offset, scaled up by 1 / UI scale.

#### Method: GetTextureSize
```lua
(method) DrawableDDS:GetTextureSize()
  -> width: number
  2. height: number
```
Retrieves the width and height of the texture for the DrawableDDS.

@*return* `width` — The texture width.

@*return* `height` — The texture height.

#### Method: GetWidth
```lua
(method) Uibounds:GetWidth()
  -> width: number
```
Retrieves the unscaled width of the UI bounds.

@*return* `width` — The unscaled width.

#### Method: IsValidUIObject
```lua
(method) Uiobject:IsValidUIObject()
  -> validUiobject: boolean
```
Checks if the UI object is still valid. A UI object can become invalid if it
has been removed from the games Widget Pool through
`Widget:EnableHidingIsRemove(true)`

@*return* `validUiobject` — `true` if the UI object is valid, `false` otherwise.

#### Method: IsVisible
```lua
(method) Drawablebase:IsVisible()
  -> visible: boolean
```
Returns a boolean indicating if the Drawablebase is visible.

@*return* `visible` — `true` if the Drawablebase is visible, `false` otherwise.

#### Method: RemoveAllAnchors
```lua
(method) Uibounds:RemoveAllAnchors()
```
Removes all anchors from the UI bounds, excluding anchor origin.

#### Method: SetColor
```lua
(method) Drawablebase:SetColor(r: number, g: number, b: number, a: number)
```
Sets the color for the Drawablebase.

@*param* `r` — The red color component (min: `0`, max: `1`).

@*param* `g` — The green color component (min: `0`, max: `1`).

@*param* `b` — The blue color component (min: `0`, max: `1`).

@*param* `a` — The alpha (opacity) component (min: `0`, max: `1`).

#### Method: SetCoords
```lua
(method) DrawableDDS:SetCoords(x: number, y: number, width: number, height: number)
```
Sets the coordinates and dimensions of the texture for the DrawableDDS.

@*param* `x` — The x-coordinate of the texture.

@*param* `y` — The y-coordinate of the texture.

@*param* `width` — The width of the texture.

@*param* `height` — The height of the texture.

#### Method: SetExtent
```lua
(method) Uibounds:SetExtent(width: number, height: number)
```
Sets the width and height of the UI bounds.

@*param* `width` — The width to set.

@*param* `height` — The height to set.

#### Method: SetHeight
```lua
(method) Uibounds:SetHeight(height: number)
```
Sets the height of the UI bounds.

@*param* `height` — The height to set.

#### Method: SetInset
```lua
(method) DrawableDDS:SetInset(left: number, top: number, right: number, bottom: number)
```
Sets the inset for the DrawableDDS.

@*param* `left` — The left inset.

@*param* `top` — The top inset.

@*param* `right` — The right inset.

@*param* `bottom` — The bottom inset.

#### Method: SetRotation
```lua
(method) Drawablebase:SetRotation(angle: number)
```
Sets the rotation angle of the Drawablebase. Works on `ImageDrawable` and
`IconDrawable`.

@*param* `angle` — The rotation angle in degrees.

#### Method: SetSRGB
```lua
(method) Drawablebase:SetSRGB(srgb: boolean)
```
Enables or disables sRGB for the Drawablebase.

@*param* `srgb` — `true` to enable sRGB, `false` to disable.

#### Method: SetTexture
```lua
(method) DrawableDDS:SetTexture(filename: string)
```
Sets the texture file for the DrawableDDS.

@*param* `filename` — The path to the texture file.

#### Method: SetTextureColor
```lua
(method) DrawableDDS:SetTextureColor(colorKey: string)
```
Sets the texture color using a color key for the DrawableDDS.

@*param* `colorKey` — The color key to apply from the texture path `*.g` file.

#### Method: SetTextureInfo
```lua
(method) DrawableDDS:SetTextureInfo(infoKey: string, colorKey?: string)
```
Sets the texture information using an info key for the DrawableDDS.

@*param* `infoKey` — The info key taken from the texture path `*.g` file.

@*param* `colorKey` — The color key to apply from the texture path `*.g` file.

#### Method: SetVisible
```lua
(method) Drawablebase:SetVisible(visible: boolean)
```
Shows or hides the Drawablebase.

@*param* `visible` — `true` to show, `false` to hide. (default: `true`)

#### Method: SetVisibleForString
```lua
(method) Drawablebase:SetVisibleForString(minValue: string, maxValue: string, value: string)
```
Sets the visibility condition based on a string value range.

@*param* `minValue` — The minimum value for visibility.

@*param* `maxValue` — The maximum value for visibility.

@*param* `value` — The value to check (`value > minValue and value < maxValue`).

#### Method: SetWidth
```lua
(method) Uibounds:SetWidth(width: number)
```
Sets the width of the UI bounds.

@*param* `width` — The width to set.

#### Method: Show
```lua
(method) Drawablebase:Show(show: boolean)
```
Shows or hides the Drawablebase. Showing before the extents and anchors are set can cause issues.

@*param* `show` — `true` to show, `false` to hide. (default: `true`)

