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
-- slot:EstablishSkillAlert(21, 2000, 2000)
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
-- slot:Show(false, 3000)
-- ADDON:ChatLog("GetBindedType " .. slot:GetBindedType())
-- ADDON:ChatLogTable({ slot:GetExtraInfo() })
-- local a = slot:GetItemLevelRequirment()

-- if a then
--   ADDON:ChatLog(tostring(a))
-- end

-- ADDON:ChatLog(slot:GetHotKey(ISLOT_ACTION, 3))

-- ADDON:ImportAPI(API.X2Player)
-- -- ADDON:ChatLogTable(X2Player:GetAppellations(APPELATION_ROUTE_TYPE_ACHIEVEMENTS, "ever", 1))
-- -- ADDON:ChatLogTable(X2Player:GetAppellationStampInfo(99))

-- ADDON:ImportObject(OBJECT.Window)
-- ADDON:ImportObject(OBJECT.Button)

-- local window = UIParent:CreateWidget("window", "w", "UIParent")
-- local btn = UIParent:CreateWidget("button", "b", "UIParent")
-- -- btn:SetStyle("text_default")
-- btn:SetExtent(100, 100)
-- btn:SetText("asdf")
-- btn:SetSounds("quest_directing_mode")
-- btn:AddAnchor("LEFT", "UIParent", 0, 0)
-- btn:SetMoveAnimation("top", 100, .5, 2)
-- btn:Show(true)
-- -- btn:TriggerMoveAnimation(true)

-- btn:SetHandler("OnClick", function (self, mouseButton, doubleClick, keyModifier)
--   window:Show(not window:IsVisible())
--   btn:SetText(tostring(window:IsVisible()))
-- end)

-- btn:CreateChildWidget("button", "test", 0, true)

-- slot:SetHandler("OnUpdate", function (self, frameTime)
--   btn:SetText(tostring(frameTime))
--   slot:TriggerMoveAnimation(true)
-- end)

-- window:SetSounds("ability_change")
-- window:SetSounds("achievement")
-- window:SetSounds("auction")
-- window:SetSounds("auction_put_up")
-- window:SetSounds("bag")
-- window:SetSounds("bank")
-- window:SetSounds("battlefield_entrance")
-- window:SetSounds("character_info")
-- window:SetSounds("coffer")
-- window:SetSounds("common_farm_info")
-- window:SetSounds("community")
-- window:SetSounds("composition_score")
-- window:SetSounds("config")
-- window:SetSounds("cosmetic_details")
-- window:SetSounds("craft")
-- window:SetSounds("crime_records")
-- window:SetSounds("default_r") -- i dont think this has a sound?
-- window:SetSounds("dialog_common")
-- window:SetSounds("dialog_enter_beautyshop")
-- window:SetSounds("dialog_gender_transfer")
-- window:SetSounds("dyeing")
-- window:SetSounds("edit_box")
-- window:SetSounds("item_enchant")
-- window:SetSounds("loot")
-- window:SetSounds("mail")
-- window:SetSounds("mail_read")
-- window:SetSounds("mail_write")
-- window:SetSounds("my_farm_info")
-- window:SetSounds("option")
-- window:SetSounds("pet_info")
-- window:SetSounds("portal")
-- window:SetSounds("prelim_equipment")
-- window:SetSounds("quest_context_list")
-- window:SetSounds("quest_directing_mode")
-- window:SetSounds("raid_team")
-- window:SetSounds("ranking")
-- window:SetSounds("ranking_reward")
-- window:SetSounds("skill_book")
-- window:SetSounds("store")
-- window:SetSounds("store_drain")
-- window:SetSounds("submenu")
-- window:SetSounds("trade")
-- window:SetSounds("tutorial")
-- window:SetSounds("ucc")
-- window:SetSounds("wash")
-- window:SetSounds("web_messenger")
-- window:SetSounds("web_note")
-- window:SetSounds("web_play_diary")
-- window:SetSounds("web_wiki")
-- window:SetSounds("world_map")
-- window:Show(true)

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
-- ADDON:ImportObject(OBJECT.NinePartDrawable)
-- ADDON:ImportObject(OBJECT.ColorDrawable)

-- local dl = UIParent:CreateWidget("dynamiclist", "d", "UIParent")

-- dl:SetHandler("OnDynamicListUpdatedView", function (self)
--   ADDON:ChatLog("OnDynamicListUpdatedView")
-- end)

-- dl:SetExtent(500, 500)
-- -- dl:Show(true)

-- local bg = dl:CreateColorDrawable(1, 0, 0, .5, "background")
-- bg:AddAnchor("TOPLEFT", dl, 0, 0)
-- bg:AddAnchor("BOTTOMRIGHT", dl, 0, 0)


-- -- dl:AddAnchor("TOPLEFT", dl, 0, 0)
-- -- dl:AddAnchor("BOTTOMRIGHT", dl, 0, 0)

-- local viewRowCount   = 3
-- local mainItemHeight = 73
-- local viewHeight     = mainItemHeight * viewRowCount
-- local subItemHeight  = 29

-- -- ADDON:ChatLog(tostring(dl:GetCurrentHeight()))

-- ---comment
-- ---@param subItem EmptyWidget
-- ---@param index number
-- local function mainLayoutFunc(subItem, index)
--   ADDON:ChatLog("mainLayoutFunc " .. index)

--   local bg = subItem:CreateColorDrawable(1, 0, 0, .5, "background")
--   bg:AddAnchor("TOPLEFT", subItem, 0, 0)
--   bg:AddAnchor("BOTTOMRIGHT", subItem, 0, 0)

--   subItem:SetHandler("OnEnter", function (self)
--     ADDON:ChatLog("enter")
--   end)
-- end

-- ---comment
-- ---@param subItem EmptyWidget
-- ---@param mainKey number
-- ---@param isOpen boolean
-- ---@param frameBg NinePartDrawable
-- ---@param subListSize number
-- ---@param isClicked boolean
-- local function mainDataFunc(subItem, mainKey, isOpen, frameBg, subListSize, isClicked)
--   ADDON:ChatLog("mainDataFunc " .. mainKey .. " " .. tostring(isOpen))
--   local bg = subItem:CreateColorDrawable(1, 0, 0, .5, "background")
--   bg:AddAnchor("TOPLEFT", subItem, 0, 0)
--   bg:AddAnchor("BOTTOMRIGHT", subItem, 0, 0)
--   frameBg:SetTexture(TEXTURE_PATH.ACHIEVEMENT)
--   frameBg:SetTextureInfo("achievement_bg_blue")
-- end

-- ---comment
-- ---@param subItem EmptyWidget
-- ---@param index number
-- local function subLayoutFunc(subItem, index)
--   ADDON:ChatLog("subLayoutFunc " .. index)
--   local bg = subItem:CreateColorDrawable(1, 0, 0, .5, "background")
--   bg:AddAnchor("TOPLEFT", subItem, 0, 0)
--   bg:AddAnchor("BOTTOMRIGHT", subItem, 0, 0)
-- end

-- local function subDataFunc(...) --subItem, subItemInfo, isClicked)
--   ADDON:ChatLog("subDataFunc")
--   ADDON:ChatLogTable({ ... })
-- end

-- dl:InitFunc(mainLayoutFunc, mainDataFunc, subLayoutFunc, subDataFunc)
-- dl:InitBgType(UOT_NINE_PART_DRAWABLE)
-- dl:InitHeight(viewHeight, mainItemHeight, subItemHeight)
-- dl:InitCreateWidgetPool() -- this creates the main on dl.content.anchor.main
-- -- dl:SetGaps(5, 5)
-- local overedImage = dl:CreateOveredImage("overlay")
-- overedImage:SetTexture(TEXTURE_PATH.DEFAULT)
-- overedImage:SetTextureInfo("slot_ov")

-- dl:InsertData(1, 1, { { key = 1, text = "asd", value = 3 } })
-- dl:InsertData(2, 5, { { key = 2, text = "asd", value = 4 } })
-- dl:InsertData(3, 4, { { key = 3, text = "asd", value = 4 } })

-- -- dl:Toggle(1)
-- -- dl:ToggleByMainKey(5)

-- -- dl:SaveItemList()
-- -- dl:ClearData()
-- -- dl:LoadItemList()

-- -- ADDON:ChatLogTable({ dl:GetSelectedItemInfo() })
-- -- ADDON:ChatLog(dl:GetMainIndex(1))
-- -- dl:EraseData(2)
-- ADDON:ChatLogTable(dl:GetMainList())
-- -- ADDON:ChatLog(dl:MoveHeight(100))
-- ADDON:ChatLog(tostring(dl:GetCurrentHeight()))
-- ADDON:ChatLog(tostring(dl:GetScrollMaxValue()))

-- -- dl:UpdateView() -- triggers mainDataFun

-- -- dl:LoadItemList()
-- -- dl:MoveIndex(1, 0, true)

-- local file = open("temp/dynamiclist.txt", "w")
-- file:write(dump(dl))
-- file:close()

-- ADDON:ImportAPI(API.X2Achievement)
-- ADDON:ChatLogTable(X2Achievement:GetAchievementSubList(3951, AF_COMPLETE))

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.X2Editbox)
-- ADDON:ImportAPI(API.X2Util)

-- local edit = UIParent:CreateWidget("x2editbox", "d", "UIParent")
-- edit:SetExtent(100, 50)
-- edit:Show(true)

-- edit:SetDigit(true)
-- edit:SetInitVal(1000)
-- edit:SetDigitMax(1200)
-- -- edit:SetDigitEmpty(true)
-- -- edit:SetReClickable(false)

-- edit:SetHandler("OnTextChanged", function (self)
--   edit:CheckNamePolicy(NRT_CHARACTER)
--   ADDON:ChatLog(edit:GetText()) -- this isnt returning anything?
--   -- edit:CheckNamePolicy(NRT_CHAT_TAB)
-- end)

-- edit:SetText("1", true)

-- -- edit:SetMaxTextLength(1000000)
-- edit:SetCursorColor(1, 0, 0, 1)
-- ADDON:ChatLog(tostring(edit:MaxTextLength()))

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

-- ADDON:ImportObject(OBJECT.Button)
-- ADDON:ImportObject(OBJECT.ColorDrawable)
-- local btn = widgetassert(UIParent:CreateWidget("button", "b", "UIParent"))
-- btn:Show(true)

-- local btn2 = btn:CreateChildWidget("button", "as", 0, false)

-- local bg = btn:CreateColorDrawable(1, 0, 0, 1, "background")
-- btn:BindWidth(50)
-- -- bg:SetExtent(100, 100)
-- bg:SetWidth(100)
-- bg:BindWidth(50)
-- bg:BindWidth(150)
-- bg:SetHeight(100)

-- btn:SetExtent(100, 100)
-- btn:AddAnchor("CENTER", "UIParent", 0, 0)
-- -- btn:RemoveAllAnchors()
-- -- btn:AddAnchor("TOPLEFT", "UIParent", 0, 0)

-- -- btn:AddAnchor("TOPLEFT", 0, 0)
-- -- btn:AddAnchor("BOTTOMRIGHT", 0, 0)
-- -- bg:SetExtent(100, 100)
-- bg:AddAnchor("TOPRIGHT", btn, "BOTTOMLEFT", 0, 0)
-- -- bg:AddAnchor("TOPLEFT", btn, 0, 0)
-- -- bg:AddAnchor("CENTER", btn, "TOP", 0, 0)
-- -- bg:RemoveAllAnchors()
-- -- bg:AddAnchor("BOTTOM", "UIParent", 0, 0)
-- -- btn:AddAnchor("BOTTOMRIGHT", 0, 0)
-- btn:SetText("fasdf")


-- local b = btn:CreateChildWidget("button", "asdf", 0, true)

-- -- local c = UIParent:CreateWidget("avi", "asfd", btn)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Window)
-- ADDON:ImportObject(OBJECT.NinePartDrawable)
-- ADDON:ImportObject(OBJECT.ImageDrawable)
-- ADDON:ImportObject(OBJECT.Button)
-- ADDON:ImportObject(OBJECT.TextStyle)
-- ADDON:ImportObject(OBJECT.EmptyWidget)
-- ADDON:ImportObject(OBJECT.CheckButton)
-- ADDON:ImportObject(OBJECT.Textbox)

-- -- LOCALE                 = {
-- --   ADDON_NAME    = "示例插件",
-- --   TITLE         = "你好，ArcheRage！",
-- --   BODY          =
-- --     "这是一个示例插件，可以从游戏菜单中切换。当窗口隐藏时，它会被销毁；"
-- --     .. "当窗口显示时，它会被重新创建。通过拖拽边缘可以缩放窗口，"
-- --     .. "通过拖拽标题栏可以移动窗口。窗口的位置和尺寸可以通过点击"
-- --     .. "“保存UI边界”按钮来保存，通过点击|cFFFF0000“重置UI边界”|r按钮来重置。\n",
-- --   ENABLE_MODAL  = "启用窗口模态",
-- --   SAVE_UI       = "保存UI边界",
-- --   SAVE_UI_TEXT  = "示例插件UI边界已保存！",
-- --   RESET_UI      = "重置UI边界",
-- --   RESET_UI_TEXT = "示例插件UI边界已重置！"
-- -- }

-- LOCALE                 = {
--   ADDON_NAME    = "Example Addon",
--   TITLE         = "Hello, ArcheRage!",
--   BODY          =
--     "This is an example addon that can be toggled from the game menu. When the "
--     .. "window is hidden it is destroyed and when it is shown it is recreated. "
--     .. "By dragging on the edges the window can be scaled and by dragging on "
--     .. "title bar the window can be moved. The windows position and dimensions "
--     .. "can be saved by clicking the \"Save UIBounds\" button and reset by "
--     .. "clicking the |cFFFF0000\"Reset UIBounds\"|r button.\n",
--   ENABLE_MODAL  = "Enable Window Modal",
--   SAVE_UI       = "Save UIBounds",
--   SAVE_UI_TEXT  = "Example Addon UIBounds Saved!",
--   RESET_UI      = "Reset UIBounds",
--   RESET_UI_TEXT = "Example Addon UIBounds Reset!"
-- }

-- -- LOCALE                 = {
-- --   ADDON_NAME    = "Пример аддона",
-- --   TITLE         = "Привет, ArcheRage!",
-- --   BODY          =
-- --     "Это пример аддона, который можно переключать из меню игры. Когда окно скрыто, "
-- --     .. "оно уничтожается, а когда отображается — пересоздаётся. Перетаскивая края, "
-- --     .. "окно можно масштабировать, а перетаскивая заголовок — перемещать. Положение "
-- --     .. "и размеры окна можно сохранить, нажав кнопку \"Сохранить границы UI\", "
-- --     .. "и сбросить, нажав кнопку |cFFFF0000\"Сбросить границы UI\"|r.\n",
-- --   ENABLE_MODAL  = "Включить модальность окна",
-- --   SAVE_UI       = "Сохранить границы UI",
-- --   SAVE_UI_TEXT  = "Границы UI примера аддона сохранены!",
-- --   RESET_UI      = "Сбросить границы UI",
-- --   RESET_UI_TEXT = "Границы UI примера аддона сброшены!"
-- -- }

-- -- LOCALE = {
-- --   ADDON_NAME    = "Exemple d'Addon",
-- --   TITLE         = "Bonjour, ArcheRage !",
-- --   BODY          =
-- --     "Ceci est un exemple d'addon qui peut être activé depuis le menu du jeu. Lorsque la "
-- --     .. "fenêtre est masquée, elle est détruite et lorsqu'elle est affichée, elle est recréée. "
-- --     .. "En faisant glisser les bords, la fenêtre peut être redimensionnée et en faisant glisser "
-- --     .. "la barre de titre, la fenêtre peut être déplacée. La position et les dimensions de la "
-- --     .. "fenêtre peuvent être sauvegardées en cliquant sur le bouton \"Sauvegarder les limites UI\" "
-- --     .. "et réinitialisées en cliquant sur le bouton |cFFFF0000\"Réinitialiser les limites UI\"|r.\n",
-- --   ENABLE_MODAL  = "Activer le mode modal de la fenêtre",
-- --   SAVE_UI       = "Sauvegarder les limites UI",
-- --   SAVE_UI_TEXT  = "Limites UI de l'exemple d'addon sauvegardées !",
-- --   RESET_UI      = "Réinitialiser les limites UI",
-- --   RESET_UI_TEXT = "Limites UI de l'exemple d'addon réinitialisées !"
-- -- }

-- --------------------------------------------------------------------------------

-- local UIC_EXAMPLEADDON = 011803080518010705
-- local WINDOW           = {
--   WIDTH              = 660,
--   HEIGHT             = 250,
--   MIN_WIDTH          = 660,
--   MIN_HEIGHT         = 250,
--   MAX_WIDTH          = 1000,
--   MAX_HEIGHT         = 1000,
--   RESIZE_BORDER_SIZE = { LEFT = 10, TOP = 10, RIGHT = 10, BOTTOM = 10 },
--   MARGIN             = 20,
--   UIBOUND_NAME       = "ui_bound_exampleaddon",
-- }

-- function SaveUIBound(widget, key)
--   local bound               = {}
--   bound.x, bound.y          = widget:CorrectOffsetByScreen()
--   bound.width, bound.height = widget:GetExtent()

--   local uiBound             = {
--     bound            = bound,
--     screenResolution = {
--       x     = UIParent:GetScreenWidth(),
--       y     = UIParent:GetScreenHeight(),
--       scale = UIParent:GetUIScale(),
--     },
--   }

--   UIParent:SetUIBound(key, uiBound)
-- end

-- function CorrectWidgetScreenPos(widget)
--   if widget:CheckOutOfScreen() then
--     widget:RemoveAllAnchors()
--     local x, y = widget:CorrectOffsetByScreen()
--     widget:AddAnchor("TOPLEFT", "UIParent", x / UIParent:GetUIScale(), y / UIParent:GetUIScale())
--   end
-- end

-- -- Create the example addon window.
-- local function CreateExampleAddonWindow()
--   exampleAddonWindow = UIParent:CreateWidget("window", "exampleWindow", "UIParent")
--   exampleAddonWindow.modalEnabled = false
--   -- exampleAddonWindow:ApplyUIScale(true)
--   -- exampleAddonWindow:EnableHidingIsRemove(true)

--   local function SetDefaultUIBound()
--     exampleAddonWindow:RemoveAllAnchors()
--     exampleAddonWindow:AddAnchor("CENTER", "UIParent", 0, 0)
--     exampleAddonWindow:SetExtent(WINDOW.WIDTH, WINDOW.HEIGHT)
--     SaveUIBound(exampleAddonWindow, WINDOW.UIBOUND_NAME)
--     return UIParent:GetUIBound(WINDOW.UIBOUND_NAME)
--   end

--   local function ApplyUIBound(uiBound)
--     exampleAddonWindow:AddAnchor("TOPLEFT", "UIParent", uiBound.bound.x, uiBound.bound.y)
--     exampleAddonWindow:SetExtent(uiBound.bound.width, uiBound.bound.height)
--   end

--   local savedUIBound = UIParent:GetUIBound(WINDOW.UIBOUND_NAME)

--   if not savedUIBound then
--     savedUIBound = SetDefaultUIBound()
--   else
--     ApplyUIBound(savedUIBound)
--   end

--   exampleAddonWindow:SetSounds("bag")
--   exampleAddonWindow:SetCloseOnEscape(true)
--   exampleAddonWindow:SetAlphaAnimation(0, 1, .1, .1)
--   exampleAddonWindow:SetStartAnimation(true, true)
--   exampleAddonWindow:SetUILayer("normal")
--   exampleAddonWindow:SetResizingBorderSize(
--     WINDOW.RESIZE_BORDER_SIZE.LEFT,
--     WINDOW.RESIZE_BORDER_SIZE.TOP,
--     WINDOW.RESIZE_BORDER_SIZE.RIGHT,
--     WINDOW.RESIZE_BORDER_SIZE.BOTTOM
--   )
--   exampleAddonWindow:SetMinResizingExtent(WINDOW.MIN_WIDTH, WINDOW.MIN_HEIGHT)
--   exampleAddonWindow:SetMaxResizingExtent(WINDOW.MAX_WIDTH, WINDOW.MAX_HEIGHT)
--   exampleAddonWindow:UseResizing(true)

--   exampleAddonWindow:SetHandler("OnEndFadeOut", function ()
--     exampleAddonWindow = nil
--   end)

--   exampleAddonWindow:SetHandler("OnScale", function (self)
--     CorrectWidgetScreenPos(exampleAddonWindow)
--   end)

--   -- Create a background.
--   local background = exampleAddonWindow:CreateNinePartDrawable(TEXTURE_PATH.DEFAULT, "background")
--   ADDON:ChatLog(tostring(background:IsValidUIObject())) -- TODO:
--   background:AddAnchor("TOPLEFT", exampleAddonWindow, -5, -5)
--   background:AddAnchor("BOTTOMRIGHT", exampleAddonWindow, 5, 5)
--   background:SetTextureInfo("main_bg")
--   exampleAddonWindow.background = background
--   ADDON:ChatLog(tostring(background:IsValidUIObject())) -- TODO:

--   -- Create a title decoration.
--   local decoration = exampleAddonWindow:CreateDrawable(TEXTURE_PATH.DEFAULT, "main_bg_deco", "background")
--   decoration:AddAnchor("TOPLEFT", exampleAddonWindow, 0, -5)
--   decoration:AddAnchor("TOPRIGHT", exampleAddonWindow, 0, -5)
--   exampleAddonWindow.decoration = decoration

--   -- Create a title bar.
--   local titleBar = exampleAddonWindow:CreateChildWidget("window", "title", 0, true)
--   titleBar:AddAnchor("TOPLEFT", exampleAddonWindow, WINDOW.MARGIN / 2, WINDOW.MARGIN / 2)
--   titleBar:AddAnchor("TOPRIGHT", exampleAddonWindow, -WINDOW.MARGIN / 2, WINDOW.MARGIN / 2)
--   titleBar.titleStyle:SetAlign(ALIGN_CENTER)
--   titleBar.titleStyle:SetSnap(true)
--   titleBar.titleStyle:SetFont(FONT_PATH.SUB, FONT_SIZE.XLARGE)
--   titleBar.titleStyle:SetColorByKey("title")
--   titleBar:SetTitleText(LOCALE.TITLE)
--   titleBar:EnableDrag(true)

--   titleBar:SetHandler("OnDragStart", function ()
--     exampleAddonWindow:StartMoving()
--   end)

--   titleBar:SetHandler("OnDragStop", function ()
--     exampleAddonWindow:StopMovingOrSizing()
--     CorrectWidgetScreenPos(exampleAddonWindow)
--   end)

--   -- Create a close button.
--   local closeButton = titleBar:CreateChildWidget("button", "closebutton", 0, true)
--   titleBar:SetHeight(45)
--   closeButton:AddAnchor("TOPRIGHT", titleBar, 0, 0)
--   closeButton:SetStyle("btn_close_default")

--   closeButton:SetHandler("OnClick", function ()
--     exampleAddonWindow:Show(false)
--   end)

--   -- Create a body textbox.
--   local bodyTextbox = exampleAddonWindow:CreateChildWidget("textbox", "bodytextbox", 0, true)
--   bodyTextbox:AddAnchor("TOPLEFT", titleBar, "BOTTOMLEFT", 15, WINDOW.MARGIN / 2)
--   bodyTextbox:AddAnchor("TOPRIGHT", titleBar, "BOTTOMRIGHT", -15, WINDOW.MARGIN / 2)
--   bodyTextbox.style:SetFontSize(FONT_SIZE.LARGE)
--   bodyTextbox.style:SetAlign(ALIGN_TOP_LEFT)
--   bodyTextbox.style:SetColorByKey("default")
--   bodyTextbox.style:SetSnap(true)
--   bodyTextbox:SetLineSpace(TEXTBOX_LINE_SPACE.LARGE)
--   bodyTextbox:SetText(LOCALE.BODY)

--   --@TODO: havent found a way to limit the height of the textbox
--   -- bodyTextbox:SetExtent(100, 100)
--   -- bodyTextbox:SetAutoResize(true)
--   bodyTextbox:SetAutoResize(false)
--   bodyTextbox:SetHeight(100)

--   -- this works but i dont like it.
--   exampleAddonWindow:SetHandler("OnUpdate", function (self)
--     bodyTextbox:SetAutoResize(true)
--   end)

--   -- Create a example check button.
--   local checkButton = exampleAddonWindow:CreateChildWidget("checkbutton", "checkbutton", 0, true)
--   checkButton:AddAnchor("BOTTOMLEFT", exampleAddonWindow, WINDOW.MARGIN, -WINDOW.MARGIN)
--   checkButton:SetExtent(16, 16)

--   local checkButtonBackground = checkButton:CreateDrawable(TEXTURE_PATH.CHECK_BTN, "btn_df", "background")
--   checkButtonBackground:AddAnchor("CENTER", checkButton, 0, 0)

--   local checkButtonCheckedBackground = checkButton:CreateDrawable(TEXTURE_PATH.CHECK_BTN, "btn_chk_df", "background")
--   checkButtonCheckedBackground:AddAnchor("CENTER", checkButton, 0, 0)
--   checkButton:SetCheckedBackground(checkButtonCheckedBackground)

--   -- Create a textbox for the check button.
--   local textbox = checkButton:CreateChildWidget("textbox", "textbox", 0, true)
--   textbox:AddAnchor("LEFT", checkButton, "RIGHT", WINDOW.MARGIN / 2, 0)
--   textbox.style:SetColorByKey("default")
--   textbox:SetAutoResize(true)
--   textbox:SetAutoWordwrap(false)
--   textbox:SetText(LOCALE.ENABLE_MODAL)

--   checkButton:SetHandler("OnClick", function ()
--     exampleAddonWindow.modalEnabled = not exampleAddonWindow.modalEnabled
--     exampleAddonWindow:SetWindowModal(exampleAddonWindow.modalEnabled)
--   end)

--   -- Create a reset button.
--   local resetUIButton = exampleAddonWindow:CreateChildWidget("button", "resetuibutton", 0, true)
--   resetUIButton:SetStyle("text_default")
--   resetUIButton:SetNormalColor(.8, .4, .4, 1)
--   resetUIButton:SetTextColor(1, 1, 1, 1)
--   resetUIButton:SetHighlightColor(.8, .5, .5, 1)
--   resetUIButton:SetHighlightTextColor(1, 1, 1, 1)
--   resetUIButton:SetPushedColor(.8, .3, .3, 1)
--   resetUIButton:SetPushedTextColor(1, 1, 1, 1)
--   resetUIButton:SetText(LOCALE.RESET_UI)

--   resetUIButton:SetHandler("OnClick", function ()
--     SetDefaultUIBound()
--     ADDON:ChatLog(LOCALE.RESET_UI_TEXT)
--   end)

--   -- Create a save button.
--   local saveUIButton = exampleAddonWindow:CreateChildWidget("button", "saveuibutton", 0, true)
--   saveUIButton:AddAnchor("BOTTOMRIGHT", exampleAddonWindow, -WINDOW.MARGIN, -WINDOW.MARGIN)
--   saveUIButton:SetStyle("text_default")
--   saveUIButton:SetText(LOCALE.SAVE_UI)

--   resetUIButton:AddAnchor("RIGHT", saveUIButton, "LEFT", -WINDOW.MARGIN / 2, 0)
--   resetUIButton:SetDrawPriority(0)
--   saveUIButton:SetDrawPriority(0)

--   saveUIButton:SetHandler("OnClick", function ()
--     CorrectWidgetScreenPos(exampleAddonWindow)
--     SaveUIBound(exampleAddonWindow, WINDOW.UIBOUND_NAME)
--     ADDON:ChatLog(LOCALE.SAVE_UI_TEXT)
--   end)
-- end

-- local function ToggleExampleAddonWindow(show)
--   -- If the window should be shown.
--   if show == nil then
--     show = exampleAddonWindow == nil or not exampleAddonWindow:IsVisible()
--   end

--   -- If the window should be shown and doesn't exist, create it.
--   if show and exampleAddonWindow == nil then
--     CreateExampleAddonWindow()
--   end

--   -- If the window exists, Show or Hide it.
--   if exampleAddonWindow then
--     exampleAddonWindow:Show(show)
--   end
-- end

-- ADDON:RegisterContentTriggerFunc(UIC_EXAMPLEADDON, ToggleExampleAddonWindow)
-- ADDON:AddEscMenuButton(5, UIC_EXAMPLEADDON, "optimizer", LOCALE.ADDON_NAME)

-- ToggleExampleAddonWindow(true)

-- exampleAddonWindow:SetMoveAnimation("top", 100, 3, 1)
-- exampleAddonWindow:SetHandler("OnUpdate", function (self, frameTime)
--   exampleAddonWindow:TriggerMoveAnimation(true)
-- end)

-- ADDON:ChatLog(tostring(exampleAddonWindow:IsValidUIObject()))

-- ADDON:ShowContent(UIC_STORE, true)

--------------------------------------------------------------------------------

-- local file = open("temp/example.txt", "w")
-- file:write(dump({ exampleAddonWindow }))
-- file:close()

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Window)
-- ADDON:ImportObject(OBJECT.ColorDrawable)

-- local offset = 0

-- local windowOne = widgetassert(UIParent:CreateWidget("window", "windowOne", "UIParent"))
-- windowOne:SetExtent(100, 100)
-- windowOne:AddAnchor("TOPLEFT", "UIParent", offset, 100)
-- windowOne.background = windowOne:CreateColorDrawable(1, 0, 0, 1, "background")
-- windowOne.background:AddAnchor("TOPLEFT", windowOne, 0, 0)
-- windowOne.background:AddAnchor("BOTTOMRIGHT", windowOne, 0, 0)
-- windowOne:SetUILayer("background")
-- windowOne:Show(true)
-- offset = offset + 50

-- local windowTwo = widgetassert(UIParent:CreateWidget("window", "windowOne", "UIParent"))
-- windowTwo:SetExtent(100, 100)
-- windowTwo:AddAnchor("TOPLEFT", "UIParent", offset, 100)
-- windowTwo.background = windowTwo:CreateColorDrawable(0, 1, 0, 1, "background")
-- windowTwo.background:AddAnchor("TOPLEFT", windowTwo, 0, 0)
-- windowTwo.background:AddAnchor("BOTTOMRIGHT", windowTwo, 0, 0)
-- windowTwo:SetUILayer("game")
-- windowTwo:Show(true)
-- offset = offset + 50

-- local windowThree = widgetassert(UIParent:CreateWidget("window", "windowOne", "UIParent"))
-- windowThree:SetExtent(100, 100)
-- windowThree:AddAnchor("TOPLEFT", "UIParent", offset, 100)
-- windowThree.background = windowThree:CreateColorDrawable(0, 0, 1, 1, "background")
-- windowThree.background:AddAnchor("TOPLEFT", windowThree, 0, 0)
-- windowThree.background:AddAnchor("BOTTOMRIGHT", windowThree, 0, 0)
-- windowThree:SetUILayer("normal")
-- windowThree:Show(true)
-- offset = offset + 50

-- local windowFour = widgetassert(UIParent:CreateWidget("window", "windowOne", "UIParent"))
-- windowFour:SetExtent(100, 100)
-- windowFour:AddAnchor("TOPLEFT", "UIParent", offset, 100)
-- windowFour.background = windowFour:CreateColorDrawable(1, 1, 0, 1, "background")
-- windowFour.background:AddAnchor("TOPLEFT", windowFour, 0, 0)
-- windowFour.background:AddAnchor("BOTTOMRIGHT", windowFour, 0, 0)
-- windowFour:SetUILayer("hud")
-- windowFour:Show(true)
-- offset = offset + 50

-- local windowFive = widgetassert(UIParent:CreateWidget("window", "windowOne", "UIParent"))
-- windowFive:SetExtent(100, 100)
-- windowFive:AddAnchor("TOPLEFT", "UIParent", offset, 100)
-- windowFive.background = windowFive:CreateColorDrawable(0, 1, 1, 1, "background")
-- windowFive.background:AddAnchor("TOPLEFT", windowFive, 0, 0)
-- windowFive.background:AddAnchor("BOTTOMRIGHT", windowFive, 0, 0)
-- windowFive:SetUILayer("questdirecting")
-- windowFive:Show(true)
-- offset = offset + 50

-- local windowSix = widgetassert(UIParent:CreateWidget("window", "windowOne", "UIParent"))
-- windowSix:SetExtent(100, 100)
-- windowSix:AddAnchor("TOPLEFT", "UIParent", offset, 100)
-- windowSix.background = windowSix:CreateColorDrawable(1, 0, 1, 1, "background")
-- windowSix.background:AddAnchor("TOPLEFT", windowSix, 0, 0)
-- windowSix.background:AddAnchor("BOTTOMRIGHT", windowSix, 0, 0)
-- windowSix:SetUILayer("dialog")
-- windowSix:Show(true)
-- offset = offset + 50

-- local windowSeven = widgetassert(UIParent:CreateWidget("window", "windowOne", "UIParent"))
-- windowSeven:SetExtent(100, 100)
-- windowSeven:AddAnchor("TOPLEFT", "UIParent", offset, 100)
-- windowSeven.background = windowSeven:CreateColorDrawable(1, .65, 0, 1, "background")
-- windowSeven.background:AddAnchor("TOPLEFT", windowSeven, 0, 0)
-- windowSeven.background:AddAnchor("BOTTOMRIGHT", windowSeven, 0, 0)
-- windowSeven:SetUILayer("tooltip")
-- windowSeven:Show(true)
-- offset = offset + 50

-- local windowEight = widgetassert(UIParent:CreateWidget("window", "windowOne", "UIParent"))
-- windowEight:SetExtent(100, 100)
-- windowEight:AddAnchor("TOPLEFT", "UIParent", offset, 100)
-- windowEight.background = windowEight:CreateColorDrawable(.5, 0, .5, 1, "background")
-- windowEight.background:AddAnchor("TOPLEFT", windowEight, 0, 0)
-- windowEight.background:AddAnchor("BOTTOMRIGHT", windowEight, 0, 0)
-- windowEight:SetUILayer("system")
-- windowEight:Show(true)
-- offset = offset + 50

--------------------------------------------------------------------------------

-- function GetAdjustCamera(race, gender)
--   local height = {
--     nuian = {
--       male = {
--         height = 0.13,
--         zoom = -0.6,
--         center = -0.4
--       },
--       female = {
--         height = 0.2,
--         zoom = -0.5,
--         center = -0.35
--       }
--     },
--     elf = {
--       male = {
--         height = 0.1,
--         zoom = -0.7,
--         center = -0.5
--       },
--       female = {
--         height = 0.2,
--         zoom = -0.7,
--         center = -0.7
--       }
--     },
--     hariharan = {
--       male = {
--         height = 0.15,
--         zoom = -0.5,
--         center = -0.4
--       },
--       female = {
--         height = 0.15,
--         zoom = -0.5,
--         center = -0.32
--       }
--     },
--     ferre = {
--       male = {
--         height = 0.13,
--         zoom = -0.8,
--         center = -0.55
--       },
--       female = {
--         height = 0.1,
--         zoom = -0.5,
--         center = -0.35
--       }
--     },
--     dwarf = {
--       male = {
--         height = 0.2,
--         zoom = -0.5,
--         center = -0.35
--       },
--       female = {
--         height = 0.25,
--         zoom = -0.5,
--         center = -0.4
--       }
--     },
--     warborn = {
--       male = {
--         height = 0,
--         zoom = 0.15,
--         center = 0.22
--       },
--       female = {
--         height = 0.15,
--         zoom = -0.5,
--         center = -0.35
--       }
--     },
--     daru = {
--       male = {
--         height = 0.2,
--         zoom = -0.5,
--         center = -0.35
--       },
--       female = {
--         height = 0.25,
--         zoom = -0.5,
--         center = -0.4
--       }
--     }
--   }
--   if height[race] == nil then
--     return height.nuian[gender]
--   else
--     return height[race][gender]
--   end
-- end

-- local RACE = {
--   "nuian",
--   "fairy",
--   "dwarf",
--   "elf",
--   "hariharan",
--   "ferre",
--   "returned",
--   "warborn",
--   "daru",
--   [0] = "daru"
-- }

-- local GENDER = {
--   "male",
--   "female",
--   [0] = "male"
-- }

-- ADDON:ImportObject(OBJECT.ModelView)
-- ADDON:ImportAPI(API.X2Equipment)
-- ADDON:ImportAPI(API.X2CustomizingUnit)
-- ADDON:ImportAPI(API.X2Customizer)

-- local modelView = UIParent:CreateWidget("modelview", "model", "UIParent")
-- -- modelView:AddAnchor("CENTER", "UIParent", 0, 0)
-- modelView:SetExtent(512, 512)
-- modelView:SetModelViewBackground(TEXTURE_PATH.INGAME_SHOP, "character_bg")
-- modelView:SetTextureSize(512, 512)
-- modelView:SetModelViewExtent(512, 512)
-- modelView:SetModelViewCoords(0, 0, 512, 512)
-- modelView:SetDisableColorGrading(true)


-- modelView:InitBeautyShop()
-- -- modelView:AdjustCameraPos(0, 0, 0)
-- -- ADDON:ChatLog(tostring(modelView:Init("target", true)))
-- -- modelView:SetIngameShopMode(true)
-- ADDON:ChatLog(tostring(modelView:GetRace()))
-- ADDON:ChatLog(tostring(modelView:GetGender()))
-- ADDON:ChatLog(RACE[modelView:GetRace()])
-- ADDON:ChatLog(GENDER[modelView:GetGender()])
-- local adjust = GetAdjustCamera(RACE[modelView:GetRace()], GENDER[modelView:GetGender()])
-- ADDON:ChatLogTable(adjust)
-- modelView:AdjustCameraPos(0, 0, 0)
-- -- modelView:AdjustCameraPos(adjust.center, adjust.zoom, adjust.height)
-- modelView:ZoomInOutBeautyShop(2)
-- -- modelView:StopAnimation()
-- -- modelView:InitCustomizerControl()
-- -- modelView:SetBeautyShopMode(true)
-- modelView:SetCustomizingHair(40)
-- -- modelView:ResetEquips()
-- -- modelView:SetCustomizingHair(4)
-- modelView:SetCustomizingHorn(3)
-- modelView:SetCustomizingHornColor(2)
-- -- modelView:AdjustCameraPosToModel(1, 1)
-- modelView:ToggleCosplayEquipped(false)
-- modelView:UnequipItemSlot(ES_HEAD)
-- -- modelView:InitCustomizerControl(false)
-- -- modelView:ApplyPresetParam(2, 6)
-- modelView:ApplyModel()
-- modelView:PlayAnimation("sled_ba_relaxed_idle", true)
-- -- modelView:SetFov(10)
-- modelView:Show(true)

-- ADDON:ChatLogTable(modelView:GetScarStatus())
-- -- ADDON:ChatLog(type(modelView:GetCustomHair()))
-- -- modelView:SetFreeze(true)
-- ADDON:ChatLog(tostring(modelView:IsFrozen()))


-- modelView:SetHandler("OnKeyDown", function (self, key)
--   ADDON:ChatLog("key")
-- end)

-- modelView:EnableKeyboard(false)

-- local file = open("temp/example.txt", "w")
-- file:write(dump({
--   GetCustomBodyNormal          = { modelView:GetCustomBodyNormal() },
--   GetCustomDeco                = { modelView:GetCustomDeco() },
--   GetCustomEyebrow             = { modelView:GetCustomEyebrow() },
--   -- GetCustomEyebrowColor        = { modelView:GetCustomEyebrowColor() },
--   GetCustomFaceDiffuse         = { modelView:GetCustomFaceDiffuse() },
--   GetCustomFaceNormal          = { modelView:GetCustomFaceNormal() },
--   GetCustomHair                = { modelView:GetCustomHair() },
--   -- GetCustomHairColor           = { modelView:GetCustomHairColor() },
--   GetCustomHorn                = { modelView:GetCustomHorn() },
--   -- GetCustomHornColor           = { modelView:GetCustomHornColor() },
--   -- GetCustomizingDecoColor      = { modelView:GetCustomizingDecoColor() },
--   -- GetCustomizingOddEyeUsable   = { modelView:GetCustomizingOddEyeUsable() },
--   -- GetCustomLipColor            = { modelView:GetCustomLipColor() },
--   GetCustomMakeUp              = { modelView:GetCustomMakeUp() },
--   GetCustomPreviewCloth        = { modelView:GetCustomPreviewCloth() },
--   GetCustomPupil_PR_BOTH       = { modelView:GetCustomPupil(PR_BOTH) },
--   GetCustomPupil_PR_LEFT       = { modelView:GetCustomPupil(PR_LEFT) },
--   GetCustomPupil_PR_RIGHT      = { modelView:GetCustomPupil(PR_RIGHT) },
--   -- GetCustomPupilColor_PR_BOTH  = { modelView:GetCustomPupilColor(PR_BOTH) },
--   -- GetCustomPupilColor_PR_LEFT  = { modelView:GetCustomPupilColor(PR_LEFT) },
--   -- GetCustomPupilColor_PR_RIGHT = { modelView:GetCustomPupilColor(PR_RIGHT) },
--   GetCustomScar                = { modelView:GetCustomScar() },
--   GetCustomSkinColor           = { modelView:GetCustomSkinColor() },
--   GetCustomTail                = { modelView:GetCustomTail() },
--   GetCustomTattoo              = { modelView:GetCustomTattoo() },
--   GetFaceTargetCurValue        = { modelView:GetFaceTargetCurValue(0) },
--   -- GetGender                    = { modelView:GetGender() },
--   -- GetRace                      = { modelView:GetRace() },
--   -- GetRotation                  = { modelView:GetRotation() },
--   GetScarStatus                = { modelView:GetScarStatus() },
--   GetSelectedPresetIndex       = { modelView:GetSelectedPresetIndex(0) },
--   -- GetTwoToneHairStatus         = { modelView:GetTwoToneHairStatus() },
-- }))
-- file:close()

-- ADDON:ImportObject(OBJECT.Button)

-- local hornColor = -1
-- local btn = UIParent:CreateWidget("button", "asfd", "UIParent")
-- btn:AddAnchor("BOTTOMLEFT", modelView, 0, 0)
-- btn:SetStyle("text_default")
-- btn:Show(true)

-- btn:SetHandler("OnClick", function (self, mouseButton, doubleClick, keyModifier)
--   -- modelView:ResetEquips()
--   -- hornColor = hornColor + 1
--   -- btn:SetText(tostring(hornColor))
--   -- modelView:SetCustomizingHornColor(hornColor)
--   ADDON:ChatLog(tostring(modelView:HasDiffWithClientUnit()))
-- end)

-- modelView:SetHandler("OnModelChanged", function (self)
--   ADDON:ChatLog(tostring(modelView:HasDiffWithClientUnit()))
-- end)

-- ADDON:ImportAPI(API.X2Locale)
-- ADDON:ChatLog("------")
--- @ACHIEVEMENT_NAME
--- @AREA_SPHERE
--- @CONTENT_CONFIG
--- @DAY
--- @DOODAD_NAME
--- @ENCHANT_CONSUME_LP
--- @EXPEDITION_LEADER_NAME_BY_ZONEGROUP
--- @EXPEDITION_NAME_BY_ZONEGROUP
--- @HOUR
--- @ITEM_NAME
--- @MINUTE
--- @MONTH
--- @NPC_GROUP_NAME
--- @NPC_NAME
--- @PC_CLASS
--- @PC_GENDER
--- @PC_NAME
--- @PC_RACE
--- @QUEST_NAME
--- @SECOND
--- @SOURCE_NAME
--- @SPECIFY_TARGET_NAME
--- @SUB_ZONE_NAME
--- @TARGET_NAME
--- @TARGET_SLAVE_REPAIR_COST
--- @YEAR
--- @ZONE_NAME
-- ADDON:ChatLog(X2Locale:TextFormating(" ITEM_NAME @ITEM_NAME(4052) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" ZONE_NAME @ZONE_NAME(311) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" SUB_ZONE_NAME @SUB_ZONE_NAME(220), ZONE_NAME @ZONE_NAME(34) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" TARGET_NAME @TARGET_NAME(0) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" TARGET_NAME @TARGET_NAME(1090f) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" |nn;@SPECIFY_TARGET_NAME(0)|r "))
-- ADDON:ChatLog(X2Locale:TextFormating(" @PC_NAME(ID) is a @PC_RACE(0) @PC_GENDER(0)"))
-- ADDON:ChatLog(X2Locale:TextFormating("@DAY(10)"))
-- ADDON:ChatLog(X2Locale:TextFormating("@ENCHANT_CONSUME_LP(1000)"))
-- ADDON:ChatLog(X2Locale:TextFormating("@EXPEDITION_NAME_BY_ZONEGROUP(1000)"))
-- ADDON:ChatLog(X2Locale:TextFormating("@HOUR(10)"))
-- ADDON:ChatLog(X2Locale:TextFormating("@MINUTE(10)"))
-- ADDON:ChatLog(X2Locale:TextFormating("@MONTH(10)"))
-- ADDON:ChatLog(X2Locale:TextFormating("@SECOND(10)"))
-- ADDON:ChatLog(X2Locale:TextFormating("@YEAR(2014)"))
-- ADDON:ChatLog(X2Locale:TextFormating("@YEAR @MONTH @DAY"))
-- ADDON:ChatLog(X2Locale:TextFormating("@TARGET_SLAVE_REPAIR_COST(10) |w1;"))
-- ADDON:ChatLog(X2Locale:TextFormating(" SPECIFY_TARGET_NAME @SPECIFY_TARGET_NAME(1090f) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" SOURCE_NAME @SOURCE_NAME(0) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" SOURCE_NAME @SOURCE_NAME(1090f) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" QUEST_NAME @QUEST_NAME(5442) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" PC_RACE @PC_RACE(0) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" PC_RACE @PC_RACE(1090f) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" PC_NAME @PC_NAME(0) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" PC_NAME @PC_NAME(1090f) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" NPC_NAME @NPC_NAME(3362) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" PC_CLASS @PC_CLASS(0) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" PC_CLASS @PC_CLASS(1090f) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" NPC_GROUP_NAME @NPC_GROUP_NAME(265) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" ITEM_NAME @ITEM_NAME(18865) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" EXPEDITION_LEADER_NAME_BY_ZONEGROUP @EXPEDITION_LEADER_NAME_BY_ZONEGROUP(33) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" DOODAD_NAME @DOODAD_NAME(6049) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" CONTENT_CONFIG @CONTENT_CONFIG(87) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" AREA_SPHERE @AREA_SPHERE(1335) "))
-- ADDON:ChatLog(X2Locale:TextFormating(" ACHIEVEMENT_NAME @ACHIEVEMENT_NAME(1816) "))
-- ADDON:ChatLog("------")

-- ADDON:ImportAPI(API.X2Unit)
-- ADDON:ChatLog(X2Unit:GetUnitId("target"))
-- ADDON:ImportAPI(API.X2Resident)
-- ADDON:ChatLog(tostring(X2Resident:FilterHousingTradeList(HOUSING_LIST_FILTER_ALL, "")))

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.IconDrawable)

-- ADDON:ImportObject(OBJECT.CooldownInventoryButton)
-- local ccb = UIParent:CreateWidget("cooldowninventorybutton", "asdf", "UIParent")
-- -- ADDON:ImportObject(OBJECT.CooldownButton)
-- -- local ccb = UIParent:CreateWidget("cooldownbutton", "asdf", "UIParent")
-- ccb:SetExtent(100, 100)

-- local drawable = ccb:CreateIconDrawable("background")
-- drawable:SetExtent(28, 28)
-- drawable:AddAnchor("CENTER", ccb, 0, 0)
-- ccb:SetNormalBackground(drawable)
-- ccb:SetDisabledBackground(drawable)
-- ccb:SetHighlightBackground(drawable)
-- ccb:SetPushedBackground(drawable)

-- -- drawable:AddTexture("ui/icon/charge_hero01.dds")

-- -- ccb:SetBagItemSlot(1)
-- -- ccb:SetBankItemSlot(1)
-- -- ccb:SetCofferItemSlot(1)
-- -- ccb:SetGuildBankItemSlot(1)

-- ccb:SetCoolDownMask("ui/cooldown/cooldown_mask.dds", "mask", "black")
-- ccb:Show(true)
-- ccb:Enable(true)
-- -- ccb:SetCoolDown(50, 100)

-- local file = open("temp/example.txt", "w")
-- file:write(dump({ ccb }))
-- file:close()

--------------------------------------------------------------------------------

-- ADDON:ImportAPI(API.X2Hotkey)
-- ADDON:ImportObject(OBJECT.Button)

-- local btn = UIParent:CreateWidget("button", "test", "UIParent")
-- btn:AddAnchor("CENTER", "UIParent", 0, 0)
-- btn:SetStyle("text_default")
-- btn:SetText("Save")
-- btn:Show(true)

-- btn:SetHandler("OnClick", function (self, mouseButton, doubleClick, keyModifier)
--   X2Hotkey:BindingToOption()
--   X2Hotkey:SetOptionBindingWithIndex("front_camera", "{", 1, 0)
--   X2Hotkey:OptionToBinding()
-- end)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.ChatWindow)
-- ADDON:ImportObject(OBJECT.Textbox)
-- ADDON:ImportObject(OBJECT.Drawable)
-- ADDON:ImportObject(OBJECT.ImageDrawable)
-- ADDON:ImportObject(OBJECT.IconDrawable)
-- ADDON:ImportObject(OBJECT.NinePartDrawable)
-- ADDON:ImportObject(OBJECT.ThreePartDrawable)
-- ADDON:ImportObject(OBJECT.ThreeColorDrawable)

-- local chat = UIParent:CreateWidget("chatwindow", "test", "UIParent")
-- chat:SetExtent(500, 500)
-- chat:Show(true)
-- chat:SetChatWindowId(1)
-- chat:AllowTabSwitch(false)
-- chat:UseAutoResizingTabButtonMode(false)
-- chat:SetTabButtonAlpha(.1, .1)
-- local textbox = UIParent:CreateWidget("textbox", "exampleTextbox", "UIParent")
-- textbox:SetText("Test")
-- chat:AddTab("Test", textbox)
-- local textbox = UIParent:CreateWidget("textbox", "exampleTextbox", "UIParent")
-- textbox:SetText("Test")
-- chat:AddTab("Testasdf", textbox)
-- chat:UseAddTabButton(true)
-- chat:UseSlidingButton(false)

-- local file = open("temp/example.txt", "w")
-- file:write(dump({ chat }))
-- file:close()

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Window)
-- ADDON:ImportObject(OBJECT.Textbox)
-- ADDON:ImportObject(OBJECT.Listbox)
-- ADDON:ImportObject(OBJECT.ImageDrawable)
-- ADDON:ImportObject(OBJECT.ColorDrawable)
-- ADDON:ImportObject(OBJECT.IconDrawable)
-- ADDON:ImportObject(OBJECT.Drawable)
-- ADDON:ImportObject(OBJECT.NinePartDrawable)
-- ADDON:ImportObject(OBJECT.Button)
-- ADDON:ImportObject(OBJECT.GameTooltip)
-- ADDON:ImportObject(OBJECT.UnitframeTooltip)

-- local list = UIParent:CreateWidget("listbox", "test", "UIParent")
-- list:SetExtent(500, 100)
-- local bg = list:CreateColorDrawable(1, 0, 1, .1, "background")
-- bg:AddAnchor("TOPLEFT", list, 0, 0)
-- bg:AddAnchor("BOTTOMRIGHT", list, 0, 0)
-- local line = list:CreateSeparatorImageDrawable(TEXTURE_PATH.DEFAULT, "background")
-- line:SetTextureInfo("line_01", "default")
-- line:SetWidth(list:GetWidth() - 20)
-- list:DisableDrawables("background")
-- list:DisableDrawablesWithChildren("background")
-- local opened = list:CreateOpenedImageDrawable("ui/button/grid.dds")
-- opened:SetTextureInfo("opened_normal")
-- local closed = list:CreateClosedImageDrawable("ui/button/grid.dds")
-- closed:SetTextureInfo("closed_normal")
-- list:SetSelectedItemTextColor(1, 0, 0, 1)
-- list:SetDisableItemTextColor(1, 0, 0, 1)
-- list:SetDefaultItemTextColor(1, 0, 0, 1)
-- list:SetSelectedItemTextColor(1, 0, 0, 1)

-- list:EnableScroll(true)
-- list:SetTreeTypeIndent(true, 20, 0)

-- local a = list:SetItemTrees({
--   {
--     text = "Hello",
--     value = 30,
--     color = UIParent:GetFontColor("blue"),
--     defaultColor = UIParent:GetFontColor("blue"),
--     selectColor = UIParent:GetFontColor("blue"),
--     overColor = UIParent:GetFontColor("blue"),
--     disableColor = UIParent:GetFontColor("blue"),
--     useColor = true,
--     child = {
--       {
--         text = "abc",
--         value = 4123,
--         subtext = "Hello, world",
--         subColor = UIParent:GetFontColor("blue"),
--         child = {
--           {
--             text = "abc",
--             value = 4123,
--             subtext = "Hello, world",
--             subColor = UIParent:GetFontColor("blue"),
--           },
--         }
--       },
--       {
--         text = "def",
--         value = 41,
--       },
--     },
--     subtext = "Hello, world",
--     subColor = UIParent:GetFontColor("blue"),
--     iconPath = TEXTURE_PATH.MONEY_WINDOW,
--     infoKey = "successor_16",
--     tailIconPath = "ui/nation/icon_peace.dds",
--     tailIconCoord = "icon_blue",
--     enable = true,
--     opened = true
--   },
--   {
--     text = "test",
--     -- useColor = true,
--     value = 20,
--   }
-- })

-- list:Show(true)
-- list:UseChildStyle(true)
-- list.itemStyle:SetFontSize(FONT_SIZE.XXLARGE)
-- list.itemStyleSub:SetFontSize(FONT_SIZE.XXLARGE)
-- list.childStyle:SetFontSize(FONT_SIZE.XXLARGE)
-- list.childStyleSub:SetFontSize(FONT_SIZE.XXLARGE)



-- list:SetListItemStateTexture(TEXTURE_PATH.DEFAULT)
-- list:SetListItemStateTextureInset(-15, -2, -10, -1)
-- list:SetDefaultItemCoord(0, 0, 0, 0)
-- list:SetItemOveredTextureInfo("label_bg", "listbox")
-- list:SetItemSelectedTextureInfo("label_bg", "listbox")

-- list:ShowTooltip(true)

-- list:SetHandler("OnSelChanged", function (self, selectedIndex, doubleClick)
--   ADDON:ChatLog("OnSelChanged " .. tostring(selectedIndex) .. " " .. tostring(doubleClick))
--   ADDON:ChatLogTable(list:GetViewItemsInfo(), { indent_type = "_" })
-- end)

-- list:SetHandler("OnTooltip", function (self, ...)
--   -- ADDON:ChatLog("OnTooltip")
--   -- ADDON:ChatLogTable({ ... })
-- end)

-- list:SetHandler("OnListboxToggled", function (self)
--   ADDON:ChatLog("OnListboxToggled")
-- end)

-- local file = open("temp/example.txt", "w")
-- file:write(dump({ list }))
-- file:close()

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.ListCtrl)

-- local list = UIParent:CreateWidget("listctrl", "test", "UIParent")
-- list:SetExtent(500, 500)
-- list:InsertColumn(100, LCCIT_TEXTBOX)
-- list:InsertColumn(100, LCCIT_BUTTON)
-- list:InsertColumn(100, LCCIT_WINDOW)
-- list:InsertColumn(100, LCCIT_STRING)
-- list:InsertRows(3, true)
-- -- list:InsertData(0, 1, "head")
-- list:InsertData(1, 1, "a")
-- list:InsertData(1, 2, "b")
-- list:InsertData(1, 3, "c")
-- list:InsertData(1, 4, "d")
-- list:InsertData(2, 1, "a")
-- list:InsertData(2, 2, "b")
-- list:InsertData(2, 3, "c")
-- list:InsertData(2, 4, "d")
-- list:SetHeaderColumnHeight(200)
-- list:Show(true)

-- list.items[2].subItems[2]:SetStyle("text_default")

-- ADDON:ChatLog(list.items[1].subItems[1]:GetObjectType())
-- ADDON:ChatLog(list.items[1].subItems[2]:GetObjectType())
-- ADDON:ChatLog(list.items[1].subItems[3]:GetObjectType())
-- ADDON:ChatLog(type(list.items[1].subItems[4]))

-- ADDON:ChatLog(list.column[1]:GetObjectType())
-- ADDON:ChatLog(list.column[2]:GetObjectType())
-- ADDON:ChatLog(list.column[3]:GetObjectType())
-- ADDON:ChatLog(list.column[4]:GetObjectType())

-- local file = open("temp/example.txt", "w")
-- file:write(dump({ list }))
-- file:close()

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.DamageDisplay)
-- ADDON:ImportObject(OBJECT.ColorDrawable)
-- ADDON:ImportObject(OBJECT.Button)
-- ADDON:ImportAPI(API.X2Unit)

-- local display = UIParent:CreateWidget("damagedisplay", "test", "UIParent")
-- display:SetText(" ")
-- display:AddAnchor("BOTTOMRIGHT", "UIParent", "TOPLEFT", 0, 0)
-- display:SetExtent(50, 50)
-- display:Show(true)

-- local bg = display:CreateColorDrawable(1, 0, 0, .3, "background")
-- bg:AddAnchor("TOPLEFT", display, 0, 0)
-- bg:AddAnchor("BOTTOMRIGHT", display, 0, 0)
-- display:SetPositionCalculationType(PCT_DEFAULT)

-- -- display:SetInset(5, 10, 15, 20)
-- -- display:SetInitPos(0, 0)
-- -- display:SetInitPos(UIParent:GetScreenWidth() / 2, UIParent:GetScreenHeight() / 2)

-- display:SetAnimFrameInfo({
--   {
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
--     alpha = 1,
--     scale = .55,
--   },
-- })

-- -- display:Animation(true)


-- UIParent:SetEventHandler("TARGET_CHANGED", function (stringId, targetType)
--   if targetType then
--     display:SetUnitId(X2Unit:GetUnitId("player"), X2Unit:GetUnitId("target"))
--   end
-- end)

-- -- local btn = UIParent:CreateWidget("button", "asdf", "UIParent")
-- -- btn:SetStyle("text_default")
-- -- btn:Show(true)

-- -- btn:SetHandler("OnClick", function (self, mouseButton, doubleClick, keyModifier)
-- --   ADDON:ChatLogTable({ display:GetActualDrawn() })
-- -- end)
-- -- ADDON:ChatLogTable({ display:GetInset() })

-- --------------------------------------------------------------------------------

-- ADDON:ImportAPI(API.X2Locale)

-- local greeting = X2Locale:TextFormating("Hello, %s! You have {2} new messages.", "Alice", 5)
-- -- Result: "Hello, Alice! You have 5 new messages."
-- ADDON:ChatLog(greeting)

-- ADDON:ChatLog(X2Locale:TextFormating("Hello, %s!"))              -- string.format style
-- ADDON:ChatLog(X2Locale:TextFormating("Hello, %d!"))              -- number
-- ADDON:ChatLog(X2Locale:TextFormating("Hello, $1!"))              -- $1 style
-- ADDON:ChatLog(X2Locale:TextFormating("Hello, |cffff0000{1}|r!")) -- rich text + {1}
-- ADDON:ChatLog(X2Locale:TextFormating("Hello, [player]!"))        -- [tag] style
-- ADDON:ChatLog(X2Locale:TextFormating("Hello, <name>!"))          -- <tag> style
-- ADDON:ChatLog(X2Locale:TextFormating("Hello, @1!"))              -- @1 style

ADDON:ImportAPI(API.X2Option)

-- /get cam_target

-- X2Option:CreateOptionItemString("option_use_shadow", "0")
-- ADDON:ChatLog(tostring(X2Option:CreateOptionItemFloat("MyCustomOptionCharacter", 1, OISLT_CHARACTER)))
-- ADDON:ChatLog(tostring(X2Option:CreateOptionItemFloat("MyCustomOptionCharacterMode", 2, OISLT_CHARACTER_MODE)))
-- ADDON:ChatLog(tostring(X2Option:CreateOptionItemFloat("MyCustomOptionSystem", 3, OISLT_SYSTEM)))
-- X2Option:SetItemFloatValueByName("MyCustomOption", 3434)
-- X2Option:Save()
-- X2Option:SetItemFloatValueByName("ShowMyCosplay", 0)
-- ADDON:ChatLog(tostring(X2Option:GetOptionItemValueByName("ShowMyCosplay")))
-- ADDON:ChatLog(tostring(X2Option:GetOptionItemValueByName("option_use_shadow")))


-- ADDON:ChatLog("MyCustomOption start")
-- local test = X2Option:GetOptionItemValueByName("MyCustomOption")

-- if test ~= nil then
--   ADDON:ChatLog(tostring(test))
-- end

-- local test = X2Option:GetOptionItemValueByName("MyCustomOptionCharacter")

-- if test ~= nil then
--   ADDON:ChatLog(tostring(test))
-- end

-- local test = X2Option:GetOptionItemValueByName("MyCustomOptionCharacterMode")

-- if test ~= nil then
--   ADDON:ChatLog(tostring(test))
-- end

-- local test = X2Option:GetOptionItemValueByName("MyCustomOptionSystem")

-- if test ~= nil then
--   ADDON:ChatLog(tostring(test))
-- end

-- local test = X2Option:GetOptionItemValueByName("ShowMyBackPackWithCosplay")

-- if test ~= nil then
--   ADDON:ChatLog(tostring(test))
-- end

-- ADDON:ChatLog("MyCustomOption end")

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Textbox)
-- ADDON:ImportObject(OBJECT.Editbox)
-- ADDON:ImportObject(OBJECT.TextStyle)

-- local text = UIParent:CreateWidget("textbox", "test", "UIParent")
-- text:AddAnchor("CENTER", 0, 0)
-- text:SetExtent(400, 400)
-- -- text:Show(true)

-- local edit = UIParent:CreateWidget("editbox", "asd", "UIParent")
-- -- edit:SetStyle("text_default")
-- edit:SetExtent(100, 100)
-- edit:Show(true)

-- |nb; test |r
-- |nc; test |r
-- |nd; test |r
-- |nf; test |r
-- |ng; test |r
-- |nh; test |r
-- |ni; test |r
-- |nj; test |r
-- |nn; test |r
-- |nr; test |r
-- |ns; test |r
-- |nt; test |r
-- |nu; test |r
-- |ny; test |r
-- |o;

-- text:SetText("Used a @ITEM_NAME(52298)|1.")
-- text:SetText("|nn;@SPECIFY_TARGET_NAME(0)|r")
-- text:SetText("|nc;+5%|r")
-- text:SetText("|ni;Regrade Charms|r")
-- text:SetText("|nd;Gweonid Forest|r ")
-- text:SetText("|nr;Haranyan Continent Only|r ")
-- text:SetText("|nn;$1 Faction Competition|r ")
-- text:SetText(" |ng;Fairy Request|r")
-- text:SetText(" |nb;$1|r")
-- text:SetText(" |ny;The probabilities for this box is adjusted whenever you reopen it.|r")
-- text:SetText(" |v;")
-- text:SetText(" |nh;test|r")
-- text:SetText(" |nf;test|r")
-- text:SetText(" |w1;")
-- text.style:SetAlign(ALIGN_TOP_LEFT)
-- text:SetText(" |bu-;test|r|bu-;test|r- test")
-- text:SetText(" |bu◆;test|r|bu◆;test|r◆test")

-- text:SetText("|bm0;") -- PRICE_TYPE_BM_MILEAGE Loyalty
-- text:SetText("|d0;") -- DisHonorPoint crime
-- text:SetText("|cFFFF0000test|r")
-- text:SetText("|e0; |e;") -- heir_icon
-- text:SetText("|E0; |E;") -- disable_heir_icon
-- text:SetText("|h0;") -- CURRENCY_HONOR_POINT HonorPoint
-- text:SetText("|j0;") -- PRICE_TYPE_AA_CASH
-- text:SetText("|l0;") -- CURRENCY_LIVING_POINT Vocation Badge
-- text:SetText("|m0;") -- 1 00 00 CURRENCY_GOLD CURRENCY_GOLD_WITH_AA_POINT PRICE_TYPE_GOLD
-- text:SetText("|p0;") -- 1 00 00 CURRENCY_AA_POINT PRICE_TYPE_AA_POINT
-- text:SetText("|sa0; |sa;") -- ISMI_ARCHE_PASS_COIN
-- text:SetText("|sd0; |sd;") -- LeadershipPoint Leadership
-- text:SetText("|se0; |se;") -- ISMI_DELPI Gilda
-- text:SetText("|sf0; |sf;") -- ISMI_NETCAFE
-- text:SetText("|sg0; |sg;") -- ISMI_GARNET ISMI_SEASON_GARNET
-- text:SetText("|sp0; |sp;") -- ISMI_PALOS manastorm
-- text:SetText("|ss0; |ss;") -- ISMI_STAR Merit Badge
-- text:SetText("|u0;") -- Coin Bag
-- text:SetText("|v0; |v;") -- Artifact
-- text:SetText("|V0; |V;") -- Artifact
-- text:SetText("|w0;") -- CURRENCY_CONTRIBUTION_POINT Prestige
-- text:SetText("|x0;") -- Tax
-- text:SetText("|sc1;") -- ISMI_LUCKYCOIN Lucky Coin
-- edit:SetText(" and obtain @ITEM_NAME(19038)|s in Hermit''s Valley") -- ISMI_LUCKYCOIN Lucky Coin

-- text:SetText(
--    "a0 - |na;na|r\n"
-- "|o; test"
-- "|g100; test"
-- .. "b0 - |nb;nb|r \n"
-- .. "c0 - |nc;nc|r \n"
-- .. "d0 - |nd;nd|r \n"
-- .. "e0 - |ne;ne|r \n"
-- .. "f0 - |nf;nf|r \n"
-- .. "g0 - |ng;ng|r \n"
-- .. "h0 - |nh;nh|r \n"
-- .. "i0 - |ni;ni|r \n"
-- .. "j0 - |nj;nj|r \n"
-- .. "k0 - |nk;nk|r \n"
-- .. "l0 - |nl;nl|r \n"
-- .. "m0 - |nm;nm|r \n"
-- .. "n0 - |nn;nn|r \n"
-- .. "o0 - |no;no|r \n"
-- .. "p0 - |np;np|r \n"
-- .. "q0 - |nq;nq|r \n"
-- .. "r0 - |nr;nr|r \n"
-- .. "s0 - |ns;ns|r \n"
-- .. "t0 - |nt;nt|r \n"
-- .. "u0 - |nu;nu|r \n"
-- .. "v0 - |nv;nv|r \n"
-- .. "w0 - |nw;nw|r \n"
-- .. "x0 - |nx;nx|r \n"
-- .. "y0 - |ny;ny|r \n"
-- .. "z0 - |nz;nz|r \n"
-- .. "A0 - |A0; \n"
-- .. "B0 - |B0; \n"
-- .. "D0 - |D0; \n"
-- .. "E0 - |E0; \n"
-- .. "F0 - |F0; \n"
-- .. "G0 - |G0; \n"
-- .. "H0 - |H0; \n"
-- .. "I0 - |I0; \n"
-- .. "J0 - |J0; \n"
-- .. "K0 - |K0; \n"
-- .. "L0 - |L0; \n"
-- .. "M0 - |M0; \n"
-- .. "N0 - |N0; \n"
-- .. "O0 - |O0; \n"
-- .. "P0 - |P0; \n"
-- .. "Q0 - |Q0; \n"
-- .. "R0 - |R0; \n"
-- .. "S0 - |S0; \n"
-- .. "T0 - |T0; \n"
-- .. "U0 - |U0; \n"
-- .. "V0 - |V0; \n"
-- .. "W0 - |W0; \n"
-- .. "X0 - |X0; \n"
-- .. "Y0 - |Y0; \n"
-- .. "Z0 - |Z0; \n"
-- )

-- text:SetText("|s100;") -- Lord coin but doesnt work
-- text:SetText("|zi1110; |zi111;") -- PRICE_TYPE_AA_BONUS_CASH but doesnt work
-- text:SetText("|zl0; |zl;") -- PRICE_TYPE_AA_CASH_AND_BONUS_CASH but doesnt work

-- |e{level?};

-- |bu◆;
-- |buㆍ;
-- |br');
-- |bu●;
-- |bu▶;


-- Used a @ITEM_NAME(52298)|1.

-- |nn;@SPECIFY_TARGET_NAME(0)|r

-- text:SetText(
--   .. "|ahD8500G00016L8a0000003nxXMW00000; test \n"
--   .. "|AZ0a0000000020000CG0007W000000000oFLaOm00000; test \n"
--   ..
--   "|i28482,4,1,000000000012Rm0010000040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000G00000000000000000000000000000000000000000; for sale 135gold each \n"
--   ..
--   "|i28482,4,1; for sale 135gold each \n"
--   ..
--   "abc |i39396,3,0,00000000003acG000m00004000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003goOHe00000000000000000G000000000000000000000000000000wic4Q000000; asdf \n"
--   ..
--   " a WTB |i8001000,0,1,00000000003e5Ne000000040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000G00000000000000000000000000000000000000000; 950G EA%H \n"
--   .. "test"
-- )

--------------------------------------------------------------------------------

-- ADDON:ImportAPI(API.X2Skill)

-- ADDON:ChatLogTable(X2Skill:GetSkillTooltip(49332, 0))

--------------------------------------------------------------------------------

ADDON:ImportObject(OBJECT.Window)
ADDON:ImportObject(OBJECT.RoadMap)
ADDON:ImportObject(OBJECT.ColorDrawable)
ADDON:ImportObject(OBJECT.ImageDrawable)

roadmapWindow = UIParent:CreateWidget("window", "roadmapWindow", "UIParent")
roadmapWindow:SetExtent(928, 556)
-- roadmapWindow:AddAnchor("TOPLEFT", frame, "TOPLEFT", 0, 0)
roadmapWindow:AddAnchor("TOPRIGHT", 0, 0)
roadmapWindow:SetUILayer("game")
roadmapWindow:SetUILayer("game")
-- roadmapWindow:EnableScroll(true)
-- roadmapWindow:EnablePick(false, true)

-- roadmapWindow:Show(true)

-- local bg = roadmapWindow:CreateColorDrawable(1, 0, 0, .1, "background")
-- bg:AddAnchor("TOPLEFT", roadmapWindow, 0, 0)
-- bg:AddAnchor("BOTTOMRIGHT", roadmapWindow, 0, 0)

roadmap = roadmapWindow:CreateChildWidget("roadmap", "roadmap", 0, true)
roadmap:SetMapSize(300)
roadmap:SetExpandRatio(.6)
local playerDrawable = roadmap:CreateDrawable("ui/map/icon/player_cursor.dds", "player_cursor", "overlay")
roadmap:SetPlayerDrawable(playerDrawable)
-- roadmap:EnableScroll(true)
-- roadmap:EnableDrag(true)
-- roadmap:EnablePick(true, true)
roadmapWindow.player = playerDrawable
roadmap:AddAnchor("TOPLEFT", roadmapWindow, 5, 5)
roadmap:AddAnchor("BOTTOMRIGHT", roadmapWindow, -5, -5)
-- roadmap:SetExtent(928-20, 556-20)
-- roadmap:SetTooltipColor(F_COLOR.GetColor("soft_yellow", true), F_COLOR.GetColor("soft_yellow", true))
roadmap:InitMapData()
-- roadmap:SetRoadMapNpc(true)
roadmap:ReloadAllInfo()

roadmap:ShowLeaderPing(false)

roadmapWindow:SetResizingBorderSize(
  10, 10, 10, 10
)
roadmapWindow:SetMinResizingExtent(928 / 2, 556 / 2)
roadmapWindow:SetMaxResizingExtent(928, 556)
roadmapWindow:UseResizing(true)

local roadMapEvents = {
  TOGGLE_ROADMAP = function ()
    -- roadmapFrame.resizeBtn:OnClick()
    -- RunIndicatorStackRule()
  end,
  SHOW_ROADMAP_TOOLTIP = function (tooltipInfo, tooltipCount)
    -- ShowMapTooltip(tooltipInfo, tooltipCount, tooltipController, M_TOOLTIP_OFFSET_X, M_TOOLTIP_OFFSET_Y,
    -- M_TOOLTIP_OFFSET_REVERSE_X, M_TOOLTIP_OFFSET_REVERSE_Y)
  end,
  HIDE_ROADMAP_TOOLTIP = function (text)
    -- HideMapTooltip()
  end,
  UPDATE_ZONE_INFO = function ()
    roadmap:UpdateZoneInfo()
    -- RoadmapStatusUpdate()
    -- SetPlayerToCenterForRoadMap()
  end,
  UPDATE_NPC_INFO = function ()
    roadmap:UpdateNpcInfo()
  end,
  UPDATE_DOODAD_INFO = function ()
    roadmap:UpdateDoodadInfo(true)
  end,
  UPDATE_GIVEN_QUEST_STATIC_INFO = function ()
    roadmap:UpdateGivenQuestStaticInfo()
  end,
  UPDATE_HOUSING_INFO = function ()
    roadmap:UpdateHousingInfo()
  end,
  UPDATE_SHIP_TELESCOPE_INFO = function ()
    roadmap:UpdateShipTelescopeInfo()
  end,
  UPDATE_TRANSFER_TELESCOPE_INFO = function ()
    roadmap:UpdateTransferTelescopeInfo()
  end,
  UPDATE_BOSS_TELESCOPE_INFO = function ()
    roadmap:UpdateBossTelescopeInfo()
  end,
  UPDATE_CARRYING_BACKPACK_SLAVE_INFO = function ()
    roadmap:UpdateCarryingBackpackSlaveInfo()
  end,
  UPDATE_FISH_SCHOOL_INFO = function ()
    roadmap:UpdateFishSchoolInfo()
  end,
  UPDATE_CORPSE_INFO = function ()
    roadmap:UpdateCorpseInfo()
  end,
  UPDATE_MY_SLAVE_POS_INFO = function ()
    roadmap:UpdateMySlaveInfo()
  end,
  CLEAR_NPC_INFO = function ()
    roadmap:ClearNpcInfo()
  end,
  CLEAR_DOODAD_INFO = function ()
    roadmap:ClearDoodadInfo()
  end,
  CLEAR_GIVEN_QUEST_STATIC_INFO = function ()
    roadmap:ClearGivenQuestStaticInfo()
  end,
  CLEAR_HOUSING_INFO = function ()
    roadmap:ClearHousingInfo()
  end,
  CLEAR_SHIP_TELESCOPE_INFO = function ()
    roadmap:ClearShipTelescopeInfo()
  end,
  CLEAR_TRANSFER_TELESCOPE_INFO = function ()
    roadmap:ClearTransferTelescopeInfo()
  end,
  CLEAR_BOSS_TELESCOPE_INFO = function ()
    roadmap:ClearBossTelescopeInfo()
  end,
  CLEAR_CARRYING_BACKPACK_SLAVE_INFO = function ()
    roadmap:ClearCarryingBackpackSlaveInfo()
  end,
  CLEAR_FISH_SCHOOL_INFO = function ()
    roadmap:ClearFishSchoolInfo()
  end,
  CLEAR_CORPSE_INFO = function ()
    roadmap:ClearCorpseInfo()
  end,
  CLEAR_MY_SLAVE_POS_INFO = function ()
    roadmap:ClearMySlaveInfo()
  end,
  UPDATE_PING_INFO = function ()
    roadmap:UpdatePingInfo()
    -- EnablePingBtn()
  end,
  ADD_GIVEN_QUEST_INFO = function (arg1, arg2)
    roadmap:AddGivenQuestInfo(arg1, arg2)
  end,
  REMOVE_GIVEN_QUEST_INFO = function (arg1, arg2)
    roadmap:RemoveGivenQuestInfo(arg1, arg2)
  end,
  UPDATE_COMPLETED_QUEST_INFO = function ()
    roadmap:UpdateCompletedQuestInfo()
  end,
  CLEAR_COMPLETED_QUEST_INFO = function ()
    roadmap:ClearCompletedQuestInfo()
  end,
  ADD_NOTIFY_QUEST_INFO = function (arg)
    roadmap:AddNotifyQuestInfo(arg)
  end,
  REMOVE_NOTIFY_QUEST_INFO = function (arg)
    roadmap:RemoveNotifyQuestInfo(arg)
  end,
  CLEAR_NOTIFY_QUEST_INFO = function ()
    roadmap:ClearNotifyQuestInfo()
  end,
  UPDATE_DOMINION_INFO = function ()
    roadmap:UpdateDominionInfo()
  end,
  UI_RELOADED = function ()
    roadmap:ReloadAllInfo()
    -- roadmapSliderOnSliderChanged()
    -- RoadmapStatusUpdate()
    -- SetPlayerToCenterForRoadMap()
  end,
  LEFT_LOADING = function ()
    roadmap:ReloadAllInfo()
    -- roadmapSliderOnSliderChanged()
    -- RoadmapStatusUpdate()
    -- SetPlayerToCenterForRoadMap()
  end,
  ENTERED_WORLD = function ()
    roadmap:ReloadAllInfo()
    -- roadmapSliderOnSliderChanged()
    -- RoadmapStatusUpdate()
  end,
  ENTERED_LOADING = function ()
    roadmap:ClearAllInfo()
  end,
  UPDATE_ROADMAP_ANCHOR = function (file)
    -- UpdateRoadmapAnchor(file)
  end,
  SET_ROADMAP_PICKABLE = function (pick)
    roadmapWindow:EnablePick(pick, true)
  end,
  UPDATE_TELESCOPE_AREA = function ()
    roadmap:UpdateTelescopeArea()
  end,
  UPDATE_TRANSFER_TELESCOPE_AREA = function ()
    roadmap:UpdateTransferTelescopeArea()
  end,
  UPDATE_BOSS_TELESCOPE_AREA = function ()
    roadmap:UpdateBossTelescopeArea()
  end,
  UPDATE_FISH_SCHOOL_AREA = function ()
    roadmap:UpdateFishSchoolArea()
  end,
  REMOVE_SHIP_TELESCOPE_INFO = function (arg)
    roadmap:RemoveShipTelescopeInfo(arg)
  end,
  REMOVE_TRANSFER_TELESCOPE_INFO = function (arg)
    roadmap:RemoveTransferTelescopeInfo(arg)
  end,
  REMOVE_BOSS_TELESCOPE_INFO = function (arg)
    roadmap:RemoveBossTelescopeInfo(arg)
  end,
  REMOVE_CARRYING_BACKPACK_SLAVE_INFO = function (arg)
    roadmap:RemoveCarryingBackpackSlaveInfo(arg)
  end,
  REMOVE_FISH_SCHOOL_INFO = function (arg)
    roadmap:RemoveFishSchoolInfo(arg)
  end,
  UPDATE_MONITOR_NPC = function ()
    roadmap:UpdateMonitorNpcInfo()
  end,
  UPDATE_FACTION_REZ_DISTRICT = function ()
    roadmap:UpdateFactionRezDistrictInfo()
  end
}
roadmap:SetHandler("OnEvent", function (this, event, ...)
  roadMapEvents[event](...)
end)



-- local tempMainQuestReadyCoord = {
--   216,
--   24,
--   24,
--   24
-- }
-- local tempNormalQuestReadyCoord = {
--   216,
--   72,
--   24,
--   24
-- }
-- local tempNotifyColor = {
--   255,
--   255,
--   255,
--   0.5
-- }
-- worldmap:SetTempNotifyCoord(true, tempMainQuestReadyCoord)
-- worldmap:SetTempNotifyCoord(false, tempNormalQuestReadyCoord)
-- worldmap:SetTempNotifyColor(tempNotifyColor)


--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Webbrowser)

-- local web = UIParent:CreateWidget("webbrowser", "test", "UIParent")
-- web:SetExtent(100, 100)
-- web:RequestExternalPage("https://google.com")

-- web:Show(true)

--------------------------------------------------------------------------------

-- ADDON:ImportObject(OBJECT.Grid)
-- ADDON:ImportObject(OBJECT.Textbox)

-- local grid = UIParent:CreateWidget("grid", "test", "UIParent")
-- grid:SetExtent(500, 500)
-- grid:Show(true)
-- grid:SetDefaultColWidth(100)
-- grid:SetDefaultRowHeight(100)
-- grid:SetRowCount(5)
-- grid:SetColCount(5)
-- grid:SetLineBackGround(true)
-- grid:SetLineColor(1, 0, 0, 1)
-- grid:SetCurrentLine(true)
-- grid:SetCurrentColor(1, 0, 0, 1)

-- grid:SetRowCliping(true)
-- grid:SetDrawLineType("dotted")
-- grid:SetDrawStartNumber(2)


-- local textbox = grid:CreateChildWidget("textbox", "testbtn", 0, true)
-- textbox:SetExtent(100, 100)
-- textbox:SetText("Archerage.to")
-- grid:SetItem(textbox, 1, 1, true, 10, false)
-- local textbox = grid:CreateChildWidget("textbox", "testbtn", 0, true)
-- textbox:SetText(
--   "Archerage.to asdfas\nas\ndfas\n das\ndf a\nsdf asdfas\ndf\n asdfasderage.to asdfas\nas\ndfas\n das\ndf a\nsdf asdfas\ndf\n asdfasderage.to asdfas\nas\ndfas\n das\ndf a\nsdf asdfas\ndf\n asdfasderage.to asdfas\nas\ndfas\n das\ndf a\nsdf asdfas\ndf\n asdfasd")
-- textbox:SetExtent(100, 100)
-- grid:SetItem(textbox, 2, 1, true, 10, false)
-- local textbox = grid:CreateChildWidget("textbox", "testbtn", 0, true)
-- textbox:SetExtent(100, 100)
-- textbox:SetText("Archerage.to")
-- grid:SetItem(textbox, 3, 1, true, 10, false)



--------------------------------------------------------------------------------

ADDON:ChatLog("reload")
