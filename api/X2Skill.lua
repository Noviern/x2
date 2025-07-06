---@meta _

SIK_DESCRIPTION = 1 -- api/X2Skill
X2Skill = {} -- api/X2Skill

---Returns [SkillTooltip](lua://SkillTooltip) for `skillId` `itemType` and reduces the returned scope if `filter` exists.
---@param skillId number
---@param itemType number
---@param filter? SIK (optional) [SIK](lua://SIK)
---@return SkillTooltip [SkillTooltip](lua://SkillTooltip)
function X2Skill:GetSkillTooltip(skillId, itemType, filter) end