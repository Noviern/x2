---@meta _

AP_BOTTOM = 8             -- objects/CooldownConstantButton
AP_BOTTOMLEFT = 2         -- objects/CooldownConstantButton
AP_BOTTOMRIGHT = 3        -- objects/CooldownConstantButton
AP_CENTER = 4             -- objects/CooldownConstantButton
AP_LEFT = 6               -- objects/CooldownConstantButton
AP_RIGHT = 7              -- objects/CooldownConstantButton
AP_TOP = 5                -- objects/CooldownConstantButton
AP_TOPLEFT = 0            -- objects/CooldownConstantButton
AP_TOPRIGHT = 1           -- objects/CooldownConstantButton
CT_ABILITY = 2            -- objects/CooldownConstantButton
CT_EXPEDITION_NAME = 3    -- objects/CooldownConstantButton
CT_NAME = 1               -- objects/CooldownConstantButton
DC_ALWAYS = 0             -- objects/CooldownConstantButton
DC_SHIFT_KEY_DOWN = 1     -- objects/CooldownConstantButton
UI_BUTTON_DISABLED = 3    -- objects/CooldownConstantButton
UI_BUTTON_HIGHLIGHTED = 1 -- objects/CooldownConstantButton
UI_BUTTON_MAX = 4         -- objects/CooldownConstantButton
UI_BUTTON_NORMAL = 0      -- objects/CooldownConstantButton
UI_BUTTON_PUSHED = 2      -- objects/CooldownConstantButton

---objects/CooldownConstantButton
---@class CooldownConstantButton: CooldownButton
local CooldownConstantButton = {}

---@TODO: Broken?
---Sets the item type for the CooldownConstantButton.
---@param itemType number The item type to set.
function CooldownConstantButton:SetItem(itemType) end

---@TODO: Broken?
---Sets the item slot and slot type for the CooldownConstantButton.
---@param itemSlot number The item slot index.
---@param slotType number The type of slot.
function CooldownConstantButton:SetItemSlot(itemSlot, slotType) end

---@TODO: Broken?
---Sets the skill type for the CooldownConstantButton.
---@param skillType number The skill type to set.
function CooldownConstantButton:SetSkill(skillType) end
