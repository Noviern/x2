---@meta _

UI_BUTTON_DISABLED = 3    -- objects/CooldownInventoryButton UI_BUTTON_STATE
UI_BUTTON_HIGHLIGHTED = 1 -- objects/CooldownInventoryButton UI_BUTTON_STATE
UI_BUTTON_MAX = 4         -- objects/CooldownInventoryButton
UI_BUTTON_NORMAL = 0      -- objects/CooldownInventoryButton UI_BUTTON_STATE
UI_BUTTON_PUSHED = 2      -- objects/CooldownInventoryButton UI_BUTTON_STATE

---objects/CooldownInventoryButton
---@class CooldownInventoryButton: CooldownButton
local CooldownInventoryButton = {}
---@class cooldowninventorybutton: CooldownInventoryButton

---@TODO: Broken?
---Sets the bag item slot for the CooldownInventoryButton.
---@param itemSlot number The item slot index in the bag.
---@usage
---```lua
---widget:SetBagItemSlot(0)
---```
function CooldownInventoryButton:SetBagItemSlot(itemSlot) end

---@TODO: Broken?
---Sets the bank item slot for the CooldownInventoryButton.
---@param itemSlot number The item slot index in the bank.
---@usage
---```lua
---widget:SetBankItemSlot(0)
---```
function CooldownInventoryButton:SetBankItemSlot(itemSlot) end

---@TODO: Broken?
---Sets the coffer item slot for the CooldownInventoryButton.
---@param itemSlot number The item slot index in the coffer.
---@usage
---```lua
---widget:SetCofferItemSlot(0)
---```
function CooldownInventoryButton:SetCofferItemSlot(itemSlot) end

---@TODO: Broken?
---Sets the guild bank item slot for the CooldownInventoryButton.
---@param itemSlot number The item slot index in the guild bank.
---@usage
---```lua
---widget:SetGuildBankItemSlot(0)
---```
function CooldownInventoryButton:SetGuildBankItemSlot(itemSlot) end
