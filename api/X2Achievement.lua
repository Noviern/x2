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

function X2Achievement:AddTracingAchievement() end

function X2Achievement:GetAchievementInfo() end

function X2Achievement:GetAchievementMainList() end

function X2Achievement:GetAchievementName() end

function X2Achievement:GetAchievementSubList() end

function X2Achievement:GetAchievementTracingList() end

function X2Achievement:GetCategories() end

function X2Achievement:GetCategoryCount() end

function X2Achievement:GetSubcategoryInfo() end

function X2Achievement:GetTodayAssignmentCount() end

function X2Achievement:GetTodayAssignmentGoal() end

function X2Achievement:GetTodayAssignmentInfo() end

function X2Achievement:GetTodayAssignmentInfoForChange() end

function X2Achievement:GetTodayAssignmentResetCount() end

function X2Achievement:GetTodayAssignmentStatus() end

function X2Achievement:IsTodayAssignmentQuest() end

function X2Achievement:IsTracingAchievement() end

function X2Achievement:RemoveTracingAchievement() end