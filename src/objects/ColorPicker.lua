---@meta _

---[ColorPicker](lua://ColorPicker)
---
---A `ColorPicker` widget allows users to select colors from a palette image.
---Provides conversion between palette coordinates and RGB color values,
---enabling precise color picking and reverse lookup of color positions.
---Supports custom palette images for flexible color layouts.
---
---@class ColorPicker: Widget
local ColorPicker = {}

---Retrieves the color at the specified point on the ColorPicker.
---@param xPos number The x-coordinate of the point.
---@param yPos number The y-coordinate of the point.
---@return number red The red color component (min: `0`, max: `1`).
---@return number green The green color component (min: `0`, max: `1`).
---@return number blue The blue color component (min: `0`, max: `1`).
---@nodiscard
function ColorPicker:GetColor(xPos, yPos) end

---Retrieves the coordinates for the specified RGB color on the ColorPicker.
---@param colorR number The red color component.
---@param colorG number The green color component.
---@param colorB number The blue color component.
---@return number xPos The x-coordinate of the point.
---@return number yPos The y-coordinate of the point.
---@nodiscard
function ColorPicker:GetPoint(colorR, colorG, colorB) end

---Sets the palette image for the ColorPicker.
---@param imageName string The path to the palette image. This can be `"ui/..."` or `"addon/myaddon/image.png"`
function ColorPicker:SetPaletteImage(imageName) end
