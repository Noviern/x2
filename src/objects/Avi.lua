---@meta _

AP_BOTTOM = 8          -- objects/Avi
AP_BOTTOMLEFT = 2      -- objects/Avi
AP_BOTTOMRIGHT = 3     -- objects/Avi
AP_CENTER = 4          -- objects/Avi
AP_LEFT = 6            -- objects/Avi
AP_RIGHT = 7           -- objects/Avi
AP_TOP = 5             -- objects/Avi
AP_TOPLEFT = 0         -- objects/Avi
AP_TOPRIGHT = 1        -- objects/Avi
CT_ABILITY = 2         -- objects/Avi
CT_EXPEDITION_NAME = 3 -- objects/Avi
CT_NAME = 1            -- objects/Avi
DC_ALWAYS = 0          -- objects/Avi DRAG_CONDITION
DC_SHIFT_KEY_DOWN = 1  -- objects/Avi DRAG_CONDITION

---objects/Avi
---@class Avi: Widget
local Avi = {}
---@class avi: Avi

---Sets the AVI file to be used by the widget.
---@param fileName AVI_PATH The path to the AVI file.
---@usage
---```lua
---widget:SetAviName("objects/machinima/avi/ci.avi")
---```
function Avi:SetAviName(fileName) end

---@TODO: Not sure what avitype is as any value doesnt cause an error.
---@param depth number
---@param aviType? any
function Avi:SetAviNum(depth, aviType) end
