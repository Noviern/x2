---@meta _

AP_BOTTOM = 8          -- object/ColorPicker
AP_BOTTOMLEFT = 2      -- object/ColorPicker
AP_BOTTOMRIGHT = 3     -- object/ColorPicker
AP_CENTER = 4          -- object/ColorPicker
AP_LEFT = 6            -- object/ColorPicker
AP_RIGHT = 7           -- object/ColorPicker
AP_TOP = 5             -- object/ColorPicker
AP_TOPLEFT = 0         -- object/ColorPicker
AP_TOPRIGHT = 1        -- object/ColorPicker
CT_ABILITY = 2         -- object/ColorPicker
CT_EXPEDITION_NAME = 3 -- object/ColorPicker
CT_NAME = 1            -- object/ColorPicker
DC_ALWAYS = 0          -- object/ColorPicker
DC_SHIFT_KEY_DOWN = 1  -- object/ColorPicker

---object/ColorPicker
---@class ColorPicker: Widget
local ColorPicker = {}

---Retrieves the color at the specified point on the ColorPicker.
---@param xPos number The x-coordinate of the point.
---@param yPos number The y-coordinate of the point.
---@return number red The red color component (min: `0`, max: `1`).
---@return number green The green color component (min: `0`, max: `1`).
---@return number blue The blue color component (min: `0`, max: `1`).
---@nodiscard
---@usage
---```
---local red, green, blue = colorPicker:GetColor(1, 1)
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
---```
---local xPos, yPos = colorPicker:GetPoint(255, 255, 255)
---```
function ColorPicker:GetPoint(colorR, colorG, colorB) end

---Sets the palette image for the ColorPicker.
---@param imageName string The path to the palette image. This can be `"game/ui/..."` or `"Addon/MyAddon/image.png"`
---@usage
---```
---colorPicker:SetPaletteImage("game/ui/common/hud.dds")
---```
function ColorPicker:SetPaletteImage(imageName) end
