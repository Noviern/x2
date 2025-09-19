---@meta _

AP_BOTTOM = 8          -- objects/Window
AP_BOTTOMLEFT = 2      -- objects/Window
AP_BOTTOMRIGHT = 3     -- objects/Window
AP_CENTER = 4          -- objects/Window
AP_LEFT = 6            -- objects/Window
AP_RIGHT = 7           -- objects/Window
AP_TOP = 5             -- objects/Window
AP_TOPLEFT = 0         -- objects/Window
AP_TOPRIGHT = 1        -- objects/Window
CT_ABILITY = 2         -- objects/Window
CT_EXPEDITION_NAME = 3 -- objects/Window
CT_NAME = 1            -- objects/Window
DC_ALWAYS = 0          -- objects/Window DRAG_CONDITION
DC_SHIFT_KEY_DOWN = 1  -- objects/Window DRAG_CONDITION

---objects/Window
---@class Window: Widget
---@field modalBackgroundWindow EmptyWidget
---@field titleStyle TextStyle
local Window = {}
---@class window: Window

---Enables or disables closing the Window when the Escape key is pressed.
---@param escape boolean `true` to enable close on Escape, `false` to disable. (default: `false`)
---@usage
---```lua
---widget:SetCloseOnEscape(true)
---```
function Window:SetCloseOnEscape(escape) end

---Sets the inset for the title of the Window.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```lua
---widget:SetTitleInset(10, 10, 10, 10)
---```
function Window:SetTitleInset(left, top, right, bottom) end

---Sets the title text for the Window.
---@param title string The title text to set.
---@usage
---```lua
---widget:SetTitleText("Archerage.to - the first ArcheAge Private Server")
---```
function Window:SetTitleText(title) end

---Sets the UI layer for the Window.
---@param layerName UI_LAYER The name of the UI layer. (default: `"normal"`)
---@usage
---```lua
---widget:SetUILayer("system")
---```
---@see UI_LAYER
function Window:SetUILayer(layerName) end

---Enables or disables modal behavior for the Window.
---@param enable boolean `true` to make the Window modal, `false` to disable. (default: `false`)
---@usage
---```lua
---widget:SetWindowModal(true)
---```
function Window:SetWindowModal(enable) end
