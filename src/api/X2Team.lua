---@meta _

MAX_COMMUNITY_SUMMON = 50             -- api/X2Team
RAID_RECRUIT_EXPIRE_DELAY_MINUTE = 20 -- api/X2Team
RAID_TEAM_RECRUIT_LIST_REQ = 2        -- api/X2Team
SIEGE_RAID_TEAM_ALL_INFO = 0          -- api/X2Team SIEGE_RAID
SIEGE_RAID_TEAM_INFO_BY_FACTION = 1   -- api/X2Team SIEGE_RAID
TEAM_JOINT_MENU_CHAT = 1              -- api/X2Team TEAM_JOIN
TEAM_JOINT_MENU_TARGET = 2            -- api/X2Team TEAM_JOIN
TEAM_JOINT_REQUEST = 3                -- api/X2Team TEAM_JOIN
TEAM_LOOT_FREE_FOR_ALL = 0            -- api/X2Team TEAM_LOOT
TEAM_LOOT_MASTER_LOOTER = 2           -- api/X2Team TEAM_LOOT
TEAM_LOOT_ROUND_ROBIN = 1             -- api/X2Team TEAM_LOOT
TMROLE_DEALER = 3                     -- api/X2Team TEAM_ROLE
TMROLE_HEALER = 2                     -- api/X2Team TEAM_ROLE
TMROLE_NONE = 0                       -- api/X2Team TEAM_ROLE
TMROLE_RANGED_DEALER = 4              -- api/X2Team TEAM_ROLE
TMROLE_TANKER = 1                     -- api/X2Team TEAM_ROLE
---@class X2Team
X2Team = {}                           -- api/X2Team

---api/X2Team
---@alias SIEGE_RAID
---| `SIEGE_RAID_TEAM_ALL_INFO`
---| `SIEGE_RAID_TEAM_INFO_BY_FACTION`

---api/X2Team
---@alias TEAM_JOIN
---| `TEAM_JOINT_MENU_CHAT`
---| `TEAM_JOINT_MENU_TARGET`
---| `TEAM_JOINT_REQUEST`

---api/X2Team
---@alias TEAM_LOOT
---| `TEAM_LOOT_FREE_FOR_ALL`
---| `TEAM_LOOT_MASTER_LOOTER`
---| `TEAM_LOOT_ROUND_ROBIN`

---api/X2Team
---@alias TEAM_ROLE
---| `TMROLE_DEALER`
---| `TMROLE_HEALER`
---| `TMROLE_NONE`
---| `TMROLE_RANGED_DEALER`
---| `TMROLE_TANKER`

---Retrieves the role of the specified member in the given team.
---@param teamIndex number The index of the team.
---@param memberIndex number The index of the member within the team.
---@return TEAM_ROLE role The role of the member.
---@nodiscard
---@usage
---```lua
---local role = X2Team:GetRole(1, 1)
---```
function X2Team:GetRole(teamIndex, memberIndex) end

---Sets the player's role in a raid.
---@param role TEAM_ROLE The role to set for the player.
---@usage
---```lua
---X2Team:SetRole(TMROLE_DEALER)
---```
---@see TEAM_ROLE
function X2Team:SetRole(role) end
