# StatusBar
## Classes
### Class: StatusBar
Extends [Widget](../types/Widget.md#class-widget)

> [StatusBar](../types/StatusBar.md#class-statusbar)
> 
> A `StatusBar` widget visually represents a value with a colored bar. It
> supports numeric or string values, optional animation, customizable
> textures, orientation settings, and can have child widgets anchored to it.
> 
#### Method: AddAnchorChildToBar
```lua
(method) StatusBar:AddAnchorChildToBar(anchorChild: DrawableDDS, childAnchorPoint: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), anchorOigin?: "BOTTOM"|"BOTTOMLEFT"|"BOTTOMRIGHT"|"CENTER"|"LEFT"...(+4), x?: number, y?: number)
```
> Adds a child widget to the StatusBar with specified anchoring.
> 
> @*param* `anchorChild` — The child widget to anchor.
> 
> @*param* `childAnchorPoint` — The anchor point on the child widget.
> 
> @*param* `anchorOigin` — The optional origin anchor point.
> 
> @*param* `x` — The optional x-offset.
> 
> @*param* `y` — The optional y-offset.
> 
> ```lua
> local shadowDeco = widget:CreateDrawable("ui/common/default.dds", "gage_shadow", "artwork")
> widget:AddAnchorChildToBar(shadowDeco, "TOPLEFT", "TOPRIGHT", 0, -1)
> ```
> 
> ```lua
> childAnchorPoint:
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
> anchorOigin:
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
> See: [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)

#### Method: SetBarTextureCoords
```lua
(method) StatusBar:SetBarTextureCoords(coordX: number, coordY: number, coordW: number, coordH: number)
```
> Sets the texture coordinates for the StatusBar.
> 
> @*param* `coordX` — The x-coordinate of the texture.
> 
> @*param* `coordY` — The y-coordinate of the texture.
> 
> @*param* `coordW` — The width of the texture.
> 
> @*param* `coordH` — The height of the texture.

#### Method: SetBarTextureByKey
```lua
(method) StatusBar:SetBarTextureByKey(key: string)
```
> Sets the texture using a key for the StatusBar.
> 
> @*param* `key` — The texture key to apply.

#### Method: SetBarTexture
```lua
(method) StatusBar:SetBarTexture(nameTex: string, nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
```
> Sets the texture for the StatusBar.
> 
> @*param* `nameTex` — The texture path.
> 
> @*param* `nameLayer` — The layer to apply the texture to.
> 
> ```lua
> -- Drawables with layers of the same level and parent can overlap based on focus.
> nameLayer:
>     | "background" -- Layer 1
>     | "artwork" -- Layer 2
>     | "overlay" -- Layer 3
>     | "overoverlay" -- Layer 4
> ```

#### Method: SetMinMaxValues
```lua
(method) StatusBar:SetMinMaxValues(min: number, max: number)
```
> Sets the minimum and maximum values for the StatusBar (must be called before
> `StatusBar:SetValue`).
> 
> @*param* `min` — The minimum value.
> 
> @*param* `max` — The maximum value.

#### Method: SetOrientation
```lua
(method) StatusBar:SetOrientation(orientation: "HORIZONTAL"|"HORIZONTAL_INV"|"VERTICAL"|"normal")
```
> Sets the orientation of the StatusBar.
> 
> @*param* `orientation` — The orientation to set. (default: `"HORIZONTAL"`)
> 
> ```lua
> orientation:
>     | "HORIZONTAL"
>     | "HORIZONTAL_INV" -- TODO: test
>     | "normal"
>     | "VERTICAL"
> ```

#### Method: SetMinMaxValuesForString
```lua
(method) StatusBar:SetMinMaxValuesForString(min: string, max: string)
```
> Sets the minimum and maximum string values for the StatusBar.
> 
> @*param* `min` — The minimum value.
> 
> @*param* `max` — The maximum value.

#### Method: SetValue
```lua
(method) StatusBar:SetValue(value: number, anim?: boolean, animTime?: number)
```
> Sets the value for the StatusBar with optional animation. Texture for the
> StatusBar must be set before!
> 
> @*param* `value` — The value to set. (default: `0`)
> 
> @*param* `anim` — The optional animate state, `true` to enable animation, `false` to disable.
> 
> @*param* `animTime` — The optional animation duration in seconds.
> 
> ```lua
> widget:SetValue(100)
> widget:SetValue(80, true, 2) -- This will animate from 100 to 80.
> ```

#### Method: SetBarColorByKey
```lua
(method) StatusBar:SetBarColorByKey(colorKey: string)
```
> Sets the bar color using a color key for the StatusBar. Must be called after
> the texture has been set for the StatusBar.
> 
> @*param* `colorKey` — The color key to apply from the texture path `*.g` file.

#### Method: IsChangeAfterImageColor
```lua
(method) StatusBar:IsChangeAfterImageColor(value: string)
  -> boolean
```
> Checks the value against `StatusBar:GetValue()`.
> 
> @*param* `value` — The value to check.
> 
> @*return* — `true` if the value is greater than `StatusBar:GetValue()`, `false` otherwise.

#### Method: GetLeftWidth
```lua
(method) StatusBar:GetLeftWidth(value: number)
  -> leftWidth: number
```
> Retrieves the left width for the specified value of the StatusBar.
> 
> @*param* `value` — The value to calculate the width for.
> 
> @*return* `leftWidth` — The calculated left width.

#### Method: GetBarColor
```lua
(method) StatusBar:GetBarColor()
  -> barColor: RGBA
```
> Retrieves the color of the StatusBar.
> 
> @*return* `barColor` — The color of the StatusBar.

#### Method: SetBarColor
```lua
(method) StatusBar:SetBarColor(r: number, g: number, b: number, a: number)
```
> Sets the color for the StatusBar. Must be called after the texture has been
> set for the StatusBar.
> 
> @*param* `r` — The red color component (min: `0`, max: `1`).
> 
> @*param* `g` — The green color component (min: `0`, max: `1`).
> 
> @*param* `b` — The blue color component (min: `0`, max: `1`).
> 
> @*param* `a` — The alpha (opacity) component (min: `0`, max: `1`).

#### Method: GetMinMaxValues
```lua
(method) StatusBar:GetMinMaxValues()
  -> max: string
  2. min: string
```
> Retrieves the minimum and maximum values of the StatusBar.
> 
> @*return* `max` — The maximum value.
> 
> @*return* `min` — The minimum value.

#### Method: GetValue
```lua
(method) StatusBar:GetValue()
  -> value: string
```
> Retrieves the current value of the StatusBar.
> 
> @*return* `value` — The current value. (default: `"0"`)

#### Method: GetOrientation
```lua
(method) StatusBar:GetOrientation()
  -> orientation: "HORIZONTAL"|"HORIZONTAL_INV"|"VERTICAL"|"normal"
```
> Retrieves the orientation of the StatusBar.
> 
> @*return* `orientation` — The orientation of the StatusBar. (default: `"HORIZONTAL"`)
> 
> ```lua
> orientation:
>     | "HORIZONTAL"
>     | "HORIZONTAL_INV" -- TODO: test
>     | "normal"
>     | "VERTICAL"
> ```

#### Method: SetValueForString
```lua
(method) StatusBar:SetValueForString(value: string, anim?: boolean, animTime?: number)
```
> Sets the string value for the StatusBar with optional animation. Texture for
> the StatusBar must be set before!
> 
> @*param* `value` — The value to set. (default: `"0"`)
> 
> @*param* `anim` — The optional animate state, `true` to enable animation, `false` to disable.
> 
> @*param* `animTime` — The optional animation duration in seconds.
> 
> ```lua
> widget:SetValueForString("100")
> widget:SetValueForString("80", true, 2)
> ```

