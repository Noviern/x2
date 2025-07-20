---@meta _

AP_BOTTOM = 8          -- object/Avi
AP_BOTTOMLEFT = 2      -- object/Avi
AP_BOTTOMRIGHT = 3     -- object/Avi
AP_CENTER = 4          -- object/Avi
AP_LEFT = 6            -- object/Avi
AP_RIGHT = 7           -- object/Avi
AP_TOP = 5             -- object/Avi
AP_TOPLEFT = 0         -- object/Avi
AP_TOPRIGHT = 1        -- object/Avi
CT_ABILITY = 2         -- object/Avi
CT_EXPEDITION_NAME = 3 -- object/Avi
CT_NAME = 1            -- object/Avi
DC_ALWAYS = 0          -- object/Avi
DC_SHIFT_KEY_DOWN = 1  -- object/Avi

---object/Avi
---@class Avi: Widget
local Avi = {}

---@param fileName string
function Avi:SetAviName(fileName) end

---TODO: Not sure what avitype is or if it even exists as any value doesnt cause an error.
---@param depth number
---@param avitype? any
function Avi:SetAviNum(depth, avitype) end
