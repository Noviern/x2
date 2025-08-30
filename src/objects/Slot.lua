---@meta _

AP_BOTTOM = 8                   -- objects/Slot
AP_BOTTOMLEFT = 2               -- objects/Slot
AP_BOTTOMRIGHT = 3              -- objects/Slot
AP_CENTER = 4                   -- objects/Slot
AP_LEFT = 6                     -- objects/Slot
AP_RIGHT = 7                    -- objects/Slot
AP_TOP = 5                      -- objects/Slot
AP_TOPLEFT = 0                  -- objects/Slot
AP_TOPRIGHT = 1                 -- objects/Slot
CT_ABILITY = 2                  -- objects/Slot
CT_EXPEDITION_NAME = 3          -- objects/Slot
CT_NAME = 1                     -- objects/Slot
DC_ALWAYS = 0                   -- objects/Slot
DC_SHIFT_KEY_DOWN = 1           -- objects/Slot
ISLOT_ABILITY_VIEW = 243        -- objects/Slot
ISLOT_ACTION = 254              -- objects/Slot
ISLOT_BAG = 2                   -- objects/Slot
ISLOT_BANK = 3                  -- objects/Slot
ISLOT_COFFER = 4                -- objects/Slot
ISLOT_CONSTANT = 249            -- objects/Slot
ISLOT_EQUIPMENT = 1             -- objects/Slot
ISLOT_GUILD_BANK = 33           -- objects/Slot
ISLOT_HEIR_SKILL_VIEW = 234     -- objects/Slot
ISLOT_INSTANT_KILL_STREAK = 244 -- objects/Slot
ISLOT_MODE_ACTION = 246         -- objects/Slot
ISLOT_ORIGIN_SKILL_VIEW = 233   -- objects/Slot
ISLOT_PET_BATTLE_ACTION = 239   -- objects/Slot
ISLOT_PET_RIDE_ACTION = 248     -- objects/Slot
ISLOT_PRELIMINARY_EQUIPMENT = 7 -- objects/Slot
ISLOT_SHORTCUT_ACTION = 235     -- objects/Slot
ISLOT_SKILL_ALERT = 232         -- objects/Slot
UI_BUTTON_DISABLED = 3          -- objects/Slot
UI_BUTTON_HIGHLIGHTED = 1       -- objects/Slot
UI_BUTTON_MAX = 4               -- objects/Slot
UI_BUTTON_NORMAL = 0            -- objects/Slot
UI_BUTTON_PUSHED = 2            -- objects/Slot

---@TODO: Should ITEM_GRADE_TYPE be moved to globals.lua and made a global? used also in Message.lua

---objects/Slot
---@enum ITEM_GRADE_TYPE
local ITEM_GRADE_TYPE = {
  NONE      = 0, ---@TODO: In Message.lua this would be BASIC not NONE.
  BAISC     = 1, ---@TODO: In Message.lua this would be CRUDE not BASIC.
  GRAND     = 2,
  RARE      = 3,
  ARCANE    = 4,
  HEROIC    = 5,
  UNIQUE    = 6,
  CELESTIAL = 7,
  DIVNE     = 8,
  EPIC      = 9,
  LEGENDARY = 10,
  MYTHIC    = 11,
  ETERNAL   = 12,
}

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

---@enum SKILL_ALERT_STATUS_BUFF_TAG
local SKILL_ALERT_STATUS_BUFF_TAG = {
  STUN        = 1,
  IMPALE      = 2,
  STAGGER     = 3,
  TRIP        = 4,
  FEAR        = 5,
  SLEEP       = 6,
  SNARE       = 7,
  SLOW        = 8,
  SILENCE     = 9,
  SHACKLE     = 10,
  IMPRISONED  = 11, ---@TODO: Confirm this.
  LAUNCHED    = 12,
  FROZEN      = 13,
  DEEP_FREEZE = 14,
  POISON      = 15,
  BLEED       = 16,
  SHAKEN      = 17,
  ENERVATED   = 18,
  CHARMED     = 19,
  BUBBLE      = 20,
  PETRIFIED   = 21, ---@TODO: Confirm this.
}

---@enum BIND_TYPE
local BIND_TYPE = {
  NONE        = "none",
  PET_SKILL   = "pet_skill",
  SKILL       = "skill",
  ITEM        = "item",
  SLAVE_SKILL = "slave_skill",
  BUFF        = "buff",
  FUNCTION    = "function",
}

---objects/Slot
---@class Slot: Button
---@field cooltime_style TextStyle
---@field icon IconDrawable
---@field style TextStyle
---@class slot: Slot
local Slot = {}

---Changes the icon layer for the Slot.
---@param nameLayer DRAWABLE_NAME_LAYER The name of the layer to set.
---@see DRAWABLE_NAME_LAYER
---@usage
---```lua
---widget:ChangeIconLayer("background")
---```
function Slot:ChangeIconLayer(nameLayer) end

---Disables the default clicking behavior of the Slot.
---@usage
---```lua
---widget:DisableDefaultClick()
---```
function Slot:DisableDefaultClick() end

---Establishes an item for the Slot with the specified type and grade.
---@param itemType number The type of the item.
---@param itemGrade ITEM_GRADE_TYPE The grade of the item.
---@usage
---```lua
---widget:EstablishItem(7992, 12)
---```
---@see ITEM_GRADE_TYPE
function Slot:EstablishItem(itemType, itemGrade) end

---Establishes a skill for the Slot.
---@param skillType number The type of the skill.
---@usage
---```lua
---widget:EstablishSkill(14495)
---```
function Slot:EstablishSkill(skillType) end

---@TODO: Clarify statusBuffTag, remain, and duration parameters.
---Establishes a skill alert for the Slot.
---@param statusBuffTag SKILL_ALERT_STATUS_BUFF_TAG The status buff tag.
---@param remain number The remaining time for the alert in milliseconds.
---@param duration number The total duration of the alert in milliseconds.
---@usage
---```lua
---widget:EstablishSkillAlert(1, 2000, 2000)
---```
---@see SKILL_ALERT_STATUS_BUFF_TAG
function Slot:EstablishSkillAlert(statusBuffTag, remain, duration) end

---@TODO: Confirm if slotIdx is skillType when slotType is ISLOT_ACTION. also ISLOT_ORIGIN_SKILL_VIEW
---@TODO: Should this only accept skill based SLOT_TYPE?
---Establishes a skill slot for the Slot.
---@param slotType SLOT_TYPE The type of the slot.
---@param slotIdx number The index of the slot (possibly skillType for `ISLOT_ACTION`).
---@usage
---```lua
---widget:EstablishSkillSlot(ISLOT_ORIGIN_SKILL_VIEW, 36468)
---```
---@see SLOT_TYPE
function Slot:EstablishSkillSlot(slotType, slotIdx) end

---@TODO: Create overloads for each ISLOT?
---Establishes a slot with the specified type and index. Triggers the event `OnContentUpdated`.
---@param slotType SLOT_TYPE The type of the slot.
---@param slotIdx number The slot index.
---@usage
---```lua
---widget:EstablishSlot(ISLOT_EQUIPMENT, ES_HEAD - 1) -- Dont forget to subtract 1!
---```
---@see SLOT_TYPE
function Slot:EstablishSlot(slotType, slotIdx) end

---@TODO: Clarify purpose of virtualSlotIdx.
---Establishes a virtual slot for the Slot. Triggers the event `OnContentUpdated`.
---@param slotType SLOT_TYPE The type of the slot.
---@param slotIdx number The slot index.
---@param virtualSlotIdx number The virtual slot index.
---@usage
---```lua
---widget:EstablishVirtualSlot(ISLOT_ACTION, 1, 1)
---```
---@see SLOT_TYPE
function Slot:EstablishVirtualSlot(slotType, slotIdx, virtualSlotIdx) end

---Retrieves the binded type of the Slot.
---@return BIND_TYPE bindedType The binded type.
---@nodiscard
---@usage
---```lua
---local bindedType = widget:GetBindedType()
---```
---@see BIND_TYPE
function Slot:GetBindedType() end

---@TODO: Clarify structure, I believe it returns different tables for different slotTypes.
---Retrieves extra information for the Slot.
---@return ItemInfo|table|nil extraInfo The extra information, or `nil` if none exists.
---@nodiscard
---@usage
---```lua
---local extraInfo = widget:GetExtraInfo()
---```
function Slot:GetExtraInfo() end

---Retrieves the hotkey for the Slot (may be an empty string).
---@return string hotKey The hotkey string.
---@nodiscard
---@usage
---```lua
---local hotkey = widget:GetHotKey()
---```
function Slot:GetHotKey() end

---@TODO: Broken?
---Retrieves the item level requirement for the Slot.
---@return nil itemLevelRequirment The item level requirement (currently returns `nil`).
---@nodiscard
---@usage
---```lua
---local itemLevelRequirment = widget:GetItemLevelRequirment()
---```
function Slot:GetItemLevelRequirment() end

---Retrieves the passive buff type (not the buff id) for the Slot, if it exists.
---@return number|nil passiveBuffType The passive buff type, or `nil` if not set.
---@nodiscard
---@usage
---```lua
---local passiveBuffType = widget:GetPassiveBuffType()
---```
function Slot:GetPassiveBuffType() end

---Retrieves the skill type for the Slot, if a skill is established.
---@return number|nil skillType The skill type, or `nil` if no skill is set.
---@nodiscard
---@usage
---```lua
---local skillType = widget:GetSkillType()
---```
function Slot:GetSkillType() end

---Retrieves the tooltip for the Slot. Returns `SkillTooltip` if a skill is established, `self` for other established types, or `nil` if nothing is established.
---@return SkillTooltip|self|nil tooltip The tooltip, `self`, or `nil`.
---@nodiscard
---@usage
---```lua
---local tooltip = widget:GetTooltip()
---```
---@see SkillTooltip
function Slot:GetTooltip() end

---Checks if the Slot is empty.
---@return boolean empty `true` if the Slot is empty, `false` otherwise. (default: `true`)
---@nodiscard
---@usage
---```lua
---local empty = widget:IsEmpty()
---```
function Slot:IsEmpty() end

---Releases the established values of the Slot.
---@usage
---```lua
---widget:ReleaseSlot()
---```
function Slot:ReleaseSlot() end

---Resets the state of the Slot.
---@usage
---```lua
---widget:ResetState()
---```
function Slot:ResetState() end
