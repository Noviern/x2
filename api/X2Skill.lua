---@meta _

SIK_DESCRIPTION = 1 -- api/X2Skill
X2Skill = {} -- api/X2Skill

---api/X2Skill
---@class SynergyIconInfo
---@field conditionbuffkind boolean
---@field conditionicon string
---@field resulticon string
---@field resultbuffkind boolean
---@field desc string

---api/X2Skill
---@class SkillTooltip
---@field synergyIconInfo SynergyIconInfo[]
---@field path string
---@field description string
---@field maxCombatResource number
---@field mana number
---@field maxRange number
---@field category string
---@field firstLearnLevel number
---@field abilityLevel number
---@field skillPoints number
---@field tipType string
---@field levelStep number
---@field type number
---@field meleeDpsMultiplier number
---@field isRaceSkill boolean
---@field minCombatResource number
---@field targetAreaRadius number
---@field minRange number
---@field ability string
---@field show boolean
---@field channeling number
---@field name string
---@field learnLevel number
---@field heirSkillName number
---@field casting number
---@field cooldown number
---@field skillLevel number

---api/X2Skill
---
---Values can be added together to get more information.
---@alias SIK
---| `SIK_DESCRIPTION`
---| `4` Not defined but can be used to get almost everything thats not the description.

---Returns [SkillTooltip](lua://SkillTooltip) for `skillId` `itemType` and reduces the returned scope if `filter` exists.
---@param skillId number
---@param itemType number
---@param filter? SIK (optional) [SIK](lua://SIK)
---@return SkillTooltip [SkillTooltip](lua://SkillTooltip)
function X2Skill:GetSkillTooltip(skillId, itemType, filter) end