---@meta _

---@class X2Family
X2Family = {} -- api/X2Family

---@TODO: need to define table return
---Retrieves the list of family members.
---@param allMember boolean `true` to include offline members, `false` to show online members only.
---@return table|nil memberList The list of family members, or `nil` if unavailable.
---@nodiscard
function X2Family:GetMemberList(allMember) end
