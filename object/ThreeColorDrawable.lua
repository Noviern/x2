---@meta _

AP_BOTTOM = 8      -- object/ThreeColorDrawable
AP_BOTTOMLEFT = 2  -- object/ThreeColorDrawable
AP_BOTTOMRIGHT = 3 -- object/ThreeColorDrawable
AP_CENTER = 4      -- object/ThreeColorDrawable
AP_LEFT = 6        -- object/ThreeColorDrawable
AP_RIGHT = 7       -- object/ThreeColorDrawable
AP_TOP = 5         -- object/ThreeColorDrawable
AP_TOPLEFT = 0     -- object/ThreeColorDrawable
AP_TOPRIGHT = 1    -- object/ThreeColorDrawable

---object/ThreeColorDrawable
---@class ThreeColorDrawable: Drawablebase
local ThreeColorDrawable = {}

---TODO:
---@param r number
---@param g number
---@param b number
function ThreeColorDrawable:ChangeColor1(r, g, b) end

---TODO:
---@param r number
---@param g number
---@param b number
function ThreeColorDrawable:ChangeColor2(r, g, b) end

---TODO:
---@param r number
---@param g number
---@param b number
function ThreeColorDrawable:ChangeColor3(r, g, b) end

---TODO:
---@param typeNumber number
function ThreeColorDrawable:ChangeImageFile(typeNumber) end

---TODO:
---@param idx number
function ThreeColorDrawable:ChangeUserImageFile(idx) end

---Sets the coords and dimensions of the ThreeColorDrawable.
---@param x number
---@param y number
---@param width number
---@param height number
function ThreeColorDrawable:SetCoords(x, y, width, height) end
