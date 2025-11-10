---@meta _

---@class Map
local Map = {}

---@TODO: only saw type 0 1
---Adds quest information to the map with the specified type and ID.
---@param type number The quest type.
---@param id number The quest ID.
function Map:AddGivenQuestInfo(type, id) end

---Adds notification quest information to the map.
---@param qType number The quest type.
function Map:AddNotifyQuestInfo(qType) end

---Clears all information displayed on the map.
function Map:ClearAllInfo() end

---Clears boss telescope information from the map.
function Map:ClearBossTelescopeInfo() end

---Clears carrying backpack slave information from the map.
function Map:ClearCarryingBackpackSlaveInfo() end

---Clears completed quest information from the map.
function Map:ClearCompletedQuestInfo() end

---Clears corpse information from the map.
function Map:ClearCorpseInfo() end

---Clears doodad information from the map.
function Map:ClearDoodadInfo() end

---Clears fish school information from the map.
function Map:ClearFishSchoolInfo() end

---Clears static given quest information from the map.
function Map:ClearGivenQuestStaticInfo() end

---Clears housing information from the map.
function Map:ClearHousingInfo() end

---Clears player-owned slave information from the map.
function Map:ClearMySlaveInfo() end

---Clears notification quest information from the map.
function Map:ClearNotifyQuestInfo() end

---Clears NPC information from the map.
function Map:ClearNpcInfo() end

---Clears ship telescope information from the map.
function Map:ClearShipTelescopeInfo() end

---Clears transfer telescope information from the map.
function Map:ClearTransferTelescopeInfo() end

---Retrieves the player's sextant location on the map.
---@return SEXTANT playerSextant The player's sextant data.
---@nodiscard
---@see SEXTANT
function Map:GetPlayerSextants() end

---Retrieves the player's view position on the map.
---@return number playerViewX The player's x location on the map.
---@return number playerViewY The player's y location on the map.
---@nodiscard
function Map:GetPlayerViewPos() end

---Retrieves the tooltip controller for the map.
---@return Window tooltipController The tooltip controller window.
---@nodiscard
function Map:GetTooltipController() end

---Checks if the map widget is shown.
---@return boolean widgetShown `true` if the map widget is visible, `false` otherwise.
---@nodiscard
function Map:MapWidgetShown() end

---Triggers a left-click action on the map.
function Map:OnLeftClick() end

---Reloads all information displayed on the map.
function Map:ReloadAllInfo() end

---Removes boss telescope information at the specified index.
---@param index number The index of the boss telescope info to remove.
function Map:RemoveBossTelescopeInfo(index) end

---Removes carrying backpack slave information at the specified index.
---@param index number The index of the backpack slave info to remove.
function Map:RemoveCarryingBackpackSlaveInfo(index) end

---Removes fish school information at the specified index.
---@param index number The index of the fish school info to remove.
function Map:RemoveFishSchoolInfo(index) end

---Removes given quest information from the map.
---@param type number The quest type.
---@param id number The quest ID.
function Map:RemoveGivenQuestInfo(type, id) end

---Removes notification quest information from the map.
---@param qType number The quest type.
function Map:RemoveNotifyQuestInfo(qType) end

---Removes ship telescope information at the specified index.
---@param index number The index of the ship telescope info to remove.
function Map:RemoveShipTelescopeInfo(index) end

---Removes transfer telescope information at the specified index.
---@param index number The index of the transfer telescope info to remove.
function Map:RemoveTransferTelescopeInfo(index) end

---Resets the map cursor.
---@param isNull boolean `true` to set cursor to null, `false` otherwise.
function Map:ResetCursor(isNull) end

---Sets the expansion ratio for the map.
---@param ratio number The expansion ratio.
function Map:SetExpandRatio(ratio) end

---Sets the ping button state and type for the map.
---@param clicked boolean `true` if the ping button is clicked, `false` otherwise.
---@param pingType PING_TYPE The type of ping.
---@see PING_TYPE
function Map:SetPingBtn(clicked, pingType) end

---Sets the ping widget and drawable for the specified ping type on the map.
---@param widget Widget The widget for the ping.
---@param drawable DrawableDDS The drawable for the ping.
---@param pingType PING_TYPE The type of ping.
---@usage
---```lua
---local frame = widget:CreateChildWidget("emptywidget", "ping", 0, true)
---frame:SetExtent(24, 24)
---frame:Show(false)
---
---local bg = widget:CreateDrawable(TEXTURE_PATH.MAP_ICON, "my_ping", "overlay")
---bg:AddAnchor("CENTER", frame, 0, 0)
---frame.bg = bg
---bg:SetVisible(false)
---
---widget:SetPingWidget(frame, frame.bg, 1)
---
---function frame:OnShow()
---  frame.bg:SetVisible(true)
---end
---
---frame:SetHandler("OnShow", frame.OnShow)
---function frame:OnHide()
---  frame.bg:SetVisible(false)
---end
---
---frame:SetHandler("OnHide", frame.OnHide)
---```
---@see Widget
---@see DrawableDDS
---@see PING_TYPE
function Map:SetPingWidget(widget, drawable, pingType) end

---Sets the player's icon drawable on the map.
---@param player DrawableDDS The drawable for the player icon.
---@usage
---```lua
---local playerDrawable = widget:CreateDrawable("ui/map/icon/player_cursor.dds", "player_cursor", "overlay")
---widget:SetPlayerDrawable(playerDrawable)
---```
---@see DrawableDDS
function Map:SetPlayerDrawable(player) end

---Sets the skill effect widget and drawable for the specified index on the map.
---@param widget Widget The widget for the skill effect.
---@param drawable ImageDrawable The drawable for the skill effect.
---@param index number The index of the skill effect.
---@see Widget
---@see ImageDrawable
function Map:SetSkillEffectWidget(widget, drawable, index) end

---Sets the tooltip colors for objects and nicknames on the map.
---@param objColor "|cFF000000"|string The hex color for objects (alpha, red, blue, green).
---@param nickColor "|cFF000000"|string The hex color for nicknames (alpha, red, blue, green).
function Map:SetTooltipColor(objColor, nickColor) end

---Shows a skill map effect at the specified coordinates and radius.
---@param x number The x-coordinate.
---@param y number The y-coordinate.
---@param z number The z-coordinate.
---@param radius number The radius of the effect.
---@param index number The index of the effect.
function Map:ShowSkillMapEffect(x, y, z, radius, index) end

---Starts or stops a notification quest effect on the map.
---@param index number The index of the quest effect.
---@param qType number The quest type.
---@param isStart boolean `true` to start the effect, `false` to stop.
function Map:StartNotifyQuestEffect(index, qType, isStart) end

---Updates the anchor points for all drawables on the map.
function Map:UpdateAllDrawableAnchor() end

---Updates the boss telescope area on the map.
function Map:UpdateBossTelescopeArea() end

---Updates boss telescope information on the map.
function Map:UpdateBossTelescopeInfo() end

---Updates carrying backpack slave information on the map.
function Map:UpdateCarryingBackpackSlaveInfo() end

---Updates completed quest information on the map.
function Map:UpdateCompletedQuestInfo() end

---Updates corpse information on the map.
function Map:UpdateCorpseInfo() end

---Updates NPC information for the current zone group on the map.
function Map:UpdateCurZoneGroupNpcInfo() end

---Updates dominion information on the map.
function Map:UpdateDominionInfo() end

---Updates doodad information on the map.
---@param bRoadMap boolean `true` to include road map data, `false` otherwise.
function Map:UpdateDoodadInfo(bRoadMap) end

---Updates faction resurrection district information on the map.
function Map:UpdateFactionRezDistrictInfo() end

---Updates fish school area information on the map.
function Map:UpdateFishSchoolArea() end

---Updates fish school information on the map.
function Map:UpdateFishSchoolInfo() end

---Updates static given quest information on the map.
function Map:UpdateGivenQuestStaticInfo() end

---Updates housing information on the map.
function Map:UpdateHousingInfo() end

---Updates monitored NPC information on the map.
function Map:UpdateMonitorNpcInfo() end

---Updates player-owned slave information on the map.
function Map:UpdateMySlaveInfo() end

---Updates NPC information on the map.
function Map:UpdateNpcInfo() end

---Updates ping information on the map.
function Map:UpdatePingInfo() end

---Updates ship telescope information on the map.
function Map:UpdateShipTelescopeInfo() end

---Updates telescope area information on the map.
function Map:UpdateTelescopeArea() end

---Updates transfer telescope area information on the map.
function Map:UpdateTransferTelescopeArea() end

---Updates transfer telescope information on the map.
function Map:UpdateTransferTelescopeInfo() end

---Updates zone information on the map.
function Map:UpdateZoneInfo() end
