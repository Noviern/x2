---@meta _

AP_BOTTOM = 8      -- types/Uibounds
AP_BOTTOMLEFT = 2  -- types/Uibounds
AP_BOTTOMRIGHT = 3 -- types/Uibounds
AP_CENTER = 4      -- types/Uibounds
AP_LEFT = 6        -- types/Uibounds
AP_RIGHT = 7       -- types/Uibounds
AP_TOP = 5         -- types/Uibounds
AP_TOPLEFT = 0     -- types/Uibounds
AP_TOPRIGHT = 1    -- types/Uibounds

---@class Uibounds
local Uibounds = {}

---Aligns the UI bounds to the specified anchor point at the given coordinates.
---@param anchor ANCHOR_POINT Sets both the anchor point and anchor origin. (default: `"TOPLEFT"`)
---@param x number The x-coordinate offset. (default: `0`)
---@param y number The y-coordinate offset. (default: `0`)
---@usage
---```lua
----- ○ = Anchor Point
----- ● = Anchor Origin (X,Y) ──► +X (right)
----- │      ●──────┐
----- ▼ +Y   │ obj1 │  Aligns obj1 TOPLEFT to the parent obj TOPLEFT at the offset of (0,0).
----- (down) └──────┘
---obj1:AddAnchor("TOPLEFT", 0, 0)
---```
function Uibounds:AddAnchor(anchor, x, y) end

---Aligns the UI bounds to the specified anchor point at the given coordinates.
---@param anchor ANCHOR_POINT Sets both the anchor point and anchor origin. (default: `"TOPLEFT"`)
---@param parentId "UIParent"|Widget|Drawablebase The parent widget or UIParent.
---@param x number The x-coordinate offset. (default: `0`)
---@param y number The y-coordinate offset. (default: `0`)
---@usage
---```lua
----- ○ = Anchor Point
----- ● = Anchor Origin (X,Y) ──► +X (right)
----- │      ●──────┐
----- ▼ +Y   │ obj2 │  Aligns obj2 TOPLEFT to obj1 TOPLEFT at the offset of (0,0).
----- (down) └──────┘
---obj2:AddAnchor("TOPLEFT", obj1, 0, 0)
---```
---@see Widget
---@see Drawablebase
function Uibounds:AddAnchor(anchor, parentId, x, y) end

---Aligns the UI bounds' anchor point to the specified parent and origin at the
---given coordinates.
---@param anchorPoint ANCHOR_POINT The anchor point of the UI bounds. (default: `"TOPLEFT"`)
---@param parentId "UIParent"|Widget|Drawablebase The parent widget or UIParent.
---@param anchorOrigin ANCHOR_POINT The anchor origin on the parent. (default: `"TOPLEFT"`)
---@param x number The x-coordinate offset. (default: `0`)
---@param y number The y-coordinate offset. (default: `0`)
---@usage
---```lua
----- ○ = Anchor Point
----- ● = Anchor Origin (X,Y) ──► +X (right)
----- │      ┌──────┐
----- ▼ +Y   │ obj1 │ Aligns obj2 TOPLEFT to obj1 BOTTOMRIGHT at the offset of (0,0).
----- (down) └──────●○──────┐
-----                │ obj2 │
-----                └──────┘
---obj2:AddAnchor("TOPLEFT", obj1, "BOTTOMRIGHT", 0, 0)
---```
---@see Widget
---@see Drawablebase
function Uibounds:AddAnchor(anchorPoint, parentId, anchorOrigin, x, y) end

---@TODO: This doesnt appear to restrict the widgets min/max width so im unsure what it does. It does set the widgets width.
---Binds the width of the UI bounds.
---@param width number The width to bind.
function Uibounds:BindWidth(width) end

---Checks if the UI bounds is outside the screen.
---@return boolean outsideOfScreen `true` if the UI bounds is outside the screen, `false` otherwise.
---@nodiscard
function Uibounds:CheckOutOfScreen() end

---@TODO: this also starts scaling x and y on AddAnchor when they are applied
---Retrieves the offset coordinates of the UI bounds, constrained by screen
---dimensions.
---@return number offX The x-offset (min: `0`, max: `screen width - effective width`).
---@return number offY The y-offset (min: `0`, max: `screen height - effective height`).
---@nodiscard
function Uibounds:CorrectOffsetByScreen() end

---Retrieves the effective width and height of the UI bounds, scaled if
---ApplyUIScale is true.
---@return number effectiveWidth The effective width.
---@return number effectiveHeight The effective height.
---@nodiscard
function Uibounds:GetEffectiveExtent() end

---Retrieves the effective offset (left, top) of the UI bounds.
---@return number effectiveOffX The effective x-offset.
---@return number effectiveOffY The effective y-offset.
---@nodiscard
function Uibounds:GetEffectiveOffset() end

---Retrieves the unscaled width and height of the UI bounds.
---@return number width The unscaled width.
---@return number height The unscaled height.
---@nodiscard
function Uibounds:GetExtent() end

---Retrieves the unscaled height of the UI bounds.
---@return number height The unscaled height.
---@nodiscard
function Uibounds:GetHeight() end

---@TODO: this is scaled sometimes, its only scaled if the widget has been dragged and ApplyUIScale true. it appears dragging a widget makes addanchor start to scale x and y when applied
---Retrieves the UI scaled offset (right, center) of the UI bounds.
---@return number offX The x-offset, scaled up by 1 / UI scale.
---@return number offY The y-offset, scaled up by 1 / UI scale.
---@nodiscard
function Uibounds:GetOffset() end

---Retrieves the unscaled width of the UI bounds.
---@return number width The unscaled width.
---@nodiscard
function Uibounds:GetWidth() end

---@TODO: Broken?
---Removes all anchors from the UI bounds, excluding anchor origin.
function Uibounds:RemoveAllAnchors() end

---Sets the width and height of the UI bounds.
---@param width number The width to set.
---@param height number The height to set.
function Uibounds:SetExtent(width, height) end

---Sets the height of the UI bounds.
---@param height number The height to set.
function Uibounds:SetHeight(height) end

---Sets the width of the UI bounds.
---@param width number The width to set.
function Uibounds:SetWidth(width) end
