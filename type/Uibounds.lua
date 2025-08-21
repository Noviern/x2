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

---Aligns the UI bounds to the specified anchor point at the given coordinates.
---@param anchor ANCHOR_POINT Sets both the anchor point and anchor origin.
---@param x number The x-coordinate offset.
---@param y number The y-coordinate offset.
---@usage
---```
---widget:AddAnchor("TOPLEFT", "UIParent", 0, 0)
---```
---@see ANCHOR_POINT
function Uibounds:AddAnchor(anchor, x, y) end

---Aligns the UI bounds to the specified anchor point at the given coordinates.
---@param anchor ANCHOR_POINT Sets both the anchor point and anchor origin.
---@param parentId "UIParent"|Widget The parent widget or UIParent.
---@param x number The x-coordinate offset.
---@param y number The y-coordinate offset.
---@usage
---```
---widget:AddAnchor("TOPLEFT", "UIParent", 0, 0)
---```
---@see ANCHOR_POINT
function Uibounds:AddAnchor(anchor, parentId, x, y) end

---Aligns the UI bounds' anchor point to the specified parent and origin at the
---given coordinates.
---@param anchorPoint ANCHOR_POINT The anchor point of the UI bounds.
---@param parentId "UIParent"|Widget The parent widget or UIParent.
---@param anchorOrigin ANCHOR_POINT The anchor origin on the parent.
---@param x number The x-coordinate offset.
---@param y number The y-coordinate offset.
---@usage
---```
---widget:AddAnchor("TOPLEFT", "UIParent", "TOP", 0, 0)
---```
---@see ANCHOR_POINT
function Uibounds:AddAnchor(anchorPoint, parentId, anchorOrigin, x, y) end

---@TODO: Clarify functionality.
---Binds the width of the UI bounds.
---@param width number The width to bind.
function Uibounds:BindWidth(width) end

---Checks if the UI bounds is outside the screen.
---@return boolean outsideOfScreen `true` if the UI bounds is outside the screen, `false` otherwise.
---@nodiscard
---@usage
---```
---local outsideOfScreen = widget:CheckOutOfScreen()
---```
function Uibounds:CheckOutOfScreen() end

---Retrieves the offset coordinates of the UI bounds, constrained by screen
---dimensions.
---@return number offX The x-offset (0 to screen width - effective width).
---@return number offY The y-offset (0 to screen height - effective height).
---@nodiscard
---@usage
---```
---local offX, offY = widget:CorrectOffsetByScreen()
---```
function Uibounds:CorrectOffsetByScreen() end

---Retrieves the effective width and height of the UI bounds, scaled if
---ApplyUIScale is true.
---@return number effectiveWidth The effective width.
---@return number effectiveHeight The effective height.
---@nodiscard
---@usage
---```
---local effectiveWidth, effectiveHeight = widget:GetEffectiveExtent()
---```
function Uibounds:GetEffectiveExtent() end

---Retrieves the effective offset (left, top) of the UI bounds.
---@return number effectiveOffX The effective x-offset.
---@return number effectiveOffY The effective y-offset.
---@nodiscard
---@usage
---```
---local effectiveOffX, effectiveOffY = widget:GetEffectiveOffset()
---```
function Uibounds:GetEffectiveOffset() end

---Retrieves the unscaled width and height of the UI bounds.
---@return number width The unscaled width.
---@return number height The unscaled height.
---@nodiscard
---@usage
---```
---local width, height = widget:GetExtent()
---```
function Uibounds:GetExtent() end

---Retrieves the unscaled height of the UI bounds.
---@return number height The unscaled height.
---@nodiscard
---@usage
---```
---local height = widget:GetHeight()
---```
function Uibounds:GetHeight() end

---Retrieves the offset (right, center) of the UI bounds.
---@return number offX The x-offset.
---@return number offY The y-offset.
---@nodiscard
---@usage
---```
---local offX, offY = widget:GetOffset()
---```
function Uibounds:GetOffset() end

---Retrieves the unscaled width of the UI bounds.
---@return number width The unscaled width.
---@nodiscard
---@usage
---```
---local width = widget:GetWidth()
---```
function Uibounds:GetWidth() end

---@TODO: Broken?
---Removes all anchors from the UI bounds, excluding anchor origin.
---@usage
---```
---widget:RemoveAllAnchors()
---```
function Uibounds:RemoveAllAnchors() end

---Sets the width and height of the UI bounds.
---@param width number The width to set.
---@param height number The height to set.
---@usage
---```
---widget:SetExtent(100, 100)
---```
function Uibounds:SetExtent(width, height) end

---Sets the height of the UI bounds.
---@param height number The height to set.
---@usage
---```
---widget:SetHeight(100)
---```
function Uibounds:SetHeight(height) end

---Sets the width of the UI bounds.
---@param width number The width to set.
---@usage
---```
---widget:SetWidth(100)
---```
function Uibounds:SetWidth(width) end
