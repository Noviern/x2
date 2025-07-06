---@meta _

AF_ALL = 1 -- api/X2Achievement
AF_COMPLETE = 2 -- api/X2Achievement
AF_INVALID = 0 -- api/X2Achievement
AF_TRACING = 4 -- api/X2Achievement
AF_UNCOMPLETE = 3 -- api/X2Achievement
EAK_ACHIEVEMENT = 2 -- api/X2Achievement
EAK_ARCHERAGE = 4 -- api/X2Achievement
EAK_COLLECTION = 3 -- api/X2Achievement
EAK_RACIAL_MISSION = 1 -- api/X2Achievement
MAX_TRACING_ACHIEVEMENT = 6 -- api/X2Achievement
TADT_ARCHE_PASS = 5 -- api/X2Achievement
TADT_EXPEDITION = 2 -- api/X2Achievement
TADT_EXPEDITION_PUBLIC = 6 -- api/X2Achievement
TADT_FAMILY = 3 -- api/X2Achievement
TADT_HERO = 4 -- api/X2Achievement
TADT_MAX = 7 -- api/X2Achievement
TADT_TODAY = 1 -- api/X2Achievement
X2Achievement = {} -- api/X2Achievement

---TODO:
---Adds an achievement `aType` to the ambitions category under the achievement `kind`.
---@param kind ACHIEVEMENT_KIND [ACHIEVEMENT_KIND](lua://ACHIEVEMENT_KIND)
---@param aType number
---@return boolean success not sure if this can be false?
function X2Achievement:AddTracingAchievement(kind, aType) end

---Returns [AchievementInfo](lua://AchievementInfo) if `aType` exists.
---@param aType number
---@return AchievementInfo? [AchievementInfo](lua://AchievementInfo)
function X2Achievement:GetAchievementInfo(aType) end

---Returns a collection of `aType` for the `kind` subcategory `sId` with the `filter` if they exist, otherwise returns an empty table.
---@param kind ACHIEVEMENT_KIND [ACHIEVEMENT_KIND](lua://ACHIEVEMENT_KIND)
---@param sId number subCategoryType from GetCategories
---@param filter ACHIEVEMENT_FILTER [ACHIEVEMENT_FILTER](lua://ACHIEVEMENT_FILTER)
---@return number[]
function X2Achievement:GetAchievementMainList(kind, sId, filter) end

---Returns `achievementName` for `aType` if it exists, otherwise returns an empty string.
---@param aType number
---@return string achievementName
function X2Achievement:GetAchievementName(aType) end

---TODO: asdfasd
---Broken. AF_COMPLETE returns empty even if the `mainType` is complete. AF_ALL is the only one that works.
---
---Returns a collection of `AchievementSubList` for `mainType` with `filter` if it exists, otherwise returns an empty table.
---@param mainType number
---@param filter ACHIEVEMENT_FILTER [ACHIEVEMENT_FILTER](lua://ACHIEVEMENT_FILTER)
---@return AchievementSubList[]
function X2Achievement:GetAchievementSubList(mainType, filter) end

---Returns `achievementTracingList` collection of `aType` for the `kind` if it exists, otherwise returns an empty table.
---@param kind ACHIEVEMENT_KIND [ACHIEVEMENT_KIND](lua://ACHIEVEMENT_KIND)
---@return number[] achievementTracingList
function X2Achievement:GetAchievementTracingList(kind) end

---Returns a collection of [AchievementLevelSubCategory](lua://AchievementLevelSubCategory) for `kind` = `EAK_RACIAL_MISSION`, or [AchievementCategory](lua://AchievementCategory) for other valid `kind`. Returns an empty table if `kind` is invalid.
---@param kind ACHIEVEMENT_KIND [ACHIEVEMENT_KIND](lua://ACHIEVEMENT_KIND)
---@return AchievementCategory[]|AchievementLevelSubCategory[] [AchievementCategory](lua://AchievementCategory) [AchievementLevelSubCategory](lua://AchievementLevelSubCategory)
function X2Achievement:GetCategories(kind) end

---TODO:
---Broken `completedCount` returns 0  regardless of `filter`.
---
---Returns `completedCount` and `totalCount` for `kind` in the category `cType` under subcategory `scType` with the filter `filter`.
---@param kind ACHIEVEMENT_KIND [ACHIEVEMENT_KIND](lua://ACHIEVEMENT_KIND)
---@param cType number categoryType
---@param scType number subcategoryType
---@param filter ACHIEVEMENT_FILTER [ACHIEVEMENT_FILTER](lua://ACHIEVEMENT_FILTER)
---@return number completedCount, number totalCount
function X2Achievement:GetCategoryCount(kind, cType, scType, filter) end

---Returns [SubcategoryInfo](lua://SubcategoryInfo) for `subCategory` if it exists.
---@param subCategory number
---@return SubcategoryInfo? [SubcategoryInfo](lua://SubcategoryInfo)
function X2Achievement:GetSubcategoryInfo(subCategory) end

---Returns `todayAssignmentCount` if `todayType` exists, otherwise returns 7.
---@param todayType TODAY_TYPE [TODAY_TYPE](lua://TODAY_TYPE)
---@return number todayAssignmentCount
function X2Achievement:GetTodayAssignmentCount(todayType) end

---TODO:
---Broken as of 9.5 returns nothing. was working prior to 9.5
---Returns a table with daily contract completion rewards.
---@return table 
function X2Achievement:GetTodayAssignmentGoal() end

---Returns [TodayAssignmentInfo](lua://TodayAssignmentInfo) for the `index` of `todayType` if both exist.
---@param todayType TODAY_TYPE [TODAY_TYPE](lua://TODAY_TYPE)
---@param index number
---@return TodayAssignmentInfo? [TodayAssignmentInfo](lua://TodayAssignmentInfo)
function X2Achievement:GetTodayAssignmentInfo(todayType, index) end

---Returns [TodayAssignmentInfo](lua://TodayAssignmentInfo) for the `index` of `todayType` if both exist.
---@param todayType TODAY_TYPE [TODAY_TYPE](lua://TODAY_TYPE)
---@param index number
---@return TodayAssignmentInfo? [TodayAssignmentInfo](lua://TodayAssignmentInfo)
function X2Achievement:GetTodayAssignmentInfoForChange(todayType, index) end

---Returns `todayAssignmentResetCount` and `todayAssignmentMaxResetCount` for `todayType` if they exist, otherwise returns 0 for both.
---@param todayType TODAY_TYPE [TODAY_TYPE](lua://TODAY_TYPE)
---@return number todayAssignmentResetCount, number todayAssignmentMaxResetCount
function X2Achievement:GetTodayAssignmentResetCount(todayType) end

---TODO:
---Broken  as of 9.5 returns nothing. was working prior to 9.5 now only returns 0 for two variables.
---@return number todayAssignmentCompletionStatus, number todayAssignmentMaxCompletion, number todayAssignmentCompleted
function X2Achievement:GetTodayAssignmentStatus() end

---Returns true if the quest id is in the list of TodayAssignmentQuests, and its not already complete
---@usage
---```
---X2Achievement:IsTodayAssignmentQuest(TADT_TODAY, 7400)
---```
---@param todayType TODAY_TYPE [TODAY_TYPE](lua://TODAY_TYPE)
---@param questType number querst id
---@return boolean
function X2Achievement:IsTodayAssignmentQuest(todayType, questType) end

---Returns a boolean `isTracingAchievement` indicating if `aType` in `kind` exists and is being traced.
---@param kind ACHIEVEMENT_KIND [ACHIEVEMENT_KIND](lua://ACHIEVEMENT_KIND)
---@param aType number
---@return boolean isTracingAchievement
function X2Achievement:IsTracingAchievement(kind, aType) end

---Removes `aType` in `kind` from tracing. 
---@param kind ACHIEVEMENT_KIND [ACHIEVEMENT_KIND](lua://ACHIEVEMENT_KIND)
---@param aType number
function X2Achievement:RemoveTracingAchievement(kind, aType) end