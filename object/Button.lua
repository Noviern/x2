---@meta _

AP_BOTTOM = 8             -- object/Button
AP_BOTTOMLEFT = 2         -- object/Button
AP_BOTTOMRIGHT = 3        -- object/Button
AP_CENTER = 4             -- object/Button
AP_LEFT = 6               -- object/Button
AP_RIGHT = 7              -- object/Button
AP_TOP = 5                -- object/Button
AP_TOPLEFT = 0            -- object/Button
AP_TOPRIGHT = 1           -- object/Button
CT_ABILITY = 2            -- object/Button
CT_EXPEDITION_NAME = 3    -- object/Button
CT_NAME = 1               -- object/Button
DC_ALWAYS = 0             -- object/Button
DC_SHIFT_KEY_DOWN = 1     -- object/Button
UI_BUTTON_DISABLED = 3    -- object/Button
UI_BUTTON_HIGHLIGHTED = 1 -- object/Button
UI_BUTTON_MAX = 4         -- object/Button
UI_BUTTON_NORMAL = 0      -- object/Button
UI_BUTTON_PUSHED = 2      -- object/Button

---object/Button
---@alias UI_BUTTON_STATE
---| `UI_BUTTON_NORMAL`
---| `UI_BUTTON_HIGHLIGHTED`
---| `UI_BUTTON_PUSHED`
---| `UI_BUTTON_DISABLED`
---| `UI_BUTTON_MAX` ---TODO: This may not work.

---object/Button
---@enum UI_BUTTON_STATE_TEXT
local UI_BUTTON_STATE_TEXT = {
  NORMAL      = "normal",
  HIGHLIGHTED = "highlighted",
  PUSHED      = "pushed",
  DISABLED    = "disabled",
  MAX         = "max", ---TODO: This doesnt appear to work.
}

---TODO: Should RGBA be in Addon.lua?

---object/Button
---@class RGBA
---@field r number
---@field g number
---@field b number
---@field a number

---object/Button
---@class Button: Widget
---@field style TextStyle
local Button = {}

---TODO:
---@param state UI_BUTTON_STATE
---@param drawableType UOT
---@param path string
---@param layer any TODO: I added this. Need to figure out how this works.
---@return table
---@nodiscard
function Button:CreateStateDrawable(state, drawableType, path, layer) end

---Disables `mouseButton` for clicking the Button.
---@param mouseButton "LeftButton"|"RightButton"
function Button:DeregisterForClicks(mouseButton) end

---Returns `state` for the Button.
---@return string state
---@nodiscard
function Button:GetButtonState() end

---Returns the `disabledTable` for the disabled state of the Button if it exists.
---@return table|nil disabledTable
---@nodiscard
function Button:GetDisabledBackground() end

---Returns the `color` of the disabled state for the Button.
---@return RGBA color
---@nodiscard
function Button:GetDisabledColor() end

---Returns the `highlightTable` for the highlighted state of the Button if it exists.
---@return table|nil highlightTable
---@nodiscard
function Button:GetHighlightBackground() end

---Returns the `color` of the highlighted state for the Button.
---@return RGBA
---@nodiscard
function Button:GetHighlightColor() end

---Returns the `normalTable` for the normal state of the Button if it exists.
---@return table|nil normalTable
---@nodiscard
function Button:GetNormalBackground() end

---Returns the `color` of the normal state for the Button.
---@return RGBA
---@nodiscard
function Button:GetNormalColor() end

---Returns the `pushedTable` for the pushed state of the Button if it exists.
---@return table|nil pushedTable
---@nodiscard
function Button:GetPushedBackground() end

---Returns the `color` of the pushed state for the Button.
---@return RGBA
---@nodiscard
function Button:GetPushedColor() end

---Enables/Disables `mouseButton` clicking for the Button.
---@param mouseButton "LeftButton"|"RightButton"
---@param enable? boolean defaults to true if not set.
function Button:RegisterForClicks(mouseButton, enable) end

---Enables/Disables auto character clipping for the Button.
---@param resize boolean
function Button:SetAutoClipChar(resize) end

---Enables/Disables auto resizing for the Button.
---@param resize boolean
function Button:SetAutoResize(resize) end

---Set the `state` of the Button.
---@param state UI_BUTTON_STATE_TEXT
function Button:SetButtonState(state) end

---Sets the `disabledTable` for the disabled state of the Button.
---@param disabledTable table
function Button:SetDisabledBackground(disabledTable) end

---Sets the disabled state color for the Button.
---@param r number 0 to 1
---@param g number 0 to 1
---@param b number 0 to 1
---@param a number 0 to 1
function Button:SetDisabledColor(r, g, b, a) end

---Sets the disabled state text color for the Button.
---@param r number 0 to 1
---@param g number 0 to 1
---@param b number 0 to 1
---@param a number 0 to 1
function Button:SetDisabledTextColor(r, g, b, a) end

---Sets focus of the Button.
function Button:SetFocus() end

---Sets the `highlightTable` for the highlighted state of the Button.
---@param highlightTable table
function Button:SetHighlightBackground(highlightTable) end

---Sets the highlighed state color for the Button.
---@param r number 0 to 1
---@param g number 0 to 1
---@param b number 0 to 1
---@param a number 0 to 1
function Button:SetHighlightColor(r, g, b, a) end

---Sets the highlighed state text color for the Button.
---@param r number 0 to 1
---@param g number 0 to 1
---@param b number 0 to 1
---@param a number 0 to 1
function Button:SetHighlightTextColor(r, g, b, a) end

---Sets the inset for the Button.
---@param left number
---@param top number
---@param right number
---@param bottom number
function Button:SetInset(left, top, right, bottom) end

---Sets the `normalTable` for the normal state of the Button.
---@param normalTable table
function Button:SetNormalBackground(normalTable) end

---Sets the normal state color for the Button.
---@param r number 0 to 1
---@param g number 0 to 1
---@param b number 0 to 1
---@param a number 0 to 1
function Button:SetNormalColor(r, g, b, a) end

---Sets the `pushedTable` for the pushed state of the Button.
---@param pushedTable table
function Button:SetPushedBackground(pushedTable) end

---Sets the pushed state color for the Button.
---@param r number 0 to 1
---@param g number 0 to 1
---@param b number 0 to 1
---@param a number 0 to 1
function Button:SetPushedColor(r, g, b, a) end

---Sets the pushed state text color for the Button.
---@param r number 0 to 1
---@param g number 0 to 1
---@param b number 0 to 1
---@param a number 0 to 1
function Button:SetPushedTextColor(r, g, b, a) end

---Sets the `style` for the Button.
---@param style string TODO: ui\setting\button_style.g
function Button:SetStyle(style) end

---Sets the text color for the Button.
---@param r number 0 to 1
---@param g number 0 to 1
---@param b number 0 to 1
---@param a number 0 to 1
function Button:SetTextColor(r, g, b, a) end
