# CooldownConstantButton
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
### Class: CooldownConstantButton
Extends [CooldownButton](../types/CooldownButton.md#class-cooldownbutton)

> [CooldownConstantButton](../types/CooldownConstantButton.md#class-cooldownconstantbutton)
> 
> **Warning:** Most methods for this class are broken.
> 
> A `CooldownConstantButton` widget is specialized and binds its cooldown
> state to a fixed game entity such as an item or skill. Extends
> CooldownButton by associating cooldown timing with predefined item types,
> inventory slots, or skill identifiers, allowing the button to automatically
> reflect the cooldown of the bound entity.
> 
#### Method: SetItem
```lua
(method) CooldownConstantButton:SetItem(itemType: number)
```
> Sets the item type for the `CooldownConstantButton`.
> 
> @*param* `itemType` — The item type to set.

#### Method: SetItemSlot
```lua
(method) CooldownConstantButton:SetItemSlot(itemSlot: number, slotType: number)
```
> Sets the item slot and slot type for the `CooldownConstantButton`.
> 
> @*param* `itemSlot` — The item slot index.
> 
> @*param* `slotType` — The type of slot.

#### Method: SetSkill
```lua
(method) CooldownConstantButton:SetSkill(skillType: number)
```
> Sets the skill type for the `CooldownConstantButton`.
> 
> @*param* `skillType` — The skill type to set.

