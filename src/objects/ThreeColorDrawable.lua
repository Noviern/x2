---@meta _

---[ThreeColorDrawable](lua://ThreeColorDrawable)
---
---A `ThreeColorDrawable` is a drawable that supports three separate colors
---applied to its texture, with optional user-defined or predefined images.
---Colors can be changed individually, and the drawable's position and size
---can be adjusted.
---
---@class ThreeColorDrawable: Drawablebase
local ThreeColorDrawable = {}

---@TODO: Clarify usage for Color1. ChangeImageFile might be needed first.
---Sets the first color for the ThreeColorDrawable.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
function ThreeColorDrawable:ChangeColor1(r, g, b) end

---@TODO: Clarify usage for Color2. ChangeImageFile might be needed first.
---Sets the second color for the ThreeColorDrawable.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
function ThreeColorDrawable:ChangeColor2(r, g, b) end

---@TODO: Clarify usage for Color3. ChangeImageFile might be needed first.
---Sets the third color for the ThreeColorDrawable.
---@param r number The red color component. (min: `0`, max: `1`)
---@param g number The green color component. (min: `0`, max: `1`)
---@param b number The blue color component. (min: `0`, max: `1`)
function ThreeColorDrawable:ChangeColor3(r, g, b) end

---@TODO: db ucc_emblems > emblem_id is design not pattern, it crashes the game "Device removed! please restart the game."
---Changes the image file for the ThreeColorDrawable based on type.
---@param typeNumber number The type number for the image file.
function ThreeColorDrawable:ChangeImageFile(typeNumber) end

---@TODO: Clarify idx parameter and its relation to user image files.
---Changes the user-defined image file for the ThreeColorDrawable.
---@param idx number The index of the user image file.
function ThreeColorDrawable:ChangeUserImageFile(idx) end

---Sets the coordinates and dimensions of the ThreeColorDrawable.
---@param x number The x-coordinate of the drawable.
---@param y number The y-coordinate of the drawable.
---@param width number The width of the drawable.
---@param height number The height of the drawable.
function ThreeColorDrawable:SetCoords(x, y, width, height) end
