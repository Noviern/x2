---@meta _

MAX_COMMUNITY_SUMMON = 50 -- api/X2Team
RAID_RECRUIT_EXPIRE_DELAY_MINUTE = 20 -- api/X2Team
RAID_TEAM_RECRUIT_LIST_REQ = 2 -- api/X2Team
SIEGE_RAID_TEAM_ALL_INFO = 0 -- api/X2Team
SIEGE_RAID_TEAM_INFO_BY_FACTION = 1 -- api/X2Team
TEAM_JOINT_MENU_CHAT = 1 -- api/X2Team
TEAM_JOINT_MENU_TARGET = 2 -- api/X2Team
TEAM_JOINT_REQUEST = 3 -- api/X2Team
TEAM_LOOT_FREE_FOR_ALL = 0 -- api/X2Team
TEAM_LOOT_MASTER_LOOTER = 2 -- api/X2Team
TEAM_LOOT_ROUND_ROBIN = 1 -- api/X2Team
TMROLE_DEALER = 3 -- api/X2Team
TMROLE_HEALER = 2 -- api/X2Team
TMROLE_NONE = 0 -- api/X2Team
TMROLE_RANGED_DEALER = 4 -- api/X2Team
TMROLE_TANKER = 1 -- api/X2Team
X2Team = {} -- api/X2Team

---Returns the `role` of the `memberIndex` in `teamIndex`.
---@param teamIndex number
---@param memberIndex number
---@return number role
function X2Team:GetRole(teamIndex, memberIndex) end

---Sets the players role in a raid.
---@param role TEAM_ROLE
function X2Team:SetRole(role) end