---@meta _

SIK_DESCRIPTION = 1 -- api/X2Skill SKILL_INFORMATION_KIND
---@class X2Skill
X2Skill = {}        -- api/X2Skill

---api/X2Skill
---Values can be added together to get more information.
---@alias SKILL_INFORMATION_KIND
---| `SIK_DESCRIPTION`
---| `4` # Not defined but can be used to get almost everything thats not the description.

---Retrieves the cooldown information for a specified skill.
---@param skillId number The ID of the skill.
---@param ignoreGlobalCooldown boolean `true` to return the skills specific cooldown, `false` to return the player's global cooldown. If the skill has been used and has a remaining time, this parameter is overridden to `true`, showing the skills cooldown instead of the player's global cooldown.
---@return number|nil remainTime The remaining cooldown time in milliseconds, or `nil` if the skillId doesn't exist. (default: `0`)
---@return number|nil totalTime The total cooldown time in milliseconds, or `nil` if the skillId doesn't exist. (default: `0`)
---@nodiscard
function X2Skill:GetCooldown(skillId, ignoreGlobalCooldown) end

---Retrieves the cooldown information for a specified skill for the mate.
---@param skillId number The ID of the skill.
---@param ignoreGlobalCooldown boolean `true` to return the skill's specific cooldown, `false` to return the global cooldown.
---@param mateType MATE_TYPE The type of mate to query.
---@return number|nil remainTime The remaining cooldown time in milliseconds, or `nil` if the skillId doesn't exist.
---@nodiscard
function X2Skill:GetMateCooldown(skillId, ignoreGlobalCooldown, mateType) end

---@TODO: Not sure how the itemType works with skillId, maybe one should be 0 and set the other?
---Returns tooltip information for a skill, filtered by an optional scope.
---@param skillId number The ID of the skill.
---@param itemType number The item type associated with the skill.
---@param filter? SKILL_INFORMATION_KIND Optional filter to reduce the scope of the returned tooltip.
---@return SkillTooltip skillTooltip The skill tooltip information, or an empty table if no data is available.
---@nodiscard
---@see SkillTooltip
function X2Skill:GetSkillTooltip(skillId, itemType, filter) end

---Retrieves detailed information about a specified skill.
---@param skillId number The ID of the skill.
---@return SkillInfo|nil skillInfo The skill information, or `nil` if the skillId doesn't exist.
---@nodiscard
---@see SkillInfo
function X2Skill:Info(skillId) end
