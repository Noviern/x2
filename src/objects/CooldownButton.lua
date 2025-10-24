---@meta _

UI_BUTTON_DISABLED = 3    -- objects/CooldownButton UI_BUTTON_STATE
UI_BUTTON_HIGHLIGHTED = 1 -- objects/CooldownButton UI_BUTTON_STATE
UI_BUTTON_MAX = 4         -- objects/CooldownButton
UI_BUTTON_NORMAL = 0      -- objects/CooldownButton UI_BUTTON_STATE
UI_BUTTON_PUSHED = 2      -- objects/CooldownButton UI_BUTTON_STATE

---objects/CooldownButton
---@class CooldownButton: Button
local CooldownButton = {}
---@class cooldownbutton: CooldownButton

---@FIXME: Broken?
---Sets the cooldown for the CooldownButton.
---@param remainTime number The remaining cooldown time.
---@param totalTime number The total cooldown duration.
---@usage
---```lua
---cooldownButton:SetCoolDown(50, 100)
---```
function CooldownButton:SetCoolDown(remainTime, totalTime) end

---Sets the cooldown mask for the CooldownButton.
---@param textureName string The name of the texture.
---@param textureKey string The key for the texture.
---@param colorKey string The key for the color.
---@usage
---```lua
---cooldownButton:SetCoolDownMask("ui/cooldown/cooldown_mask.dds", "mask", "black")
---```
function CooldownButton:SetCoolDownMask(textureName, textureKey, colorKey) end
