---@meta _

UI_BUTTON_DISABLED = 3    -- objects/Button UI_BUTTON_STATE
UI_BUTTON_HIGHLIGHTED = 1 -- objects/Button UI_BUTTON_STATE
UI_BUTTON_MAX = 4         -- objects/Button
UI_BUTTON_NORMAL = 0      -- objects/Button UI_BUTTON_STATE
UI_BUTTON_PUSHED = 2      -- objects/Button UI_BUTTON_STATE

---objects/Button
---@alias UI_BUTTON_STATE
---| `UI_BUTTON_NORMAL`
---| `UI_BUTTON_HIGHLIGHTED`
---| `UI_BUTTON_PUSHED`
---| `UI_BUTTON_DISABLED`

---[Button](lua://Button)
---
---A `Button` widget is clickable and responds to mouse interaction with four
---visual states: normal, highlighted (hover), pushed (pressed), and disabled.
---Supports per-state custom backgrounds, tint colors, text coloring,
---auto-resize, content insets, and per-mouse-button click registration.
---
---**Dependencies**:
--- - [TextStyle](lua://TextStyle) used for the `style` field.
--- - [EffectDrawable](lua://EffectDrawable) used for getting the background state drawable.
--- - [ImageDrawable](lua://ImageDrawable) used for getting the background state drawable.
--- - [NinePartDrawable](lua://NinePartDrawable) used for getting the background state drawable.
--- - [ThreePartDrawable](lua://ThreePartDrawable) used for getting the background state drawable.
---
---@class Button: Widget
---@field style TextStyle The text style applied to the button's text.
local Button = {}

---Creates a drawable for the specified button state and type.
---@param state UI_BUTTON_STATE The button state (e.g., normal, pushed, disabled).
---@param drawableType UI_OBJECT_TYPE_DRAWABLE The type of drawable to create.
---@param path string The path to the drawable resource.
---@param layer? DRAWABLE_NAME_LAYER The optional layer to apply the drawable to. (default: `"background"`)
---@return DrawableDDS stateDrawable The created drawable, empty table if the object hasn't been imported, or `nil` if creation fails.
---@nodiscard
---@see DrawableDDS
---@see ColorDrawable
---@see NinePartDrawable
---@see ThreePartDrawable
---@see ImageDrawable
---@overload fun(self: self, state: UI_BUTTON_STATE, drawableType: UOT_COLOR_DRAWABLE, path: string, layer?: DRAWABLE_NAME_LAYER): ColorDrawable
---@overload fun(self: self, state: UI_BUTTON_STATE, drawableType: UOT_NINE_PART_DRAWABLE, path: string, layer?: DRAWABLE_NAME_LAYER): NinePartDrawable
---@overload fun(self: self, state: UI_BUTTON_STATE, drawableType: UOT_THREE_PART_DRAWABLE, path: string, layer?: DRAWABLE_NAME_LAYER): ThreePartDrawable
---@overload fun(self: self, state: UI_BUTTON_STATE, drawableType: UOT_IMAGE_DRAWABLE, path: string, layer?: DRAWABLE_NAME_LAYER): ImageDrawable
function Button:CreateStateDrawable(state, drawableType, path, layer) end

---Disables clicking for the specified mouse button.
---@param mouseButton MOUSE_BUTTON The mouse button to disable.
function Button:DeregisterForClicks(mouseButton) end

---Retrieves the current state of the button.
---@return UI_BUTTON_STATE_TEXT state The current button state. (default: `"DISABLED"`)
---@nodiscard
function Button:GetButtonState() end

---Retrieves the drawable for the disabled state of the button, if it exists.
---Casting may be neccessary.
---@return DrawableDDS|nil disabledTable The disabled state drawable, an empty table if the correct drawable hasn't been imported, or `nil` if not set.
---@nodiscard
---@see DrawableDDS
function Button:GetDisabledBackground() end

---Retrieves the color of the disabled state for the button.
---@return RGBA disabledColor The disabled state color. (default: `{ r = 0, g = 0, b = 0, a = 1 }`)
---@nodiscard
function Button:GetDisabledColor() end

---Retrieves the drawable for the highlighted state of the button, if it exists.
---Casting may be neccessary.
---@return DrawableDDS|nil highlightTable The highlighted state drawable, an empty table if the correct drawable hasn't been imported, or `nil` if not set.
---@nodiscard
---@see DrawableDDS
function Button:GetHighlightBackground() end

---Retrieves the color of the highlighted state for the button.
---@return RGBA highlightColor The highlighted state color. (default: `{ r = 0, g = 0, b = 0, a = 1 }`)
---@nodiscard
function Button:GetHighlightColor() end

---Retrieves the drawable for the normal state of the button, if it exists.
---Casting may be neccessary.
---@return DrawableDDS|nil normalTable The normal state drawable, an empty table if the correct drawable hasn't been imported, or `nil` if not set.
---@nodiscard
---@see DrawableDDS
function Button:GetNormalBackground() end

---Retrieves the color of the normal state for the button.
---@return RGBA normalColor The normal state color. (default: `{ r = 0, g = 0, b = 0, a = 1 }`)
---@nodiscard
function Button:GetNormalColor() end

---Retrieves the drawable for the pushed state of the button, if it exists.
---Casting may be neccessary.
---@return DrawableDDS|nil pushedTable The pushed state drawable, an empty table if the correct drawable hasn't been imported, or `nil` if not set.
---@nodiscard
---@see DrawableDDS
function Button:GetPushedBackground() end

---Retrieves the color of the pushed state for the button.
---@return RGBA pushedColor The pushed state color. (default: `{ r = 0, g = 0, b = 0, a = 1 }`)
---@nodiscard
function Button:GetPushedColor() end

---Enables or disables clicking for the specified mouse button.
---@param mouseButton MOUSE_BUTTON The mouse button to enable/disable. (default: `"LeftButton"`)
---@param enable? boolean The optional enable state, `true` to enable clicking, `false` to disable. (default: `true`)
function Button:RegisterForClicks(mouseButton, enable) end

---Enables or disables automatic character clipping for the button. This resets
---`Button:SetText`.
---@param resize boolean `true` to enable auto clipping, `false` to disable. (default: `false`)
function Button:SetAutoClipChar(resize) end

---Enables or disables automatic resizing for the button.
---@param resize boolean `true` to enable auto resizing, `false` to disable. (default: `false`)
function Button:SetAutoResize(resize) end

---@FIXME: SetButtonState and GetButtonState - Almost none of the states match their actual state.
---FAKE STATE > REAL STATE
---NORMAL = HIGHLIGHTED
---HIGHLIGHTED = DISABLED
---PUSHED = PUSHED
---DISABLED = NORMAL

---Sets the state of the button.
---@param state UI_BUTTON_STATE_TEXT The state to set. (default: `DISABLED`)
function Button:SetButtonState(state) end

---Sets the drawable for the disabled state of the button.
---@param disabledTable DrawableDDS The drawable for the disabled state.
---@see DrawableDDS
function Button:SetDisabledBackground(disabledTable) end

---Sets the color for the disabled state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
function Button:SetDisabledColor(r, g, b, a) end

---Sets the text color for the disabled state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
function Button:SetDisabledTextColor(r, g, b, a) end

---Sets focus on the button.
function Button:SetFocus() end

---Sets the drawable for the highlighted state of the button.
---@param highlightTable DrawableDDS The drawable for the highlighted state.
---@see DrawableDDS
function Button:SetHighlightBackground(highlightTable) end

---Sets the color for the highlighted state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
function Button:SetHighlightColor(r, g, b, a) end

---Sets the text color for the highlighted state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
function Button:SetHighlightTextColor(r, g, b, a) end

---Sets the inset for the button.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
function Button:SetInset(left, top, right, bottom) end

---Sets the drawable for the normal state of the button.
---@param normalTable DrawableDDS The drawable for the normal state.
---@see DrawableDDS
function Button:SetNormalBackground(normalTable) end

---Sets the color for the normal state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
function Button:SetNormalColor(r, g, b, a) end

---Sets the drawable for the pushed state of the button.
---@param pushedTable DrawableDDS The drawable for the pushed state.
---@see DrawableDDS
function Button:SetPushedBackground(pushedTable) end

---Sets the color for the pushed state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
function Button:SetPushedColor(r, g, b, a) end

---Sets the text color for the pushed state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
function Button:SetPushedTextColor(r, g, b, a) end

---Sets the style for the button, including extent, state backgrounds, and other
---visual properties.
---
---This function applies the specified style even if the required Drawables and
---TextStyle are not imported.
---@param style BUTTON_STYLE The style configuration to apply.
function Button:SetStyle(style) end

---Sets the text color for the normal state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
function Button:SetTextColor(r, g, b, a) end
