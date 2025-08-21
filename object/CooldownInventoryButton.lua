---@meta _

AP_BOTTOM = 8             -- object/CooldownInventoryButton
AP_BOTTOMLEFT = 2         -- object/CooldownInventoryButton
AP_BOTTOMRIGHT = 3        -- object/CooldownInventoryButton
AP_CENTER = 4             -- object/CooldownInventoryButton
AP_LEFT = 6               -- object/CooldownInventoryButton
AP_RIGHT = 7              -- object/CooldownInventoryButton
AP_TOP = 5                -- object/CooldownInventoryButton
AP_TOPLEFT = 0            -- object/CooldownInventoryButton
AP_TOPRIGHT = 1           -- object/CooldownInventoryButton
CT_ABILITY = 2            -- object/CooldownInventoryButton
CT_EXPEDITION_NAME = 3    -- object/CooldownInventoryButton
CT_NAME = 1               -- object/CooldownInventoryButton
DC_ALWAYS = 0             -- object/CooldownInventoryButton
DC_SHIFT_KEY_DOWN = 1     -- object/CooldownInventoryButton
UI_BUTTON_DISABLED = 3    -- object/CooldownInventoryButton
UI_BUTTON_HIGHLIGHTED = 1 -- object/CooldownInventoryButton
UI_BUTTON_MAX = 4         -- object/CooldownInventoryButton
UI_BUTTON_NORMAL = 0      -- object/CooldownInventoryButton
UI_BUTTON_PUSHED = 2      -- object/CooldownInventoryButton

---object/CooldownInventoryButton
---@class CooldownInventoryButton: CooldownButton
---@class cooldowninventorybutton: CooldownInventoryButton
local CooldownInventoryButton = {}

---@TODO: Broken?
---Sets the bag item slot for the CooldownInventoryButton.
---@param itemSlot number The item slot index in the bag.
---@usage
---```
---widget:SetBagItemSlot(0)
---```
function CooldownInventoryButton:SetBagItemSlot(itemSlot) end

---@TODO: Broken?
---Sets the bank item slot for the CooldownInventoryButton.
---@param itemSlot number The item slot index in the bank.
---@usage
---```
---widget:SetBankItemSlot(0)
---```
function CooldownInventoryButton:SetBankItemSlot(itemSlot) end

---@TODO: Broken?
---Sets the coffer item slot for the CooldownInventoryButton.
---@param itemSlot number The item slot index in the coffer.
---@usage
---```
---widget:SetCofferItemSlot(0)
---```
function CooldownInventoryButton:SetCofferItemSlot(itemSlot) end

---@TODO: Broken?
---Sets the guild bank item slot for the CooldownInventoryButton.
---@param itemSlot number The item slot index in the guild bank.
---@usage
---```
---widget:SetGuildBankItemSlot(0)
---```
function CooldownInventoryButton:SetGuildBankItemSlot(itemSlot) end
