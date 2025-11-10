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
function CooldownButton:SetCoolDown(remainTime, totalTime) end

---@FIXME: Broken?
---Sets the cooldown mask for the CooldownButton.
---@param textureName string The name of the texture.
---@param textureKey string The key for the texture.
---@param colorKey string The key for the color.
function CooldownButton:SetCoolDownMask(textureName, textureKey, colorKey) end
