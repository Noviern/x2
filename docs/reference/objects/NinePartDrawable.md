# NinePartDrawable
## Classes
### Class: NinePartDrawable
Extends [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)

> [NinePartDrawable](../types/NinePartDrawable.md#class-ninepartdrawable)
> 
> A `NinePartDrawable` is a drawable that is split into nine sections for
> scalable UI elements. Individual parts can be made invisible to control
> rendering.
> 
#### Method: SetOutlineInvisiblePart
```lua
(method) NinePartDrawable:SetOutlineInvisiblePart(invisible: boolean, part: number)
```
> Sets the outline invisible part for the NinePartDrawable. Only works on one
> part at a time.
> 
> @*param* `invisible` — `true` to make the part invisible, `false` to make it visible.
> 
> @*param* `part` — The part to set as invisible. (min: `0`, max: `8`)

