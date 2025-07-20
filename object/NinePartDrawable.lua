---@meta _

AP_BOTTOM = 8      -- object/NinePartDrawable
AP_BOTTOMLEFT = 2  -- object/NinePartDrawable
AP_BOTTOMRIGHT = 3 -- object/NinePartDrawable
AP_CENTER = 4      -- object/NinePartDrawable
AP_LEFT = 6        -- object/NinePartDrawable
AP_RIGHT = 7       -- object/NinePartDrawable
AP_TOP = 5         -- object/NinePartDrawable
AP_TOPLEFT = 0     -- object/NinePartDrawable
AP_TOPRIGHT = 1    -- object/NinePartDrawable

---object/NinePartDrawable
---@class NinePartDrawable: DrawableDDS
local NinePartDrawable = {}

---TODO:
---@param invisible any
---@param part any
function NinePartDrawable:SetOutlineInvisiblePart(invisible, part) end
