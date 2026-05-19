---@meta _

MAX_SQUAD_SELECT_COUNT_PER_PAGE = 3 -- api/X2Squad
SCI_BATTLE_FIELD = 1                -- api/X2Squad SQUAD_CATEGORY_INSTANCE
SCI_INDUN = 2                       -- api/X2Squad SQUAD_CATEGORY_INSTANCE
SOT_DIRECT_MATCHING = 2             -- api/X2Squad SQUAD_OPEN_TYPE
SOT_MUST_PUBLIC = 3                 -- api/X2Squad SQUAD_OPEN_TYPE
SOT_PRIVATE = 1                     -- api/X2Squad SQUAD_OPEN_TYPE
SOT_PUBLIC = 0                      -- api/X2Squad SQUAD_OPEN_TYPE
---@class X2Squad
X2Squad = {}                        -- api/X2Squad

---api/X2Squad
---@alias SQUAD_CATEGORY_INSTANCE
---| `SCI_BATTLE_FIELD`
---| `SCI_INDUN`

---api/X2Squad
---@alias SQUAD_OPEN_TYPE
---| `SOT_DIRECT_MATCHING`
---| `SOT_MUST_PUBLIC`
---| `SOT_PRIVATE`
---| `SOT_PUBLIC`

---Creates a new squad for an instance.
---@param selectedField number The selected instance/field ID.
---@param openType SQUAD_OPEN_TYPE The squad open type.
---@param explanation string The squad description/explanation.
---@param partyInvitation boolean `true` to allow party invitations, `false` otherwise.
---@param limitLevel number The minimum level required to join.
---@param limitGearScore number The minimum gear score required to join.
---@return boolean success `true` if the squad was created successfully, `false` otherwise.
function X2Squad:CreateSquad(selectedField, openType, explanation, partyInvitation, limitLevel, limitGearScore) end
