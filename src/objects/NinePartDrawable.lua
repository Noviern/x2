---@meta _

---[NinePartDrawable](lua://NinePartDrawable)
---
---A `NinePartDrawable` is a drawable that is split into nine sections for
---scalable UI elements. Individual parts can be made invisible to control
---rendering.
---
---@class NinePartDrawable: DrawableDDS
local NinePartDrawable = {}

---Sets the outline invisible part for the NinePartDrawable. Only works on one
---part at a time.
---@param invisible boolean `true` to make the part invisible, `false` to make it visible.
---@param part number The part to set as invisible. (min: `0`, max: `8`)
function NinePartDrawable:SetOutlineInvisiblePart(invisible, part) end
