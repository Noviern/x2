# CooldownInventoryButton
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
### Class: CooldownInventoryButton
Extends [CooldownButton](../types/CooldownButton.md#class-cooldownbutton)

> [CooldownInventoryButton](../types/CooldownInventoryButton.md#class-cooldowninventorybutton)
> 
> **Warning:** Most methods for this class are broken.
> 
> A `CooldownInventoryButton` widget reflects the cooldown state of
> inventory-based items. Extends CooldownButton to bind its cooldown display
> to items stored in various inventory containers such as bags, banks,
> coffers, or guild banks. Intended for UI elements that represent item usage
> and availability across different storage locations.
> 
#### Method: SetBagItemSlot
```lua
(method) CooldownInventoryButton:SetBagItemSlot(itemSlot: number)
```
> Sets the bag item slot for the `CooldownInventoryButton`.
> 
> @*param* `itemSlot` — The item slot index in the bag.

#### Method: SetCofferItemSlot
```lua
(method) CooldownInventoryButton:SetCofferItemSlot(itemSlot: number)
```
> Sets the coffer item slot for the `CooldownInventoryButton`.
> 
> @*param* `itemSlot` — The item slot index in the coffer.

#### Method: SetBankItemSlot
```lua
(method) CooldownInventoryButton:SetBankItemSlot(itemSlot: number)
```
> Sets the bank item slot for the `CooldownInventoryButton`.
> 
> @*param* `itemSlot` — The item slot index in the bank.

#### Method: SetGuildBankItemSlot
```lua
(method) CooldownInventoryButton:SetGuildBankItemSlot(itemSlot: number)
```
> Sets the guild bank item slot for the `CooldownInventoryButton`.
> 
> @*param* `itemSlot` — The item slot index in the guild bank.

