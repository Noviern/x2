---@meta _

---object/EffectDrawable
---object/ImageDrawable
---object/NinePartDrawable
---object/ThreePartDrawable
---@class DrawableDDS: Drawablebase
local DrawableDDS = {}

---Returns the `width` and `height` of the texture for the DrawableDDS.
---@return number width
---@return number height
function DrawableDDS:GetTextureSize() end

---Sets the coords and dimensions of the texture of the DrawableDDS.
---@param x number
---@param y number
---@param width number
---@param height number
function DrawableDDS:SetCoords(x, y, width, height) end

---Sets the inset of the DrawableDDS.
---@param left number
---@param top number
---@param right number
---@param bottom number
function DrawableDDS:SetInset(left, top, right, bottom) end

---Sets the texture `filename` for the DrawableDDS.
---@param filename string
function DrawableDDS:SetTexture(filename) end

---Setst the texture `colorKey` for the DrawableDDS.
---@param colorKey string
function DrawableDDS:SetTextureColor(colorKey) end

---Sets the texture `infoKey` for the DrawableDDS.
---@param infoKey string
function DrawableDDS:SetTextureInfo(infoKey) end
