# EffectDrawable
## Classes
### Class: EffectDrawable
Extends [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)

> [EffectDrawable](../types/EffectDrawable.md#class-effectdrawable)
> 
> A `EffectDrawable` is a drawable that supports visual effects and animations.
> It allows configuring effect phases, color, rotation, scale, move effects,
> intervals, and priority, and can be started or stopped.
> 
#### Method: ClearEffect
```lua
(method) EffectDrawable:ClearEffect()
```
> Clears all effects from the EffectDrawable.

#### Method: SetMoveEffectEdge
```lua
(method) EffectDrawable:SetMoveEffectEdge(phase: number, initial: number, final: number)
```
> Sets an edge-based move effect for the specified phase.
> 
> @*param* `phase` — The effect phase. (min: `1`)
> 
> @*param* `initial` — The initial scale. (min: `0`, max: `1`)
> 
> @*param* `final` — The final scale. (min: `0`, max: `1`)

#### Method: SetMoveEffectCircle
```lua
(method) EffectDrawable:SetMoveEffectCircle(phase: number, initial: number, final: number)
```
> Sets a circular move effect for the specified phase.
> 
> @*param* `phase` — The effect phase. (min: `1`)
> 
> @*param* `initial` — The initial angle in degrees.
> 
> @*param* `final` — The final angle in degrees.

#### Method: SetInterval
```lua
(method) EffectDrawable:SetInterval(initialInterval: number)
```
> Sets the initial delay before effect phases start.
> 
> @*param* `initialInterval` — The initial delay in seconds.

#### Method: SetInternalDrawType
```lua
(method) EffectDrawable:SetInternalDrawType(drawType: string)
```
> Sets the internal draw type for the EffectDrawable.
> 
> @*param* `drawType` — The draw type to set.

#### Method: SetMoveEffectInterval
```lua
(method) EffectDrawable:SetMoveEffectInterval(phase: number, interval: number)
```
> Sets the interval between move effects for the specified phase.
> 
> @*param* `phase` — The effect phase. (min: `1`)
> 
> @*param* `interval` — The interval in seconds.

#### Method: SetMoveInterval
```lua
(method) EffectDrawable:SetMoveInterval(InitialInterval: number)
```
> Sets the initial delay for move effects.
> 
> @*param* `InitialInterval` — The initial delay in seconds.

#### Method: SetMoveEffectType
```lua
(method) EffectDrawable:SetMoveEffectType(phase: number, moveType: "bottom"|"circle"|"left"|"right"|"top", horizontalRadius: number, verticalRadius: number, velocityTime: number, accelerationTime: number)
```
> Sets the move effect type and parameters for the specified phase.
> 
> @*param* `phase` — The effect phase. (min: `1`)
> 
> @*param* `moveType` — The type of move effect.
> 
> @*param* `horizontalRadius` — The horizontal radius of the effect.
> 
> @*param* `verticalRadius` — The vertical radius of the effect.
> 
> @*param* `velocityTime` — The velocity duration in seconds.
> 
> @*param* `accelerationTime` — The acceleration duration in seconds.
> 
> ```lua
> moveType:
>     | "bottom"
>     | "circle"
>     | "left"
>     | "right"
>     | "top"
> ```

#### Method: SetMoveRotate
```lua
(method) EffectDrawable:SetMoveRotate(needRotate: boolean)
```
> Enables or disables rotation for move effects.
> 
> @*param* `needRotate` — `true` to enable rotation, `false` to disable. (default: `true`)

#### Method: SetMoveRepeatCount
```lua
(method) EffectDrawable:SetMoveRepeatCount(repeatCount: number)
```
> Sets the repeat count for move effects.
> 
> @*param* `repeatCount` — The number of repeats. (`0` for infinite, default: `0`)

#### Method: SetRepeatCount
```lua
(method) EffectDrawable:SetRepeatCount(repeatCount: number)
```
> Sets the repeat count for effects.
> 
> @*param* `repeatCount` — The number of repeats. (`0` for infinite, default: `0`)

#### Method: SetEffectScaleAxis
```lua
(method) EffectDrawable:SetEffectScaleAxis(phase: number, axis: string)
```
> Sets the axis for the scale effect in the specified phase.
> 
> @*param* `phase` — The effect phase. (min: `1`)
> 
> @*param* `axis` — The axis for scaling.

#### Method: SetEffectRotate
```lua
(method) EffectDrawable:SetEffectRotate(phase: number, initial: number, final: number)
```
> Sets the rotation effect for the specified phase.
> 
> @*param* `phase` — The effect phase. (min: `1`)
> 
> @*param* `initial` — The initial rotation in degrees. (default: `0`)
> 
> @*param* `final` — The final rotation in degrees. (default: `0`)

#### Method: SetEffectClip
```lua
(method) EffectDrawable:SetEffectClip(phase: number, needClip: boolean)
```
> Sets the clipping behavior for the specified effect phase.
> 
> @*param* `phase` — The effect phase. (min: `1`)
> 
> @*param* `needClip` — `true` to enable clipping, `false` to disable. (default: `false`)

#### Method: IsRunning
```lua
(method) EffectDrawable:IsRunning()
  -> running: boolean
```
> Checks if the EffectDrawable is currently running.
> 
> @*return* `running` — `true` if the effect is running, `false` otherwise.

#### Method: ClearMoveEffect
```lua
(method) EffectDrawable:ClearMoveEffect()
```
> Clears all move effects from the EffectDrawable.

#### Method: SetEffectScale
```lua
(method) EffectDrawable:SetEffectScale(phase: number, initialX: number, finalX: number, initialY: number, finalY: number)
```
> Sets the scale effect for the specified phase.
> 
> @*param* `phase` — The effect phase. (min: `1`)
> 
> @*param* `initialX` — The initial X scale (default: `1`).
> 
> @*param* `finalX` — The final X scale (default: `1`).
> 
> @*param* `initialY` — The initial Y scale (default: `1`).
> 
> @*param* `finalY` — The final Y scale (default: `1`).

#### Method: SetEffectFinalColor
```lua
(method) EffectDrawable:SetEffectFinalColor(phase: number, finalR: number, finalG: number, finalB: number, finalA: number)
```
> Sets the final color for the specified effect phase.
> 
> @*param* `phase` — The effect phase. (min: `1`)
> 
> @*param* `finalR` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `finalG` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `finalB` — The blue color component. (min: `0`, max: `1`)
> 
> @*param* `finalA` — The alpha (opacity) component. (min: `0`, max: `1`)

#### Method: SetEffectInterval
```lua
(method) EffectDrawable:SetEffectInterval(phase: number, interval: number)
```
> Sets the time interval after the specified effect phase.
> 
> @*param* `phase` — The effect phase. (min: `1`)
> 
> @*param* `interval` — The interval in seconds.

#### Method: SetEffectInitialColor
```lua
(method) EffectDrawable:SetEffectInitialColor(phase: number, initialR: number, initialG: number, initialB: number, initialA: number)
```
> Sets the initial color for the specified effect phase.
> 
> @*param* `phase` — The effect phase. (min: `1`)
> 
> @*param* `initialR` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `initialG` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `initialB` — The blue color component. (min: `0`, max: `1`)
> 
> @*param* `initialA` — The alpha (opacity) component. (min: `0`, max: `1`)

#### Method: SetEffectPriority
```lua
(method) EffectDrawable:SetEffectPriority(phase: number, priority: "alpha"|"colorb"|"colorg"|"colorr"|"rotate"...(+2), velocityTime: number, accelerationTime: number)
```
> Sets the priority and timing for the specified effect phase.
> 
> @*param* `phase` — The effect phase. (min: `1`)
> 
> @*param* `priority` — The priority of the effect.
> 
> @*param* `velocityTime` — The velocity duration in seconds.
> 
> @*param* `accelerationTime` — The acceleration duration in seconds.
> 
> ```lua
> priority:
>     | "alpha"
>     | "colorr" -- TODO: test
>     | "colorg" -- TODO: test
>     | "colorb" -- TODO: test
>     | "rotate"
>     | "scalex"
>     | "scaley" -- TODO: test
> ```

#### Method: SetStartEffect
```lua
(method) EffectDrawable:SetStartEffect(start: boolean)
```
> Starts or stops the effect.
> 
> @*param* `start` — `true` to start the effect, `false` to stop. (default: `false`)

