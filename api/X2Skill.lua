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

---api/X2Skill
---@class SkillInfo
---@field abilityName string
---@field castingTime number
---@field cooldownTime number
---@field description string
---@field firstLearnLevel number
---@field hasRange boolean
---@field iconPath string
---@field isHarmful boolean
---@field isHelpful boolean
---@field isMeleeAttack boolean
---@field learnLeavel number
---@field levelStep number
---@field manaCost number
---@field maxRange number
---@field minRange number
---@field name string
---@field nextLearnLevel number
---@field show boolean
---@field skillPoints number
---@field upgradeCost number

---Retrieves the cooldown information for a specified skill.
---@param skillId number The ID of the skill.
---@param ignoreGlobalCooldown boolean `true` to return the skill's specific cooldown, `false` to return the global cooldown. If the skill has been used and has a remaining time, this parameter is overridden to `true`, showing the skill's cooldown instead of the global cooldown.
---@return number|nil remainTime The remaining cooldown time in milliseconds, or `nil` if the skillId doesn't exist. (default: `0`)
---@return number|nil totalTime The total cooldown time in milliseconds, or `nil` if the skillId doesn't exist. (default: `0`)
---@nodiscard
---@usage
---```
---local remainTime, totalTime = X2Skill:GetCooldown(44202, false)
---```
function X2Skill:GetCooldown(skillId, ignoreGlobalCooldown) end

---@TODO: Not sure how the itemType works with skillId
---Returns tooltip information for a skill, filtered by an optional scope.
---@param skillId number The ID of the skill.
---@param itemType number The item type associated with the skill.
---@param filter? SIK Optional filter to reduce the scope of the returned tooltip.
---@return SkillTooltip|EmptyTable skillTooltip The skill tooltip information, or an empty table if no data is available.
---@nodiscard
---@usage
---```
---local skillTooltip = X2Skill:GetSkillTooltip(44202, 0, SIK_DESCRIPTION)
---```
---@see SIK
---@see SkillTooltip
function X2Skill:GetSkillTooltip(skillId, itemType, filter) end

---Retrieves detailed information about a specified skill.
---@param skillId number The ID of the skill.
---@return SkillInfo|nil skillInfo The skill information, or `nil` if the skillId doesn't exist.
---@nodiscard
---@usage
---```
---local skillInfo = X2Skill:Info(44202)
---```
---@see SkillInfo
function X2Skill:Info(skillId) end
