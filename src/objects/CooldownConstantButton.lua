---@meta _

AP_BOTTOM = 8             -- object/CooldownConstantButton
AP_BOTTOMLEFT = 2         -- object/CooldownConstantButton
AP_BOTTOMRIGHT = 3        -- object/CooldownConstantButton
AP_CENTER = 4             -- object/CooldownConstantButton
AP_LEFT = 6               -- object/CooldownConstantButton
AP_RIGHT = 7              -- object/CooldownConstantButton
AP_TOP = 5                -- object/CooldownConstantButton
AP_TOPLEFT = 0            -- object/CooldownConstantButton
AP_TOPRIGHT = 1           -- object/CooldownConstantButton
CT_ABILITY = 2            -- object/CooldownConstantButton
CT_EXPEDITION_NAME = 3    -- object/CooldownConstantButton
CT_NAME = 1               -- object/CooldownConstantButton
DC_ALWAYS = 0             -- object/CooldownConstantButton
DC_SHIFT_KEY_DOWN = 1     -- object/CooldownConstantButton
UI_BUTTON_DISABLED = 3    -- object/CooldownConstantButton
UI_BUTTON_HIGHLIGHTED = 1 -- object/CooldownConstantButton
UI_BUTTON_MAX = 4         -- object/CooldownConstantButton
UI_BUTTON_NORMAL = 0      -- object/CooldownConstantButton
UI_BUTTON_PUSHED = 2      -- object/CooldownConstantButton

---object/CooldownConstantButton
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
