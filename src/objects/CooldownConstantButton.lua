---@meta _

UI_BUTTON_DISABLED = 3    -- objects/CooldownConstantButton UI_BUTTON_STATE
UI_BUTTON_HIGHLIGHTED = 1 -- objects/CooldownConstantButton UI_BUTTON_STATE
UI_BUTTON_MAX = 4         -- objects/CooldownConstantButton
UI_BUTTON_NORMAL = 0      -- objects/CooldownConstantButton UI_BUTTON_STATE
UI_BUTTON_PUSHED = 2      -- objects/CooldownConstantButton UI_BUTTON_STATE

---objects/CooldownConstantButton
---@class CooldownConstantButton: CooldownButton
local CooldownConstantButton = {}
---@class cooldownconstantbutton: CooldownConstantButton

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
