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

---Returns the color for the point `(xPos, yPos)` of the ColorPicker.
---@param xPos number
---@param yPos number
---@return number red
---@return number green
---@return number blue
---@nodiscard
function ColorPicker:GetColor(xPos, yPos) end

---Returns the point `(xPos, yPos)` for the `colorR`, `colorG`, and `colorB` of
---the ColorPicker.
---@param colorR number
---@param colorG number
---@param colorB number
---@return number xPos
---@return number yPos
---@nodiscard
function ColorPicker:GetPoint(colorR, colorG, colorB) end

---Sets the palette image to `imageName` for the ColorPicker.
---@param imageName string
function ColorPicker:SetPaletteImage(imageName) end
