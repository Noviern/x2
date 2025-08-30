---@meta _

AP_BOTTOM = 8          -- objects/ColorPicker
AP_BOTTOMLEFT = 2      -- objects/ColorPicker
AP_BOTTOMRIGHT = 3     -- objects/ColorPicker
AP_CENTER = 4          -- objects/ColorPicker
AP_LEFT = 6            -- objects/ColorPicker
AP_RIGHT = 7           -- objects/ColorPicker
AP_TOP = 5             -- objects/ColorPicker
AP_TOPLEFT = 0         -- objects/ColorPicker
AP_TOPRIGHT = 1        -- objects/ColorPicker
CT_ABILITY = 2         -- objects/ColorPicker
CT_EXPEDITION_NAME = 3 -- objects/ColorPicker
CT_NAME = 1            -- objects/ColorPicker
DC_ALWAYS = 0          -- objects/ColorPicker
DC_SHIFT_KEY_DOWN = 1  -- objects/ColorPicker

---objects/ColorPicker
---@class ColorPicker: Widget
---@class colorpicker: ColorPicker
local ColorPicker = {}

---Retrieves the color at the specified point on the ColorPicker.
---@param xPos number The x-coordinate of the point.
---@param yPos number The y-coordinate of the point.
---@return number red The red color component (min: `0`, max: `1`).
---@return number green The green color component (min: `0`, max: `1`).
---@return number blue The blue color component (min: `0`, max: `1`).
---@nodiscard
---@usage
---```lua
---local red, green, blue = widget:GetColor(1, 1)
---```
function ColorPicker:GetColor(xPos, yPos) end

---Retrieves the coordinates for the specified RGB color on the ColorPicker.
---@param colorR number The red color component.
---@param colorG number The green color component.
---@param colorB number The blue color component.
---@return number xPos The x-coordinate of the point.
---@return number yPos The y-coordinate of the point.
---@nodiscard
---@usage
---```lua
---local xPos, yPos = widget:GetPoint(255, 255, 255)
---```
function ColorPicker:GetPoint(colorR, colorG, colorB) end

---Sets the palette image for the ColorPicker.
---@param imageName string The path to the palette image. This can be `"ui/..."` or `"Addon/MyAddon/image.png"`
---@usage
---```lua
---widget:SetPaletteImage("ui/common/hud.dds")
---```
function ColorPicker:SetPaletteImage(imageName) end
