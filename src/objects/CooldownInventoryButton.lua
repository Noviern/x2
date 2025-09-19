---@meta _

AP_BOTTOM = 8             -- objects/CooldownInventoryButton
AP_BOTTOMLEFT = 2         -- objects/CooldownInventoryButton
AP_BOTTOMRIGHT = 3        -- objects/CooldownInventoryButton
AP_CENTER = 4             -- objects/CooldownInventoryButton
AP_LEFT = 6               -- objects/CooldownInventoryButton
AP_RIGHT = 7              -- objects/CooldownInventoryButton
AP_TOP = 5                -- objects/CooldownInventoryButton
AP_TOPLEFT = 0            -- objects/CooldownInventoryButton
AP_TOPRIGHT = 1           -- objects/CooldownInventoryButton
CT_ABILITY = 2            -- objects/CooldownInventoryButton
CT_EXPEDITION_NAME = 3    -- objects/CooldownInventoryButton
CT_NAME = 1               -- objects/CooldownInventoryButton
DC_ALWAYS = 0             -- objects/CooldownInventoryButton DRAG_CONDITION
DC_SHIFT_KEY_DOWN = 1     -- objects/CooldownInventoryButton DRAG_CONDITION
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
