---@meta _

AP_BOTTOM = 8                   -- object/Slot
AP_BOTTOMLEFT = 2               -- object/Slot
AP_BOTTOMRIGHT = 3              -- object/Slot
AP_CENTER = 4                   -- object/Slot
AP_LEFT = 6                     -- object/Slot
AP_RIGHT = 7                    -- object/Slot
AP_TOP = 5                      -- object/Slot
AP_TOPLEFT = 0                  -- object/Slot
AP_TOPRIGHT = 1                 -- object/Slot
CT_ABILITY = 2                  -- object/Slot
CT_EXPEDITION_NAME = 3          -- object/Slot
CT_NAME = 1                     -- object/Slot
DC_ALWAYS = 0                   -- object/Slot
DC_SHIFT_KEY_DOWN = 1           -- object/Slot
ISLOT_ABILITY_VIEW = 243        -- object/Slot
ISLOT_ACTION = 254              -- object/Slot
ISLOT_BAG = 2                   -- object/Slot
ISLOT_BANK = 3                  -- object/Slot
ISLOT_COFFER = 4                -- object/Slot
ISLOT_CONSTANT = 249            -- object/Slot
ISLOT_EQUIPMENT = 1             -- object/Slot
ISLOT_GUILD_BANK = 33           -- object/Slot
ISLOT_HEIR_SKILL_VIEW = 234     -- object/Slot
ISLOT_INSTANT_KILL_STREAK = 244 -- object/Slot
ISLOT_MODE_ACTION = 246         -- object/Slot
ISLOT_ORIGIN_SKILL_VIEW = 233   -- object/Slot
ISLOT_PET_BATTLE_ACTION = 239   -- object/Slot
ISLOT_PET_RIDE_ACTION = 248     -- object/Slot
ISLOT_PRELIMINARY_EQUIPMENT = 7 -- object/Slot
ISLOT_SHORTCUT_ACTION = 235     -- object/Slot
ISLOT_SKILL_ALERT = 232         -- object/Slot
UI_BUTTON_DISABLED = 3          -- object/Slot
UI_BUTTON_HIGHLIGHTED = 1       -- object/Slot
UI_BUTTON_MAX = 4               -- object/Slot
UI_BUTTON_NORMAL = 0            -- object/Slot
UI_BUTTON_PUSHED = 2            -- object/Slot

---TODO: Should ITEM_GRADE be moved to globals.lua and made a global?

---object/Slot
---@enum ITEM_GRADE
local ITEM_GRADE = {
  BAISC     = 1,
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

---object/Slot
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

-- ---@enum BIND_TYPE
-- local BIND_TYPE = {
--   "none",
--   "pet_skill",
--   "skill",
--   "item",
--   "slave_skill",
--   "buff",
--   "function",
-- }

---object/Slot
---@class Slot: Button
---@field cooltime_style TextStyle
---@field icon IconDrawable
---@field style TextStyle
local Slot = {}

---TODO: Crash if wrong value
---@param nameLayer string
function Slot:ChangeIconLayer(nameLayer) end

---Disables the default clicking behavior of the Slot.
function Slot:DisableDefaultClick() end

---Establishes the `itemType` and `itemGrade` for the Slot.
---@param itemType number
---@param itemGrade ITEM_GRADE
function Slot:EstablishItem(itemType, itemGrade) end

---Establishes the `skillType` for the Slot.
---@param skillType number
function Slot:EstablishSkill(skillType) end

---TODO:
---@param statusBuffTag number
---@param remain number
---@param duration number
function Slot:EstablishSkillAlert(statusBuffTag, remain, duration) end

---TODO:
---@param slotType SLOT_TYPE
---@param slotIdx number TODO: I think this is actually skillType when `ISLOT_ACTION` slotType.
function Slot:EstablishSkillSlot(slotType, slotIdx) end

---Establishes `slotType` and `slotIdx` for the Slot.
---@param slotType SLOT_TYPE
---@param slotIdx number starts at 0.
function Slot:EstablishSlot(slotType, slotIdx) end

---TODO:
---@param slotType SLOT_TYPE
---@param slotIdx number starts at 0.
---@param virtualSlotIdx number
function Slot:EstablishVirtualSlot(slotType, slotIdx, virtualSlotIdx) end

---TODO:
---@return string
---@nodiscard
function Slot:GetBindedType() end

---TODO:
---@return table|nil
---@nodiscard
function Slot:GetExtraInfo() end

---Returns `hotKey` for the Slot. This can be a empty string.
---@return string hotKey
---@nodiscard
function Slot:GetHotKey() end

---TODO:
---@return nil
---@nodiscard
function Slot:GetItemLevelRequirment() end

---TODO:
---Returns the `passiveBuffType` if it exists for the Slot.
---@return number|nil passiveBuffType
---@nodiscard
function Slot:GetPassiveBuffType() end

---Returns `skillType` if a skill has been established, otherwise returns `nil`.
---@return number|nil skillType
function Slot:GetSkillType() end

---Returns the `SkillTooltip` if a skill has been established. Returns `self` if the Slot
---has anything else established. Returns `nil` if nothing is established.
---@return SkillTooltip|self|nil
---@nodiscard
function Slot:GetTooltip() end

---Returns a boolean indicating if the Slot is empty.
---@return boolean
---@nodiscard
function Slot:IsEmpty() end

---Releases the established values of the Slot.
function Slot:ReleaseSlot() end

---Resets the state of the Slot.
function Slot:ResetState() end
