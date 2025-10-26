---Checkbutton
-- ADDON:ImportObject(OBJECT.Button)
-- ADDON:ImportObject(OBJECT.CheckButton)
-- ADDON:ImportObject(OBJECT.ImageDrawable)

-- local btn = UIParent:CreateWidget("checkbutton", "btn", "UIParent")
-- btn:SetText("test")
-- btn:SetExtent(100, 100)
-- btn:Show(true)

-- local checkedTable = btn:CreateDrawable(TEXTURE_PATH.BOOKMARK, "bookmark_sel", "overlay")
-- checkedTable:AddAnchor("CENTER", btn, 0, 0)
-- btn:SetCheckedBackground(checkedTable)

-- btn:SetChecked(true)

-- local disabledCheckedTable = btn:CreateDrawable(TEXTURE_PATH.BOOKMARK, "bookmark_dis", "overlay")
-- disabledCheckedTable:AddAnchor("CENTER", btn, 0, 0)
-- btn:SetDisabledCheckedBackground(disabledCheckedTable)

-- ADDON:ChatLog(btn:GetButtonState())

--------------------------------------------------------------------------------

-- local file = open("temp/combat_msg.txt", "w")

-- UIParent:SetEventHandler("COMBAT_MSG", function (targetUnitId, combatEvent, source, target, ...)
--   local arg = { ... }
--   local a = {
--     targetUnitId = targetUnitId,
--     combatEvent  = combatEvent,
--     source       = source,
--     target       = target,
--   }
--   local b = ParseCombatMessage(combatEvent, unpack(arg))

--   if combatEvent == "SPELL_AURA_APPLIED" then
--     ---@cast b CombatSpellAuraApplied
--   end

--   for k, v in pairs(b) do
--     a[k] = v
--   end

--   file:write(dump(a), "\n", string.rep("-", 48), "\n")
--   file:flush()
-- end)

-- local file = open("temp/combat_text.txt", "w")

-- UIParent:SetEventHandler("COMBAT_TEXT", function (...)
--   ADDON:ChatLog("COMBAT_TEXT")
--   file:write(dump({ ... }), "\n", string.rep("-", 48), "\n")
--   file:flush()
-- end)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.ImageDrawable)

-- local w = widgetassert(UIParent:CreateWidget("window", "w", "UIParent"))
-- w:AddAnchor("CENTER", 0, 0)
-- w:SetExtent(100, 100)
-- w:Show(true)

-- -- local stateIcon = w:CreateDrawable(BUTTON_TEXTURE_PATH.MAP, "icon_resident", "artwork")
-- local stateIcon = w:CreateImageDrawable("game/ui/icon/system_factions/icon_crescent_throne.dds", "overlay")
-- -- local stateIcon = w:CreateImageDrawable("game/ui/icon/system_factions/icon_crescent_throne.dds", "background")
-- ---@cast stateIcon ImageDrawable
-- stateIcon:AddAnchor("CENTER", w, 0, 0)
-- stateIcon:SetExtent(100, 100)
-- stateIcon:SetSnap(false)
-- stateIcon:SetVisible(false)
-- stateIcon:SetSRGB(true)
-- local a = stateIcon:SetTgaTexture("game/ui/map/image_map.tga")
-- ADDON:ChatLog(tostring(a))
-- stateIcon:SetVisible(true)
-- -- stateIcon:SetSnap(true)
-- ADDON:ChatLogTable({ stateIcon:GetEffectiveOffset() })
-- ADDON:ChatLogTable({ stateIcon:GetOffset() })
-- ADDON:ChatLogTable({ stateIcon:GetEffectiveExtent() })
-- ADDON:ChatLogTable({ stateIcon:GetExtent() })

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.ThreeColorDrawable)

-- local w = widgetassert(UIParent:CreateWidget("window", "w", "UIParent"))
-- w:AddAnchor("CENTER", 0, 0)
-- w:SetExtent(100, 100)
-- w:Show(true)

-- local tcd = widgetassert(w:CreateThreeColorDrawable(100, 100, "background"))
-- tcd:SetExtent(100, 100)
-- tcd:AddAnchor("CENTER", w, 0, 0)

-- tcd:SetVisible(false)
-- -- tcd:ChangeImageFile(3)
-- tcd:ChangeColor1(1, 0, 0)
-- tcd:ChangeColor2(0, 1, 0)
-- tcd:ChangeColor3(0, 0, 1)
-- tcd:SetVisible(true)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.RoadMap)

-- local r = widgetassert(UIParent:CreateWidget("roadmap", "r", "UIParent"))
-- r:SetMapSize(300)
-- r:SetExtent(928, 556)
-- r:AddAnchor("CENTER", 0, 0)
-- r:InitMapData()
-- r:Show(true)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.TextDrawable)

-- local w = widgetassert(UIParent:CreateWidget("window", "w", "UIParent"))
-- w:SetExtent(100, 100)
-- w:Show(true)

-- local t = w:CreateTextDrawable(FONT_PATH.DEFAULT, FONT_SIZE.DEFAULT, "background")

-- t:SetText("100")
-- t:AddAnchor("CENTER", 0, 0)
-- t:SetSnap(true)

--------------------------------------------------------------------------------

-- ADDON:ImportAPI(API.X2Option)

-- ADDON:ChatLogTable(X2Option:GetOptionInfo(1))
-- ADDON:ChatLogTable(X2Option:GetOptionInfo(16))
-- ADDON:ChatLogTable(X2Option:GetOptionInfo(36))
-- ADDON:ChatLogTable(X2Option:GetOptionInfo(37))
-- ADDON:ChatLogTable(X2Option:GetOptionInfo(38))
-- ADDON:ChatLogTable(X2Option:GetOptionInfo(70))
-- ADDON:ChatLogTable(X2Option:GetOptionInfo(105))
-- ADDON:ChatLogTable(X2Option:GetOptionInfo(114))

-- ADDON:ChatLogTable(X2Option:GetOptionInfo(OIT_OPTION_CHARACTER_PRIVACY_STATUS))
-- ADDON:ChatLog(tostring(X2Option:GetOptionItemValue(OIT_OPTION_CHARACTER_PRIVACY_STATUS)))
-- X2Option:SetItemFloatValue(OIT_OPTION_CHARACTER_PRIVACY_STATUS, 1)
-- ADDON:ChatLog(tostring(X2Option:GetOptionItemValue(OIT_OPTION_CHARACTER_PRIVACY_STATUS)))

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Button)
-- ADDON:ImportAPI(API.X2Store)

-- local btn = UIParent:CreateWidget("button", "btn", "UIParent")
-- btn:SetStyle("text_default")
-- btn:AddAnchor("CENTER", 0, 0)
-- btn:SetText("test")
-- btn:Show(true)

-- btn:SetHandler("OnClick", function (self, mouseButton, doubleClick, keyModifier)
--   ADDON:ChatLog("click")
--   X2Store:GetZoneSpecialtyRatio()
-- end)

--------------------------------------------------------------------------------

-- ADDON:ImportAPI(API.X2Resident)
-- ADDON:ChatLog(tostring(X2Resident:FilterHousingTradeList(HOUSING_LIST_FILTER_SMALL, "")))

--------------------------------------------------------------------------------

-- ADDON:ImportAPI(API.X2Craft)
-- ADDON:ChatLogTable(X2Craft:GetCraftMaterialInfo(85))

--------------------------------------------------------------------------------

-- ADDON:ImportAPI(API.X2CombatResource)
-- ADDON:ImportAPI(API.X2Ability)
-- ADDON:ChatLog(tostring(X2CombatResource:CheckCombatResourceMaxPointByGroupType(ABILITY_GENERAL)))
-- ADDON:ChatLog(tostring(X2CombatResource:CheckCombatResourceMaxPointByGroupType(1)))
-- ADDON:ChatLog(tostring(X2CombatResource:CheckCombatResourceMaxPointByGroupType(2)))
-- ADDON:ChatLog(tostring(X2CombatResource:CheckCombatResourceMaxPointByGroupType(3)))
-- ADDON:ChatLog(tostring(X2CombatResource:CheckCombatResourceMaxPointByGroupType(4)))
-- ADDON:ChatLog(tostring(X2CombatResource:CheckCombatResourceMaxPointByGroupType(5)))
-- ADDON:ChatLog(tostring(X2CombatResource:CheckCombatResourceMaxPointByGroupType(6)))
-- ADDON:ChatLog(tostring(X2CombatResource:CheckCombatResourceMaxPointByGroupType(7)))
-- ADDON:ChatLog(tostring(X2CombatResource:CheckCombatResourceMaxPointByGroupType(8)))
-- ADDON:ChatLog(tostring(X2CombatResource:CheckCombatResourceMaxPointByGroupType(9)))
-- ADDON:ChatLog(tostring(X2CombatResource:CheckCombatResourceMaxPointByGroupType(10)))
-- ADDON:ChatLog(tostring(X2CombatResource:CheckCombatResourceMaxPointByGroupType(11)))
-- ADDON:ChatLog(tostring(X2CombatResource:CheckCombatResourceMaxPointByGroupType(12)))
-- ADDON:ChatLog(tostring(X2CombatResource:CheckCombatResourceMaxPointByGroupType(13)))
-- ADDON:ChatLog(tostring(X2CombatResource:CheckCombatResourceMaxPointByGroupType(14)))
-- ADDON:ChatLogTable(X2CombatResource:GetCombatResourceInfo())

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Textbox)
-- local tb = UIParent:CreateWidget("textbox", "tb", "UIParent")
-- -- tb:ApplyUIScale(false)
-- tb:SetExtent(100, 100)
-- tb:AddAnchor("CENTER", 0, 0)
-- tb:SetLineSpace(TEXTBOX_LINE_SPACE.SMALL)
-- tb:SetText("asfasd asdfasdf asd dfasdfasdf asdfasdfas dfasdf asdfasdf \n asdfasdf test teasdf asdfasdf asd asdfasdf asdfas as asdfasdf asdf")
-- tb:Show(true)

-- ADDON:ChatLog("GetTextLength " .. tostring(tb:GetTextLength()))

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Tab)
-- local tab = UIParent:CreateWidget("tab", "tab", "UIParent")
-- tab:SetExtent(100, 100)
-- tab:AddSimpleTab("test")
-- tab:AddSimpleTab("a")
-- tab:AddSimpleTab("b")
-- tab:SetGap(10)
-- tab:SetOffset(10)
-- tab:AddSimpleTab("b")
-- -- tab:AlignTabButtons()
-- tab:AddAnchor("CENTER", 0, 0)
-- tab:Show(true)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Slot)
-- ADDON:ImportAPI(API.X2Equipment)
-- ADDON:ImportAPI(API.X2Ability)
-- local slot = UIParent:CreateWidget("slot", "slot", "UIParent")
-- slot:SetExtent(100, 100)
-- slot:AddAnchor("TOPLEFT", 0, 0)

-- slot:EstablishItem(7992, 2)
-- slot:EstablishSkillAlert(11, 2000, 2000)
-- slot:EstablishSkillSlot(ISLOT_ORIGIN_SKILL_VIEW, 36468)
-- slot:EstablishSkillSlot(ISLOT_ACTION, 36468)
-- slot:EstablishSlot(ISLOT_SKILL_ALERT, 242)

-- slot:EstablishVirtualSlot(ISLOT_BAG, 1, 1)
-- slot:RegisterForClicks("RightButton")
-- slot:SetHandler("OnClick", function (self, mouseButton, doubleClick, keyModifier)
--   slot:EstablishVirtualSlot(ISLOT_BAG, 1, 1)
--   ADDON:ChatLog("test")
-- end)

-- slot:Show(true)
-- ADDON:ChatLog("GetBindedType " .. slot:GetBindedType())
-- ADDON:ChatLogTable({ slot:GetExtraInfo() })
-- local a = slot:GetItemLevelRequirment()

-- if a then
--   ADDON:ChatLog(tostring(a))
-- end

-- ADDON:ChatLog(slot:GetHotKey(ISLOT_ACTION, 3))

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Avi)
-- local avi = UIParent:CreateWidget("avi", "test", "UIParent")
-- avi:SetExtent(640, 360)
-- avi:AddAnchor("CENTER", 0, 0)
-- avi:Show(true)
-- avi:SetAviNum(7)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Webbrowser)
-- local wb = UIParent:CreateWidget("webbrowser", "wb", "UIParent")
-- wb:SetExtent(1000, 1000)
-- wb:AddAnchor("CENTER", 0, 0)
-- wb:Show(true)

-- wb:SetHandler("OnEvent", function (self, event, ...)
--   ADDON:ChatLog("a " .. event)
--   wb:SetZoomLevel(2)
-- end)

-- wb:RegisterEvent("MOUSE_DOWN")
-- wb:RegisterEvent("MOUSE_CLICK")
-- wb:RegisterEvent("MOUSE_UP")

-- wb:MouseUp("LeftButton")
-- wb:MouseDown("LeftButton")

-- wb:LoadBlankPage()
-- wb:SetZoomLevel(2)
-- wb:RequestExternalPage("https://wiki.archerage.to/")
-- wb:SetFocus()

-- wb:SetHandler("OnMouseDown", function (self, mouseButton)
--   ADDON:ChatLog("down")
-- end)

-- wb:SetHandler("OnMouseUp", function (self, mouseButton)
--   ADDON:ChatLog("up")
-- end)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.ChatTab)
-- ADDON:ImportObject(OBJECT.Textbox)
-- local chat = UIParent:CreateWidget("chatwindow", "chat", "UIParent")
-- chat:SetExtent(500, 500)
-- chat:AddAnchor("CENTER", 0, 0)
-- chat:Show(true)
-- chat:SetResizingBorderSize(11, 11, 12, 12)
-- chat:SetInjectable(true)
-- chat:AllowTabSwitch(false)
-- chat:UseAddTabButton(true)

-- -- chat:SetTabAreaInset(1, 1, 1, 1)
-- -- chat:SetTabAreaHeight(100)
-- chat:SetNotifyBlinkingFreq(50)
-- chat:SetMinTabWidth(250)
-- chat:UseAutoResizingTabButtonMode(true)
-- chat:SetMinResizingExtent(345, 160)
-- chat:SetMaxResizingExtent(650, 620)
-- chat:UseResizing(true)
-- -- chat:SetContentOffset(100, 100, 100, 100)
-- chat:SetSlideTimeInDragging(1500)

-- chat:SetChatWindowId(1)
-- chat:UseSlidingButton(false)
-- chat:SetTabButtonAlpha(.5, .2)
-- chat:SetCaretOffset(0, 100)
-- chat:SetLeftLineOffset(100)

-- ADDON:ChatLog(chat:GetUrlButton():GetObjectType())
-- ADDON:ChatLog(chat:GetImeToggleButton():GetObjectType())
-- ADDON:ChatLog(chat:GetAddButton():GetObjectType())

-- local textbox = UIParent:CreateWidget("textbox", "exampleTextbox", "UIParent")
-- textbox:SetText("Test")
-- chat:AddTab("Test", textbox)

-- local textbox = UIParent:CreateWidget("textbox", "exampleTextbox", "UIParent")
-- textbox:SetText("Test 2")
-- chat:AddTab("Test 2", textbox)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Combobox)
-- ADDON:ImportObject(OBJECT.Listbox)
-- ADDON:ImportObject(OBJECT.TextStyle)

-- local box = UIParent:CreateWidget("combobox", "box", "UIParent")
-- box:SetExtent(100, 30)
-- box:AddAnchor("CENTER", 0, 0)
-- box:Show(true)
-- box:SetEditable(true)

-- box.dropdown:SetHandler("OnTooltip", function (self, ...)
--   ADDON:ChatLog("asdf")
--   ADDON:ChatLog(tostring(#{ ... }))
-- end)

-- box:SetAutocomplete("item", "auctionable")

-- box:Insert({
--   {
--     text  = "test",
--     value = 5
--   }
-- })

-- local list = UIParent:CreateWidget("listbox", "list", "UIParent")
-- list:SetExtent(100, 100)
-- list:AddAnchor("CENTER", 0, 0)
-- list:Show(true)
-- -- list:SetEditable(true)

-- list:AppendItem("Item", 1, 1, 0, 0, 1)
-- list:AppendItem("Item", 1, 1, 0, 0, 1)
-- list:AppendItem("Item", 1, 1, 0, 0, 1)
-- list:AppendItem("Item", 1, 1, 0, 0, 1)

-- list:SetHandler("OnTooltip", function (self, ...)
--   ADDON:ChatLog("asdf")
--   ADDON:ChatLog(tostring(#{ ... }))
-- end)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.EmptyWidget)
-- ADDON:ImportObject(OBJECT.ImageDrawable)
-- ADDON:ImportObject(OBJECT.ColorDrawable)
-- ADDON:ImportObject(OBJECT.TextDrawable)
-- ADDON:ImportObject(OBJECT.NinePartDrawable)
-- ADDON:ImportObject(OBJECT.ThreePartDrawable)
-- ADDON:ImportObject(OBJECT.IconDrawable)
-- local window = UIParent:CreateWidget("emptywidget", "a", "UIParent")
-- window:Show(true)

-- local img = window:CreateImageDrawable(TEXTURE_PATH.ACHIEVEMENT, "artwork")
-- local img = window:CreateImageDrawable("game/ui/icon/charge_hero02.dds", "artwork")
-- local img = window:CreateImageDrawable(TEXTURE_PATH.TIMER, "artwork")
-- img:SetExtent(1000, 1000)
-- img:AddAnchor("CENTER", 0, 0)
-- img:Show(false)
-- img:SetVisible(true)
-- -- img:SetRotation(45)
-- img:SetVisibleForString("1", "100", "50")
-- img:SetTiling(true)

-- local clr = window:CreateColorDrawable(1, 0, 0, 1, "artwork")
-- clr:SetExtent(100, 100)
-- clr:AddAnchor("CENTER", 0, 0)
-- clr:SetRotation(45)
-- clr:SetVisibleForString("1", "100", "50")

-- local txt = window:CreateTextDrawable(FONT_PATH.DEFAULT, FONT_SIZE.DEFAULT, "artwork")
-- txt:SetText("test")
-- txt:SetExtent(100, 100)
-- txt:AddAnchor("CENTER", 0, 0)
-- txt:SetRotation(45)
-- txt:SetVisibleForString("1", "100", "50")

-- local npd = window:CreateNinePartDrawable(TEXTURE_PATH.HUD, "background")
-- npd:SetTextureInfo("action_slot_default_bg", "dimmed")
-- npd:SetExtent(100, 100)
-- npd:AddAnchor("CENTER", 0, 0)
-- npd:SetRotation(45)
-- npd:SetVisibleForString("1", "100", "50")

-- local tpd = window:CreateThreePartDrawable(TEXTURE_PATH.HUD, "background")
-- tpd:SetTextureInfo("hp_bar_deco", "default")
-- tpd:SetExtent(100, 100)
-- tpd:AddAnchor("CENTER", 0, 0)
-- tpd:SetRotation(45)
-- tpd:SetVisibleForString("1", "100", "50")

-- local tpd = window:CreateIconDrawable("background")
-- -- tpd:AddTexture("game/ui/icon/charge_hero02.dds")
-- tpd:AddTexture("Addon/AAAD/temp/randombox_bg.dds")
-- tpd:SetExtent(100, 100)
-- tpd:AddAnchor("CENTER", 0, 0)
-- tpd:SetRotation(45)
-- tpd:SetVisibleForString("1", "100", "50")

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.GameTooltip)
-- ADDON:ImportObject(OBJECT.TextStyle)
-- ADDON:ImportAPI(API.X2Unit)
-- local gtt = UIParent:CreateWidget("gametooltip", "g", "UIParent")
-- gtt:SetExtent(100, 100)
-- gtt:AddAnchor("CENTER", 0, 0)
-- gtt:Show(true)

-- -- gtt:SetTooltipData("player")
-- gtt:SetTooltipData(X2Unit:GetUnitId("target"))
-- gtt:ClearLines()
-- gtt:AddLine("test\test", FONT_PATH.DEFAULT, FONT_SIZE.DEFAULT, "left", ALIGN_BOTTOM, 0)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Grid)
-- ADDON:ImportObject(OBJECT.Label)
-- local grid = UIParent:CreateWidget("grid", "g", "UIParent")
-- grid:SetExtent(200, 300)
-- grid:AddAnchor("CENTER", 0, 0)
-- grid:Show(true)

-- grid:SetCurrentLine(true)
-- grid:SetCurrentColor(1, 0, 0, .5)
-- grid:SetDefaultColWidth(10)
-- grid:SetDefaultRowHeight(20)
-- grid:SetRowCount(10)
-- grid:SetColCount(10)
-- grid:SetColWidth(20, 1)
-- grid:SetLineColor(1, 1, 0, 1)
-- -- grid:SetDrawLineType("dotted")
-- grid:SetSelectedLine(true)
-- grid:SetLineBackGround(true)
-- -- grid:SetColTexture(TEXTURE_PATH.ACHIEVEMENT)
-- grid:SetRowTexture(TEXTURE_PATH.ACHIEVEMENT_RANK)
-- grid:SetDrawStartNumber(5)

-- local label = grid:CreateChildWidget("label", "testbtn", 0, true)
-- label:SetText("Archerage.to")
-- label:SetExtent(50, 50)
-- local label2 = grid:CreateChildWidget("label", "testbtan", 0, true)
-- label2:SetText("as.to")
-- label2:SetExtent(50, 50)
-- grid:SetItem(label, 2, 11, true, 10, false)
-- grid:SetItem(label2, 11, 1, true, 10, false)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Slider)
-- ADDON:ImportObject(OBJECT.Button)
-- ADDON:ImportObject(OBJECT.NinePartDrawable)

-- local slider = UIParent:CreateWidget("slider", "s", "UIParent")
-- slider:SetExtent(100, 20)
-- slider:AddAnchor("TOPLEFT", 0, 0)
-- slider:Show(true)

-- local thumb = slider:CreateChildWidget("button", "thumb", 0, true)
-- thumb.bg = thumb:CreateNinePartDrawable(TEXTURE_PATH.SCROLL, "background")
-- thumb.bg:SetTextureInfo("thumb_df")
-- thumb.bg:AddAnchor("TOPLEFT", thumb, 0, 0)
-- thumb.bg:AddAnchor("BOTTOMRIGHT", thumb, 0, 0)
-- slider:SetThumbButtonWidget(thumb)

-- ADDON:ChatLog(tostring(slider:GetThumbButtonWidget()))
-- ADDON:ChatLog(tostring(slider:GetThumbDrawable()))

-- ADDON:ChatLog(tostring(slider.thumb.bg))

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Folder)
-- ADDON:ImportObject(OBJECT.Textbox)
-- ADDON:ImportObject(OBJECT.TextStyle)
-- ADDON:ImportObject(OBJECT.ColorDrawable)

-- local folder = UIParent:CreateWidget("folder", "f", "UIParent")
-- -- folder:SetExtent(400, 400)
-- folder:SetWidth(400)
-- folder:SetExtendLength(300)
-- folder:FixedCloseFolder()
-- -- folder:CloseFolder()
-- folder:AddAnchor("CENTER", 0, 0)
-- folder:Show(true)

-- folder:SetTitleText("ArcheRage.to")
-- folder:SetInset(0, 0, 0, 0)
-- folder:SetTitleHeight(100)

-- local details = folder:CreateChildWidget("textbox", "details", 0, true)
-- details.style:SetAlign(ALIGN_TOP_LEFT)
-- -- details:SetExtent(100, 100)
-- details:SetText("The first ArcheAge Private Server")

-- folder:SetChildWidget(details)
-- -- folder:SetAnimateStep(3)
-- -- folder:UseAnimation(true)

-- local bg = folder:CreateColorDrawable(1, 0, 0, .5, "background")
-- bg:AddAnchor("TOPLEFT", folder, 0, 0)
-- bg:AddAnchor("BOTTOMRIGHT", folder, 0, 0)

-- local bg2 = details:CreateColorDrawable(0, 0, 1, 1, "background")
-- bg2:AddAnchor("TOPLEFT", details, 0, 0)
-- bg2:AddAnchor("BOTTOMRIGHT", details, 0, 0)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.EmptyWidget)
-- ADDON:ImportObject(OBJECT.NinePartDrawable)

-- local emptywidget = UIParent:CreateWidget("emptywidget", "a", "UIParent")
-- emptywidget:SetExtent(100, 100)
-- emptywidget:AddAnchor("CENTER", 0, 0)
-- emptywidget:Show(true)

-- local npd = emptywidget:CreateDrawable(TEXTURE_PATH.DEFAULT, "btn_normal", "background")
-- npd:AddAnchor("TOPLEFT", emptywidget, 0, 0)
-- npd:AddAnchor("BOTTOMRIGHT", emptywidget, 0, 0)

-- emptywidget.drawable = npd

-- ADDON:ChatLog(tostring(emptywidget))
-- emptywidget:SetHandler("OnEnter", function (self)
--   emptywidget:SetDrawBorder(true, 1, 0, 1, 1)
--   ADDON:ChatLog(tostring(emptywidget))
-- end)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.CooldownInventoryButton)
-- ADDON:ImportObject(OBJECT.Slot)

-- local btn = UIParent:CreateWidget("cooldowninventorybutton", "c", "UIParent")
-- btn:SetExtent(100, 100)
-- btn:AddAnchor("CENTER", 0, 0)
-- btn:SetText("Test")
-- btn:Show(true)

-- -- btn:SetItem(7992)
-- -- btn:SetSkill(14495)
-- -- btn:SetItemSlot(1, ISLOT_BAG)
-- btn:SetBagItemSlot(0)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Button)

-- local btn = UIParent:CreateWidget("button", "b", "UIParent")
-- btn:SetExtent(100, 100)
-- btn:SetText("asdf")
-- btn:SetStyle("text_default")
-- btn:Show(true)

-- btn:UseDynamicContentState(false)
-- btn:UseDynamicDrawableState("background", false)
-- btn:RemoveAllDrawables("background")

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.WorldMap)
-- ADDON:ImportObject(OBJECT.EffectDrawable)
-- ADDON:ImportAPI(API.X2Map)

-- local map = UIParent:CreateWidget("worldmap", "wm", "UIParent")
-- map:SetExtent(928, 556)
-- map:AddAnchor("TOPRIGHT", 0, 0)
-- map:InitMapData(928, 556, "ui/map/image_map.tga", BUTTON_TEXTURE_PATH.MAP)
-- map:Show(true)

-- local portalDrawable = map:CreateEffectDrawableByKey(TEXTURE_PATH.MAP_ICON, "portal", "overlay")
-- portalDrawable:SetVisible(false)
-- portalDrawable:SetEffectPriority(1, "alpha", 0.5, 0.4)
-- portalDrawable:SetMoveRepeatCount(0)
-- portalDrawable:SetMoveRotate(false)
-- portalDrawable:SetMoveEffectType(1, "right", 0, 0, 0.4, 0.4)
-- portalDrawable:SetMoveEffectEdge(1, 0.3, 0.5)
-- portalDrawable:SetMoveEffectType(2, "right", 0, 0, 0.4, 0.4)
-- portalDrawable:SetMoveEffectEdge(2, 0.5, 0.3)
-- map:SetPortalDrawable(portalDrawable)

-- map:ShowPortal(133, 1000, 1000, 0)

-- -- ADDON:ChatLogTable(map:GetClimateInfo(107))

-- -- 0 is current zone
-- -- ADDON:ChatLogTable(X2Map:GetZoneStateInfoByZoneId(0))

-- local tempMainQuestReadyCoord = {
--   216,
--   24,
--   24,
--   24
-- }
-- map:SetTempNotifyCoord(true, tempMainQuestReadyCoord)
-- local tempNotifyColor = {
--   255,
--   255,
--   255,
--   .5
-- }
-- map:SetTempNotifyColor(tempNotifyColor)
-- ADDON:ImportObject(OBJECT.Button)

-- local btn = UIParent:CreateWidget("button", "b", "UIParent")
-- local num = -1
-- btn:SetStyle("text_default")
-- btn:Show(true)
-- btn:SetText(tostring(num))

-- btn:SetHandler("OnClick", function (self, mouseButton, doubleClick, keyModifier)
--   num = num + 1
--   btn:SetText(tostring(num))
--   ADDON:ChatLog(tostring(num) .. " " .. X2Map:GetZoneStateInfoByZoneId(num).zoneName)
-- end)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.EmptyWidget)
-- ADDON:ImportObject(OBJECT.DynamicList)

-- local dl = widgetassert(UIParent:CreateWidget("dynamiclist", "d", "UIParent"))
-- dl:SetExtent(100, 1000)
-- dl:Show(true)

-- local overedImage = dl:CreateOveredImage("overlay")
-- dl:AddAnchor("TOPLEFT", dl, 0, 0)
-- dl:AddAnchor("BOTTOMRIGHT", dl, 0, 0)

-- local viewRowCount   = 3
-- local mainItemHeight = 73
-- local viewHeight     = mainItemHeight * viewRowCount
-- local subItemHeight  = 29

-- dl:InsertData(1, 1, { text = "asd" })
-- dl:InsertData(2, 2, { text = "asd" })

-- ADDON:ChatLog(tostring(dl:GetCurrentHeight()))

-- function mainLayoutFunc(subItem, index) end
-- function mainDataFunc(subItem, mainKey, isOpen, frameBg, subListSize, isClicked) end
-- function subLayoutFunc(subItem, index) end
-- function subDataFunc(subItem, subItemInfo, isClicked) end

-- dl:InitFunc(mainLayoutFunc, mainDataFunc, subLayoutFunc, subDataFunc)
-- dl:InitBgType(UOT_NINE_PART_DRAWABLE)
-- dl:InitHeight(viewHeight, mainItemHeight, subItemHeight)
-- dl:InitCreateWidgetPool() -- this creates the main on dl.anchor.main
-- dl:SetGaps(5, 5)


-- ADDON:ChatLogTable({ dl:GetSelectedItemInfo() })
-- ADDON:ChatLogTable({ dl:GetMainList() })

-- dl:UpdateView()

-- local file = open("temp/dynamiclist.txt", "w")
-- file:write(dump(dl))
-- file:close()

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Editbox)
-- ADDON:ImportAPI(API.X2Util)

-- local edit = UIParent:CreateWidget("editbox", "d", "UIParent")
-- edit:SetExtent(100, 50)
-- edit:Show(true)

-- -- edit:SetInitVal(1000)
-- -- edit:SetDigitEmpty(true)
-- -- edit:SetReClickable(false)

-- edit:SetHandler("OnTextChanged", function (self)
--   edit:CheckNamePolicy(NRT_CHARACTER)
--   ADDON:ChatLog(edit:GetText()) -- this isnt returning anything?
--   -- edit:CheckNamePolicy(NRT_CHAT_TAB)
-- end)

-- -- ADDON:ChatLog(tostring(edit:MaxTextLength()))

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.DamageDisplay)
-- ADDON:ImportAPI(API.X2Unit)

-- local d = UIParent:CreateWidget("damagedisplay", "d", "UIParent")
-- -- d:SetExtent(100, 100)
-- -- d:AddAnchor("CENTER", 0, 0)
-- d:Show(true)

-- d:SetText("test")

-- d:SetAnimFrameInfo({
--   {
--     w = 1000,
--     h = 1000,
--     x = 100,
--     y = 100,
--     scale = 1.5,
--     timeToNextFrame = 70,
--     alpha = 0.2,
--   },
--   {
--     scale = .5,
--     timeToNextFrame = 30,
--   },
--   {
--     scale = .62,
--     timeToNextFrame = 30,
--   },
--   {
--     scale = .55,
--     showTime = 400,
--     timeToNextFrame = 120,
--   },
--   {
--     w = 10,
--     h = 10,
--     x = 1,
--     y = 1,
--     alpha = 1,
--     scale = .55,
--   },
-- })

-- -- d:Animation(true)

-- -- d:SetPositionCalculationType(PCT_SHIP_COLLISION)
-- d:SetInset(10, 10, 10, 10)
-- d:SetUnitId(X2Unit:GetUnitId("player"), X2Unit:GetUnitId("target"))

-- ADDON:ChatLogTable({ d:GetActualDrawn() })

--------------------------------------------------------------------------------

ADDON:ChatLog("reload")
