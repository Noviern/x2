# Map
## Classes
### Class: Map
#### Method: AddGivenQuestInfo
```lua
(method) Map:AddGivenQuestInfo(type: number, id: number)
```
Adds quest information to the map with the specified type and ID.

@*param* `type` — The quest type.

@*param* `id` — The quest ID.

#### Method: AddNotifyQuestInfo
```lua
(method) Map:AddNotifyQuestInfo(qType: number)
```
Adds notification quest information to the map.

@*param* `qType` — The quest type.

#### Method: ClearAllInfo
```lua
(method) Map:ClearAllInfo()
```
Clears all information displayed on the map.

#### Method: ClearBossTelescopeInfo
```lua
(method) Map:ClearBossTelescopeInfo()
```
Clears boss telescope information from the map.

#### Method: ClearCarryingBackpackSlaveInfo
```lua
(method) Map:ClearCarryingBackpackSlaveInfo()
```
Clears carrying backpack slave information from the map.

#### Method: ClearCompletedQuestInfo
```lua
(method) Map:ClearCompletedQuestInfo()
```
Clears completed quest information from the map.

#### Method: ClearCorpseInfo
```lua
(method) Map:ClearCorpseInfo()
```
Clears corpse information from the map.

#### Method: ClearDoodadInfo
```lua
(method) Map:ClearDoodadInfo()
```
Clears doodad information from the map.

#### Method: ClearFishSchoolInfo
```lua
(method) Map:ClearFishSchoolInfo()
```
Clears fish school information from the map.

#### Method: ClearGivenQuestStaticInfo
```lua
(method) Map:ClearGivenQuestStaticInfo()
```
Clears static given quest information from the map.

#### Method: ClearHousingInfo
```lua
(method) Map:ClearHousingInfo()
```
Clears housing information from the map.

#### Method: ClearMySlaveInfo
```lua
(method) Map:ClearMySlaveInfo()
```
Clears player-owned slave information from the map.

#### Method: ClearNotifyQuestInfo
```lua
(method) Map:ClearNotifyQuestInfo()
```
Clears notification quest information from the map.

#### Method: ClearNpcInfo
```lua
(method) Map:ClearNpcInfo()
```
Clears NPC information from the map.

#### Method: ClearShipTelescopeInfo
```lua
(method) Map:ClearShipTelescopeInfo()
```
Clears ship telescope information from the map.

#### Method: ClearTransferTelescopeInfo
```lua
(method) Map:ClearTransferTelescopeInfo()
```
Clears transfer telescope information from the map.

#### Method: GetPlayerSextants
```lua
(method) Map:GetPlayerSextants()
  -> playerSextant: SEXTANT
```
Retrieves the player's sextant location on the map.

@*return* `playerSextant` — The player's sextant data.

#### Method: GetPlayerViewPos
```lua
(method) Map:GetPlayerViewPos()
  -> playerViewX: number
  2. playerViewY: number
```
Retrieves the player's view position on the map.

@*return* `playerViewX` — The player's x location on the map.

@*return* `playerViewY` — The player's y location on the map.

#### Method: GetTooltipController
```lua
(method) Map:GetTooltipController()
  -> tooltipController: Window
```
Retrieves the tooltip controller for the map.

@*return* `tooltipController` — The tooltip controller window.

#### Method: MapWidgetShown
```lua
(method) Map:MapWidgetShown()
  -> widgetShown: boolean
```
Checks if the map widget is shown.

@*return* `widgetShown` — `true` if the map widget is visible, `false` otherwise.

#### Method: OnLeftClick
```lua
(method) Map:OnLeftClick()
```
Triggers a left-click action on the map.

#### Method: ReloadAllInfo
```lua
(method) Map:ReloadAllInfo()
```
Reloads all information displayed on the map.

#### Method: RemoveBossTelescopeInfo
```lua
(method) Map:RemoveBossTelescopeInfo(index: number)
```
Removes boss telescope information at the specified index.

@*param* `index` — The index of the boss telescope info to remove.

#### Method: RemoveCarryingBackpackSlaveInfo
```lua
(method) Map:RemoveCarryingBackpackSlaveInfo(index: number)
```
Removes carrying backpack slave information at the specified index.

@*param* `index` — The index of the backpack slave info to remove.

#### Method: RemoveFishSchoolInfo
```lua
(method) Map:RemoveFishSchoolInfo(index: number)
```
Removes fish school information at the specified index.

@*param* `index` — The index of the fish school info to remove.

#### Method: RemoveGivenQuestInfo
```lua
(method) Map:RemoveGivenQuestInfo(type: number, id: number)
```
Removes given quest information from the map.

@*param* `type` — The quest type.

@*param* `id` — The quest ID.

#### Method: RemoveNotifyQuestInfo
```lua
(method) Map:RemoveNotifyQuestInfo(qType: number)
```
Removes notification quest information from the map.

@*param* `qType` — The quest type.

#### Method: RemoveShipTelescopeInfo
```lua
(method) Map:RemoveShipTelescopeInfo(index: number)
```
Removes ship telescope information at the specified index.

@*param* `index` — The index of the ship telescope info to remove.

#### Method: RemoveTransferTelescopeInfo
```lua
(method) Map:RemoveTransferTelescopeInfo(index: number)
```
Removes transfer telescope information at the specified index.

@*param* `index` — The index of the transfer telescope info to remove.

#### Method: ResetCursor
```lua
(method) Map:ResetCursor(isNull: boolean)
```
Resets the map cursor.

@*param* `isNull` — `true` to set cursor to null, `false` otherwise.

#### Method: SetExpandRatio
```lua
(method) Map:SetExpandRatio(ratio: number)
```
Sets the expansion ratio for the map.

@*param* `ratio` — The expansion ratio.

#### Method: SetPingBtn
```lua
(method) Map:SetPingBtn(clicked: boolean, pingType: 1|2|3|4|5)
```
Sets the ping button state and type for the map.

@*param* `clicked` — `true` if the ping button is clicked, `false` otherwise.

@*param* `pingType` — The type of ping.

```lua
pingType:
    | 1 -- Ping
    | 2 -- Enemy
    | 3 -- Attack
    | 4 -- Line
    | 5 -- Eraser
```

#### Method: SetPingWidget
```lua
(method) Map:SetPingWidget(widget: Widget, drawable: DrawableDDS, pingType: 1|2|3|4|5)
```
Sets the ping widget and drawable for the specified ping type on the map.

@*param* `widget` — The widget for the ping.

@*param* `drawable` — The drawable for the ping.

@*param* `pingType` — The type of ping.

```lua
local frame = widget:CreateChildWidget("emptywidget", "ping", 0, true)
frame:SetExtent(24, 24)
frame:Show(false)

local bg = widget:CreateDrawable("ui/map/icon/npc_icon.dds", "my_ping", "overlay")
bg:AddAnchor("CENTER", frame, 0, 0)
frame.bg = bg
bg:SetVisible(false)

widget:SetPingWidget(frame, frame.bg, 1)

function frame:OnShow()
  frame.bg:SetVisible(true)
end

frame:SetHandler("OnShow", frame.OnShow)
function frame:OnHide()
  frame.bg:SetVisible(false)
end

frame:SetHandler("OnHide", frame.OnHide)
```

```lua
pingType:
    | 1 -- Ping
    | 2 -- Enemy
    | 3 -- Attack
    | 4 -- Line
    | 5 -- Eraser
```

See:
  * [Widget](../types/Widget.md#class-widget)
  * [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)

#### Method: SetPlayerDrawable
```lua
(method) Map:SetPlayerDrawable(player: DrawableDDS)
```
Sets the player's icon drawable on the map.

@*param* `player` — The drawable for the player icon.

```lua
local playerDrawable = widget:CreateDrawable("ui/map/icon/player_cursor.dds", "player_cursor", "overlay")
widget:SetPlayerDrawable(playerDrawable)
```
See: [DrawableDDS](../types/DrawableDDS.md#class-drawabledds)

#### Method: SetSkillEffectWidget
```lua
(method) Map:SetSkillEffectWidget(widget: Widget, drawable: ImageDrawable, index: number)
```
Sets the skill effect widget and drawable for the specified index on the map.

@*param* `widget` — The widget for the skill effect.

@*param* `drawable` — The drawable for the skill effect.

@*param* `index` — The index of the skill effect.

See:
  * [Widget](../types/Widget.md#class-widget)
  * [ImageDrawable](../objects/ImageDrawable.md#class-imagedrawable)

#### Method: SetTooltipColor
```lua
(method) Map:SetTooltipColor(objColor: string|"|cFF000000", nickColor: string|"|cFF000000")
```
Sets the tooltip colors for objects and nicknames on the map.

@*param* `objColor` — The hex color for objects (alpha, red, blue, green).

@*param* `nickColor` — The hex color for nicknames (alpha, red, blue, green).

```lua
objColor:
    | "|cFF000000"

nickColor:
    | "|cFF000000"
```

#### Method: ShowSkillMapEffect
```lua
(method) Map:ShowSkillMapEffect(x: number, y: number, z: number, radius: number, index: number)
```
Shows a skill map effect at the specified coordinates and radius.

@*param* `x` — The x-coordinate.

@*param* `y` — The y-coordinate.

@*param* `z` — The z-coordinate.

@*param* `radius` — The radius of the effect.

@*param* `index` — The index of the effect.

#### Method: StartNotifyQuestEffect
```lua
(method) Map:StartNotifyQuestEffect(index: number, qType: number, isStart: boolean)
```
Starts or stops a notification quest effect on the map.

@*param* `index` — The index of the quest effect.

@*param* `qType` — The quest type.

@*param* `isStart` — `true` to start the effect, `false` to stop.

#### Method: UpdateAllDrawableAnchor
```lua
(method) Map:UpdateAllDrawableAnchor()
```
Updates the anchor points for all drawables on the map.

#### Method: UpdateBossTelescopeArea
```lua
(method) Map:UpdateBossTelescopeArea()
```
Updates the boss telescope area on the map.

#### Method: UpdateBossTelescopeInfo
```lua
(method) Map:UpdateBossTelescopeInfo()
```
Updates boss telescope information on the map.

#### Method: UpdateCarryingBackpackSlaveInfo
```lua
(method) Map:UpdateCarryingBackpackSlaveInfo()
```
Updates carrying backpack slave information on the map.

#### Method: UpdateCompletedQuestInfo
```lua
(method) Map:UpdateCompletedQuestInfo()
```
Updates completed quest information on the map.

#### Method: UpdateCorpseInfo
```lua
(method) Map:UpdateCorpseInfo()
```
Updates corpse information on the map.

#### Method: UpdateCurZoneGroupNpcInfo
```lua
(method) Map:UpdateCurZoneGroupNpcInfo()
```
Updates NPC information for the current zone group on the map.

#### Method: UpdateDominionInfo
```lua
(method) Map:UpdateDominionInfo()
```
Updates dominion information on the map.

#### Method: UpdateDoodadInfo
```lua
(method) Map:UpdateDoodadInfo(bRoadMap: boolean)
```
Updates doodad information on the map.

@*param* `bRoadMap` — `true` to include road map data, `false` otherwise.

#### Method: UpdateFactionRezDistrictInfo
```lua
(method) Map:UpdateFactionRezDistrictInfo()
```
Updates faction resurrection district information on the map.

#### Method: UpdateFishSchoolArea
```lua
(method) Map:UpdateFishSchoolArea()
```
Updates fish school area information on the map.

#### Method: UpdateFishSchoolInfo
```lua
(method) Map:UpdateFishSchoolInfo()
```
Updates fish school information on the map.

#### Method: UpdateGivenQuestStaticInfo
```lua
(method) Map:UpdateGivenQuestStaticInfo()
```
Updates static given quest information on the map.

#### Method: UpdateHousingInfo
```lua
(method) Map:UpdateHousingInfo()
```
Updates housing information on the map.

#### Method: UpdateMonitorNpcInfo
```lua
(method) Map:UpdateMonitorNpcInfo()
```
Updates monitored NPC information on the map.

#### Method: UpdateMySlaveInfo
```lua
(method) Map:UpdateMySlaveInfo()
```
Updates player-owned slave information on the map.

#### Method: UpdateNpcInfo
```lua
(method) Map:UpdateNpcInfo()
```
Updates NPC information on the map.

#### Method: UpdatePingInfo
```lua
(method) Map:UpdatePingInfo()
```
Updates ping information on the map.

#### Method: UpdateShipTelescopeInfo
```lua
(method) Map:UpdateShipTelescopeInfo()
```
Updates ship telescope information on the map.

#### Method: UpdateTelescopeArea
```lua
(method) Map:UpdateTelescopeArea()
```
Updates telescope area information on the map.

#### Method: UpdateTransferTelescopeArea
```lua
(method) Map:UpdateTransferTelescopeArea()
```
Updates transfer telescope area information on the map.

#### Method: UpdateTransferTelescopeInfo
```lua
(method) Map:UpdateTransferTelescopeInfo()
```
Updates transfer telescope information on the map.

#### Method: UpdateZoneInfo
```lua
(method) Map:UpdateZoneInfo()
```
Updates zone information on the map.

