---@meta _

---@TODO: Should Widgetbase and Widget be merged?

---@class Widget: Widgetbase, Uibounds, Uiobject
local Widget = {}

---Disables drawables for the specified layer.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to disable.
---@usage
---```lua
---widget:DisableDrawables("background")
---```
---@see DRAWABLE_NAME_LAYER
function Widget:DisableDrawables(nameLayer) end

---Disables drawables for the specified layer and its children.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to disable.
---@usage
---```lua
---widget:DisableDrawablesWithChildren("background")
---```
---@see DRAWABLE_NAME_LAYER
function Widget:DisableDrawablesWithChildren(nameLayer) end

---Enables drawables for the specified layer.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to enable.
---@usage
---```lua
---widget:EnableDrawables("background")
---```
---@see DRAWABLE_NAME_LAYER
function Widget:EnableDrawables(nameLayer) end

---Enables drawables for the specified layer and its children.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to enable.
---@usage
---```lua
---widget:EnableDrawablesWithChildren("background")
---```
---@see DRAWABLE_NAME_LAYER
function Widget:EnableDrawablesWithChildren(nameLayer) end

---@TODO: Returns nil and "NONE", possibly broken? If its not broken I need to define a ROTATION enum for the return.
---Retrieves the rotation of the widget.
---@return string|nil rotation
---@nodiscard
function Widget:GetRotation() end

---Removes all drawables for the specified layer.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to clear.
---@usage
---```lua
---widget:RemoveAllDrawables("background")
---```
---@see DRAWABLE_NAME_LAYER
function Widget:RemoveAllDrawables(nameLayer) end

---Removes a specific drawable table from the widget.
---@param drawableTable Drawablebase The drawable table to remove.
---@usage
---```lua
---widget:RemoveDrawable(bg)
---```
---@see Drawablebase
function Widget:RemoveDrawable(drawableTable) end

---Sets the color for the specified layer.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the color to.
---@usage
---```lua
---widget:SetLayerColor(1, 0, 0, .5, "background")
---```
---@see DRAWABLE_NAME_LAYER
function Widget:SetLayerColor(r, g, b, a, nameLayer) end

---@TODO: Takes a string, usage unclear.
---Sets the rotation of the widget.
---@param rs string The rotation value.
function Widget:SetRotation(rs) end

---Enables or disables dynamic content state for the widget.
---@param use boolean `true` to enable, `false` to disable.
---@usage
---```lua
---widget:UseDynamicContentState(true)
---```
function Widget:UseDynamicContentState(use) end

---Enables or disables dynamic drawable state for the specified layer.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to modify.
---@param use boolean `true` to enable, `false` to disable.
---@usage
---```lua
---widget:UseDynamicDrawableState("background", true)
---```
---@see DRAWABLE_NAME_LAYER
function Widget:UseDynamicDrawableState(nameLayer, use) end
