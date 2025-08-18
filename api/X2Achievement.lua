---@meta _

AF_ALL = 1                  -- api/X2Achievement
AF_COMPLETE = 2             -- api/X2Achievement
AF_INVALID = 0              -- api/X2Achievement
AF_TRACING = 4              -- api/X2Achievement
AF_UNCOMPLETE = 3           -- api/X2Achievement
EAK_ACHIEVEMENT = 2         -- api/X2Achievement
EAK_ARCHERAGE = 4           -- api/X2Achievement
EAK_COLLECTION = 3          -- api/X2Achievement
EAK_RACIAL_MISSION = 1      -- api/X2Achievement
MAX_TRACING_ACHIEVEMENT = 6 -- api/X2Achievement
TADT_ARCHE_PASS = 5         -- api/X2Achievement
TADT_EXPEDITION = 2         -- api/X2Achievement
TADT_EXPEDITION_PUBLIC = 6  -- api/X2Achievement
TADT_FAMILY = 3             -- api/X2Achievement
TADT_HERO = 4               -- api/X2Achievement
TADT_MAX = 7                -- api/X2Achievement
TADT_TODAY = 1              -- api/X2Achievement
X2Achievement = {}          -- api/X2Achievement

---api/X2Achievement
---Enum Achievement Kind
---@alias ACHIEVEMENT_KIND
---| `EAK_ACHIEVEMENT`
---| `EAK_ARCHERAGE`
---| `EAK_COLLECTION`
---| `EAK_RACIAL_MISSION`

---api/X2Achievement
---@class RewardItemInfo
---@field count number
---@field itemType number

---api/X2Achievement
---@class RewardInfo
---@field appellation AppellationInfo
---@field item RewardItemInfo

---api/X2Achievement
---@class AppellationInfo
---@field iconPath string
---@field name string

---api/X2Achievement
---@class AchievementInfo
---@field achievementKind number
---@field canProgress boolean
---@field categoryName string
---@field complete boolean
---@field completeDate? Time TODO: This is set if complete == true
---@field completeNum number
---@field completeSubCount? number TODO: I think this is only set if highRank == true
---@field current number
---@field desc string
---@field grade number
---@field highRank boolean
---@field highRankAchievementType? number mainType TODO: I think this is only set if highRank == false
---@field iconPath string
---@field isHidden boolean
---@field isParentComplete? boolean TODO: I think this is only set if highRank == false
---@field name string
---@field objective? number[] TODO: I think this is only set if highRank == true
---@field reward? RewardInfo TODO: I think this is only set if highRank == true
---@field subCategoryName string
---@field subCategoryType number
---@field summary string
---@field totalSubCount? number TODO: I think this is only set if highRank == true
---@field tracing boolean
---@field type number

---api/X2Achievement
---Achievement Filter
---@alias ACHIEVEMENT_FILTER
---| `AF_ALL`
---| `AF_COMPLETE` Doesnt work. Produces the same result as AF_ALL.
---| `AF_INVALID` Doesnt work. Produces the same result as AF_ALL.
---| `AF_TRACING`
---| `AF_UNCOMPLETE` Doesnt work. Produces the same result as AF_ALL.

---api/X2Achievement
---@class AchievementSubCategory
---@field name string
---@field subCategoryType number

---api/X2Achievement
---@class AchievementLevelSubCategory: AchievementSubCategory
---@field isHeirLevelCategory boolean

---api/X2Achievement
---@class AchievementCategory
---@field categoryType number
---@field name string
---@field subCategories AchievementSubCategory[]

---api/X2Achievement
---@class SubcategoryInfo
---@field completedCount number
---@field desc string
---@field isHeirLevelCategory boolean
---@field name string
---@field rewardAchievementType number
---@field totalCount number

---api/X2Achievement
---Today Assignment Daily Type
---@alias TODAY_TYPE
---| `TADT_ARCHE_PASS`
---| `TADT_EXPEDITION`
---| `TADT_EXPEDITION_PUBLIC`
---| `TADT_FAMILY`
---| `TADT_HERO`
---| `TADT_MAX`
---| `TADT_TODAY`

---api/X2Achievement
---@class TodayAssignmentGoal
---@field goal number
---@field itemCount number
---@field itemType number

---api/X2Achievement
---@class TodayAssignmentInfo
---@field desc string
---@field iconPath string
---@field init boolean
---@field levelMax number
---@field levelMin number
---@field questType number
---@field realStep number
---@field requireItem? number
---@field requireItemCount? number
---@field requireLevel number
---@field satisfy boolean
---@field sort number
---@field status number
---@field title string

---api/X2Achievement
---@class AchievementSubList
---@field key number

---Adds an achievement to the ambitions category under the specified kind.
---@param achievementKind ACHIEVEMENT_KIND The achievement kind.
---@param achievementType number The type (id) of achievement to add.
---@return boolean success `true` if the achievement was added successfully, `false` otherwise.
---@nodiscard
---@usage
---```
---local success = X2Achievement:AddTracingAchievement(EAK_COLLECTION, 4153)
---```
---@see ACHIEVEMENT_KIND
function X2Achievement:AddTracingAchievement(achievementKind, achievementType) end

---Retrieves achievement information if the specified type exists.
---@param achievementType number The type (id) of achievement to query.
---@return AchievementInfo|nil achievementInfo The achievement information, or `nil` if not found.
---@nodiscard
---@usage
---```
---local achievementInfo = X2Achievement:GetAchievementInfo(4153)
---```
---@see AchievementInfo
function X2Achievement:GetAchievementInfo(achievementType) end

---Retrieves a list of achievement types for the specified kind and subcategory
---with the given filter.
---@param achievementKind ACHIEVEMENT_KIND The achievement kind.
---@param subCategoryType number The subcategory achievement type.
---@param achievementFilter ACHIEVEMENT_FILTER The filter to apply.
---@return number[] achievementMainList A table of achievement types, or empty if none exist.
---@nodiscard
---@usage
---```
---local achievementMainList = X2Achievement:GetAchievementMainList(EAK_COLLECTION, 42, AF_ALL)
---```
---@see ACHIEVEMENT_KIND
---@see ACHIEVEMENT_FILTER
function X2Achievement:GetAchievementMainList(achievementKind, subCategoryType,
                                              achievementFilter)
end

---Retrieves the name of the specified achievement type.
---@param achievementType number The type (id) of achievement to query.
---@return string achievementName The achievement name, or empty string if not found.
---@nodiscard
---@usage
---```
---local achievementName = X2Achievement:GetAchievementName(4153)
---```
function X2Achievement:GetAchievementName(achievementType) end

---Retrieves a list of achievement sublists for the specified main type with the
---given filter.
---@param mainType number The main achievement type.
---@param achievementFilter ACHIEVEMENT_FILTER The filter to apply.
---@return AchievementSubList[] achievementSubList A table of achievement sublists, or empty if none exist.
---@nodiscard
---@usage
---```
---local achievementSubList = X2Achievement:GetAchievementSubList(4154, AF_ALL)
---```
---@see ACHIEVEMENT_FILTER
---@see AchievementSubList
function X2Achievement:GetAchievementSubList(mainType, achievementFilter) end

---Retrieves a list of achievement types being traced for the specified kind.
---@param achievementKind ACHIEVEMENT_KIND The achievement kind.
---@return number[] achievementTracingList A table of traced main achievement types, or empty if none exist.
---@nodiscard
---@usage
---```
---local achievementTracingList = X2Achievement:GetAchievementTracingList(EAK_COLLECTION)
---```
---@see ACHIEVEMENT_KIND
function X2Achievement:GetAchievementTracingList(achievementKind) end

---Retrieves categories for the specified kind, returning level subcategories
---for EAK_RACIAL_MISSION or regular categories otherwise.
---@param achievementKind ACHIEVEMENT_KIND The achievement kind.
---@return AchievementCategory[]|AchievementLevelSubCategory[] categories A table of categories or level subcategories for `EAK_RACIAL_MISSION`, or empty if kind is invalid.
---@nodiscard
---@usage
---```
---local categories = X2Achievement:GetCategories(EAK_ACHIEVEMENT)
---```
---@see ACHIEVEMENT_KIND
---@see AchievementCategory
---@see AchievementLevelSubCategory
function X2Achievement:GetCategories(achievementKind) end

---Retrieves the completed and total count for the specified kind, category, and
---subcategory with the given filter.
---@param achievementKind ACHIEVEMENT_KIND The achievement kind.
---@param categoryType number The category type.
---@param subCategoryType number The subcategory type.
---@param achievementFilter ACHIEVEMENT_FILTER The filter to apply.
---@return number complete The number of completed achievements.
---@return number total The total number of achievements.
---@nodiscard
---@usage
---```
---local complete, total = X2Achievement:GetCategoryCount(EAK_COLLECTION, 9, 42, AF_ALL)
---```
---@see ACHIEVEMENT_KIND
---@see ACHIEVEMENT_FILTER
function X2Achievement:GetCategoryCount(achievementKind, categoryType,
                                        subCategoryType, achievementFilter)
end

---Retrieves subcategory information if the specified subcategory exists.
---@param subCategory number The subcategory to query.
---@return SubcategoryInfo|nil subcategoryInfo The subcategory information, or `nil` if not found.
---@nodiscard
---@usage
---```
---local subcategoryInfo = X2Achievement:GetSubcategoryInfo(42)
---```
---@see SubcategoryInfo
function X2Achievement:GetSubcategoryInfo(subCategory) end

---Retrieves the assignment count for the specified today type, defaulting to 7
---if not found.
---@param todayType TODAY_TYPE The type of today’s assignments.
---@return number todayAssignmentCount The number of assignments for the day.
---@nodiscard
---@usage
---```
---local todayAssignmentCount = X2Achievement:GetTodayAssignmentCount(TADT_TODAY)
---```
---@see TODAY_TYPE
function X2Achievement:GetTodayAssignmentCount(todayType) end

---Retrieves a table with daily contract completion rewards.
---@return TodayAssignmentGoal[] todayAssignmentGoal A table of daily contract completion rewards.
---@nodiscard
---@usage
---```
---local todayAssignmentGoal = X2Achievement:GetTodayAssignmentGoal()
---```
function X2Achievement:GetTodayAssignmentGoal() end

---Retrieves assignment information for the specified type and index.
---@param todayType TODAY_TYPE The type of today’s assignments.
---@param index number The index of the assignment.
---@return TodayAssignmentInfo|nil todayAssignmentInfo The assignment information, or `nil` if not found.
---@nodiscard
---@usage
---```
---local todayAssignmentInfo = X2Achievement:GetTodayAssignmentInfo(TADT_TODAY, 1)
---```
---@see TODAY_TYPE
---@see TodayAssignmentInfo
function X2Achievement:GetTodayAssignmentInfo(todayType, index) end

---Retrieves assignment information for changing the specified type and index.
---@param todayType TODAY_TYPE The type of today’s assignments.
---@param index number The index of the assignment.
---@return TodayAssignmentInfo|nil todayAssignmentInfo The assignment information, or `nil` if not found.
---@nodiscard
---@usage
---```
---local todayAssignmentInfo = X2Achievement:GetTodayAssignmentInfoForChange(TADT_TODAY, 1)
---```
---@see TODAY_TYPE
---@see TodayAssignmentInfo
function X2Achievement:GetTodayAssignmentInfoForChange(todayType, index) end

---Retrieves the reset count and maximum reset count for the specified today
---type.
---@param todayType TODAY_TYPE The type of today’s assignments.
---@return number resetCount The current reset count.
---@return number maxCount The maximum reset count.
---@nodiscard
---@usage
---```
---local resetCount, maxCount = X2Achievement:GetTodayAssignmentResetCount(TADT_TODAY)
---```
---@see TODAY_TYPE
function X2Achievement:GetTodayAssignmentResetCount(todayType) end

---Retrieves the completion status of today’s assignments.
---@return number done The number of completed assignments.
---@return number total The total completion count.
---@nodiscard
---@usage
---```
---local done, total = X2Achievement:GetTodayAssignmentStatus()
---```
function X2Achievement:GetTodayAssignmentStatus() end

---Checks if the quest ID is in the today’s assignment quests and not already
---complete.
---@param todayType TODAY_TYPE The type of today’s assignments.
---@param questType number The quest ID to check.
---@return boolean todayAssignmentQuest `true` if the quest is in the list and not complete, `false` otherwise.
---@nodiscard
---@usage
---```
---local todayAssignmentQuest = X2Achievement:IsTodayAssignmentQuest(TADT_TODAY, 7046)
---```
---@see TODAY_TYPE
function X2Achievement:IsTodayAssignmentQuest(todayType, questType) end

---Checks if the specified achievement type in the given kind is being traced.
---@param achievementKind ACHIEVEMENT_KIND The achievement kind.
---@param achievementType number The type (id) of achievement to check.
---@return boolean tracingAchievement `true` if the achievement is being traced, `false` otherwise.
---@nodiscard
---@usage
---```
---local tracingAchievement = X2Achievement:IsTracingAchievement(EAK_COLLECTION, 4153)
---```
---@see ACHIEVEMENT_KIND
function X2Achievement:IsTracingAchievement(achievementKind, achievementType) end

---Removes the specified achievement type in the given kind from tracing.
---@param achievementKind ACHIEVEMENT_KIND The achievement kind.
---@param achievementType number The type (id) of achievement to remove.
---@usage
---```
---X2Achievement:RemoveTracingAchievement(EAK_COLLECTION, 4153)
---```
---@see ACHIEVEMENT_KIND
function X2Achievement:RemoveTracingAchievement(achievementKind, achievementType) end
