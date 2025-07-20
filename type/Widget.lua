---@meta _

---TODO: Should Widgetbase and Widget be merged?

---@class Widget: Widgetbase, Uibounds, Uiobject
local Widget = {}

---@param nameLayer string
function Widget:DisableDrawables(nameLayer) end

---@param nameLayer string
function Widget:DisableDrawablesWithChildren(nameLayer) end

---@param nameLayer string
function Widget:EnableDrawables(nameLayer) end

---@param nameLayer string
function Widget:EnableDrawablesWithChildren(nameLayer) end

---TODO: This returns nil. Broken?
function Widget:GetRotation() end

---@param nameLayer string
function Widget:RemoveAllDrawables(nameLayer) end

---@param drawableTable table
function Widget:RemoveDrawable(drawableTable) end

---@param r number 0 to 1
---@param g number 0 to 1
---@param b number 0 to 1
---@param a number 0 to 1
---@param nameLayer string
function Widget:SetLayerColor(r, g, b, a, nameLayer) end

---TODO: This takes a string, not sure how this is used.
---@param rs string
function Widget:SetRotation(rs) end

---@param use boolean
function Widget:UseDynamicContentState(use) end

---@param nameLayer string
---@param use boolean
function Widget:UseDynamicDrawableState(nameLayer, use) end
