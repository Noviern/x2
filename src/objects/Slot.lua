---@meta _

ISLOT_ABILITY_VIEW = 243        -- objects/Slot SLOT_TYPE
---@alias ISLOT_ABILITY_VIEW 243
ISLOT_ACTION = 254              -- objects/Slot SLOT_TYPE
---@alias ISLOT_ACTION 254
ISLOT_BAG = 2                   -- objects/Slot SLOT_TYPE
---@alias ISLOT_BAG 2
ISLOT_BANK = 3                  -- objects/Slot SLOT_TYPE
---@alias ISLOT_BANK 3
ISLOT_COFFER = 4                -- objects/Slot SLOT_TYPE
---@alias ISLOT_COFFER 4
ISLOT_CONSTANT = 249            -- objects/Slot SLOT_TYPE
---@alias ISLOT_CONSTANT 249
ISLOT_EQUIPMENT = 1             -- objects/Slot SLOT_TYPE
---@alias ISLOT_EQUIPMENT 1
ISLOT_GUILD_BANK = 33           -- objects/Slot SLOT_TYPE
---@alias ISLOT_GUILD_BANK 33
ISLOT_HEIR_SKILL_VIEW = 234     -- objects/Slot SLOT_TYPE
---@alias ISLOT_HEIR_SKILL_VIEW 234
ISLOT_INSTANT_KILL_STREAK = 244 -- objects/Slot SLOT_TYPE
---@alias ISLOT_INSTANT_KILL_STREAK 244
ISLOT_MODE_ACTION = 246         -- objects/Slot SLOT_TYPE
---@alias ISLOT_MODE_ACTION 246
ISLOT_ORIGIN_SKILL_VIEW = 233   -- objects/Slot SLOT_TYPE
---@alias ISLOT_ORIGIN_SKILL_VIEW 233
ISLOT_PET_BATTLE_ACTION = 239   -- objects/Slot SLOT_TYPE
---@alias ISLOT_PET_BATTLE_ACTION 239
ISLOT_PET_RIDE_ACTION = 248     -- objects/Slot SLOT_TYPE
---@alias ISLOT_PET_RIDE_ACTION 248
ISLOT_PRELIMINARY_EQUIPMENT = 7 -- objects/Slot SLOT_TYPE
---@alias ISLOT_PRELIMINARY_EQUIPMENT 7
ISLOT_SHORTCUT_ACTION = 235     -- objects/Slot SLOT_TYPE
---@alias ISLOT_SHORTCUT_ACTION 235
ISLOT_SKILL_ALERT = 232         -- objects/Slot SLOT_TYPE
---@alias ISLOT_SKILL_ALERT 232
UI_BUTTON_DISABLED = 3          -- objects/Slot UI_BUTTON_STATE
UI_BUTTON_HIGHLIGHTED = 1       -- objects/Slot UI_BUTTON_STATE
UI_BUTTON_MAX = 4               -- objects/Slot
UI_BUTTON_NORMAL = 0            -- objects/Slot UI_BUTTON_STATE
UI_BUTTON_PUSHED = 2            -- objects/Slot UI_BUTTON_STATE

---objects/Slot
---@alias SLOT_TYPE
---| `ISLOT_ABILITY_VIEW`
---| `ISLOT_ACTION`
---| `ISLOT_BAG`
---| `ISLOT_BANK`
---| `ISLOT_COFFER`
---| `ISLOT_CONSTANT`
---| `ISLOT_EQUIPMENT`
---| `ISLOT_GUILD_BANK`
---| `ISLOT_HEIR_SKILL_VIEW`
---| `ISLOT_INSTANT_KILL_STREAK`
---| `ISLOT_MODE_ACTION`
---| `ISLOT_ORIGIN_SKILL_VIEW`
---| `ISLOT_PET_BATTLE_ACTION`
---| `ISLOT_PET_RIDE_ACTION`
---| `ISLOT_PRELIMINARY_EQUIPMENT`
---| `ISLOT_SHORTCUT_ACTION`
---| `ISLOT_SKILL_ALERT`

---objects/Slot
---@alias PRELIMINARY_EQUIPMENT_SLOT
---| `ES_MAINHAND`
---| `ES_OFFHAND`

---[Slot](lua://Slot)
---
---A `Slot` widget represents an inventory, equipment, or skill slot in the UI.
---It can hold items, skills, skill alerts, or equipment. Supports hotkeys,
---tooltips, extra info, and virtual slot mappings.
---
---**Dependencies**:
--- - [TextStyle](lua://TextStyle) used for the `style` and `cooltime_style` fields.
--- - [IconDrawable](lua://IconDrawable) used for the `icon` field.
---
---@class Slot: Button
---@field cooltime_style TextStyle The style used for cooldown text.
---@field icon IconDrawable The icon displayed in the slot.
---@field style TextStyle The general style for the slot.
local Slot = {}

---Changes the icon layer for the Slot.
---@param nameLayer DRAWABLE_NAME_LAYER The name of the layer to set.
function Slot:ChangeIconLayer(nameLayer) end

---Disables the default clicking behavior of the Slot.
function Slot:DisableDefaultClick() end

---Establishes an item for the Slot with the specified type and grade.
---@param itemType number The type of the item.
---@param itemGrade ITEM_GRADE_TYPE The grade of the item.
function Slot:EstablishItem(itemType, itemGrade) end

---Establishes a skill for the Slot.
---@param skillType number The type of the skill.
function Slot:EstablishSkill(skillType) end

---Establishes a skill alert for the Slot.
---@param statusBuffTag SKILL_ALERT_STATUS_BUFF_TAG The status buff tag.
---@param remain number The remaining time for the alert in milliseconds.
---@param duration number The total duration of the alert in milliseconds.
function Slot:EstablishSkillAlert(statusBuffTag, remain, duration) end

---@TODO: What slotTypes are supported?
---Establishes a skill slot for the Slot.
---@param slotType SLOT_TYPE The type of the slot.
---@param slotIdx number The index of the slot.
function Slot:EstablishSkillSlot(slotType, slotIdx) end

---Establishes a slot with the specified type and index. Triggers the event
---`OnContentUpdated`.
---@param slotType SLOT_TYPE The type of the slot.
---@param slotIdx number The slot index.
---@usage
---```lua
---widget:EstablishSlot(ISLOT_ABILITY_VIEW, ATTACK_SKILL + 1)
---widget:EstablishSlot(ISLOT_ACTION, 1) -- Shortcut bar slots. (min: `1`, max: `72`)
---widget:EstablishSlot(ISLOT_BAG, 0) -- (min: `0`, max: `149`)
---widget:EstablishSlot(ISLOT_BANK, 0) -- (min: `0`, max: `149`)
---widget:EstablishSlot(ISLOT_COFFER, 0) -- (min: `0`, max: `149`)
---widget:EstablishSlot(ISLOT_CONSTANT, 0)
---widget:EstablishSlot(ISLOT_EQUIPMENT, ES_HEAD - 1) -- Equipment slots need to be negatively offset by 1 for `ISLOT_EQUIPMENT`.
---widget:EstablishSlot(ISLOT_GUILD_BANK, 0) -- The currently open guild bank cell. (min: `0`, max: `149`)
---widget:EstablishSlot(ISLOT_HEIR_SKILL_VIEW, 1) -- The current ancestral skill being changed. (min: `1`, max: `8`)
---widget:EstablishSlot(ISLOT_INSTANT_KILL_STREAK, @TODO:)
---widget:EstablishSlot(ISLOT_MODE_ACTION, 1) -- Dynamic shortcut slots. (min: `1`, max: `20`)
---widget:EstablishSlot(ISLOT_ORIGIN_SKILL_VIEW, 1) -- The current ancestral tree being changed.
---widget:EstablishSlot(ISLOT_PET_BATTLE_ACTION, 1) -- Currently summoned battlepet. (min: `1`, max: `6`)
---widget:EstablishSlot(ISLOT_PET_RIDE_ACTION, 1) -- Currently summoned mount. (min: `1`, max: `6`)
---widget:EstablishSlot(ISLOT_PRELIMINARY_EQUIPMENT, ES_MAINHAND - 1) -- Equipment slots need to be negatively offset by 1 for `ISLOT_PRELIMINARY_EQUIPMENT`.
---widget:EstablishSlot(ISLOT_SHORTCUT_ACTION, 1) -- Transformation shortcut bar slots. (min: `1`, max: `12`)
---widget:EstablishSlot(ISLOT_SKILL_ALERT, @TODO:)
---```
---@overload fun(self: self, slotType: ISLOT_ABILITY_VIEW, slotIdx: SKILL)
---@overload fun(self: self, slotType: ISLOT_ACTION, slotIdx: number)
---@overload fun(self: self, slotType: ISLOT_BAG, slotIdx: number) @FIXME: Only grade of the item renders.
---@overload fun(self: self, slotType: ISLOT_BANK, slotIdx: number) @FIXME: Only grade of the item renders.
---@overload fun(self: self, slotType: ISLOT_COFFER, slotIdx: number) @FIXME: Only grade of the item renders.
---@overload fun(self: self, slotType: ISLOT_CONSTANT, slotIdx: 0)
---@overload fun(self: self, slotType: ISLOT_EQUIPMENT, slotIdx: EQUIPMENT_SLOT)
---@overload fun(self: self, slotType: ISLOT_GUILD_BANK, slotIdx: number) @FIXME: Only grade of the item renders.
---@overload fun(self: self, slotType: ISLOT_HEIR_SKILL_VIEW, slotIdx: HEIR_SKILL_TYPE)
---@overload fun(self: self, slotType: ISLOT_INSTANT_KILL_STREAK, slotIdx: number) @FIXME: Crash.
---@overload fun(self: self, slotType: ISLOT_MODE_ACTION, slotIdx: number)
---@overload fun(self: self, slotType: ISLOT_ORIGIN_SKILL_VIEW, slotIdx: number)
---@overload fun(self: self, slotType: ISLOT_PET_BATTLE_ACTION, slotIdx: number)
---@overload fun(self: self, slotType: ISLOT_PET_RIDE_ACTION, slotIdx: number)
---@overload fun(self: self, slotType: ISLOT_PRELIMINARY_EQUIPMENT, slotIdx: PRELIMINARY_EQUIPMENT_SLOT) @FIXME: Preliminary Equipment does not render.
---@overload fun(self: self, slotType: ISLOT_SHORTCUT_ACTION, slotIdx: number)
---@overload fun(self: self, slotType: ISLOT_SKILL_ALERT, slotIdx: number) @TODO:
function Slot:EstablishSlot(slotType, slotIdx) end

---@FIXME: virtualSlotIdx is used in `X2Bag:SlotByIdx`, `X2Bank:SlotByIdx`, `X2Coffer:SlotByIdx`, and `X2GuildBank:SlotByIdx`.
---Establishes a virtual slot for the Slot. Triggers the event
---`OnContentUpdated`.
---@param slotType SLOT_TYPE The type of the slot.
---@param slotIdx number The slot index.
---@param virtualSlotIdx number The virtual slot index.
---@usage
---```lua
---widget:EstablishVirtualSlot(ISLOT_ABILITY_VIEW, ATTACK_SKILL + 1, 1)
---widget:EstablishVirtualSlot(ISLOT_ACTION, 1, 1) -- Shortcut bar slots. (min: `1`, max: `72`)
---widget:EstablishVirtualSlot(ISLOT_BAG, 0, 1) -- (min: `0`, max: `149`)
---widget:EstablishVirtualSlot(ISLOT_BANK, 0, 1) -- (min: `0`, max: `149`)
---widget:EstablishVirtualSlot(ISLOT_COFFER, 0, 1) -- (min: `0`, max: `149`)
---widget:EstablishVirtualSlot(ISLOT_CONSTANT, 0, 1)
---widget:EstablishVirtualSlot(ISLOT_EQUIPMENT, ES_HEAD - 1, 1) -- Equipment slots need to be negatively offset by 1 for `ISLOT_EQUIPMENT`.
---widget:EstablishVirtualSlot(ISLOT_GUILD_BANK, 0, 1) -- The currently open guild bank cell. (min: `0`, max: `149`)
---widget:EstablishVirtualSlot(ISLOT_HEIR_SKILL_VIEW, 1, 1) -- The current ancestral skill being changed. (min: `1`, max: `8`)
---widget:EstablishVirtualSlot(ISLOT_INSTANT_KILL_STREAK, @TODO:, 1)
---widget:EstablishVirtualSlot(ISLOT_MODE_ACTION, 1, 1) -- Dynamic shortcut slots. (min: `1`, max: `20`)
---widget:EstablishVirtualSlot(ISLOT_ORIGIN_SKILL_VIEW, 1, 1) -- The current ancestral tree being changed.
---widget:EstablishVirtualSlot(ISLOT_PET_BATTLE_ACTION, 1, 1) -- Currently summoned battlepet. (min: `1`, max: `6`)
---widget:EstablishVirtualSlot(ISLOT_PET_RIDE_ACTION, 1, 1) -- Currently summoned mount. (min: `1`, max: `6`)
---widget:EstablishVirtualSlot(ISLOT_PRELIMINARY_EQUIPMENT, ES_MAINHAND - 1, 1) -- Equipment slots need to be negatively offset by 1 for `ISLOT_PRELIMINARY_EQUIPMENT`.
---widget:EstablishVirtualSlot(ISLOT_SHORTCUT_ACTION, 1, 1) -- Transformation shortcut bar slots. (min: `1`, max: `12`)
---widget:EstablishVirtualSlot(ISLOT_SKILL_ALERT, @TODO:, 1)
---```
---@overload fun(self: self, slotType: ISLOT_ABILITY_VIEW, slotIdx: SKILL, virtualSlotIdx: number)
---@overload fun(self: self, slotType: ISLOT_ACTION, slotIdx: number, virtualSlotIdx: number)
---@overload fun(self: self, slotType: ISLOT_BAG, slotIdx: number, virtualSlotIdx: number) @FIXME: Only grade of the item renders.
---@overload fun(self: self, slotType: ISLOT_BANK, slotIdx: number, virtualSlotIdx: number) @FIXME: Only grade of the item renders.
---@overload fun(self: self, slotType: ISLOT_COFFER, slotIdx: number, virtualSlotIdx: number) @FIXME: Only grade of the item renders.
---@overload fun(self: self, slotType: ISLOT_CONSTANT, slotIdx: 0, virtualSlotIdx: number)
---@overload fun(self: self, slotType: ISLOT_EQUIPMENT, slotIdx: EQUIPMENT_SLOT, virtualSlotIdx: number)
---@overload fun(self: self, slotType: ISLOT_GUILD_BANK, slotIdx: number, virtualSlotIdx: number) @FIXME: Only grade of the item renders.
---@overload fun(self: self, slotType: ISLOT_HEIR_SKILL_VIEW, slotIdx: HEIR_SKILL_TYPE, virtualSlotIdx: number)
---@overload fun(self: self, slotType: ISLOT_INSTANT_KILL_STREAK, slotIdx: number, virtualSlotIdx: number) @FIXME: Crash.
---@overload fun(self: self, slotType: ISLOT_MODE_ACTION, slotIdx: number, virtualSlotIdx: number)
---@overload fun(self: self, slotType: ISLOT_ORIGIN_SKILL_VIEW, slotIdx: number, virtualSlotIdx: number)
---@overload fun(self: self, slotType: ISLOT_PET_BATTLE_ACTION, slotIdx: number, virtualSlotIdx: number)
---@overload fun(self: self, slotType: ISLOT_PET_RIDE_ACTION, slotIdx: number, virtualSlotIdx: number)
---@overload fun(self: self, slotType: ISLOT_PRELIMINARY_EQUIPMENT, slotIdx: PRELIMINARY_EQUIPMENT_SLOT, virtualSlotIdx: number) @FIXME: Preliminary Equipment does not render.
---@overload fun(self: self, slotType: ISLOT_SHORTCUT_ACTION, slotIdx: number, virtualSlotIdx: number)
---@overload fun(self: self, slotType: ISLOT_SKILL_ALERT, slotIdx: number, virtualSlotIdx: number) @TODO:
function Slot:EstablishVirtualSlot(slotType, slotIdx, virtualSlotIdx) end

---Retrieves the binded type of the Slot.
---@return BIND_TYPE bindedType The binded type.
---@nodiscard
function Slot:GetBindedType() end

---@TODO: Clarify what ItemInfo is sent.
---Retrieves extra information for the Slot.
---@return ItemInfo|SkillInfo|nil extraInfo The extra information, or `nil` if none exists.
---@nodiscard
function Slot:GetExtraInfo() end

---Retrieves the hotkey for the Slot (may be an empty string).
---@return string hotKey The hotkey string.
---@nodiscard
function Slot:GetHotKey() end

---Retrieves the item level requirement for the Slot.
---@return number|nil itemLevelRequirment The item level requirement, or `nil` if none exists.
---@nodiscard
function Slot:GetItemLevelRequirment() end

---Retrieves the passive buff type (not the buff id) for the Slot, if it exists.
---@return number|nil passiveBuffType The passive buff type, or `nil` if not set.
---@nodiscard
function Slot:GetPassiveBuffType() end

---Retrieves the skill type for the Slot, if a skill is established.
---@return number|nil skillType The skill type, or `nil` if no skill is set.
---@nodiscard
function Slot:GetSkillType() end

---Retrieves the tooltip for the Slot. Returns `SkillTooltip` if a skill is
---established, `self` for other established types, or `nil` if nothing is
---established.
---@return SkillTooltip|self|nil tooltip The tooltip, `self`, or `nil`.
---@nodiscard
---@see SkillTooltip
function Slot:GetTooltip() end

---Checks if the Slot is empty.
---@return boolean empty `true` if the Slot is empty, `false` otherwise. (default: `true`)
---@nodiscard
function Slot:IsEmpty() end

---Releases the established values of the Slot.
function Slot:ReleaseSlot() end

---Resets the state of the Slot.
function Slot:ResetState() end
