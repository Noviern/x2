---@meta _

AP_BOTTOM = 8          -- object/StatusBar
AP_BOTTOMLEFT = 2      -- object/StatusBar
AP_BOTTOMRIGHT = 3     -- object/StatusBar
AP_CENTER = 4          -- object/StatusBar
AP_LEFT = 6            -- object/StatusBar
AP_RIGHT = 7           -- object/StatusBar
AP_TOP = 5             -- object/StatusBar
AP_TOPLEFT = 0         -- object/StatusBar
AP_TOPRIGHT = 1        -- object/StatusBar
CT_ABILITY = 2         -- object/StatusBar
CT_EXPEDITION_NAME = 3 -- object/StatusBar
CT_NAME = 1            -- object/StatusBar
DC_ALWAYS = 0          -- object/StatusBar
DC_SHIFT_KEY_DOWN = 1  -- object/StatusBar

---@enum ORIENTATION
local ORIENTATION = {
  HORIZONTAL = "HORIZONTAL",
  NORMAL     = "normal",
  VERTICAL   = "VERTICAL",
}

---object/StatusBar
---@class StatusBar: Widget
local StatusBar = {}

---TODO:
---@param anchorChild table
---@param childAnchorPoint ANCHOR_POINT
---@param anchorOigin? ANCHOR_POINT
---@param x? number
---@param y? number
function StatusBar:AddAnchorChildToBar(anchorChild, childAnchorPoint, anchorOigin, x, y) end

---Returns `barColor` for the StatusBar.
---@return RGBA barColor
---@nodiscard
function StatusBar:GetBarColor() end

---TODO: Was unable to get anything but 0 for this.
---Returns `leftWidth` for the `value` of the StatusBar.
---@param value number
---@return number leftWidth
---@nodiscard
function StatusBar:GetLeftWidth(value) end

---Returns `max` and `min` for the StatusBar.
---@return string max
---@return string min
---@nodiscard
function StatusBar:GetMinMaxValues() end

---Returns the `orientation` for the StatusBar.
---@return ORIENTATION orientation
---@nodiscard
function StatusBar:GetOrientation() end

---Returns the `value` for the StatusBar.
---@return string value
---@nodiscard
function StatusBar:GetValue() end

---TODO:
---@param value string
---@return boolean
---@nodiscard
function StatusBar:IsChangeAfterImageColor(value) end

---Sets the color for the StatusBar.
---@param r number 0 to 1.
---@param g number 0 to 1.
---@param b number 0 to 1.
---@param a number 0 to 1.
function StatusBar:SetBarColor(r, g, b, a) end

---Sets the bar `colorKey` for the StatusBar.
---@param colorKey string
function StatusBar:SetBarColorByKey(colorKey) end

---Sets the texture for the StatusBar.
---@param nameTex TEXTURE_PATH
---@param nameLayer any
function StatusBar:SetBarTexture(nameTex, nameLayer) end

---Sets the texture by `key`for the StatusBar.
---@param key string
function StatusBar:SetBarTextureByKey(key) end

---Sets the texture coords for the  StatusBar.
---@param coordX any
---@param coordY any
---@param coordW any
---@param coordH any
function StatusBar:SetBarTextureCoords(coordX, coordY, coordW, coordH) end

---Sets `min` and `max` values for the StatusBar. Must be called before `StatusBar:SetValue`
---@param min number
---@param max number
function StatusBar:SetMinMaxValues(min, max) end

---Sets the string `min` and `max` for the StatusBar.
---@param min string
---@param max string
function StatusBar:SetMinMaxValuesForString(min, max) end

---Sets the `orientation` of the StatusBar.
---@param orientation ORIENTATION
function StatusBar:SetOrientation(orientation) end

---Sets the `value` for the StatusBar.
---@param value number
---@param anim? boolean
---@param animTime? number in seconds.
function StatusBar:SetValue(value, anim, animTime) end

---Sets the string `value` for the StatusBar.
---@param value string
---@param anim? boolean
---@param animTime? number in seconds.
function StatusBar:SetValueForString(value, anim, animTime) end
