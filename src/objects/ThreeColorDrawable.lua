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

---@TODO: Clarify color range and usage for Color1.
---Sets the first color for the ThreeColorDrawable.
---@param r number The red color component.
---@param g number The green color component.
---@param b number The blue color component.
---@usage
---```
---drawable:ChangeColor1(1, 0, 0)
---```
function ThreeColorDrawable:ChangeColor1(r, g, b) end

---@TODO: Clarify color range and usage for Color2.
---Sets the second color for the ThreeColorDrawable.
---@param r number The red color component.
---@param g number The green color component.
---@param b number The blue color component.
---@usage
---```
---drawable:ChangeColor2(0, 1, 0)
---```
function ThreeColorDrawable:ChangeColor2(r, g, b) end

---@TODO: Clarify color range and usage for Color3.
---Sets the third color for the ThreeColorDrawable.
---@param r number The red color component.
---@param g number The green color component.
---@param b number The blue color component.
---@usage
---```
---drawable:ChangeColor3(0, 0, 1)
---```
function ThreeColorDrawable:ChangeColor3(r, g, b) end

---@TODO: Verify typeNumber values and their effect. usage.
---Changes the image file for the ThreeColorDrawable based on type.
---@param typeNumber number The type number for the image file.
function ThreeColorDrawable:ChangeImageFile(typeNumber) end

---@TODO: Clarify idx parameter and its relation to user image files. usage.
---Changes the user-defined image file for the ThreeColorDrawable.
---@param idx number The index of the user image file.
function ThreeColorDrawable:ChangeUserImageFile(idx) end

---Sets the coordinates and dimensions of the ThreeColorDrawable.
---@param x number The x-coordinate of the drawable.
---@param y number The y-coordinate of the drawable.
---@param width number The width of the drawable.
---@param height number The height of the drawable.
---@usage
---```
---drawable:SetCoords(0, 0, 100, 100)
---```
function ThreeColorDrawable:SetCoords(x, y, width, height) end
