---@meta _

AP_BOTTOM = 8          -- object/Window
AP_BOTTOMLEFT = 2      -- object/Window
AP_BOTTOMRIGHT = 3     -- object/Window
AP_CENTER = 4          -- object/Window
AP_LEFT = 6            -- object/Window
AP_RIGHT = 7           -- object/Window
AP_TOP = 5             -- object/Window
AP_TOPLEFT = 0         -- object/Window
AP_TOPRIGHT = 1        -- object/Window
CT_ABILITY = 2         -- object/Window
CT_EXPEDITION_NAME = 3 -- object/Window
CT_NAME = 1            -- object/Window
DC_ALWAYS = 0          -- object/Window
DC_SHIFT_KEY_DOWN = 1  -- object/Window

---@enum UI_LAYER
local UI_LAYER = {
  BACKGROUND     = "background",
  DIALOG         = "dialog",
  GAME           = "game",
  HUD            = "hud",
  NORMAL         = "normal",
  QUESTDIRECTING = "questdirecting",
  SYSTEM         = "system",
  TOOLTIP        = "tooltip",
}

---object/Window
---@class Window: Widget
---@field modalBackgroundWindow EmptyWidget
---@field titleStyle TextStyle
---@class window: Window
local Window = {}

---Enables or disables closing the Window when the Escape key is pressed.
---@param escape boolean `true` to enable close on Escape, `false` to disable. (default: `false`)
---@usage
---```
---widget:SetCloseOnEscape(true)
---```
function Window:SetCloseOnEscape(escape) end

---Sets the inset for the title of the Window.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```
---widget:SetTitleInset(10, 10, 10, 10)
---```
function Window:SetTitleInset(left, top, right, bottom) end

---Sets the title text for the Window.
---@param title string The title text to set.
---@usage
---```
---widget:SetTitleText("Archerage.to - the first ArcheAge Private Server")
---```
function Window:SetTitleText(title) end

---Sets the UI layer for the Window.
---@param layerName UI_LAYER The name of the UI layer. (default: `"normal"`)
---@usage
---```
---widget:SetUILayer("system")
---```
---@see UI_LAYER
function Window:SetUILayer(layerName) end

---Enables or disables modal behavior for the Window.
---@param enable boolean `true` to make the Window modal, `false` to disable. (default: `false`)
---@usage
---```
---widget:SetWindowModal(true)
---```
function Window:SetWindowModal(enable) end
