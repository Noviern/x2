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

---object/Window
---@class Window: Widget
---@field modalBackgroundWindow EmptyWidget
---@field titleStyle TextStyle
local Window = {}

---Enables/Disables close on escape for the Window.
---@param escape boolean
function Window:SetCloseOnEscape(escape) end

---Sets the inset of the title for the Window.
---@param left number
---@param top number
---@param right number
---@param bottom number
function Window:SetTitleInset(left, top, right, bottom) end

---Sets the `title` for the Window.
---@param title string
function Window:SetTitleText(title) end

---Sets the ui layer to `layerName` for the Window.
---@param layerName string
function Window:SetUILayer(layerName) end

---Enables/Disables window modal for the Window.
---@param enable boolean
function Window:SetWindowModal(enable) end
