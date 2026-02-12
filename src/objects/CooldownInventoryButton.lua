---@meta _

UI_BUTTON_DISABLED = 3    -- objects/CooldownInventoryButton UI_BUTTON_STATE
UI_BUTTON_HIGHLIGHTED = 1 -- objects/CooldownInventoryButton UI_BUTTON_STATE
UI_BUTTON_MAX = 4         -- objects/CooldownInventoryButton
UI_BUTTON_NORMAL = 0      -- objects/CooldownInventoryButton UI_BUTTON_STATE
UI_BUTTON_PUSHED = 2      -- objects/CooldownInventoryButton UI_BUTTON_STATE

---[CooldownInventoryButton](lua://CooldownInventoryButton)
---
---@FIXME:
---**Warning:** Most methods for this class are broken.
---
---A `CooldownInventoryButton` widget reflects the cooldown state of
---inventory-based items. Extends CooldownButton to bind its cooldown display
---to items stored in various inventory containers such as bags, banks,
---coffers, or guild banks. Intended for UI elements that represent item usage
---and availability across different storage locations.
---
---@class CooldownInventoryButton: CooldownButton
local CooldownInventoryButton = {}

---@FIXME: Broken?
---Sets the bag item slot for the `CooldownInventoryButton`.
---@param itemSlot number The item slot index in the bag.
function CooldownInventoryButton:SetBagItemSlot(itemSlot) end

---@FIXME: Broken?
---Sets the bank item slot for the `CooldownInventoryButton`.
---@param itemSlot number The item slot index in the bank.
function CooldownInventoryButton:SetBankItemSlot(itemSlot) end

---@FIXME: Broken?
---Sets the coffer item slot for the `CooldownInventoryButton`.
---@param itemSlot number The item slot index in the coffer.
function CooldownInventoryButton:SetCofferItemSlot(itemSlot) end

---@FIXME: Broken?
---Sets the guild bank item slot for the `CooldownInventoryButton`.
---@param itemSlot number The item slot index in the guild bank.
function CooldownInventoryButton:SetGuildBankItemSlot(itemSlot) end
