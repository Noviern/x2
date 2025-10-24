---@meta _

---objects/NinePartDrawable
---@class NinePartDrawable: DrawableDDS
local NinePartDrawable = {}

---Sets the outline invisible part for the NinePartDrawable.
---@param invisible boolean `true` to make the part invisible, `false` to make it visible.
---@param part number The part to set as invisible. (min: `0`, max: `8`)
function NinePartDrawable:SetOutlineInvisiblePart(invisible, part) end
