---@meta _

SIK_DESCRIPTION = 1 -- api/X2Skill
X2Skill = {}        -- api/X2Skill

---api/X2Skill
---@class SynergyIconInfo
---@field conditionbuffkind boolean
---@field conditionicon string
---@field desc string
---@field resultbuffkind boolean
---@field resulticon string

---@TODO: Should SkillTooltip be moved to Addon because its also used in Slot:GetTooltip()

---api/X2Skill
---@class SkillTooltip
---@field ability string
---@field abilityLevel number
---@field casting number
---@field category string
---@field channeling number
---@field cooldown number
---@field description string
---@field firstLearnLevel number
---@field heirSkillName number
---@field isRaceSkill boolean
---@field learnLevel number
---@field levelStep number
---@field mana number
---@field maxCombatResource number
---@field maxRange? number
---@field meleeDpsMultiplier? number
---@field minCombatResource number
---@field minRange? number
---@field name string
---@field path string
---@field show boolean
---@field skillLevel number
---@field skillPoints number
---@field synergyIconInfo? SynergyIconInfo[]
---@field targetAreaRadius? number
---@field tipType string
---@field type number

---api/X2Skill
---
---Values can be added together to get more information.
---@alias SIK
---| `SIK_DESCRIPTION`
---| `4` Not defined but can be used to get almost everything thats not the description.

---@TODO: Not sure how the itemType works with skillId
---Returns [SkillTooltip](lua://SkillTooltip) for `skillId` `itemType` and reduces the returned scope if `filter` exists.
---@param skillId number
---@param itemType number
---@param filter? SIK
---@return SkillTooltip
---@nodiscard
---@see SIK
---@see SkillTooltip
function X2Skill:GetSkillTooltip(skillId, itemType, filter) end
