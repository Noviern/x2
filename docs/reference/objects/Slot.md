# Slot
## Globals
**ISLOT_ABILITY_VIEW**

`integer`

**ISLOT_ACTION**

`integer`

**ISLOT_BAG**

`integer`

**ISLOT_BANK**

`integer`

**ISLOT_COFFER**

`integer`

**ISLOT_CONSTANT**

`integer`

**ISLOT_EQUIPMENT**

`integer`

**ISLOT_GUILD_BANK**

`integer`

**ISLOT_HEIR_SKILL_VIEW**

`integer`

**ISLOT_INSTANT_KILL_STREAK**

`integer`

**ISLOT_MODE_ACTION**

`integer`

**ISLOT_ORIGIN_SKILL_VIEW**

`integer`

**ISLOT_PET_BATTLE_ACTION**

`integer`

**ISLOT_PET_RIDE_ACTION**

`integer`

**ISLOT_PRELIMINARY_EQUIPMENT**

`integer`

**ISLOT_SHORTCUT_ACTION**

`integer`

**ISLOT_SKILL_ALERT**

`integer`

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

## Aliases
**ISLOT_ABILITY_VIEW**

243

```lua
ISLOT_ABILITY_VIEW:
    | 243
```

**ISLOT_ACTION**

254

```lua
ISLOT_ACTION:
    | 254
```

**ISLOT_BAG**

2

```lua
ISLOT_BAG:
    | 2
```

**ISLOT_BANK**

3

```lua
ISLOT_BANK:
    | 3
```

**ISLOT_COFFER**

4

```lua
ISLOT_COFFER:
    | 4
```

**ISLOT_CONSTANT**

249

```lua
ISLOT_CONSTANT:
    | 249
```

**ISLOT_EQUIPMENT**

1

```lua
ISLOT_EQUIPMENT:
    | 1
```

**ISLOT_GUILD_BANK**

33

```lua
ISLOT_GUILD_BANK:
    | 33
```

**ISLOT_HEIR_SKILL_VIEW**

234

```lua
ISLOT_HEIR_SKILL_VIEW:
    | 234
```

**ISLOT_INSTANT_KILL_STREAK**

244

```lua
ISLOT_INSTANT_KILL_STREAK:
    | 244
```

**ISLOT_MODE_ACTION**

246

```lua
ISLOT_MODE_ACTION:
    | 246
```

**ISLOT_ORIGIN_SKILL_VIEW**

233

```lua
ISLOT_ORIGIN_SKILL_VIEW:
    | 233
```

**ISLOT_PET_BATTLE_ACTION**

239

```lua
ISLOT_PET_BATTLE_ACTION:
    | 239
```

**ISLOT_PET_RIDE_ACTION**

248

```lua
ISLOT_PET_RIDE_ACTION:
    | 248
```

**ISLOT_PRELIMINARY_EQUIPMENT**

7

```lua
ISLOT_PRELIMINARY_EQUIPMENT:
    | 7
```

**ISLOT_SHORTCUT_ACTION**

235

```lua
ISLOT_SHORTCUT_ACTION:
    | 235
```

**ISLOT_SKILL_ALERT**

232

```lua
ISLOT_SKILL_ALERT:
    | 232
```

**PRELIMINARY_EQUIPMENT_SLOT**

`ES_MAINHAND`|`ES_OFFHAND`

```lua
-- objects/Slot
PRELIMINARY_EQUIPMENT_SLOT:
    | `ES_MAINHAND`
    | `ES_OFFHAND`
```

**SLOT_TYPE**

`ISLOT_ABILITY_VIEW`|`ISLOT_ACTION`|`ISLOT_BAG`|`ISLOT_BANK`|`ISLOT_COFFER`...(+12)

```lua
-- objects/Slot
SLOT_TYPE:
    | `ISLOT_ABILITY_VIEW`
    | `ISLOT_ACTION`
    | `ISLOT_BAG`
    | `ISLOT_BANK`
    | `ISLOT_COFFER`
    | `ISLOT_CONSTANT`
    | `ISLOT_EQUIPMENT`
    | `ISLOT_GUILD_BANK`
    | `ISLOT_HEIR_SKILL_VIEW`
    | `ISLOT_INSTANT_KILL_STREAK`
    | `ISLOT_MODE_ACTION`
    | `ISLOT_ORIGIN_SKILL_VIEW`
    | `ISLOT_PET_BATTLE_ACTION`
    | `ISLOT_PET_RIDE_ACTION`
    | `ISLOT_PRELIMINARY_EQUIPMENT`
    | `ISLOT_SHORTCUT_ACTION`
    | `ISLOT_SKILL_ALERT`
```

## Classes
### Class: Slot
Extends [Button](../types/Button.md#class-button)

> [Slot](../types/Slot.md#class-slot)
> 
> A `Slot` widget represents an inventory, equipment, or skill slot in the UI.
> It can hold items, skills, skill alerts, or equipment. Supports hotkeys,
> tooltips, extra info, and virtual slot mappings.
> 
> **Dependencies**:
>  - [TextStyle](../types/TextStyle.md#class-textstyle) used for the `style` and `cooltime_style` fields.
>  - [IconDrawable](../types/IconDrawable.md#class-icondrawable) used for the `icon` field.
> 
#### Field: style
```lua
TextStyle
```
> The general style for the slot.

#### Field: cooltime_style
```lua
TextStyle
```
> The style used for cooldown text.

#### Field: icon
```lua
IconDrawable
```
> The icon displayed in the slot.

#### Method: ReleaseSlot
```lua
(method) Slot:ReleaseSlot()
```
> Releases the established values of the Slot.

#### Method: GetPassiveBuffType
```lua
(method) Slot:GetPassiveBuffType()
  -> passiveBuffType: number|nil
```
> Retrieves the passive buff type (not the buff id) for the Slot, if it exists.
> 
> @*return* `passiveBuffType` — The passive buff type, or `nil` if not set.

#### Method: ResetState
```lua
(method) Slot:ResetState()
```
> Resets the state of the Slot.

#### Method: GetSkillType
```lua
(method) Slot:GetSkillType()
  -> skillType: number|nil
```
> Retrieves the skill type for the Slot, if a skill is established.
> 
> @*return* `skillType` — The skill type, or `nil` if no skill is set.

#### Method: GetItemLevelRequirment
```lua
(method) Slot:GetItemLevelRequirment()
  -> itemLevelRequirment: number|nil
```
> Retrieves the item level requirement for the Slot.
> 
> @*return* `itemLevelRequirment` — The item level requirement, or `nil` if none exists.

#### Method: GetTooltip
```lua
(method) Slot:GetTooltip()
  -> tooltip: SkillTooltip|Slot|nil
```
> Retrieves the tooltip for the Slot. Returns `SkillTooltip` if a skill is
> established, `self` for other established types, or `nil` if nothing is
> established.
> 
> @*return* `tooltip` — The tooltip, `self`, or `nil`.
> 
> See: [SkillTooltip](../types/classes.md#class-skilltooltip)

#### Method: IsEmpty
```lua
(method) Slot:IsEmpty()
  -> empty: boolean
```
> Checks if the Slot is empty.
> 
> @*return* `empty` — `true` if the Slot is empty, `false` otherwise. (default: `true`)

#### Method: GetHotKey
```lua
(method) Slot:GetHotKey()
  -> hotKey: string
```
> Retrieves the hotkey for the Slot (may be an empty string).
> 
> @*return* `hotKey` — The hotkey string.

#### Method: GetBindedType
```lua
(method) Slot:GetBindedType()
  -> bindedType: "buff"|"function"|"item"|"none"|"pet_skill"...(+2)
```
> Retrieves the binded type of the Slot.
> 
> @*return* `bindedType` — The binded type.
> 
> ```lua
> bindedType:
>     | "buff"
>     | "function"
>     | "item"
>     | "none"
>     | "pet_skill"
>     | "skill"
>     | "slave_skill"
> ```

#### Method: EstablishSkill
```lua
(method) Slot:EstablishSkill(skillType: number)
```
> Establishes a skill for the Slot.
> 
> @*param* `skillType` — The type of the skill.

#### Method: EstablishItem
```lua
(method) Slot:EstablishItem(itemType: number, itemGrade: `0`|`10`|`11`|`12`|`1`...(+8))
```
> Establishes an item for the Slot with the specified type and grade.
> 
> @*param* `itemType` — The type of the item.
> 
> @*param* `itemGrade` — The grade of the item.
> 
> ```lua
> itemGrade:
>     | `0` -- NONE
>     | `1` -- BASIC
>     | `2` -- GRAND
>     | `3` -- RARE
>     | `4` -- ARCANE
>     | `5` -- HEROIC
>     | `6` -- UNIQUE
>     | `7` -- CELESTIAL
>     | `8` -- DIVNE
>     | `9` -- EPIC
>     | `10` -- LEGENDARY
>     | `11` -- MYTHIC
>     | `12` -- ETERNAL
> ```

#### Method: DisableDefaultClick
```lua
(method) Slot:DisableDefaultClick()
```
> Disables the default clicking behavior of the Slot.

#### Method: GetExtraInfo
```lua
(method) Slot:GetExtraInfo()
  -> extraInfo: ItemInfo|SkillInfo|nil
```
> Retrieves extra information for the Slot.
> 
> @*return* `extraInfo` — The extra information, or `nil` if none exists.

#### Method: EstablishSkillAlert
```lua
(method) Slot:EstablishSkillAlert(statusBuffTag: `10`|`11`|`12`|`13`|`14`...(+16), remain: number, duration: number)
```
> Establishes a skill alert for the Slot.
> 
> @*param* `statusBuffTag` — The status buff tag.
> 
> @*param* `remain` — The remaining time for the alert in milliseconds.
> 
> @*param* `duration` — The total duration of the alert in milliseconds.
> 
> ```lua
> -- Obtained from db unit_status_buff_tags
> statusBuffTag:
>     | `1` -- Stun
>     | `2` -- Impaled
>     | `3` -- Stagger
>     | `4` -- Tripped
>     | `5` -- Fear
>     | `6` -- Sleep
>     | `7` -- Snare
>     | `8` -- Slowed
>     | `9` -- Silence
>     | `10` -- Shackle
>     | `11` -- Imprison
>     | `12` -- Launched
>     | `13` -- Ice Damage
>     | `14` -- Deep Freeze
>     | `15` -- Poisonous
>     | `16` -- Bleed (All)
>     | `17` -- Shaken
>     | `18` -- Enervate
>     | `19` -- Charmed
>     | `20` -- Bubble Trap
>     | `21` -- Petrification
> ```

#### Method: EstablishSlot
```lua
(method) Slot:EstablishSlot(slotType: `ISLOT_ABILITY_VIEW`|`ISLOT_ACTION`|`ISLOT_BAG`|`ISLOT_BANK`|`ISLOT_COFFER`...(+12), slotIdx: number)
```
> Establishes a slot with the specified type and index. Triggers the event
> `OnContentUpdated`.
> 
> @*param* `slotType` — The type of the slot.
> 
> @*param* `slotIdx` — The slot index.
> 
> ```lua
> widget:EstablishSlot(ISLOT_ABILITY_VIEW, ATTACK_SKILL + 1)
> widget:EstablishSlot(ISLOT_ACTION, 1) -- Shortcut bar slots. (min: `1`, max: `72`)
> widget:EstablishSlot(ISLOT_BAG, 0) -- (min: `0`, max: `149`)
> widget:EstablishSlot(ISLOT_BANK, 0) -- (min: `0`, max: `149`)
> widget:EstablishSlot(ISLOT_COFFER, 0) -- (min: `0`, max: `149`)
> widget:EstablishSlot(ISLOT_CONSTANT, 0)
> widget:EstablishSlot(ISLOT_EQUIPMENT, ES_HEAD - 1) -- Equipment slots need to be negatively offset by 1 for `ISLOT_EQUIPMENT`.
> widget:EstablishSlot(ISLOT_GUILD_BANK, 0) -- The currently open guild bank cell. (min: `0`, max: `149`)
> widget:EstablishSlot(ISLOT_HEIR_SKILL_VIEW, 1) -- The current ancestral skill being changed. (min: `1`, max: `8`)
> widget:EstablishSlot(ISLOT_INSTANT_KILL_STREAK, @TODO:)
> widget:EstablishSlot(ISLOT_MODE_ACTION, 1) -- Dynamic shortcut slots. (min: `1`, max: `20`)
> widget:EstablishSlot(ISLOT_ORIGIN_SKILL_VIEW, 1) -- The current ancestral tree being changed.
> widget:EstablishSlot(ISLOT_PET_BATTLE_ACTION, 1) -- Currently summoned battlepet. (min: `1`, max: `6`)
> widget:EstablishSlot(ISLOT_PET_RIDE_ACTION, 1) -- Currently summoned mount. (min: `1`, max: `6`)
> widget:EstablishSlot(ISLOT_PRELIMINARY_EQUIPMENT, ES_MAINHAND - 1) -- Equipment slots need to be negatively offset by 1 for `ISLOT_PRELIMINARY_EQUIPMENT`.
> widget:EstablishSlot(ISLOT_SHORTCUT_ACTION, 1) -- Transformation shortcut bar slots. (min: `1`, max: `12`)
> widget:EstablishSlot(ISLOT_SKILL_ALERT, @TODO:)
> ```
> 
> 
> 
> ```lua
> -- objects/Slot
> slotType:
>     | `ISLOT_ABILITY_VIEW`
>     | `ISLOT_ACTION`
>     | `ISLOT_BAG`
>     | `ISLOT_BANK`
>     | `ISLOT_COFFER`
>     | `ISLOT_CONSTANT`
>     | `ISLOT_EQUIPMENT`
>     | `ISLOT_GUILD_BANK`
>     | `ISLOT_HEIR_SKILL_VIEW`
>     | `ISLOT_INSTANT_KILL_STREAK`
>     | `ISLOT_MODE_ACTION`
>     | `ISLOT_ORIGIN_SKILL_VIEW`
>     | `ISLOT_PET_BATTLE_ACTION`
>     | `ISLOT_PET_RIDE_ACTION`
>     | `ISLOT_PRELIMINARY_EQUIPMENT`
>     | `ISLOT_SHORTCUT_ACTION`
>     | `ISLOT_SKILL_ALERT`
> ```

#### Method: EstablishSkillSlot
```lua
(method) Slot:EstablishSkillSlot(slotType: `ISLOT_ABILITY_VIEW`|`ISLOT_ACTION`|`ISLOT_BAG`|`ISLOT_BANK`|`ISLOT_COFFER`...(+12), slotIdx: number)
```
> Establishes a skill slot for the Slot.
> 
> @*param* `slotType` — The type of the slot.
> 
> @*param* `slotIdx` — The index of the slot.
> 
> ```lua
> -- objects/Slot
> slotType:
>     | `ISLOT_ABILITY_VIEW`
>     | `ISLOT_ACTION`
>     | `ISLOT_BAG`
>     | `ISLOT_BANK`
>     | `ISLOT_COFFER`
>     | `ISLOT_CONSTANT`
>     | `ISLOT_EQUIPMENT`
>     | `ISLOT_GUILD_BANK`
>     | `ISLOT_HEIR_SKILL_VIEW`
>     | `ISLOT_INSTANT_KILL_STREAK`
>     | `ISLOT_MODE_ACTION`
>     | `ISLOT_ORIGIN_SKILL_VIEW`
>     | `ISLOT_PET_BATTLE_ACTION`
>     | `ISLOT_PET_RIDE_ACTION`
>     | `ISLOT_PRELIMINARY_EQUIPMENT`
>     | `ISLOT_SHORTCUT_ACTION`
>     | `ISLOT_SKILL_ALERT`
> ```

#### Method: EstablishVirtualSlot
```lua
(method) Slot:EstablishVirtualSlot(slotType: `ISLOT_ABILITY_VIEW`|`ISLOT_ACTION`|`ISLOT_BAG`|`ISLOT_BANK`|`ISLOT_COFFER`...(+12), slotIdx: number, virtualSlotIdx: number)
```
> Establishes a virtual slot for the Slot. Triggers the event
> `OnContentUpdated`.
> 
> @*param* `slotType` — The type of the slot.
> 
> @*param* `slotIdx` — The slot index.
> 
> @*param* `virtualSlotIdx` — The virtual slot index.
> 
> ```lua
> widget:EstablishVirtualSlot(ISLOT_ABILITY_VIEW, ATTACK_SKILL + 1, 1)
> widget:EstablishVirtualSlot(ISLOT_ACTION, 1, 1) -- Shortcut bar slots. (min: `1`, max: `72`)
> widget:EstablishVirtualSlot(ISLOT_BAG, 0, 0) -- (min: `0`, max: `149`)
> widget:EstablishVirtualSlot(ISLOT_BANK, 0, 0) -- (min: `0`, max: `149`)
> widget:EstablishVirtualSlot(ISLOT_COFFER, 0, 1) -- (min: `0`, max: `149`)
> widget:EstablishVirtualSlot(ISLOT_CONSTANT, 0, 1)
> widget:EstablishVirtualSlot(ISLOT_EQUIPMENT, ES_HEAD - 1, 1) -- Equipment slots need to be negatively offset by 1 for `ISLOT_EQUIPMENT`.
> widget:EstablishVirtualSlot(ISLOT_GUILD_BANK, 0, 1) -- The currently open guild bank cell. (min: `0`, max: `149`)
> widget:EstablishVirtualSlot(ISLOT_HEIR_SKILL_VIEW, 1, 1) -- The current ancestral skill being changed. (min: `1`, max: `8`)
> widget:EstablishVirtualSlot(ISLOT_INSTANT_KILL_STREAK, @TODO:, 1)
> widget:EstablishVirtualSlot(ISLOT_MODE_ACTION, 1, 1) -- Dynamic shortcut slots. (min: `1`, max: `20`)
> widget:EstablishVirtualSlot(ISLOT_ORIGIN_SKILL_VIEW, 1, 1) -- The current ancestral tree being changed.
> widget:EstablishVirtualSlot(ISLOT_PET_BATTLE_ACTION, 1, 1) -- Currently summoned battlepet. (min: `1`, max: `6`)
> widget:EstablishVirtualSlot(ISLOT_PET_RIDE_ACTION, 1, 1) -- Currently summoned mount. (min: `1`, max: `6`)
> widget:EstablishVirtualSlot(ISLOT_PRELIMINARY_EQUIPMENT, ES_MAINHAND - 1, 1) -- Equipment slots need to be negatively offset by 1 for `ISLOT_PRELIMINARY_EQUIPMENT`.
> widget:EstablishVirtualSlot(ISLOT_SHORTCUT_ACTION, 1, 1) -- Transformation shortcut bar slots. (min: `1`, max: `12`)
> widget:EstablishVirtualSlot(ISLOT_SKILL_ALERT, @TODO:, 1)
> ```
> 
> 
> 
> ```lua
> -- objects/Slot
> slotType:
>     | `ISLOT_ABILITY_VIEW`
>     | `ISLOT_ACTION`
>     | `ISLOT_BAG`
>     | `ISLOT_BANK`
>     | `ISLOT_COFFER`
>     | `ISLOT_CONSTANT`
>     | `ISLOT_EQUIPMENT`
>     | `ISLOT_GUILD_BANK`
>     | `ISLOT_HEIR_SKILL_VIEW`
>     | `ISLOT_INSTANT_KILL_STREAK`
>     | `ISLOT_MODE_ACTION`
>     | `ISLOT_ORIGIN_SKILL_VIEW`
>     | `ISLOT_PET_BATTLE_ACTION`
>     | `ISLOT_PET_RIDE_ACTION`
>     | `ISLOT_PRELIMINARY_EQUIPMENT`
>     | `ISLOT_SHORTCUT_ACTION`
>     | `ISLOT_SKILL_ALERT`
> ```

#### Method: ChangeIconLayer
```lua
(method) Slot:ChangeIconLayer(nameLayer: "artwork"|"background"|"overlay"|"overoverlay")
```
> Changes the icon layer for the Slot.
> 
> @*param* `nameLayer` — The name of the layer to set.
> 
> ```lua
> -- Drawables with layers of the same level and parent can overlap based on focus.
> nameLayer:
>     | "background" -- Layer 1
>     | "artwork" -- Layer 2
>     | "overlay" -- Layer 3
>     | "overoverlay" -- Layer 4
> ```

