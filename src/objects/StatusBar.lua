---@meta _

---objects/StatusBar
---@class StatusBar: Widget
local StatusBar = {}

---objects/StatusBar
---@class statusbar: StatusBar

---Adds a child widget to the StatusBar with specified anchoring.
---@param anchorChild DrawableDDS The child widget to anchor.
---@param childAnchorPoint ANCHOR_POINT The anchor point on the child widget.
---@param anchorOigin? ANCHOR_POINT The optional origin anchor point.
---@param x? number The optional x-offset.
---@param y? number The optional y-offset.
---@usage
---```lua
---local shadowDeco = widget:CreateDrawable("ui/common/default.dds", "gage_shadow", "artwork")
---widget:AddAnchorChildToBar(shadowDeco, "TOPLEFT", "TOPRIGHT", 0, -1)
---```
---@see DrawableDDS
function StatusBar:AddAnchorChildToBar(anchorChild, childAnchorPoint, anchorOigin, x, y) end

---Retrieves the color of the StatusBar.
---@return RGBA barColor The color of the StatusBar.
---@nodiscard
function StatusBar:GetBarColor() end

---Retrieves the left width for the specified value of the StatusBar.
---@param value number The value to calculate the width for.
---@return number leftWidth The calculated left width.
---@nodiscard
function StatusBar:GetLeftWidth(value) end

---Retrieves the minimum and maximum values of the StatusBar.
---@return string max The maximum value.
---@return string min The minimum value.
---@nodiscard
function StatusBar:GetMinMaxValues() end

---Retrieves the orientation of the StatusBar.
---@return ORIENTATION orientation The orientation of the StatusBar. (default: `"HORIZONTAL"`)
---@nodiscard
function StatusBar:GetOrientation() end

---Retrieves the current value of the StatusBar.
---@return string value The current value. (default: `"0"`)
---@nodiscard
function StatusBar:GetValue() end

---Checks the value against `StatusBar:GetValue()`.
---@param value string The value to check.
---@return boolean `true` if the value is greater than `StatusBar:GetValue()`, `false` otherwise.
---@nodiscard
function StatusBar:IsChangeAfterImageColor(value) end

---Sets the color for the StatusBar. Must be called after the texture has been
---set for the StatusBar.
---@param r number The red color component (min: `0`, max: `1`).
---@param g number The green color component (min: `0`, max: `1`).
---@param b number The blue color component (min: `0`, max: `1`).
---@param a number The alpha (opacity) component (min: `0`, max: `1`).
function StatusBar:SetBarColor(r, g, b, a) end

---Sets the bar color using a color key for the StatusBar. Must be called after
---the texture has been set for the StatusBar.
---@param colorKey string The color key to apply from the texture path `*.g` file.
function StatusBar:SetBarColorByKey(colorKey) end

---Sets the texture for the StatusBar.
---@param nameTex string The texture path.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the texture to.
function StatusBar:SetBarTexture(nameTex, nameLayer) end

---Sets the texture using a key for the StatusBar.
---@param key string The texture key to apply.
function StatusBar:SetBarTextureByKey(key) end

---Sets the texture coordinates for the StatusBar.
---@param coordX any The x-coordinate of the texture.
---@param coordY any The y-coordinate of the texture.
---@param coordW any The width of the texture.
---@param coordH any The height of the texture.
function StatusBar:SetBarTextureCoords(coordX, coordY, coordW, coordH) end

---Sets the minimum and maximum values for the StatusBar (must be called before
---`StatusBar:SetValue`).
---@param min number The minimum value.
---@param max number The maximum value.
function StatusBar:SetMinMaxValues(min, max) end

---Sets the minimum and maximum string values for the StatusBar.
---@param min string The minimum value.
---@param max string The maximum value.
function StatusBar:SetMinMaxValuesForString(min, max) end

---Sets the orientation of the StatusBar.
---@param orientation ORIENTATION The orientation to set. (default: `"HORIZONTAL"`)
function StatusBar:SetOrientation(orientation) end

---Sets the value for the StatusBar with optional animation. Texture for the
---StatusBar must be set before!
---@param value number The value to set. (default: `0`)
---@param anim? boolean The optional animate state, `true` to enable animation, `false` to disable.
---@param animTime? number The optional animation duration in seconds.
---@usage
---```lua
---widget:SetValue(100)
---widget:SetValue(80, true, 2) -- This will animate from 100 to 80.
---```
function StatusBar:SetValue(value, anim, animTime) end

---Sets the string value for the StatusBar with optional animation. Texture for
---the StatusBar must be set before!
---@param value string The value to set. (default: `"0"`)
---@param anim? boolean The optional animate state, `true` to enable animation, `false` to disable.
---@param animTime? number The optional animation duration in seconds.
---@usage
---```lua
---widget:SetValueForString("100")
---widget:SetValueForString("80", true, 2)
---```
function StatusBar:SetValueForString(value, anim, animTime) end
