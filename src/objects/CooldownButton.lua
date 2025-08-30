---@meta _

AP_BOTTOM = 8             -- objects/CooldownButton
AP_BOTTOMLEFT = 2         -- objects/CooldownButton
AP_BOTTOMRIGHT = 3        -- objects/CooldownButton
AP_CENTER = 4             -- objects/CooldownButton
AP_LEFT = 6               -- objects/CooldownButton
AP_RIGHT = 7              -- objects/CooldownButton
AP_TOP = 5                -- objects/CooldownButton
AP_TOPLEFT = 0            -- objects/CooldownButton
AP_TOPRIGHT = 1           -- objects/CooldownButton
CT_ABILITY = 2            -- objects/CooldownButton
CT_EXPEDITION_NAME = 3    -- objects/CooldownButton
CT_NAME = 1               -- objects/CooldownButton
DC_ALWAYS = 0             -- objects/CooldownButton
DC_SHIFT_KEY_DOWN = 1     -- objects/CooldownButton
UI_BUTTON_DISABLED = 3    -- objects/CooldownButton
UI_BUTTON_HIGHLIGHTED = 1 -- objects/CooldownButton
UI_BUTTON_MAX = 4         -- objects/CooldownButton
UI_BUTTON_NORMAL = 0      -- objects/CooldownButton
UI_BUTTON_PUSHED = 2      -- objects/CooldownButton


---objects/CooldownButton
---@class CooldownButton: Button
---@class cooldownbutton: CooldownButton
local CooldownButton = {}

---@TODO: I never got this to work. Broken?
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
