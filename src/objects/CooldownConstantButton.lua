---@meta _

UI_BUTTON_DISABLED = 3    -- objects/CooldownConstantButton UI_BUTTON_STATE
UI_BUTTON_HIGHLIGHTED = 1 -- objects/CooldownConstantButton UI_BUTTON_STATE
UI_BUTTON_MAX = 4         -- objects/CooldownConstantButton
UI_BUTTON_NORMAL = 0      -- objects/CooldownConstantButton UI_BUTTON_STATE
UI_BUTTON_PUSHED = 2      -- objects/CooldownConstantButton UI_BUTTON_STATE

---[CooldownConstantButton](lua://CooldownConstantButton)
---
---@FIXME:
---**Warning:** Most methods for this class are broken.
---
---A `CooldownConstantButton` widget is specialized and binds its cooldown
---state to a fixed game entity such as an item or skill. Extends
---CooldownButton by associating cooldown timing with predefined item types,
---inventory slots, or skill identifiers, allowing the button to automatically
---reflect the cooldown of the bound entity.
---
---@class CooldownConstantButton: CooldownButton
local CooldownConstantButton = {}

---@FIXME: Broken?
---Sets the item type for the `CooldownConstantButton`.
---@param itemType number The item type to set.
function CooldownConstantButton:SetItem(itemType) end

---@FIXME: Broken?
---Sets the item slot and slot type for the `CooldownConstantButton`.
---@param itemSlot number The item slot index.
---@param slotType number The type of slot.
function CooldownConstantButton:SetItemSlot(itemSlot, slotType) end

---@FIXME: Broken?
---Sets the skill type for the `CooldownConstantButton`.
---@param skillType number The skill type to set.
function CooldownConstantButton:SetSkill(skillType) end
