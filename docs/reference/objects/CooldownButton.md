# CooldownButton
## Globals
**UI_BUTTON_DISABLED**

`integer`

**UI_BUTTON_HIGHLIGHTED**

`integer`

**UI_BUTTON_MAX**

`integer`

**UI_BUTTON_NORMAL**

`integer`

**UI_BUTTON_PUSHED**

`integer`

## Classes
### Class: CooldownButton
Extends [Button](../types/Button.md#class-button)

> [CooldownButton](../types/CooldownButton.md#class-cooldownbutton)
> 
> **Warning:** Most methods for this class are broken.
> 
> A `CooldownButton` widget supports visual cooldown feedback. Extends the
> standard Button with cooldown timing and masking support, allowing a
> remaining duration to be displayed using an overlay or mask. Commonly used
> for abilities, actions, or items that require a recharge period before they
> can be activated again.
> 
#### Method: SetCoolDown
```lua
(method) CooldownButton:SetCoolDown(remainTime: number, totalTime: number)
```
> Sets the cooldown for the CooldownButton.
> 
> @*param* `remainTime` — The remaining cooldown time.
> 
> @*param* `totalTime` — The total cooldown duration.

#### Method: SetCoolDownMask
```lua
(method) CooldownButton:SetCoolDownMask(textureName: string, textureKey: string, colorKey: string)
```
> Sets the cooldown mask for the CooldownButton.
> 
> @*param* `textureName` — The name of the texture.
> 
> @*param* `textureKey` — The key for the texture.
> 
> @*param* `colorKey` — The key for the color.

