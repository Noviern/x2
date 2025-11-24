---@meta _

---object/EffectDrawable
---object/IconDrawable
---object/ImageDrawable
---object/NinePartDrawable
---object/ThreePartDrawable
---@class DrawableDDS: Drawablebase
local DrawableDDS = {}

---Retrieves the width and height of the texture for the DrawableDDS.
---@return number width The texture width.
---@return number height The texture height.
---@nodiscard
function DrawableDDS:GetTextureSize() end

---Sets the coordinates and dimensions of the texture for the DrawableDDS.
---@param x number The x-coordinate of the texture.
---@param y number The y-coordinate of the texture.
---@param width number The width of the texture.
---@param height number The height of the texture.
function DrawableDDS:SetCoords(x, y, width, height) end

---Sets the inset for the DrawableDDS.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
function DrawableDDS:SetInset(left, top, right, bottom) end

---Sets the texture file for the DrawableDDS.
---@param filename string The path to the texture file.
function DrawableDDS:SetTexture(filename) end

---Sets the texture color using a color key for the DrawableDDS.
---@param colorKey string The color key to apply from the texture path `*.g` file.
---@usage
---```lua
---local ninePartDrawable = widget:CreateNinePartDrawable("ui/common/default.dds", "background")
---ninePartDrawable:SetTextureInfo("type_05")
---ninePartDrawable:SetTextureColor("hud_bg")
---```
function DrawableDDS:SetTextureColor(colorKey) end

---Sets the texture information using an info key for the DrawableDDS.
---@param infoKey string The info key taken from the texture path `*.g` file.
---@param colorKey? string The color key to apply from the texture path `*.g` file.
---@usage
---```lua
---local ninePartDrawable = widget:CreateNinePartDrawable("ui/common/default.dds", "background")
---ninePartDrawable:SetTextureInfo("main_bg")
---```
function DrawableDDS:SetTextureInfo(infoKey, colorKey) end
