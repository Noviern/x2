---@meta _

---@TODO: Drawablebase may not be correct, it may be DrawableDDS.

AP_BOTTOM = 8             -- objects/Button
AP_BOTTOMLEFT = 2         -- objects/Button
AP_BOTTOMRIGHT = 3        -- objects/Button
AP_CENTER = 4             -- objects/Button
AP_LEFT = 6               -- objects/Button
AP_RIGHT = 7              -- objects/Button
AP_TOP = 5                -- objects/Button
AP_TOPLEFT = 0            -- objects/Button
AP_TOPRIGHT = 1           -- objects/Button
CT_ABILITY = 2            -- objects/Button
CT_EXPEDITION_NAME = 3    -- objects/Button
CT_NAME = 1               -- objects/Button
DC_ALWAYS = 0             -- objects/Button
DC_SHIFT_KEY_DOWN = 1     -- objects/Button
UI_BUTTON_DISABLED = 3    -- objects/Button
UI_BUTTON_HIGHLIGHTED = 1 -- objects/Button
UI_BUTTON_MAX = 4         -- objects/Button The count of UI_BUTTON states.
UI_BUTTON_NORMAL = 0      -- objects/Button
UI_BUTTON_PUSHED = 2      -- objects/Button

---objects/Button
---@alias UI_BUTTON_STATE
---| `UI_BUTTON_NORMAL`
---| `UI_BUTTON_HIGHLIGHTED`
---| `UI_BUTTON_PUSHED`
---| `UI_BUTTON_DISABLED`

---objects/Button
---@class Button: Widget
---@field style TextStyle
---@class button: Button
local Button = {}

---@TODO: What is the default layer?
---Creates a drawable for the specified button state and type.
---@param state UI_BUTTON_STATE The button state (e.g., normal, pushed, disabled).
---@param drawableType UOT_DRAWABLE The type of drawable to create.
---@param path string The path to the drawable resource.
---@param layer? DRAWABLE_NAME_LAYER The layer to apply the drawable to (optional).
---@return DrawableDDS|EmptyTable|nil stateDrawable The created drawable, an empty table, or `nil` if creation fails.
---@nodiscard
---@usage
---```lua
---local normalDrawable = widget:CreateStateDrawable(UI_BUTTON_NORMAL, UOT_NINE_PART_DRAWABLE, TEXTURE_PATH.HUD)
---```
---@see UI_BUTTON_STATE
---@see UOT_DRAWABLE
---@see DrawableDDS
function Button:CreateStateDrawable(state, drawableType, path, layer) end

---Disables clicking for the specified mouse button.
---@param mouseButton MOUSE_BUTTON The mouse button to disable.
---@usage
---```lua
---widget:DeregisterForClicks("LeftButton")
---```
---@see MOUSE_BUTTON
function Button:DeregisterForClicks(mouseButton) end

---Retrieves the current state of the button.
---@return UI_BUTTON_STATE_TEXT state The current button state. (default: `DISABLED`)
---@nodiscard
---@usage
---```lua
---local state = widget:GetButtonState()
---```
---@see UI_BUTTON_STATE_TEXT
function Button:GetButtonState() end

---@TODO: @cast
---Retrieves the drawable for the disabled state of the button, if it exists.
---@return Drawablebase|nil disabledTable The disabled state drawable, or `nil` if not set.
---@nodiscard
---@usage
---```lua
---local disabledTable = widget:GetDisabledBackground()
---```
---@see Drawablebase
function Button:GetDisabledBackground() end

---Retrieves the color of the disabled state for the button.
---@return RGBA disabledColor The disabled state color. (default: `{ r = 0, g = 0, b = 0, a = 1 }`)
---@nodiscard
---@usage
---```lua
---local disabledColor = widget:GetDisabledColor()
---```
---@see RGBA
function Button:GetDisabledColor() end

---Retrieves the drawable for the highlighted state of the button, if it exists.
---@return Drawablebase|nil highlightTable The highlighted state drawable, or `nil` if not set.
---@nodiscard
---@usage
---```lua
---local highlightTable = widget:GetHighlightBackground()
---```
---@see Drawablebase
function Button:GetHighlightBackground() end

---Retrieves the color of the highlighted state for the button.
---@return RGBA highlightColor The highlighted state color. (default: `{ r = 0, g = 0, b = 0, a = 1 }`)
---@nodiscard
---@usage
---```lua
---local highlightColor = widget:GetHighlightColor()
---```
---@see RGBA
function Button:GetHighlightColor() end

---Retrieves the drawable for the normal state of the button, if it exists.
---@return Drawablebase|nil normalTable The normal state drawable, or `nil` if not set.
---@nodiscard
---@usage
---```lua
---local normalTable = widget:GetNormalBackground()
---```
---@see Drawablebase
function Button:GetNormalBackground() end

---Retrieves the color of the normal state for the button.
---@return RGBA normalColor The normal state color. (default: `{ r = 0, g = 0, b = 0, a = 1 }`)
---@nodiscard
---@usage
---```lua
---local normalColor = widget:GetNormalColor()
---```
---@see RGBA
function Button:GetNormalColor() end

---Retrieves the drawable for the pushed state of the button, if it exists.
---@return Drawablebase|nil pushedTable The pushed state drawable, or `nil` if not set.
---@nodiscard
---@usage
---```lua
---local pushedTable = widget:GetPushedBackground()
---```
---@see Drawablebase
function Button:GetPushedBackground() end

---Retrieves the color of the pushed state for the button.
---@return RGBA pushedColor The pushed state color. (default: `{ r = 0, g = 0, b = 0, a = 1 }`)
---@nodiscard
---@usage
---```lua
---local pushedColor = widget:GetPushedColor
---```
---@see RGBA
function Button:GetPushedColor() end

---Enables or disables clicking for the specified mouse button.
---@param mouseButton MOUSE_BUTTON The mouse button to enable/disable. (default: `"LeftButton"`)
---@param enable? boolean `true` to enable clicking, `false` to disable. (default: `true`)
---@usage
---```lua
---widget:RegisterForClicks("RightButton")
---```
---@see MOUSE_BUTTON
function Button:RegisterForClicks(mouseButton, enable) end

---Enables or disables automatic character clipping for the button. This resets
---`Button:SetText`.
---@param resize boolean `true` to enable auto clipping, `false` to disable. (default: `false`)
---@usage
---```lua
---widget:SetAutoClipChar(true)
---```
function Button:SetAutoClipChar(resize) end

---Enables or disables automatic resizing for the button.
---@param resize boolean `true` to enable auto resizing, `false` to disable. (default: `false`)
---@usage
---```lua
---widget:SetAutoResize(true)
---```
function Button:SetAutoResize(resize) end

---@TODO: There is something very wrong with this. Almost none of the states match their actual state.
---FAKE STATE > REAL STATE
---NORMAL = HIGHLIGHTED
---HIGHLIGHTED = DISABLED
---PUSHED = PUSHED
---DISABLED = NORMAL

---Sets the state of the button.
---@param state UI_BUTTON_STATE_TEXT The state to set. (default: `DISABLED`)
---@usage
---```lua
---widget:SetButtonState("NORMAL")
---```
---@see UI_BUTTON_STATE_TEXT
function Button:SetButtonState(state) end

---Sets the drawable for the disabled state of the button.
---@param disabledTable Drawablebase The drawable for the disabled state.
---@usage
---```lua
---widget:SetDisabledBackground(drawable)
---```
function Button:SetDisabledBackground(disabledTable) end

---Sets the color for the disabled state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@usage
---```lua
---widget:SetDisabledColor(0, 0, 0, 1)
---```
function Button:SetDisabledColor(r, g, b, a) end

---Sets the text color for the disabled state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@usage
---```lua
---widget:SetDisabledTextColor(0, 0, 0, 1)
---```
function Button:SetDisabledTextColor(r, g, b, a) end

---Sets focus on the button.
---@usage
---```lua
---widget:SetFocus()
---```
function Button:SetFocus() end

---Sets the drawable for the highlighted state of the button.
---@param highlightTable Drawablebase The drawable for the highlighted state.
---@usage
---```lua
---widget:SetHighlightBackground(drawable)
---```
function Button:SetHighlightBackground(highlightTable) end

---Sets the color for the highlighted state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@usage
---```lua
---widget:SetHighlightColor(1, 0, 0, 1)
---```
function Button:SetHighlightColor(r, g, b, a) end

---Sets the text color for the highlighted state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@usage
---```lua
---widget:SetHighlightTextColor(1, 0, 0, 1)
---```
function Button:SetHighlightTextColor(r, g, b, a) end

---Sets the inset for the button.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```lua
---widget::SetInset(10, 10, 10, 10)
---```
function Button:SetInset(left, top, right, bottom) end

---Sets the drawable for the normal state of the button.
---@param normalTable Drawablebase The drawable for the normal state.
---@usage
---```lua
---widget:SetNormalBackground(drawable)
---```
function Button:SetNormalBackground(normalTable) end

---Sets the color for the normal state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@usage
---```lua
---widget:SetNormalColor(1, 1, 1, 1)
---```
function Button:SetNormalColor(r, g, b, a) end

---Sets the drawable for the pushed state of the button.
---@param pushedTable Drawablebase The drawable for the pushed state.
---@usage
---```lua
---widget:SetPushedBackground(drawable)
---```
function Button:SetPushedBackground(pushedTable) end

---Sets the color for the pushed state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@usage
---```lua
---widget:SetPushedColor(0, 1, 0, 1)
---```
function Button:SetPushedColor(r, g, b, a) end

---Sets the text color for the pushed state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@usage
---```lua
---widget:SetPushedTextColor(0, 1, 0, 1)
---```
function Button:SetPushedTextColor(r, g, b, a) end

---Sets the style for the button. Should be applied before setting the extent.
---@param style BUTTON_STYLE The style to apply.
---@usage
---```lua
---widget:SetStyle("text_default")
---```
---@see BUTTON_STYLE
function Button:SetStyle(style) end

---Sets the text color for the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@usage
---```lua
---widget:SetTextColor(0, 0, 0, 1)
---```
function Button:SetTextColor(r, g, b, a) end
