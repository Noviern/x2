---@meta _

AP_BOTTOM = 8             -- object/CooldownButton
AP_BOTTOMLEFT = 2         -- object/CooldownButton
AP_BOTTOMRIGHT = 3        -- object/CooldownButton
AP_CENTER = 4             -- object/CooldownButton
AP_LEFT = 6               -- object/CooldownButton
AP_RIGHT = 7              -- object/CooldownButton
AP_TOP = 5                -- object/CooldownButton
AP_TOPLEFT = 0            -- object/CooldownButton
AP_TOPRIGHT = 1           -- object/CooldownButton
CT_ABILITY = 2            -- object/CooldownButton
CT_EXPEDITION_NAME = 3    -- object/CooldownButton
CT_NAME = 1               -- object/CooldownButton
DC_ALWAYS = 0             -- object/CooldownButton
DC_SHIFT_KEY_DOWN = 1     -- object/CooldownButton
UI_BUTTON_DISABLED = 3    -- object/CooldownButton
UI_BUTTON_HIGHLIGHTED = 1 -- object/CooldownButton
UI_BUTTON_MAX = 4         -- object/CooldownButton
UI_BUTTON_NORMAL = 0      -- object/CooldownButton
UI_BUTTON_PUSHED = 2      -- object/CooldownButton


---object/CooldownButton
---@class CooldownButton: Button
local CooldownButton = {}

---@TODO: I never got this to work. Broken?
---Sets the cooldown for the CooldownButton.
---@param remainTime number The remaining cooldown time.
---@param totalTime number The total cooldown duration.
---@usage
---```
---cooldownButton:SetCoolDown(50, 100)
---```
function CooldownButton:SetCoolDown(remainTime, totalTime) end

---Sets the cooldown mask for the CooldownButton.
---@param textureName string The name of the texture.
---@param textureKey string The key for the texture.
---@param colorKey string The key for the color.
---@usage
---```
---cooldownButton:SetCoolDownMask("ui/cooldown/cooldown_mask.dds", "mask", "black")
---```
function CooldownButton:SetCoolDownMask(textureName, textureKey, colorKey) end
