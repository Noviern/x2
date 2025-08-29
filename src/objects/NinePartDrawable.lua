---@meta _

AP_BOTTOM = 8      -- objects/NinePartDrawable
AP_BOTTOMLEFT = 2  -- objects/NinePartDrawable
AP_BOTTOMRIGHT = 3 -- objects/NinePartDrawable
AP_CENTER = 4      -- objects/NinePartDrawable
AP_LEFT = 6        -- objects/NinePartDrawable
AP_RIGHT = 7       -- objects/NinePartDrawable
AP_TOP = 5         -- objects/NinePartDrawable
AP_TOPLEFT = 0     -- objects/NinePartDrawable
AP_TOPRIGHT = 1    -- objects/NinePartDrawable

---objects/NinePartDrawable
---@class NinePartDrawable: DrawableDDS
local NinePartDrawable = {}

---Sets the outline invisible part for the NinePartDrawable.
---@param invisible boolean `true` to make the part invisible, `false` to make it visible.
---@param part number The part to set as invisible. (`0` to `8`)
function NinePartDrawable:SetOutlineInvisiblePart(invisible, part) end
