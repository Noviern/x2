---@meta _

---@class Map
local Map = {}

---TODO:
---@param type number
---@param id number
function Map:AddGivenQuestInfo(type, id) end

---TODO:
---@param qType number
function Map:AddNotifyQuestInfo(qType) end

---TODO:
function Map:ClearAllInfo() end

---TODO:
function Map:ClearBossTelescopeInfo() end

---TODO:
function Map:ClearCarryingBackpackSlaveInfo() end

---TODO:
function Map:ClearCompletedQuestInfo() end

---TODO:
function Map:ClearCorpseInfo() end

---TODO:
function Map:ClearDoodadInfo() end

---TODO:
function Map:ClearFishSchoolInfo() end

---TODO:
function Map:ClearGivenQuestStaticInfo() end

---TODO:
function Map:ClearHousingInfo() end

---TODO:
function Map:ClearMySlaveInfo() end

---TODO:
function Map:ClearNotifyQuestInfo() end

---TODO:
function Map:ClearNpcInfo() end

---TODO:
function Map:ClearShipTelescopeInfo() end

---TODO:
function Map:ClearTransferTelescopeInfo() end

---TODO:
---@return table
---@nodiscard
function Map:GetPlayerSextants() end

---TODO:
---@return number
---@return number
---@nodiscard
function Map:GetPlayerViewPos() end

---TODO:
---@return table
---@nodiscard
function Map:GetTooltipController() end

---TODO:
function Map:InitMapData() end

---TODO:
---@return boolean
---@nodiscard
function Map:MapWidgetShown() end

---TODO:
function Map:OnLeftClick() end

---TODO:
function Map:ReloadAllInfo() end

---TODO:
---@param index number
function Map:RemoveBossTelescopeInfo(index) end

---TODO:
---@param index number
function Map:RemoveCarryingBackpackSlaveInfo(index) end

---TODO:
---@param index number
function Map:RemoveFishSchoolInfo(index) end

---TODO:
---@param type number
---@param id any
function Map:RemoveGivenQuestInfo(type, id) end

---TODO:
---@param qType number
function Map:RemoveNotifyQuestInfo(qType) end

---TODO:
---@param index number
function Map:RemoveShipTelescopeInfo(index) end

---TODO:
---@param index number
function Map:RemoveTransferTelescopeInfo(index) end

---TODO:
---@param isNull boolean
function Map:ResetCursor(isNull) end

---TODO:
---@param ratio number
function Map:SetExpandRatio(ratio) end

---TODO:
---@param clicked boolean
---@param pingType number
function Map:SetPingBtn(clicked, pingType) end

---TODO:
---@param widget table
---@param drawable table
---@param pingType number
function Map:SetPingWidget(widget, drawable, pingType) end

---TODO:
---@param player any
function Map:SetPlayerDrawable(player) end

---TODO:
---@param widget table
---@param drawable table
---@param index number
function Map:SetSkillEffectWidget(widget, drawable, index) end

---TODO:
---@param objColor string
---@param nickColor string
function Map:SetTooltipColor(objColor, nickColor) end

---TODO:
---@param x number
---@param y number
---@param z number
---@param radius number
---@param index number
function Map:ShowSkillMapEffect(x, y, z, radius, index) end

---TODO:
---@param index number
---@param qType number
---@param isStart boolean
function Map:StartNotifyQuestEffect(index, qType, isStart) end

---TODO:
function Map:UpdateAllDrawableAnchor() end

---TODO:
function Map:UpdateBossTelescopeArea() end

---TODO:
function Map:UpdateBossTelescopeInfo() end

---TODO:
function Map:UpdateCarryingBackpackSlaveInfo() end

---TODO:
function Map:UpdateCompletedQuestInfo() end

---TODO:
function Map:UpdateCorpseInfo() end

---TODO:
function Map:UpdateCurZoneGroupNpcInfo() end

---TODO:
function Map:UpdateDominionInfo() end

---TODO:
---@param bRoadMap boolean
function Map:UpdateDoodadInfo(bRoadMap) end

---TODO:
function Map:UpdateFactionRezDistrictInfo() end

---TODO:
function Map:UpdateFishSchoolArea() end

---TODO:
function Map:UpdateFishSchoolInfo() end

---TODO:
function Map:UpdateGivenQuestStaticInfo() end

---TODO:
function Map:UpdateHousingInfo() end

---TODO:
function Map:UpdateMonitorNpcInfo() end

---TODO:
function Map:UpdateMySlaveInfo() end

---TODO:
function Map:UpdateNpcInfo() end

---TODO:
function Map:UpdatePingInfo() end

---TODO:
function Map:UpdateShipTelescopeInfo() end

---TODO:
function Map:UpdateTelescopeArea() end

---TODO:
function Map:UpdateTransferTelescopeArea() end

---TODO:
function Map:UpdateTransferTelescopeInfo() end

---TODO:
function Map:UpdateZoneInfo() end
