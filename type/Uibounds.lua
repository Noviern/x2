---@meta _

---@enum ANCHOR_POINT
local ANCHOR_POINT = {
  TOP_LEFT     = "TOPLEFT",
  TOP          = "TOP",
  TOP_RIGHT    = "TOPRIGHT",
  LEFT         = "LEFT",
  CENTER       = "CENTER",
  RIGHT        = "RIGHT",
  BOTTOM_LEFT  = "BOTTOMLEFT",
  BOTTOM       = "BOTTOM",
  BOTTOM_RIGHT = "BOTTOMRIGHT",
}

---@class Uibounds
local Uibounds = {}

---Aligns the Uibounds to the `anchor` `x` and `y`.
---@param anchor ANCHOR_POINT Sets both the anchor point and anchor origin.
---@param parentId "UIParent"|Widget
---@param x number
---@param y number
function Uibounds:AddAnchor(anchor, parentId, x, y) end

---Aligns the `anchorPoint` (`x` and `y`) of the Uibounds on the `anchorPoint`.
---@param anchorPoint ANCHOR_POINT
---@param parentId "UIParent"|Widget
---@param anchorOrigin ANCHOR_POINT
---@param x number
---@param y number
function Uibounds:AddAnchor(anchorPoint, parentId, anchorOrigin, x, y) end

---TODO:
---@param width number
function Uibounds:BindWidth(width) end

---Returns a boolean indicating if the Uibounds is outside of the screen.
---@return boolean
---@nodiscard
function Uibounds:CheckOutOfScreen() end

---Returns `offX` and `offY` of the Uibounds.
---@return number offX 0 to screen width - Uibounds effective width.
---@return number offY 0 to screen height - Uibounds effective height.
---@nodiscard
function Uibounds:CorrectOffsetByScreen() end

---Returns the width `effectiveWidth` and`effectiveHeight` for the Uibounds.
---Scaled if ApplyUIScale is true.
---@return number effectiveWidth
---@return number effectiveHeight
---@nodiscard
function Uibounds:GetEffectiveExtent() end

---Returns `effectiveOffX` (left) `effectiveOffY` (top) of the Uibounds.
---@return number effectiveOffX
---@return number effectiveOffY
---@nodiscard
function Uibounds:GetEffectiveOffset() end

---Returns the unscaled `width` and `height` of the Uibounds.
---@return number width
---@return number height
---@nodiscard
function Uibounds:GetExtent() end

---Returns the unscaled `height` of the Uibounds.
---@return number
---@nodiscard
function Uibounds:GetHeight() end

---Returns `offX` (right) and `offY` (center) of the Uibounds.
---@return number offX
---@return number offY
---@nodiscard
function Uibounds:GetOffset() end

---Returns the unscaled `width` of the Uibounds.
---@return number
---@nodiscard
function Uibounds:GetWidth() end

---Removes all anchors for the Uibounds. Does not remove anchor origin.
function Uibounds:RemoveAllAnchors() end

---Sets the `width` and `height` for the Uibounds.
---@param width number
---@param height number
function Uibounds:SetExtent(width, height) end

---Sets the `height` for the Uibounds.
---@param height number
function Uibounds:SetHeight(height) end

---Sets the `width` for the Uibounds.
---@param width number
function Uibounds:SetWidth(width) end
