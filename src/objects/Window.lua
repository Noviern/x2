---@meta _

---objects/Window
---@class Window: Widget
---@field modalBackgroundWindow EmptyWidget
---@field titleStyle TextStyle
local Window = {}

---objects/Window
---@class window: Window

---Enables or disables closing the Window when the Escape key is pressed.
---@param escape boolean `true` to enable close on Escape, `false` to disable. (default: `false`)
function Window:SetCloseOnEscape(escape) end

---Sets the inset for the title of the Window.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
function Window:SetTitleInset(left, top, right, bottom) end

---Sets the title text for the Window.
---@param title string The title text to set.
function Window:SetTitleText(title) end

---Sets the UI layer for the Window. If the window is a child then the layer is
---relative to the parents layer.
---@param layerName UI_LAYER The name of the UI layer. (default: `"normal"`)
function Window:SetUILayer(layerName) end

---Enables or disables modal behavior for the Window.
---@param enable boolean `true` to make the Window modal, `false` to disable. (default: `false`)
function Window:SetWindowModal(enable) end
