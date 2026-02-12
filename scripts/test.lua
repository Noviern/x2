local addon_path = "C:/ArcheRage/Documents/Addon/" .. ADDON:GetName() .. "/"

package.path     = package.path .. ";" .. addon_path .. "?.lua;"
package.cpath    = package.cpath .. ";" .. addon_path .. "?.dll;"

---comment
---@param filename string
---@param mode openmode
---@return file*?
function open(filename, mode)
  return io.open(addon_path .. filename, mode)
end

TEXTURE_PATH = {
  ACHIEVEMENT                                 = "ui/achievement/achievement.dds",
  ACHIEVEMENT_ALARM                           = "ui/hud/achievement.dds",
  ACHIEVEMENT_GAUGE                           = "ui/achievement/achievement_gauge.dds",
  ACHIEVEMENT_LIGHT                           = "ui/achievement/light.dds",
  ACHIEVEMENT_MAIN_PAGE                       = "ui/achievement/main_page.dds",
  ACHIEVEMENT_RANK                            = "ui/achievement/rank.dds",
  ACHIEVEMENT_TEXT_1                          = "ui/hud/achievement_text_01.dds",
  ACHIEVEMENT_TEXT_2                          = "ui/hud/achievement_text_02.dds",
  ACHIEVEMENT_TEXT_3                          = "ui/hud/achievement_text_03.dds",
  ADDITIONAL_MAIN_MENU                        = "ui/common/additional_main_menu.dds",
  ALARM_BG                                    = "ui/hud/alarm_bg.dds",
  ALARM_DECO                                  = "ui/hud/deco_alarm.dds",
  ALARM_TOWER_DEFENSE                         = "ui/hud/tower_defense.dds",
  APPELLATION_STAMP_APPLIED                   = "ui/title/icon_selected.dds",
  APPELLATION_STAMP_SELECT                    = "ui/title/icon_selected_yellow.dds",
  AUCTION                                     = "ui/auction.dds",
  AWAKEN_ENCHANT                              = "ui/inventory/socket_enchant03.dds",
  BANNER_GOLDEN_PLAINS                        = "ui/hud/banner/instance_golden_plains.dds",
  BATTLEFIELD_ALARM_IN_PROGRESS               = "ui/battlefield/in_progress.dds",
  BATTLEFIELD_ALARM_READY                     = "ui/battlefield/ready_end.dds",
  BATTLEFIELD_BEST_RATING                     = "ui/hud/best_score.dds",
  BATTLEFIELD_BUTTON_DUNGEON                  = "ui/battlefield/list_button/button_dungeon.dds",
  BATTLEFIELD_BUTTON_INFLUENCE                = "ui/battlefield/list_button/button_influence.dds",
  BATTLEFIELD_BUTTON_RAID                     = "ui/battlefield/list_button/button_raid.dds",
  BATTLEFIELD_COMMON_LIST_BUTTON              = "ui/battlefield/list_button/common.dds",
  BATTLEFIELD_LIST_BUTTON                     = "ui/battlefield/list_button/button_battle_field.dds",
  BATTLEFIELD_PREVIEW_PREFIX                  = "ui/battlefield/preview",
  BATTLEFIELD_RESULT_FACTION                  = "ui/battlefield/result_golden_plains.dds",
  BATTLEFIELD_ROUND                           = "ui/battlefield/round.dds",
  BATTLEFIELD_ROUND_DRAW                      = "ui/battlefield/round_draw.dds",
  BATTLEFIELD_ROUND_LOSE                      = "ui/battlefield/round_lose.dds",
  BATTLEFIELD_ROUND_WIN                       = "ui/battlefield/round_win.dds",
  BATTLEFIELD_SCOREBOARD                      = "ui/battlefield/scoreboard.dds",
  BATTLEFIELD_STATUS                          = "ui/battlefield/status.dds",
  BATTLEFIELD_TERRITORY_GAUGE                 = "ui/battlefield/icon_sea_of_chos.dds",
  BATTLEFIELD_TIME                            = "ui/battlefield/time.dds",
  BOOKMARK                                    = "ui/button/bookmark.dds",
  CHARACTER_INFO                              = "ui/character/character_info.dds",
  CHARACTER_INFO_SUB_TAB                      = "ui/character/character_tab.dds",
  CHARACTER_SELECT                            = "ui/login_stage/04_character.dds",
  CHAT                                        = "ui/hud/tab_chat.dds",
  CHECK_BTN                                   = "ui/button/check_button.dds",
  CHECK_EYE_SHAPE                             = "ui/button/eye_button.dds",
  CHRONICLE                                   = "ui/chronicle.dds",
  CLIENT_DRIVEN_CNT_MSG                       = "ui/clientdrivenindun/message.dds",
  CLIENT_DRIVEN_GUIDE                         = "ui/clientdrivenindun/guide.dds",
  COMMON_ENCHANT                              = "ui/inventory/socket_enchant01.dds",
  COMMON_GAUGE                                = "ui/common_gauge.dds",
  COMMUNITY_BUTTON                            = "ui/community/community_btn.dds",
  COMMUNITY_COMMON                            = "ui/community/community_name_bg.dds",
  COMMUNITY_ICON_FIGHT                        = "ui/community/icon_fighting.dds",
  COMPOSITION                                 = "ui/composition.dds",
  COSPLAY_ENCHANT                             = "ui/inventory/cosplay_enchant.dds",
  COUNT_DOWN                                  = "ui/hud/count_down.dds",
  CRAFT                                       = "ui/craft.dds",
  CRAFT_2ND_CATEGORY                          = "ui/craft/2nd_category.dds",
  CRAFT_DEFAULT_A_CATEGORY                    = "ui/craft/1st_category.dds",
  CRAFT_EQUIPMENT_A_CATEGORY                  = "ui/craft/big_button.dds",
  CRAFT_EQUIPMENT_B_CATEGORY                  = "ui/craft/small_button.dds",
  CRAFT_POSITION_BUTTON                       = "ui/craft/position_button.dds",
  CRAFT_TEXT_BOX                              = "ui/craft/text_box.dds",
  CREDIT                                      = "ui/login_stage/html/credit_bg.dds",
  CUSTOMIZING                                 = "ui/login_stage/03_customizing.dds",
  DEATH                                       = "ui/death.dds",
  DEFAULT                                     = "ui/common/default.dds",
  DEFAULT_NEW                                 = "ui/common_new/default.dds",
  DIALOG_GENDER_TRANSFER                      = "ui/dialog/gender_transfer.dds",
  ENCHANT_TAB                                 = "ui/inventory/tab_enchant.dds",
  ENCHANT_TARGET                              = "ui/inventory/socket_item.dds",
  EQUIP_SLOT_REINFORCE                        = "ui/character/slot_enchant.dds",
  EQUIP_SLOT_REINFORCE_MSG_LEVEL_EFFECT_ICON  = "ui/character/slot_enchant_special.dds",
  EQUIP_SLOT_REINFORCE_MSG_LEVEL_EFFECT_TEXT  = "ui/character/slot_enchant_special_text.dds",
  EQUIP_SLOT_REINFORCE_MSG_SET_EFFECT_ICON    = "ui/character/slot_enchant_set.dds",
  EQUIP_SLOT_REINFORCE_MSG_SET_EFFECT_TEXT    = "ui/character/slot_enchant_set_text.dds",
  EQUIP_SLOT_REINFORCE_MSG_SLOT_LEVEL_UP_ICON = "ui/character/slot_enchant_levelup.dds",
  EQUIP_SLOT_REINFORCE_MSG_SLOT_LEVEL_UP_TEXT = "ui/character/slot_enchant_levelup_text.dds",
  EVENT_CENTER_ATTENDANCE                     = "ui/eventcenter/attendance_event.dds",
  EVENT_CENTER_ATTENDANCE_REWARD              = "ui/eventcenter/reward.dds",
  EVENT_CENTER_COMMON                         = "ui/eventcenter/star_common.dds",
  EVENT_CENTER_INFO_ICON                      = "ui/eventcenter/icon_event.dds",
  EVENT_CENTER_SCHEDULE                       = "ui/eventcenter/schedule.dds",
  EVENT_CENTER_TODAY                          = "ui/eventcenter/star_content.dds",
  EVENT_ICON                                  = "ui/common/icon_event.dds",
  EXPEDITION                                  = "ui/button/expedition.dds",
  EXPEDITION_ACCEPT                           = "ui/expedition/approve.dds",
  EXPEDITION_AUTHORITY                        = "ui/expedition/authority.dds",
  EXPEDITION_LEVEL_UP                         = "ui/expedition/level_up.dds",
  EXPEDITION_MISSION                          = "ui/expedition/mission_bg.dds",
  EXPEDITION_REJECT                           = "ui/expedition/refusal.dds",
  EXPEDITION_WAR_DRAW_TEXT                    = "ui/expedition/draw_text.dds",
  EXPEDITION_WAR_LOST_ICON                    = "ui/expedition/lose_flag.dds",
  EXPEDITION_WAR_LOST_TEXT                    = "ui/expedition/battle_lose_text.dds",
  EXPEDITION_WAR_ON_GOING_TEXT                = "ui/expedition/battle_ing_text.dds",
  EXPEDITION_WAR_RESULT_ICON                  = "ui/expedition/result_icon.dds",
  EXPEDITION_WAR_RESULT_TEXT                  = "ui/expedition/battle_result_text.dds",
  EXPEDITION_WAR_START_ICON                   = "ui/expedition/battle_start.dds",
  EXPEDITION_WAR_START_TEXT                   = "ui/expedition/battle_start_text.dds",
  EXPEDITION_WAR_WIN_ICON                     = "ui/expedition/win_bugle.dds",
  EXPEDITION_WAR_WIN_TEXT                     = "ui/expedition/battle_win_text.dds",
  FAIRY                                       = "ui/fairy.dds",
  FAMILY                                      = "ui/family/myfamily.dds",
  FAMILY_HAPPY_LIFE                           = "ui/family/familybg.dds",
  FAMILY_LEVEL_UP                             = "ui/family/family_level_up.dds",
  GEM_ENCHANT                                 = "ui/inventory/socket_enchant02.dds",
  GRADE_ENCHANT                               = "ui/inventory/grade_enchant.dds",
  GRADE_ENCHANT_ALARM                         = "ui/hud/enchant.dds",
  GRADE_ENCHANT_BROADCAST_ALARM               = "ui/hud/enchant_broadcast.dds",
  HEIR_LEVEL_UP                               = "ui/effect/successor_level_up.dds",
  HEIR_SKILL                                  = "ui/skill/successor.dds",
  HERO_CANDIDATE_ALERT_MSG                    = "ui/hero/hero_candidate.dds",
  HERO_CONDITION_EFFECT                       = "ui/hero/hero_effect.dds",
  HERO_CURRENT_STATUS                         = "ui/common/hero_condition.dds",
  HERO_CURRENT_STATUS_TEXT                    = "ui/hero/main_text.dds",
  HERO_ELECTION_ALERT                         = "ui/hud/icon_vote.dds",
  HERO_ELECTION_ALERT_MSG                     = "ui/hero/hero_election.dds",
  HERO_ELECTION_DAY_ALERT_MSG                 = "ui/hero/vote.dds",
  HERO_ELECTION_MAIL                          = "ui/hero/trophy.dds",
  HERO_ELECTION_RESULT_ICON                   = "ui/hero/birth.dds",
  HERO_ELECTION_RULE                          = "ui/hero/graph.dds",
  HERO_LEADERSHIP_RANKING_END_MSG             = "ui/hero/hero_leadership.dds",
  HERO_QUEST_IMAGE                            = "ui/hero/hero_img.dds",
  HERO_SHORTCUT                               = "ui/hero/ani_standby.dds",
  HUD                                         = "ui/common/hud.dds",
  HUD_EXPEDITION_WAR_ALARM                    = "ui/hud/expedition.dds",
  HUD_GAUGE                                   = "ui/common/hud_gauge.dds",
  HUD_TEXT                                    = "ui/common/hud_text.dds",
  HUD_VOTE                                    = "ui/hud/btn_vote.dds",
  ICON_WAITING                                = "ui/common/icon_waiting.dds",
  INDUN_CHANNEL_SELECT                        = "ui/indun_channel.dds",
  INGAME_SHOP                                 = "ui/itemshop.dds",
  INGAME_SHOP_TEXT                            = "ui/itemshop_text.dds",
  INVENTORY_DEFAULT                           = "ui/inventory/default.dds",
  INVENTORY_GRADE                             = "ui/inventory/grade_info.dds",
  ITEM_DIAGONAL_LINE                          = "ui/hud/item_diagonal_line.dds",
  ITEM_GRADE                                  = "ui/grade.dds",
  ITEM_GUIDE                                  = "ui/equipment.dds",
  ITEM_SID_EEFFECT                            = "ui/inventory/icon_effect.dds",
  KEY_123                                     = "ui/clientdrivenindun/key_123.dds",
  KEY_F                                       = "ui/clientdrivenindun/key_f.dds",
  KEY_MOUSE                                   = "ui/clientdrivenindun/mouse.dds",
  KEY_R                                       = "ui/clientdrivenindun/key_r.dds",
  KEY_T                                       = "ui/clientdrivenindun/key_t.dds",
  KEY_U                                       = "ui/clientdrivenindun/key_u.dds",
  KEY_W                                       = "ui/clientdrivenindun/key_w.dds",
  KEY_WASD                                    = "ui/clientdrivenindun/key_wasd.dds",
  KEY_Y                                       = "ui/clientdrivenindun/key_y.dds",
  KILL_EFFECT_BG                              = "ui/hud/kill_effect/bg.dds",
  KILL_EFFECT_FIFTH_BELOW_DECO                = "ui/hud/kill_effect/fifth_below_deco.dds",
  KILL_EFFECT_FIFTH_KILL                      = "ui/hud/kill_effect/fifth_kill.dds",
  KILL_EFFECT_FIRST_KILL                      = "ui/hud/kill_effect/first_kill.dds",
  KILL_EFFECT_FROM_SECOND_TO_FOURTH_KILL      = "ui/hud/kill_effect/from_second_to_fourth_kill.dds",
  KILL_EFFECT_WAR_OF_GOD                      = "ui/hud/kill_effect/war_of_god.dds",
  LEARN_ABILITY                               = "ui/hud/skill.dds",
  LEVLE_UP                                    = "ui/effect/level_up.dds",
  LIFE_ALERT                                  = "ui/hud/die.dds",
  LOGIN_STAGE_ANIMATION                       = "ui/login_stage/light.dds",
  LOOK_CHANGED                                = "ui/look_change.dds",
  LOOT_GACHA                                  = "ui/inventory/gacha.dds",
  MAIL                                        = "ui/mailbox/mailbox.dds",
  MAP_ICON                                    = "ui/map/icon/npc_icon.dds",
  MEGAPHONE_CHAT                              = "ui/common/chat.dds",
  MISSION_TEXT                                = "ui/hud/mission_text.dds",
  MONEY_WINDOW                                = "ui/common/money_window.dds",
  NATION_MAP_BG                               = "ui/nation/map_bg.dds",
  NATION_MAP_COLOR                            = "ui/nation/map_color.dds",
  OPTION                                      = "ui/button/option.dds",
  OVERHEAD_MARK                               = "ui/hud/overhead_mark.dds",
  PAPER_DECO                                  = "ui/paper_deco.dds",
  PEOPLE                                      = "ui/common/people.dds",
  PERIOD                                      = "ui/ranking/period.dds",
  PET                                         = "ui/pet.dds",
  PET_SLOT                                    = "ui/pet_slot.dds",
  PREMIUM_CHAR_SELECT_REPRESENT_CHAR_ICON     = "ui/login_stage/img_text.dds",
  PREMIUM_SERVICE_GRADE_ARROW                 = "ui/premium_arrow.dds",
  PREMIUM_SERVICE_GRADE_PROGRESS_BAR          = "ui/premium.dds",
  PREMIUM_SERVICE_ICON                        = "ui/login_stage/premium.dds",
  PREMIUM_SERVICE_LOGIN_STAGE_GRADE           = "ui/login_stage/background/premium.dds",
  QUEST_INFO                                  = "ui/common/quest_info.dds",
  QUEST_LEVEL                                 = "ui/common/quest_level.dds",
  QUEST_LIST                                  = "ui/quest_list.dds",
  QUEST_NOTIFIER                              = "ui/quest/quest_notifier.dds",
  RAID                                        = "ui/raid.dds",
  RAID_RECRUIT                                = "ui/classification_icon.dds",
  RAID_RECRUIT_BOARD                          = "ui/raid/board.dds",
  RAID_ROLE                                   = "ui/raid_role.dds",
  RAID_TAB                                    = "ui/hud/raid_tab.dds",
  RAID_TYPE_ICON                              = "ui/raid_type_icon.dds",
  RANDOMBOX                                   = "ui/inventory/randombox_bg.dds",
  RANKING_FISHING_ALARM                       = "ui/ranking/fishing.dds",
  RANKING_GRADE                               = "ui/grade.dds",
  RANKING_TAB                                 = "ui/ranking/tab_ranking.dds",
  REPAIR                                      = "ui/repair.dds",
  REPORTER                                    = "ui/hud/nametag/reporter.dds",
  REPUTATION                                  = "ui/hero/appraisal_btn.dds",
  REPUTATION_STATUS                           = "ui/hero/appraisal.dds",
  RESIDENT_BG                                 = "ui/resident_bg.dds",
  REWARD                                      = "ui/button/reward.dds",
  RISK_ALARM                                  = "ui/hud/risk_alarm.dds",
  SCALE_ENCHANT                               = "ui/inventory/socket_enchant03.dds",
  SCROLL                                      = "ui/button/scroll_button.dds",
  SECURITY                                    = "ui/security/security.dds",
  SERVER_SELECT                               = "ui/login_stage/00_server.dds",
  SIEGE_ATTACK_ICON                           = "ui/siege/attack.dds",
  SIEGE_COMMANDER                             = "ui/siege/commander.dds",
  SIEGE_DECLARE                               = "ui/siege/declare_siege.dds",
  SIEGE_DECLARE_CANCEL                        = "ui/siege/declare_siege_cancel.dds",
  SIEGE_DECLARE_TERRITORY                     = "ui/siege/declare_territory.dds",
  SIEGE_DEFENSE_ICON                          = "ui/siege/defense.dds",
  SIEGE_ENGRAVING_START                       = "ui/siege/engraving_start.dds",
  SIEGE_GUARD_TOWER_ATTACK                    = "ui/siege/guard_tower_attack.dds",
  SIEGE_HP_BAR                                = "ui/hud/siege_gauge.dds",
  SIEGE_ICON                                  = "ui/siege/siege_icon.dds",
  SIEGE_PERIOD                                = "ui/siege/period_siege.dds",
  SIEGE_RAID                                  = "ui/icon_commander.dds",
  SIEGE_RAID_RECRUIT_BOARD                    = "ui/raid/war_flag.dds",
  SIEGE_READY_TO_SIEGE                        = "ui/siege/period_warmup.dds",
  SIEGE_REINFORCEMENT                         = "ui/siege/reinforcement.dds",
  SIEGE_RESULT_ICON                           = "ui/siege/result_icon.dds",
  SIEGE_RESULT_TEXT                           = "ui/siege/result_text.dds",
  SIEGE_RESULT_WATCH                          = "ui/siege/result_watch.dds",
  SKILL                                       = "ui/skill/skill.dds",
  SKILL_ABILITY                               = "ui/skill/ability.dds",
  SKILL_SYNERGY                               = "ui/skill/skill_series.dds",
  SLAVE_ETC                                   = "ui/slave/slave_etc.dds",
  SLAVE_SHIP_1                                = "ui/slave/ship_1.dds",
  SLAVE_SHIP_2                                = "ui/slave/ship_2.dds",
  SLAVE_SHIP_3                                = "ui/slave/ship_3.dds",
  SLAVE_SLOT                                  = "ui/slave/slot.dds",
  SMELTING_ENCHANT                            = "ui/inventory/socket_enchant04.dds",
  SOCKET_ENCHANT                              = "ui/inventory/socket_enchant.dds",
  SPECIAL_SKILL                               = "ui/skill/unique_skill.dds",
  STEP_ARROW                                  = "ui/common/step_arrow.dds",
  SUBZONE_SYSTEM                              = "ui/hud/system_subzone.dds",
  TAB_LIST                                    = "ui/common/tab_list.dds",
  TEAM_ICON                                   = "ui/common/team_icon.dds",
  TGOS_TITLE                                  = "ui/tgos.dds",
  TIMER                                       = "ui/hud/timer.dds",
  TOOLTIP                                     = "ui/common/tooltip.dds",
  TOWER_DEFENSE_ICON                          = "ui/tower_defense/%s.dds",
  TRADE_GREEN                                 = "ui/trade/trade_green.dds",
  TRADE_YELLOW                                = "ui/trade/trade_yellow.dds",
  TUTORIAL                                    = "ui/tutorials/tutorial.dds",
  UCC                                         = "ui/ucc/ucc_ui.dds",
  ULC_IMAGE_PREFIX                            = "ui/ulc",
  ULC_ULCOCK_EFFECT_BLAST                     = "ui/ulc/eff_blast.dds",
  ULC_ULCOCK_EFFECT_LOCK                      = "ui/ulc/eff_lock.dds",
  UNITFRAME_GRADE                             = "ui/hud/unitframe_grade.dds",
  USER_TRIAL_STATUS                           = "ui/user_trial/status.dds",
  USER_TRIAL_VERDICT                          = "ui/user_trial/verdict.dds",
  VIRTUAL_KEYBOARD                            = "ui/virtual_keyboard.dds",
  ZONE_PERMISSION_OUT                         = "ui/hud/compulsion_movement.dds",
}

CURSOR_PATH = {
  MOVE = "ui/cursor/interface_move_cursor.dds"
}

BUTTON_TEXTURE_PATH = {
  CINEMA              = "ui/cinema.dds",
  COMMON_BACK         = "ui/button/back_btn.dds",
  COMMON_REMOVE       = "ui/button/common/remove.dds",
  COMMON_RESET        = "ui/button/common/reset.dds",
  CUTSCENE_PLAY       = "ui/cutscene_play.dds",
  DAY_EVENT           = "ui/button/day_event.dds",
  HOUSING             = "ui/housing/button.dds",
  MAILBOX             = "ui/button/mailbox_btn.dds",
  MAP                 = "ui/map/frame_map.dds",
  PAGE                = "ui/button/page_button.dds",
  READ_MAIL           = "ui/button/mailbox.dds",
  UTHSTIN_PAGE_EXPAND = "ui/common/tab_list.dds"
}

LOGIN_STAGE_TEXTURE_PATH = {
  COLOR_PALETTE = "ui/login_stage/color_palette.dds",
  GAME_GRADE_BG = "ui/login_stage/background/game_grade.dds",
  HEALTH_NOTICE = "ui/login_stage/background/game_information.dds",
  SAVE_LOAD     = "ui/beautyshop/save_load.dds",
}

---scriptsbin\commonui\baselib\variable.lua
FONT_PATH = {
  DEFAULT = "font_main",
  SUB     = "font_sub",
  COMBAT  = "font_combat",
}


---scriptsbin\commonui\baselib\variable.lua
FONT_SIZE = {
  DEFAULT = 13,
  SMALL   = 11,
  MIDDLE  = 13,
  LARGE   = 15,
  CINEMA  = 26,
  XLARGE  = 18,
  XXLARGE = 22,
}

---scriptsbin\x2ui\baselib\locale\en_us.lua
TEXTBOX_LINE_SPACE = {
  SMALL      = 0,
  MIDDLE     = 1,
  LARGE      = 5,
  TOOLTIP    = 0,
  QUESTGUIDE = 3
}

---@TODO: rewrite this so that result can be cast into the correct combat class and returned.
---@param combatEvent COMBAT_EVENT
---@param ... any
---@return table
function ParseCombatMessage(combatEvent, ...)
  local pos = combatEvent:find("_")
  local arg = { ... }
  local prefix = combatEvent:sub(1, pos - 1)
  local suffix = combatEvent:sub(pos + 1)
  local result = {}
  local index = 0
  local function GetNextIndex()
    index = index + 1
    return index
  end
  if prefix == "MELEE" then
  elseif prefix == "SPELL" then
    result.spellId     = arg[GetNextIndex()]
    result.spellName   = arg[GetNextIndex()]
    result.spellSchool = arg[GetNextIndex()]
  elseif prefix == "ENVIRONMENTAL" then
    result.source  = arg[GetNextIndex()]
    result.subType = arg[GetNextIndex()]
    if result.subType ~= nil and result.subType ~= -1 then
      result.mySlave = arg[GetNextIndex()]
    end
  end
  if suffix == "DAMAGE" or suffix == "DOT_DAMAGE" then
    result.damage = arg[GetNextIndex()]
    result.powerType = arg[GetNextIndex()]
    result.hitType = arg[GetNextIndex()]
    result.reduced = arg[GetNextIndex()]
    result.elementDamage = arg[GetNextIndex()]
    result.showElementEffect = arg[GetNextIndex()]
    result.elementType = arg[GetNextIndex()]
    result.synergy = arg[GetNextIndex()]
  elseif suffix == "MISSED" then
    result.missType = arg[GetNextIndex()]
    result.damage = arg[GetNextIndex()]
    result.reduced = arg[GetNextIndex()]
    result.elementDamage = arg[GetNextIndex()]
    result.showElementEffect = arg[GetNextIndex()]
    result.elementType = arg[GetNextIndex()]
  elseif suffix == "HEALED" then
    result.heal = arg[GetNextIndex()]
    result.hitType = arg[GetNextIndex()]
    result.showElementEffect = arg[GetNextIndex()]
    result.elementType = arg[GetNextIndex()]
  elseif suffix == "ENERGIZE" then
    result.amount = arg[GetNextIndex()]
    result.powerType = arg[GetNextIndex()]
  elseif suffix == "DRAIN" then
    result.amount = arg[GetNextIndex()]
    result.powerType = arg[GetNextIndex()]
  elseif suffix == "LEECH" then
    result.amount = arg[GetNextIndex()]
    result.powerType = arg[GetNextIndex()]
  elseif suffix == "CAST_FAILED" then
    result.failType = arg[GetNextIndex()]
  elseif suffix == "AURA_APPLIED" or suffix == "AURA_REMOVED" then
    result.auraType = arg[GetNextIndex()]
    result.combatText = arg[GetNextIndex()]
  end
  return result
end

---@TODO: this only works if dump is in the toc.g
---Dumps a table line by line to the chat.
---@param var table
---@param ctx? ctx
function ADDON:ChatLogTable(var, ctx)
  local output = dump(var, ctx)
  for line in output:gmatch("([^\n]*)\n?") do
    ADDON:ChatLog(line)
  end
end

local ChatLog = ADDON.ChatLog

---Logs a message to the chat under `CMF_SYSTEM`.
---@param logMessage any The message to log.
---@param ... any
---@diagnostic disable-next-line: duplicate-set-field
function ADDON:ChatLog(logMessage, ...)
  ChatLog(ADDON, tostring(logMessage):format(...))
end

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

-- ADDON:ChatLogTable(X2Craft:GetCraftMaterialInfo(85, 8469))

--------------------------------------------------------------------------------

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

-- local test = UIParent:CreateWidget("emptywidget", "testingCheckCombatResourceMaxPointByGroupType", "UIParent")
-- test:Show(true)

-- local groupType = X2CombatResource:GetCombatResourceInfo()

-- test:SetHandler("OnUpdate", function (self, frameTime)
--   for i = 1, 3 do
--     if groupType[i] ~= nil then
--       local isUpdate = X2CombatResource:CheckCombatResourceMaxPointByGroupType(groupType[i].groupType)
--       if isUpdate == true then
--         ADDON:ChatLog("max")
--       end
--     end
--   end
-- end)

--------------------------------------------------------------------------------

-- local dl = UIParent:CreateWidget("dynamiclist", "d", "UIParent")

-- dl:SetHandler("OnDynamicListUpdatedView", function (self)
--   ADDON:ChatLog("OnDynamicListUpdatedView")
-- end)

-- dl:AddAnchor("CENTER", 0, 0)
-- dl:SetExtent(500, 500)
-- dl:Show(true)

-- local overedImage = dl:CreateOveredImage("overlay")
-- overedImage:SetTexture(TEXTURE_PATH.DEFAULT)
-- overedImage:SetTextureInfo("slot_ov")

-- dl:EnableChildTouch(true)

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

--   local bg = subItem:CreateColorDrawable(0, 1, 0, .5, "background")
--   bg:SetExtent(100, 100)
--   -- bg:AddAnchor("TOPLEFT", subItem, 0, 0)
--   -- bg:AddAnchor("BOTTOMRIGHT", subItem, 0, 0)
--   -- bg:AddAnchor()
--   -- subItem:AddAnchor("CENTER", "UIParent", 0, 0)
--   -- subItem:AddAnchor("TOP", "UIParent", 0, 0)

--   ADDON:ChatLogTable({ subItem:GetExtent() })
--   ADDON:ChatLog(subItem:IsVisible())
--   ADDON:ChatLogTable({subItem:GetOffset()})

--   subItem:SetHandler("OnEnter", function (self)
--     ADDON:ChatLog("enter")
--   end)

--   local title = subItem:CreateChildWidget("label", "title", 0, true)
--   title.style:SetEllipsis(true)
--   title:SetExtent(50, FONT_SIZE.LARGE)
--   title.style:SetAlign(ALIGN_LEFT)
--   title.style:SetFontSize(FONT_SIZE.LARGE)
--   title:AddAnchor("TOPLEFT", 0, 0)
--   title:AddAnchor("BOTTOMRIGHT", 0, 0)
--   title.style:SetColorByKey("middle_title")
--   subItem.title = title
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
--   subItem.title:SetText("teasdfa")
-- end

-- ---comment
-- ---@param subItem EmptyWidget
-- ---@param index number
-- local function subLayoutFunc(subItem, index)
--   ADDON:ChatLog("subLayoutFunc " .. index)
--   subItem:AddAnchor("TOP", "UIParent", 0, 0)

--   ADDON:ChatLogTable({ subItem:GetExtent() })
--   ADDON:ChatLog(subItem:IsVisible())
--   ADDON:ChatLogTable({ subItem:GetOffset() })
--   local bg = subItem:CreateColorDrawable(0, 0, 1, .5, "background")
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
-- dl:SetGaps(5, 5)



-- dl:InsertData(1, 123456, { { key = 1, text = "asd", value = 3 } })
-- -- dl:InsertData(2, 5, { { key = 2, text = "asd", value = 4 } })
-- -- dl:InsertData(3, 4, { { key = 3, text = "asd", value = 4 } })

-- -- dl:Toggle(1)
-- -- dl:ToggleByMainKey(5)

-- -- dl:SaveItemList()
-- -- dl:ClearData()
-- -- dl:LoadItemList()

-- -- ADDON:ChatLogTable({ dl:GetSelectedItemInfo() })
-- -- ADDON:ChatLog(dl:GetMainIndex(1))
-- -- dl:EraseData(2)
-- -- ADDON:ChatLogTable(dl:GetMainList())
-- -- ADDON:ChatLog(dl:MoveHeight(100))
-- -- ADDON:ChatLog(tostring(dl:GetCurrentHeight()))
-- -- ADDON:ChatLog(tostring(dl:GetScrollMaxValue()))

-- dl:UpdateView() -- triggers mainDataFun if InsertData

-- -- dl:LoadItemList()
-- -- dl:MoveIndex(1, 0, true)

-- local file = open("temp/dynamiclist.txt", "w")
-- file:write(dump(dl))
-- file:close()

--------------------------------------------------------------------------------

-- SHOP_OPEN_BATTLEFIELD
-- SHOP_OPEN_CONTRIBUTION
-- SHOP_OPEN_DIRECT_RANDOM_SHOP
-- SHOP_OPEN_HONORPOINT
-- SHOP_OPEN_LIVINGPOINT
-- SHOP_OPEN_NORMAL
-- SHOP_OPEN_RANDOM_SHOP

-- ADDON:ShowContent(UIC_STORE, true)
-- This doesnt work
-- ADDON:ShowContent(UIC_STORE, true, {
--   openType = SHOP_OPEN_LIVINGPOINT,
--   direct = false
-- })
-- ADDON:ToggleContent(UIC_STORE, {
--   openType = SHOP_OPEN_LIVINGPOINT,
--   direct = true
-- })
-- ADDON:ToggleContent(UIC_STORE)

-- function ToggleStore(show, data)

--   ADDON:ChatLog("ToggleStore")
--   ADDON:ChatLog(show)
--   if data then
--     ADDON:ChatLogTable(data)
--   end
-- end
-- ADDON:RegisterContentTriggerFunc(UIC_STORE, ToggleStore)

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

--------------------------------------------------------------------------------

-- local count = 0

-- UIParent:SetEventHandler("TARGET_CHANGED", function (stringId, targetType)
--   if targetType then
--     local display = UIParent:CreateWidget("damagedisplay", "test" .. stringId, "UIParent")
--     display.style:SetFont("font_combat", 50)
--     display.style:SetAlign(ALIGN_BOTTOM_LEFT)
--     display.style:SetColorByKey("combat_text")
--     display.extraStyle:SetAlign(ALIGN_BOTTOM_LEFT)
--     display.extraStyle:SetColorByKey("combat_text")
--     display:SetText(tostring(count))
--     display:SetExtent(200, 200)
--     display:Show(true)
--     display:SetInitPos(-25, -50)
--     ADDON:ChatLog("test" .. stringId .. " " .. count)
--     count = count + 1

--     display:SetUnitId(X2Unit:GetUnitId("player"), X2Unit:GetUnitId("target"))
--   end
-- end)

--------------------------------------------------------------------------------

-- X2Option:SetItemFloatValueByName("MyCustomOption", 3434)
-- ADDON:ChatLog(tostring(X2Option:CreateOptionItemFloat("MyCustomOptionCharacter", 1, OISLT_CHARACTER)))
-- ADDON:ChatLog(tostring(X2Option:CreateOptionItemFloat("MyCustomOptionCharacterMode", 2, OISLT_CHARACTER_MODE)))
-- ADDON:ChatLog(tostring(X2Option:CreateOptionItemFloat("MyCustomOptionSystem", 3, OISLT_SYSTEM)))
-- X2Option:Save()

-- ADDON:ChatLog("MyCustomOption start")
-- local MyCustomOption = X2Option:GetOptionItemValueByName("MyCustomOption")

-- if MyCustomOption ~= nil then
--   ADDON:ChatLog(tostring(MyCustomOption))
-- end

-- local MyCustomOptionCharacter = X2Option:GetOptionItemValueByName("MyCustomOptionCharacter")

-- if MyCustomOptionCharacter ~= nil then
--   ADDON:ChatLog(tostring(MyCustomOptionCharacter))
-- end

-- local MyCustomOptionCharacterMode = X2Option:GetOptionItemValueByName("MyCustomOptionCharacterMode")

-- if MyCustomOptionCharacterMode ~= nil then
--   ADDON:ChatLog(tostring(MyCustomOptionCharacterMode))
-- end

-- local MyCustomOptionSystem = X2Option:GetOptionItemValueByName("MyCustomOptionSystem")

-- if MyCustomOptionSystem ~= nil then
--   ADDON:ChatLog(tostring(MyCustomOptionSystem))
-- end

-- ADDON:ChatLog("MyCustomOption end")

--------------------------------------------------------------------------------

-- local window = UIParent:CreateWidget("textbox", "test", "UIParent")
-- window:SetExtent(420, 100)
-- window:SetAutoResize(true)
-- -- window:SetAutoWordwrap(false)
-- window:AddAnchor("TOP", 0, 0)
-- window:Show(true)

-- local bg = window:CreateColorDrawable(0, 0, 0, .5, "background")
-- bg:AddAnchor("TOPLEFT", window, 0, 0)
-- bg:AddAnchor("BOTTOMRIGHT", window, 0, 0)

-- local OFFSET_X         = 21504
-- local OFFSET_Y         = 28672
-- local UNITS_PER_DEGREE = 1024
-- local UNITS_PER_MIN    = 60
-- local UNITS_PER_SEC    = 60

-- ---comment
-- ---@param x number
-- ---@param coord "long"|"lat"
-- ---@return string dir
-- ---@return integer deg
-- ---@return integer min
-- ---@return number sec
-- local function convertWorldToDMS(x, coord)
--   local dir

--   if coord == "long" then
--     x = x - OFFSET_X
--     dir = x < 0 and "W" or "E"
--   elseif coord == "lat" then
--     x = x - OFFSET_Y
--     dir = x < 0 and "S" or "N"
--   end

--   local deg, deg_remainder = math.modf(math.abs(x) / UNITS_PER_DEGREE)
--   local min, min_remainder = math.modf(deg_remainder * UNITS_PER_MIN)
--   local sec = min_remainder * UNITS_PER_SEC

--   return dir, deg, min, sec
-- end

-- window:SetMoveAnimation("top", 10 + 1 * 3, 0.4, 2)

-- -- local x1, y1, z1 =
-- window:SetHandler("OnUpdate", function (self, frameTime)
--   local x, y, z, angle = X2Unit:GetUnitWorldPositionByTarget("player", false)

--   -- local real_x = x - 21504
--   -- local deg_long, deg_long_remainder = math.modf(math.abs(real_x) / 1024)
--   -- local min_long, min_long_remainder = math.modf(deg_long_remainder * 60)
--   -- local sec_long = min_long_remainder * 60

--   local dir_long, deg_long, min_long, sec_long = convertWorldToDMS(x, "long")
--   local dir_lat, deg_lat, min_lat, sec_lat = convertWorldToDMS(y, "lat")


--   X2Option:SetConsoleVariable("camera_max_dist", tostring(2001.5 - z)) -- limits to 2k

--   local viewCameraPos = UIParent:GetViewCameraPos()
--   local viewCameraDir = UIParent:GetViewCameraDir()


--   -- window:SetText(string.format(
--   --   "GLOBAL PLAYER POS x: %.2f, y: %.2f, z: %.2f, a: %.2f\n" ..
--   --   "LOCAL CAM POS x: %.2f, y: %.2f, z: %.2f\n" ..
--   --   "CAM DIR x: %.2f, y: %.2f, z: %.2f\n" ..
--   --   "a: %.2f, z: %.2f, z: %.2f\n" ..
--   --   "%s %d° %d' %d\" %s %d° %d' %d\"\n",
--   --   x, y, z, math.deg(angle),
--   --   viewCameraPos.x, viewCameraPos.y, viewCameraPos.z,
--   --   viewCameraDir.x, viewCameraDir.y, viewCameraDir.z,
--   --   math.deg(angle), viewCameraDir.z, viewCameraPos.z,
--   --   dir_long, deg_long, min_long, sec_long, dir_lat, deg_lat, min_lat, sec_lat
--   -- ))
--   window:SetText(string.format(
--     "GLOBAL PLAYER POS x: %.2f, y: %.2f, z: %.2f, a: %.2f\n" ..
--     "LOCAL CAM POS x: %.2f, y: %.2f, z: %.2f\n" ..
--     "CAM DIR x: %.2f, y: %.2f, z: %.2f\n" ..
--     "a: %.2f, z: %.2f, z: %.2f\n",
--     x, y, z, math.deg(angle),
--     viewCameraPos.x, viewCameraPos.y, viewCameraPos.z,
--     viewCameraDir.x, viewCameraDir.y, viewCameraDir.z,
--     math.deg(angle), viewCameraDir.z, viewCameraPos.z
--   ))
--   window:SetAutoResize(true)
--   window:TriggerMoveAnimation(true)
-- end)

--------------------------------------------------------------------------------

-- local function Toggle(show)
--   ADDON:ToggleContent(UIC_TRADE_GOOD_PRICE_INFORMATION)
-- end

-- ADDON:RegisterContentTriggerFunc(UIC_SPECIALTY_INFO, Toggle)

--------------------------------------------------------------------------------

--- https://archeage.fandom.com/wiki/Community_Center maybe incorporate all high
--- rank perks and allow to turn on/off each?
--- resident_nuons_step Development Rank under Vocation
--- make a window for each zone that can have a perk

-- local developmentZones = {
--   auroria = {
--     mistmerrow = X2Map:GetZoneStateInfoByZoneId(78), -- Grand Improved Workbench appears at rank 3
--   },
--   haranya = {
--     arcumIris           = X2Map:GetZoneStateInfoByZoneId(7),
--     falcorthPlains      = X2Map:GetZoneStateInfoByZoneId(11), -- Grand Improved Workbench appears at rank 3
--     hasla               = X2Map:GetZoneStateInfoByZoneId(23),
--     mahadevi            = X2Map:GetZoneStateInfoByZoneId(9),
--     perinoorRuins       = X2Map:GetZoneStateInfoByZoneId(15),
--     rokhalaMountains    = X2Map:GetZoneStateInfoByZoneId(99),
--     rookborneBasin      = X2Map:GetZoneStateInfoByZoneId(16), -- Grand Improved Workbench appears at rank 3
--     silentForest        = X2Map:GetZoneStateInfoByZoneId(25),
--     solisHeadlands      = X2Map:GetZoneStateInfoByZoneId(4),
--     sunbiteWilds        = X2Map:GetZoneStateInfoByZoneId(13),
--     tigerspineMountains = X2Map:GetZoneStateInfoByZoneId(24),
--     villanelle          = X2Map:GetZoneStateInfoByZoneId(12),
--     windscourSavannah   = X2Map:GetZoneStateInfoByZoneId(14), -- Grand Improved Workbench appears at rank 3
--     ynystere            = X2Map:GetZoneStateInfoByZoneId(17),
--   },
--   nuia = {
--     ahnimar            = X2Map:GetZoneStateInfoByZoneId(93),
--     airainRock         = X2Map:GetZoneStateInfoByZoneId(10),
--     aubreCradle        = X2Map:GetZoneStateInfoByZoneId(21),
--     cinderstoneMoor    = X2Map:GetZoneStateInfoByZoneId(20),
--     dewstonePlains     = X2Map:GetZoneStateInfoByZoneId(3),
--     gweonidForest      = X2Map:GetZoneStateInfoByZoneId(1),
--     halycona           = X2Map:GetZoneStateInfoByZoneId(22), -- Grand Improved Workbench appears at rank 3
--     hellswamp          = X2Map:GetZoneStateInfoByZoneId(26), -- Grand Improved Workbench appears at rank 3
--     karkasseRidgelands = X2Map:GetZoneStateInfoByZoneId(19),
--     lilyutHills        = X2Map:GetZoneStateInfoByZoneId(6),
--     marianople         = X2Map:GetZoneStateInfoByZoneId(2),  -- Grand Improved Workbench appears at rank 3
--     sanddeep           = X2Map:GetZoneStateInfoByZoneId(27), -- Grand Improved Workbench appears at rank 3
--     solzreedPeninsula  = X2Map:GetZoneStateInfoByZoneId(5),
--     twoCrowns          = X2Map:GetZoneStateInfoByZoneId(8),
--     whiteArden         = X2Map:GetZoneStateInfoByZoneId(18),
--   },
-- }


-- for _, data in pairs(grandImprovedWorkbenchZones) do
--   -- if data.localDevelopmentStep == 2 or data.localDevelopmentStep == 3 then
--   ADDON:ChatLog("|cFF0B9C23" .. data.zoneName .. " - " .. data.localDevelopmentName .. "|r")
--   -- end
-- end

-- local file = open("temp/example.txt", "w")
-- file:write(dump(developmentZones))
-- file:close()

--------------------------------------------------------------------------------

-- -- Could make this track any arc that is being casted on me

-- -- Its possible the boss doesnt return the id so i may have to use names and if
-- -- thats the case then ill have to have names of each locale
-- local tracker = {
--   [45391] = "battlefield_1_secound", -- T2 Jola - Time For Fun 80m
--   [45633] = "battlefield_1_secound", -- T2 Jola - Time For Fun 80m
--   [43506] = "battlefield_1_secound", -- Charybdis - Sea of Death
--   [39774] = "battlefield_1_secound", -- Black Dragon - Black Dragon Scale
--   [39837] = "battlefield_1_secound", -- Black Dragon - Black Dragon Scale
--   [39619] = "battlefield_1_secound", -- Black Dragon -Smash Earth
--   [27192] = "battlefield_1_secound", -- Kraken - Kraken's Slam
--   [49483] = "battlefield_1_secound", -- Abyssal Kraken - Slam
--   [15918] = "battlefield_1_secound", -- test
--   [11216] = "battlefield_1_secound", -- test
-- }
-- local name
-- local time
-- local id

-- local label = UIParent:CreateWidget("label", "test", "UIParent")
-- label:AddAnchor("CENTER", 0, -300)
-- -- label:Show(true)
-- -- label.style:SetFont("img_font_combat", 60, FTK_IMAGETEXT)
-- -- label.style:SetFont("font_combat", 60)
-- label.style:SetFont("font_sub", 60)
-- -- label.style:SetFont("font_main", 60)
-- label.style:SetColorByKey("red")
-- label.style:SetShadow(true)

-- -- function test(self, frameTime)
-- --   if name and time > 0 then
-- --     label:SetText(string.format("%s %.1fs", name, time / 1000))
-- --     label:SetWidth(500)
-- --     time = time - frameTime
-- --   else
-- --     -- label:Show(false, 250)
-- --   end
-- -- end

-- -- label:SetHandler("OnUpdate", test)

-- function combat(targetUnitId, combatEvent, source, target, spellId, spellName, spellSchool)
--   if combatEvent == "SPELL_CAST_START" and spellId then
--     -- ADDON:ChatLog(spellId .. " " .. spellName)
--     spellSound = tracker[spellId]

--     if spellSound then
--       -- ADDON:ChatLog(">>>>>>>>>>>>>>>> playing sound " .. spellSound .. " for " .. spellName)
--       local test = X2Skill:GetSkillTooltip(spellId, 0)
--       label:SetText(spellName)
--       name = spellName
--       time = test.casting
--       id = spellId

--       label:Show(true)

--       -- ADDON:ChatLog("soundid " .. X2Sound:PlayUISound(spellSound, true))
--     end
--   end

--   if combatEvent == "SPELL_CAST_SUCCESS" and spellId == id then
--     label:Show(false, 250)
--   end
-- end

-- -- UIParent:SetEventHandler("COMBAT_MSG", combat)

-- local CASTER
-- local tracker2 = {
--   ["Time For Fun"] = "battlefield_1_secound",
--   ["Sea of Death"] = "battlefield_1_secound",
--   ["Black Dragon Scale"] = "battlefield_1_secound",
--   ["Smash Earth"] = "battlefield_1_secound",
--   ["Kraken's Slam"] = "battlefield_1_secound",
--   ["Slam"] = "battlefield_1_secound",
--   ["Strong Strike"] = "battlefield_1_secound",
--   ["Recall"] = "battlefield_1_secound",
--   ["Opening Worldgate…"] = "battlefield_1_secound",
-- }

-- local totalTime = 500
-- label:SetHandler("OnUpdate", function (self, frameTime)
--   local unitCastingInfo = X2Unit:UnitCastingInfo(CASTER)

--   if unitCastingInfo then
--     label:SetText(string.format("%s %.1f", unitCastingInfo.spellName,
--       (unitCastingInfo.castingTime - unitCastingInfo.currCastingTime) / 1000))

--     totalTime = totalTime + frameTime
--     if totalTime > 500 then
--       totalTime = 0
--       X2Sound:PlayUISound(spellSound, true)
--     end
--   else
--     label:Show(false)
--   end
-- end)

-- UIParent:SetEventHandler("SPELLCAST_START", function (spellName, castingTime, caster, castingUseable)
--   ADDON:ChatLog(spellName)
--   CASTER = caster
--   local spellSound2 = tracker2[spellName]

--   if spellSound2 then
--     spellSound = spellSound2
--     label:Show(true)
--     -- X2Sound:PlayUISound(spellSound, true)
--   end
-- end)

-- UIParent:SetEventHandler("TARGET_CHANGED", function (stringId, targetType)
--   local unitCastingInfo = X2Unit:UnitCastingInfo("target")

--   if unitCastingInfo then
--     local spellSound2 = tracker2[unitCastingInfo.spellName]

--     if spellSound2 then
--       spellSound = spellSound2
--       CASTER = "target"
--       label:Show(true)
--       -- X2Sound:PlayUISound(spellSound, true)
--     end
--   end
-- end)

-- UIParent:SetEventHandler("SPELLCAST_STOP", function (caster)
--   label:Show(false, 250)
-- end)

-- UIParent:SetEventHandler("SPELLCAST_SUCCEEDED", function (caster)
--   label:Show(false, 250)
-- end)

--------------------------------------------------------------------------------

-- local sounds = {
--   "battlefield_1_secound",
--   "battlefield_2_secound",
--   "battlefield_3_secound",
--   "battlefield_4_secound",
--   "battlefield_5_secound",
--   "battlefield_already_start",
--   "battlefield_defeat",
--   "battlefield_draw",
--   "battlefield_end",
--   "battlefield_kill_amazing_spirit", -- might not exist
--   "battlefield_kill_destruction_god", -- might not exist
--   "battlefield_kill_eyes_on_fire",    -- might not exist
--   "battlefield_kill_fifth",
--   "battlefield_kill_first",
--   "battlefield_kill_fourth",
--   "battlefield_kill_more_than_sixth",
--   "battlefield_kill_second",
--   "battlefield_kill_third",
--   "battlefield_start",
--   "battlefield_win",
--   "cdi_scene_artillery_contents2",
--   "cdi_scene_artillery_quest_accept_title",
--   "cdi_scene_artillery_title",
--   "cdi_scene_combat_contents2",
--   "cdi_scene_combat_contents3",
--   "cdi_scene_combat_title",
--   "cdi_scene_complete_quest_title",
--   "cdi_scene_find_captain_title",
--   "cdi_scene_glider_quest_accept_title",
--   "cdi_scene_go_to_oldman_title",
--   "cdi_scene_guardtower_title",
--   "cdi_scene_ladder_contents1",
--   "cdi_scene_ladder_title",
--   "cdi_scene_quest_accept_title",
--   "cdi_scene_siege_contents2",
--   "cdi_scene_siege_quest_accept_title",
--   "cdi_scene_siege_title",
--   "cdi_scene_start_contents2",
--   "cdi_scene_tribe_quest_accept_title",
--   "edit_box_text_added",
--   "edit_box_text_deleted",
--   "event_actability_expert_changed",
--   "event_auction_item_putdown",
--   "event_auction_item_putup",
--   "event_commercial_mail_alarm",
--   "event_current_mail_delete",
--   "event_explored_region",
--   "event_item_added",
--   "event_item_ancient_added",
--   "event_item_artifact_added",
--   "event_item_epic_added",
--   "event_item_heroic_added",
--   "event_item_legendary_added",
--   "event_item_mythic_added",
--   "event_item_rare_added",
--   "event_item_socketing_result_fail",
--   "event_item_socketing_result_success",
--   "event_item_uncommon_added",
--   "event_item_unique_added",
--   "event_item_wonder_added",
--   "event_mail_alarm",
--   "event_mail_delete",
--   "event_mail_read_changed",
--   "event_mail_send",
--   "event_message_box_ability_change_onok",
--   "event_message_box_aution_bid_onok",
--   "event_message_box_aution_direct_onok",
--   "event_message_box_default_onok",
--   "event_message_box_item_destroy_onok",
--   "event_nation_independence",
--   "event_quest_completed_daily",
--   "event_quest_completed_daily_hunt",
--   "event_quest_completed_group",
--   "event_quest_completed_hidden",
--   "event_quest_completed_livelihood",
--   "event_quest_completed_main",
--   "event_quest_completed_normal",
--   "event_quest_completed_saga",
--   "event_quest_completed_task",
--   "event_quest_completed_tutorial",
--   "event_quest_completed_weekly",
--   "event_quest_directing_mode", -- might not exist
--   "event_quest_dropped_daily",
--   "event_quest_dropped_daily_hunt",
--   "event_quest_dropped_group",
--   "event_quest_dropped_hidden",
--   "event_quest_dropped_livelihood",
--   "event_quest_dropped_main",
--   "event_quest_dropped_normal",
--   "event_quest_dropped_saga",
--   "event_quest_dropped_task",
--   "event_quest_dropped_tutorial",
--   "event_quest_dropped_weekly",
--   "event_quest_failed_daily",
--   "event_quest_failed_daily_hunt",
--   "event_quest_failed_group",
--   "event_quest_failed_hidden",
--   "event_quest_failed_livelihood",
--   "event_quest_failed_main",
--   "event_quest_failed_normal",
--   "event_quest_failed_saga",
--   "event_quest_failed_task",
--   "event_quest_failed_tutorial",
--   "event_quest_failed_weekly",
--   "event_quest_list_changed",
--   "event_quest_started_daily",
--   "event_quest_started_daily_hunt",
--   "event_quest_started_group",
--   "event_quest_started_hidden",
--   "event_quest_started_livelihood",
--   "event_quest_started_main",
--   "event_quest_started_normal",
--   "event_quest_started_saga",
--   "event_quest_started_task",
--   "event_quest_started_tutorial",
--   "event_quest_started_weekly",
--   "event_siege_defeat",
--   "event_siege_ready_to_siege",
--   "event_siege_victory",
--   "event_trade_can_not_putup",
--   "event_trade_item_and_money_recv",
--   "event_trade_item_putup",
--   "event_trade_item_recv",
--   "event_trade_item_tookdown",
--   "event_trade_lock",
--   "event_trade_money_recv",
--   "event_trade_unlock",
--   "event_ulc_activate",
--   "event_web_messenger_alarm",
--   "gender_transfer",
--   "high_rank_achievement",
--   "item_synthesis_result",
--   "listbox_item_selected",
--   "listbox_item_toggled",
--   "listbox_over",
--   "login_stage_music_before_login",
--   "login_stage_music_character_stage",
--   "login_stage_music_creator",
--   "login_stage_music_world_select",
--   "login_stage_ready_to_connect_world",
--   "login_stage_start_game",
--   "login_stage_try_login",
--   "login_stage_world_select",
--   "low_rank_achievement",
--   "makeup_done",
--   "successor_skill_change",
--   "successor_skill_select",
--   "tutorial_contents_2584_2_1",
--   "tutorial_contents_2584_2_2",
--   "tutorial_contents_2585_2_1",
--   "tutorial_contents_2585_2_2",
--   "tutorial_contents_2586_2_1",
--   "tutorial_contents_2586_2_2",
--   "tutorial_contents_2587_1_1",
--   "tutorial_contents_2588_1_1",
--   "tutorial_contents_2589_2_1",
--   "tutorial_contents_2589_2_2",
--   "tutorial_contents_2590_2_1",
--   "tutorial_contents_2590_2_2",
--   "tutorial_contents_2591_1_1",
--   "tutorial_contents_2592_1_1",
--   "tutorial_contents_2593_1_1",
--   "tutorial_contents_2594_2_1",
--   "tutorial_contents_2594_2_2",
--   "tutorial_contents_2595_1_1",
--   "tutorial_contents_2596_2_1",
--   "tutorial_contents_2596_2_2",
--   "tutorial_contents_2597_1_1",
--   "tutorial_contents_2598_2_1",
--   "tutorial_contents_2598_2_2",
--   "tutorial_contents_2599_1_1",
--   "tutorial_contents_2600_1_1",
--   "tutorial_contents_2601_1_1",
--   "tutorial_contents_2602_1_1",
--   "tutorial_contents_2603_1_1",
--   "tutorial_contents_2604_1_1",
--   "tutorial_contents_2605_1_1",
--   "tutorial_contents_2606_1_1",
--   "tutorial_contents_2607_1_1",
--   "tutorial_contents_2608_1_1",
--   "tutorial_contents_2609_2_1",
--   "tutorial_contents_2609_2_2",
--   "tutorial_contents_2610_1_1",
--   "tutorial_contents_2611_1_1",
--   "tutorial_contents_2612_1_1",
--   "tutorial_contents_2613_1_1",
--   "tutorial_contents_2614_1_1",
--   "tutorial_contents_2615_1_1",
--   "tutorial_contents_2616_1_1",
--   "tutorial_contents_2617_1_1",
--   "tutorial_contents_2618_1_1",
--   "tutorial_contents_2619_1_1",
--   "tutorial_contents_2620_1_1",
--   "tutorial_contents_2621_1_1",
--   "tutorial_contents_2622_1_1",
--   "tutorial_contents_2623_1_1",
--   "tutorial_contents_2624_1_1",
--   "tutorial_contents_2625_1_1",
--   "tutorial_contents_2626_1_1",
--   "tutorial_contents_2627_1_1",
--   "tutorial_contents_2628_1_1",
--   "tutorial_contents_2629_1_1",
--   "tutorial_contents_2630_1_1",
--   "tutorial_contents_2631_1_1",
--   "tutorial_contents_2632_1_1",
--   "tutorial_contents_2633_1_1",
--   "tutorial_contents_2634_1_1",
--   "tutorial_contents_2635_1_1",
--   "tutorial_contents_2636_1_1",
--   "tutorial_contents_2639_1_1",
--   "tutorial_contents_2640_1_1",
--   "tutorial_contents_2641_1_1",
--   "tutorial_contents_2642_1_1",
--   "tutorial_contents_2643_1_1",
--   "tutorial_contents_2644_1_1",
--   "tutorial_contents_2645_1_1",
--   "tutorial_contents_2646_1_1",
--   "tutorial_contents_2647_1_1",
--   "tutorial_contents_2648_1_1",
--   "tutorial_contents_2649_1_1",
--   "tutorial_contents_2650_1_1",
--   "tutorial_contents_2651_1_1",
--   "tutorial_contents_2652_1_1",
--   "tutorial_contents_2653_1_1",
-- }

-- local currentSound = 1

-- local backButton = UIParent:CreateWidget("button", "back", "UIParent")
-- backButton:SetStyle("text_default")
-- backButton:SetText("<")
-- backButton:Show(true)
-- backButton:SetWidth(50)

-- local playButton = UIParent:CreateWidget("button", "back", "UIParent")
-- playButton:SetStyle("text_default")
-- playButton:SetText(sounds[currentSound] .. " " .. currentSound .. "/" .. #sounds)
-- playButton:Show(true)
-- playButton:SetWidth(300)

-- local forwardButton = UIParent:CreateWidget("button", "back", "UIParent")
-- forwardButton:SetStyle("text_default")
-- forwardButton:SetText(">")
-- forwardButton:Show(true)
-- forwardButton:SetWidth(50)

-- playButton:AddAnchor("CENTER", 0, 0)
-- backButton:AddAnchor("RIGHT", playButton, "LEFT", -10, 0)
-- forwardButton:AddAnchor("LEFT", playButton, "RIGHT", 10, 0)

-- backButton:SetHandler("OnClick", function (self, mouseButton, doubleClick, keyModifier)
--   if currentSound > 1 then
--     currentSound = currentSound - 1
--     playButton:SetText(sounds[currentSound] .. " " .. currentSound .. "/" .. #sounds)
--     playButton:SetWidth(300)
--   end
-- end)

-- playButton:SetHandler("OnClick", function (self, mouseButton, doubleClick, keyModifier)
--   ADDON:ChatLog(X2Sound:PlayUISound(sounds[currentSound], true))
-- end)

-- forwardButton:SetHandler("OnClick", function (self, mouseButton, doubleClick, keyModifier)
--   if currentSound < #sounds then
--     currentSound = currentSound + 1
--     playButton:SetText(sounds[currentSound] .. " " .. currentSound .. "/" .. #sounds)
--     playButton:SetWidth(300)
--   end
-- end)

--------------------------------------------------------------------------------

---@TODO: I need to test secondary password but I dont want to accidently lock my account
-- ADDON:ShowContent(UIC_ENTER_SECOND_PASSWORD, true)
-- ADDON:ShowContent(UIC_INTERACT_SECOND_PASSWORD, true)
-- ADDON:ShowContent(UIC_SET_SECOND_PASSWORD, true)

--------------------------------------------------------------------------------

--- label showing current targets id to determine if bd id changes which is why he detrack targets

-- local userIdLabel = UIParent:CreateWidget("label", "unitId", "UIParent")
-- userIdLabel:Show(true)
-- userIdLabel:SetHeight(20)
-- userIdLabel:SetAutoResize(true)
-- userIdLabel.style:SetAlign(ALIGN_LEFT)
-- userIdLabel:AddAnchor("TOPLEFT", 20, 0)
-- -- userIdLabel:SetText(X2Unit:GetTargetUnitId())

-- local userBG = userIdLabel:CreateColorDrawable(0, 0, 0, .3, "background")
-- userBG:AddAnchor("TOPLEFT", userIdLabel, 0, 0)
-- userBG:AddAnchor("BOTTOMRIGHT", userIdLabel, 0, 0)

-- userIdLabel:RegisterEvent("TARGET_CHANGED")
-- userIdLabel:SetHandler("OnEvent", function (self, event, ...)
--   if event == "TARGET_CHANGED" then
--     local stringId, targetType = ...
--     if stringId then
--       userIdLabel:SetText(stringId)
--     else
--       userIdLabel:SetText("")
--     end
--   end
-- end)


-- UIParent:SetEventHandler("TARGET_CHANGED", function (stringId, targetType)
--   --stringId [0-9a-f]{3?, 8?}
--   if stringId then
--     userIdLabel:SetText(stringId)
--   else
--     userIdLabel:SetText("")
--   end
-- end)

--------------------------------------------------------------------------------

--- characterInfo
--- make it so that you can show any item equiped costume->glider
--- 10 on one side 10 on another

local weaponWidget = UIParent:CreateWidget("emptywidget", "weapon", "UIParent")
weaponWidget:Show(true)
icon_size = 34
weaponWidget:SetExtent(icon_size, icon_size * 4)

local timeCheck = 0
weaponWidget:SetHandler("OnUpdate", function (self, frameTime)
  timeCheck = timeCheck + frameTime
  if timeCheck < 100 then
    return
  end
  timeCheck = frameTime
  --- check if uibounds exists
  local uiBounds = UIParent:GetUIBound("ui_bound_playerFrame")
  if uiBounds then
    -- weaponWidget:AddAnchor("TOPLEFT", uiBounds.bound.x / uiBounds.screenResolution.scale - (icon_size + 2), uiBounds.bound.y / uiBounds.screenResolution.scale - 3)
    weaponWidget:AddAnchor("TOPLEFT", uiBounds.bound.x / uiBounds.screenResolution.scale - (icon_size + 2),
      uiBounds.bound.y / uiBounds.screenResolution.scale)
  end
end)


local uiBounds = UIParent:GetUIBound("ui_bound_playerFrame")

if uiBounds then
  weaponWidget:AddAnchor("TOPLEFT", uiBounds.bound.x / uiBounds.screenResolution.scale - (icon_size + 2),
    uiBounds.bound.y / uiBounds.screenResolution.scale)
end


local mainHandBg = weaponWidget:CreateNinePartDrawable(TEXTURE_PATH.HUD, "background")
mainHandBg:SetTextureInfo("action_slot_default_bg", "dimmed")
mainHandBg:SetExtent(icon_size, icon_size)
mainHandBg:AddAnchor("TOP", weaponWidget, 0, -1)

local mainHand = weaponWidget:CreateChildWidget("slot", "mainhand", 0, true)
mainHand:SetExtent(icon_size, icon_size)
mainHand:EstablishSlot(ISLOT_EQUIPMENT, ES_MAINHAND - 1)
mainHand:AddAnchor("TOP", weaponWidget, 0, -1)

local offHandBg = weaponWidget:CreateNinePartDrawable(TEXTURE_PATH.HUD, "background")
offHandBg:SetTextureInfo("action_slot_default_bg", "dimmed")
offHandBg:SetExtent(icon_size, icon_size)
offHandBg:AddAnchor("TOP", mainHandBg, "BOTTOM", 0, -1)

local offHand = weaponWidget:CreateChildWidget("slot", "offhand", 0, true)
offHand:SetExtent(icon_size, icon_size)
offHand:EstablishSlot(ISLOT_EQUIPMENT, ES_OFFHAND - 1)
offHand:AddAnchor("TOP", mainHand, "BOTTOM", 0, -1)

local rangeBg = weaponWidget:CreateNinePartDrawable(TEXTURE_PATH.HUD, "background")
rangeBg:SetTextureInfo("action_slot_default_bg", "dimmed")
rangeBg:SetExtent(icon_size, icon_size)
rangeBg:AddAnchor("TOP", offHandBg, "BOTTOM", 0, -1)

local range = weaponWidget:CreateChildWidget("slot", "range", 0, true)
range:SetExtent(icon_size, icon_size)
range:EstablishSlot(ISLOT_EQUIPMENT, ES_RANGED - 1)
range:AddAnchor("TOP", offHand, "BOTTOM", 0, -1)

local backpackBg = weaponWidget:CreateNinePartDrawable(TEXTURE_PATH.HUD, "background")
backpackBg:SetTextureInfo("action_slot_default_bg", "dimmed")
backpackBg:SetExtent(icon_size, icon_size)
backpackBg:AddAnchor("TOP", rangeBg, "BOTTOM", 0, -1)

local backpack = weaponWidget:CreateChildWidget("slot", "backpack", 0, true)
backpack:SetExtent(icon_size, icon_size)
backpack:EstablishSlot(ISLOT_EQUIPMENT, ES_BACKPACK - 1)
backpack:AddAnchor("TOP", range, "BOTTOM", 0, -1)



-- local powerstones = {
--   ["Bloody Soulshard"] = 1,
--   ["Solar Soulshard"] = 1,
-- }

-- ADDON:ImportAPI(API.X2Bag)
-- for i = 1, 150 do
--   local bagItemInfo = X2Bag:GetBagItemInfo(0, i)

--   if powerstones[bagItemInfo.name] then
--     -- create slot
--   end
-- end

-- local red= weaponWidget:CreateColorDrawable(1, 0, 0, 1, "overoverlay")
-- red:AddAnchor("TOPLEFT", mainHandBg, 0, 0)
-- red:AddAnchor("BOTTOMRIGHT", backpackBg, 0, 0)

-- gutter 2 4px off mpBar
-- height 21*.93+17*.93+22*.93 (60), width 304

--------------------------------------------------------------------------------

X2Hotkey:SetBindingUiEvent("ui_draw_level_5", "F7")
X2Hotkey:SetBindingUiEvent("ui_draw_level_6", "F8")
X2Hotkey:SetBindingUiEvent("reload", "F11")

UIParent:SetEventHandler("HOTKEY_ACTION", function (actionName, keyUp)
  if actionName == "ui_draw_level_5" and keyUp then
    local value = X2Option:GetConsoleVariable("ui_draw_level") or "1"

    if value == "5" then
      value = "1"
    else
      value = "5"
    end

    X2Option:SetConsoleVariable("ui_draw_level", value)
  elseif actionName == "ui_draw_level_6" and keyUp then
    local value = X2Option:GetConsoleVariable("ui_draw_level") or "1"

    if value == "6" then
      value = "1"
    else
      value = "6"
    end

    X2Option:SetConsoleVariable("ui_draw_level", value)
  elseif actionName == "reload" and keyUp then
    ADDON:ChatLog("reloading")
    ADDON:ReloadAddon("manager")
  end
end)

--------------------------------------------------------------------------------

-- local button_styles = {
--   "accept_v",
--   "actionbar_lock",
--   "actionbar_rotate",
--   "actionbar_unlock",
--   "auction_post_bind",
--   "auction_successor",
--   "auction_successor_grey",
--   "banner_close",
--   "btn_close_default",
--   "btn_close_mini",
--   "btn_raid_recruit",
--   "butler_change_look",
--   "button_common_book",
--   "button_common_option",
--   "button_complete",
--   "button_request",
--   "button_search",
--   "cancel_mini",
--   "cancel_search_in_inventory",
--   "char_select_page_represent_char",
--   "character",
--   "character_equip_close",
--   "character_equip_open",
--   "character_info_bless_uthstin",
--   "character_info_btn_shop",
--   "character_info_change",
--   "character_info_detail_btn",
--   "character_lock_off",
--   "character_lock_on",
--   "character_search",
--   "character_slot_created",
--   "character_slot_created_red",
--   "character_slot_created_red_selected",
--   "character_slot_created_selected",
--   "character_slot_enchant",
--   "character_slot_equipment",
--   "character_slot_impossible",
--   "character_slot_possible",
--   "character_swap",
--   "character_swap_on",
--   "chat_tab_selected",
--   "chat_tab_unselected",
--   "combat_resource_close",
--   "combat_resource_open",
--   "common_back",
--   "common_hud",
--   "config",
--   "customizing_freeze",
--   "customizing_load",
--   "customizing_save",
--   "deposit_withdrawal",
--   "down_arrow",
--   "equipment_map",
--   "esc",
--   "exit",
--   "expansion",
--   "expansion_small",
--   "expedition_war_alarm",
--   "first_page",
--   "grid_folder_down_arrow",
--   "grid_folder_right_arrow",
--   "grid_folder_up_arrow",
--   "housing_demolish",
--   "housing_remove",
--   "housing_rotation",
--   "housing_sale",
--   "housing_ucc",
--   "hud_btn_archelife_off",
--   "hud_btn_chat_add_tab",
--   "hud_btn_chat_scroll_down_bottom",
--   "hud_btn_convenience",
--   "hud_btn_eventcenter",
--   "hud_btn_hero_reputation",
--   "hud_btn_ime_english",
--   "hud_btn_ime_korea",
--   "hud_btn_ingameshop",
--   "hud_btn_instance",
--   "hud_btn_merchant",
--   "hud_btn_url_link",
--   "hud_instance",
--   "ingameshop_beautyshop",
--   "ingameshop_buy",
--   "ingameshop_cart",
--   "ingameshop_charge_cash",
--   "ingameshop_gender_transfer",
--   "ingameshop_present",
--   "instance_out",
--   "instance_reentry",
--   "inventory_sort",
--   "item_enchant",
--   "item_guide",
--   "item_lock_in_bag",
--   "last_page",
--   "left_arrow",
--   "list",
--   "location",
--   "lock_equip_item",
--   "lock_item",
--   "login_stage_character_create",
--   "login_stage_enter_world",
--   "login_stage_exit_game",
--   "login_stage_game_start",
--   "login_stage_model_change",
--   "login_stage_option_game",
--   "login_stage_staff",
--   "login_stage_text_default",
--   "login_stage_text_small",
--   "login_stage_user_ui",
--   "look_convert",
--   "loot_gacha",
--   "mail_all_mail_delete",
--   "mail_read_mail_delete",
--   "mail_receive_all_item",
--   "mail_receive_money",
--   "mail_selected_delete",
--   "mail_take",
--   "map_alpha",
--   "map_alpha_select",
--   "map_eraser",
--   "map_position",
--   "menu",
--   "minimap_off",
--   "minimap_on",
--   "minimap_ping",
--   "minimap_playercenter",
--   "minimap_resize",
--   "minimap_suboption",
--   "minimap_zoomin",
--   "minimap_zoomout",
--   "minus",
--   "modelview_rotate_left",
--   "modelview_rotate_right",
--   "next_page",
--   "next_page_action_bar",
--   "next_page_tutorial",
--   "open_battlefield",
--   "play",
--   "plus",
--   "portal_rename",
--   "portal_spawn",
--   "premium_buy_in_char_sel_page",
--   "prev_page",
--   "prev_page_action_bar",
--   "prev_page_back",
--   "prev_page_tutorial",
--   "price",
--   "quest_close",
--   "quest_cutscene_close",
--   "quest_open",
--   "question_mark",
--   "raid_recall",
--   "raid_recruit_alarm",
--   "ready_to_siege_alarm",
--   "reject_x",
--   "repair",
--   "report",
--   "right_arrow",
--   "roster_setting",
--   "save",
--   "search_mini",
--   "search_mini_green",
--   "siege_war_alarm",
--   "squad_mini_view_close",
--   "squad_mini_view_open",
--   "survey_form_alarm",
--   "text_default",
--   "text_default_small",
--   "trade_check_green",
--   "trade_check_yellow",
--   "unlock_equip_item",
--   "unlock_item",
--   "up_arrow",
--   "uthstin_stat_max_expand",
--   "wastebasket_shape",
--   "wastebasket_shape_small",
--   "write",
--   "zone_permission_out",
--   "zone_permission_wait",
-- }

-- local currentStyle = 1

-- local backButton = UIParent:CreateWidget("button", "backButton", "UIParent")
-- backButton:SetStyle("text_default")
-- backButton:SetText("<")
-- backButton:Show(true)
-- backButton:SetWidth(50)

-- local showcaseButton = UIParent:CreateWidget("button", "showcaseButton", "UIParent")
-- showcaseButton:SetStyle(button_styles[currentStyle])
-- showcaseButton:Show(true)
-- -- playButton:SetWidth(300)

-- local forwardButton = UIParent:CreateWidget("button", "forwardButton", "UIParent")
-- forwardButton:SetStyle("text_default")
-- forwardButton:SetText(">")
-- forwardButton:Show(true)
-- forwardButton:SetWidth(50)

-- local textbox = UIParent:CreateWidget("textbox", "testate", "UIParent")
-- textbox:Show(true)
-- textbox:SetHeight(20)
-- textbox:SetText(button_styles[currentStyle] .. " " .. currentStyle .. "/" .. #button_styles)

-- showcaseButton:AddAnchor("CENTER", 0, 0)
-- backButton:AddAnchor("RIGHT", showcaseButton, "LEFT", -10, 0)
-- forwardButton:AddAnchor("LEFT", showcaseButton, "RIGHT", 10, 0)
-- textbox:AddAnchor("TOPLEFT", backButton, "BOTTOMLEFT", 0, 0)
-- textbox:AddAnchor("TOPRIGHT", forwardButton, "BOTTOMRIGHT", 0, 0)

-- backButton:SetHandler("OnClick", function (self, mouseButton, doubleClick, keyModifier)
--   if currentStyle > 1 then
--     currentStyle = currentStyle - 1
--     showcaseButton:SetStyle(button_styles[currentStyle])
--     textbox:SetText(button_styles[currentStyle] .. " " .. currentStyle .. "/" .. #button_styles)
--   end
-- end)

-- forwardButton:SetHandler("OnClick", function (self, mouseButton, doubleClick, keyModifier)
--   if currentStyle < #button_styles then
--     currentStyle = currentStyle + 1
--     showcaseButton:SetStyle(button_styles[currentStyle])
--     textbox:SetText(button_styles[currentStyle] .. " " .. currentStyle .. "/" .. #button_styles)
--   end
-- end)

--------------------------------------------------------------------------------

-- local UIC = {
--   UIC_ABILITY_CHANGE = UIC_ABILITY_CHANGE,
--   UIC_ACHIEVEMENT = UIC_ACHIEVEMENT,
--   UIC_ACTABILITY = UIC_ACTABILITY,
--   UIC_ADDON = UIC_ADDON,
--   UIC_APPELLATION = UIC_APPELLATION,
--   UIC_AUCTION = UIC_AUCTION,
--   UIC_AUTH_MSG_WND = UIC_AUTH_MSG_WND,
--   UIC_BAG = UIC_BAG,
--   UIC_BANK = UIC_BANK,
--   UIC_BEAUTY_SHOP = UIC_BEAUTY_SHOP,
--   UIC_BLESS_UTHSTIN = UIC_BLESS_UTHSTIN,
--   UIC_BUTLER_INFO = UIC_BUTLER_INFO,
--   UIC_CHALLENGE = UIC_CHALLENGE,
--   UIC_CHANGE_VISUAL_RACE = UIC_CHANGE_VISUAL_RACE,
--   UIC_CHARACTER_INFO = UIC_CHARACTER_INFO,
--   UIC_CHARACTER_INFO_VISUAL_RACE = UIC_CHARACTER_INFO_VISUAL_RACE,
--   UIC_CHECK_BOT_WND = UIC_CHECK_BOT_WND,
--   UIC_CHECK_SECOND_PASSWORD = UIC_CHECK_SECOND_PASSWORD,
--   UIC_CHRONICLE_BOOK_WND = UIC_CHRONICLE_BOOK_WND,
--   UIC_CLEAR_SECOND_PASSWORD = UIC_CLEAR_SECOND_PASSWORD,
--   UIC_CLIENT_DIRVEN_CONTENTS = UIC_CLIENT_DIRVEN_CONTENTS,
--   UIC_CLIENT_DIRVEN_TITLE = UIC_CLIENT_DIRVEN_TITLE,
--   UIC_CLIENT_DRIVEN_EXIT_BTN = UIC_CLIENT_DRIVEN_EXIT_BTN,
--   UIC_COFFER = UIC_COFFER,
--   UIC_COMMERCIAL_MAIL = UIC_COMMERCIAL_MAIL,
--   UIC_COMMUNITY = UIC_COMMUNITY,
--   UIC_CRAFT_BOOK = UIC_CRAFT_BOOK,
--   UIC_CRAFT_ORDER = UIC_CRAFT_ORDER,
--   UIC_CREATE_EXPEDITION = UIC_CREATE_EXPEDITION,
--   UIC_DEATH_AND_RESURRECTION_WND = UIC_DEATH_AND_RESURRECTION_WND,
--   UIC_DEV_WINDOW = UIC_DEV_WINDOW,
--   UIC_DROPDOWN_LIST = UIC_DROPDOWN_LIST,
--   UIC_DYNAMIC_ACTIONBAR = UIC_DYNAMIC_ACTIONBAR,
--   UIC_ENCHANT = UIC_ENCHANT,
--   UIC_ENTER_SECOND_PASSWORD = UIC_ENTER_SECOND_PASSWORD,
--   UIC_EQUIP_SLOT_REINFORCE = UIC_EQUIP_SLOT_REINFORCE,
--   UIC_EQUIP_SLOT_REINFORCE_TAB = UIC_EQUIP_SLOT_REINFORCE_TAB,
--   UIC_EVENT_CENTER = UIC_EVENT_CENTER,
--   UIC_EXIT_GAME = UIC_EXIT_GAME,
--   UIC_EXPAND_INVENTORY = UIC_EXPAND_INVENTORY,
--   UIC_EXPAND_JOB = UIC_EXPAND_JOB,
--   UIC_EXPEDITION = UIC_EXPEDITION,
--   UIC_EXPEDITION_GUILD_FUNCTION_CHANGE_BUFF = UIC_EXPEDITION_GUILD_FUNCTION_CHANGE_BUFF,
--   UIC_FAMILY = UIC_FAMILY,
--   UIC_FOLLOW = UIC_FOLLOW,
--   UIC_FORCE_ATTACK = UIC_FORCE_ATTACK,
--   UIC_FRIEND = UIC_FRIEND,
--   UIC_GAME_EXIT_FRAME = UIC_GAME_EXIT_FRAME,
--   UIC_GAME_TOOLTIP_WND = UIC_GAME_TOOLTIP_WND,
--   UIC_GUILD_BANK = UIC_GUILD_BANK,
--   UIC_HERO = UIC_HERO,
--   UIC_HERO_ELECTION = UIC_HERO_ELECTION,
--   UIC_HIDDEN_QUEST = UIC_HIDDEN_QUEST,
--   UIC_INGAME_SHOP = UIC_INGAME_SHOP,
--   UIC_INTERACT_SECOND_PASSWORD = UIC_INTERACT_SECOND_PASSWORD,
--   UIC_ITEM_GUIDE = UIC_ITEM_GUIDE,
--   UIC_ITEM_LOCK = UIC_ITEM_LOCK,
--   UIC_ITEM_REPAIR = UIC_ITEM_REPAIR,
--   UIC_LOCAL_DEVELOPMENT_BOARD = UIC_LOCAL_DEVELOPMENT_BOARD,
--   UIC_LOOK_CONVERT = UIC_LOOK_CONVERT,
--   UIC_LOOT_GACHA = UIC_LOOT_GACHA,
--   UIC_MAIL = UIC_MAIL,
--   UIC_MAIN_ACTION_BAR = UIC_MAIN_ACTION_BAR,
--   UIC_MAKE_CRAFT_ORDER = UIC_MAKE_CRAFT_ORDER,
--   UIC_MARKET_PRICE = UIC_MARKET_PRICE,
--   UIC_MEGAPHONE = UIC_MEGAPHONE,
--   UIC_MODE_ACTIONBAR = UIC_MODE_ACTIONBAR,
--   UIC_MY_FARM_INFO = UIC_MY_FARM_INFO,
--   UIC_NATION = UIC_NATION,
--   UIC_NOTIFY_ACTABILITY = UIC_NOTIFY_ACTABILITY,
--   UIC_NOTIFY_SKILL = UIC_NOTIFY_SKILL,
--   UIC_OPTIMIZATION = UIC_OPTIMIZATION,
--   UIC_OPTION_FRAME = UIC_OPTION_FRAME,
--   UIC_PARTY = UIC_PARTY,
--   UIC_PLAYER_EQUIPMENT = UIC_PLAYER_EQUIPMENT,
--   UIC_PLAYER_UNITFRAME = UIC_PLAYER_UNITFRAME,
--   UIC_PREMIUM = UIC_PREMIUM,
--   UIC_QUEST_CINEMA_FADE_WND = UIC_QUEST_CINEMA_FADE_WND,
--   UIC_QUEST_CINEMA_WND = UIC_QUEST_CINEMA_WND,
--   UIC_QUEST_LIST = UIC_QUEST_LIST,
--   UIC_QUEST_NOTIFIER = UIC_QUEST_NOTIFIER,
--   UIC_RAID = UIC_RAID,
--   UIC_RAID_RECRUIT = UIC_RAID_RECRUIT,
--   UIC_RAID_TEAM_MANAGER = UIC_RAID_TEAM_MANAGER,
--   UIC_RANK = UIC_RANK,
--   UIC_RANK_LOCAL_VIEW = UIC_RANK_LOCAL_VIEW,
--   UIC_RECOVER_EXP = UIC_RECOVER_EXP,
--   UIC_RENAME_EXPEDITION = UIC_RENAME_EXPEDITION,
--   UIC_REPORT_BAD_USER = UIC_REPORT_BAD_USER,
--   UIC_REQUEST_BATTLEFIELD = UIC_REQUEST_BATTLEFIELD,
--   UIC_RESIDENT_TOWNHALL = UIC_RESIDENT_TOWNHALL,
--   UIC_RETURN_ACCOUNT_REWARD_WND = UIC_RETURN_ACCOUNT_REWARD_WND,
--   UIC_ROSTER_MANAGER_WND = UIC_ROSTER_MANAGER_WND,
--   UIC_SCHEDULE_ITEM = UIC_SCHEDULE_ITEM,
--   UIC_SELECT_CHARACTER = UIC_SELECT_CHARACTER,
--   UIC_SET_SECOND_PASSWORD = UIC_SET_SECOND_PASSWORD,
--   UIC_SHORTCUT_ACTIONBAR = UIC_SHORTCUT_ACTIONBAR,
--   UIC_SIEGE_RAID_REGISTER_WND = UIC_SIEGE_RAID_REGISTER_WND,
--   UIC_SIEGE_RAID_TEAM_MEMBER_LIST_WND = UIC_SIEGE_RAID_TEAM_MEMBER_LIST_WND,
--   UIC_SKILL = UIC_SKILL,
--   UIC_SLAVE_EQUIPMENT = UIC_SLAVE_EQUIPMENT,
--   UIC_SPECIALTY_BUY = UIC_SPECIALTY_BUY,
--   UIC_SPECIALTY_INFO = UIC_SPECIALTY_INFO,
--   UIC_SPECIALTY_SELL = UIC_SPECIALTY_SELL,
--   UIC_SQUAD = UIC_SQUAD,
--   UIC_SQUAD_MINIVIEW = UIC_SQUAD_MINIVIEW,
--   UIC_STABLER = UIC_STABLER,
--   UIC_STORE = UIC_STORE,
--   UIC_SYSTEM_CONFIG_FRAME = UIC_SYSTEM_CONFIG_FRAME,
--   UIC_TARGET_EQUIPMENT = UIC_TARGET_EQUIPMENT,
--   UIC_TARGET_UNITFRAME = UIC_TARGET_UNITFRAME,
--   UIC_TGOS = UIC_TGOS,
--   UIC_TRADE = UIC_TRADE,
--   UIC_TRADER = UIC_TRADER,
--   UIC_TRADE_GOOD_PRICE_INFORMATION = UIC_TRADE_GOOD_PRICE_INFORMATION,
--   UIC_UI_AVI = UIC_UI_AVI,
--   UIC_WEB_HELP = UIC_WEB_HELP,
--   UIC_WEB_MESSENGER = UIC_WEB_MESSENGER,
--   UIC_WEB_PLAY_DIARY = UIC_WEB_PLAY_DIARY,
--   UIC_WEB_PLAY_DIARY_INSTANCE = UIC_WEB_PLAY_DIARY_INSTANCE,
--   UIC_WEB_WIKI = UIC_WEB_WIKI,
--   UIC_WHISPER = UIC_WHISPER,
--   UIC_WORLDMAP = UIC_WORLDMAP,
-- }

-- local file = open("temp/example.txt", "w")

-- for k, v in pairs(UIC) do
--   local content = { ADDON:GetContentMainScriptPosVis(v) }
--   -- local content = ADDON:GetContent(v)

--   if content ~= nil and #content > 0 then
--     file:write(k, "\n", dump(content), "\n")
--   end
-- end

-- file:close()

--------------------------------------------------------------------------------

-- local units = {
--   "team_1_1",
--   "team_1_2",
--   "team_1_3",
--   "team_1_4",
--   "team_1_5",
--   "team_1_6",
--   "team_1_7",
--   "team_1_8",
--   "team_1_9",
--   "team_1_10",
--   "team_1_11",
--   "team_1_12",
--   "team_1_13",
--   "team_1_14",
--   "team_1_15",
--   "team_1_16",
--   "team_1_17",
--   "team_1_18",
--   "team_1_19",
--   "team_1_20",
--   "team_1_21",
--   "team_1_22",
--   "team_1_23",
--   "team_1_24",
--   "team_1_25",
--   "team_1_26",
--   "team_1_27",
--   "team_1_28",
--   "team_1_29",
--   "team_1_30",
--   "team_1_31",
--   "team_1_32",
--   "team_1_33",
--   "team_1_34",
--   "team_1_35",
--   "team_1_36",
--   "team_1_37",
--   "team_1_38",
--   "team_1_39",
--   "team_1_40",
--   "team_1_41",
--   "team_1_42",
--   "team_1_43",
--   "team_1_44",
--   "team_1_45",
--   "team_1_46",
--   "team_1_47",
--   "team_1_48",
--   "team_1_49",
--   "team_1_50",
--   "team_2_1",
--   "team_2_2",
--   "team_2_3",
--   "team_2_4",
--   "team_2_5",
--   "team_2_6",
--   "team_2_7",
--   "team_2_8",
--   "team_2_9",
--   "team_2_10",
--   "team_2_11",
--   "team_2_12",
--   "team_2_13",
--   "team_2_14",
--   "team_2_15",
--   "team_2_16",
--   "team_2_17",
--   "team_2_18",
--   "team_2_19",
--   "team_2_20",
--   "team_2_21",
--   "team_2_22",
--   "team_2_23",
--   "team_2_24",
--   "team_2_25",
--   "team_2_26",
--   "team_2_27",
--   "team_2_28",
--   "team_2_29",
--   "team_2_30",
--   "team_2_31",
--   "team_2_32",
--   "team_2_33",
--   "team_2_34",
--   "team_2_35",
--   "team_2_36",
--   "team_2_37",
--   "team_2_38",
--   "team_2_39",
--   "team_2_40",
--   "team_2_41",
--   "team_2_42",
--   "team_2_43",
--   "team_2_44",
--   "team_2_45",
--   "team_2_46",
--   "team_2_47",
--   "team_2_48",
--   "team_2_49",
--   "team_2_50",
-- }
-- local sum = 0
-- local count = 0

-- for key, unit in pairs(units) do
--   local result = X2Unit:UnitGearScore(unit, true)

--   for i = 1, X2Unit:UnitBuffCount(unit) do
--     local buff = X2Unit:UnitBuff(unit, i)
--     local unitId = X2Unit:GetUnitId(unit)
--     local unitName = X2Unit:GetUnitNameById(unitId)

--     if buff.buff_id == 2385 then
--       ADDON:ChatLog(unitName .. " " .. buff.timeLeft)
--     end
--   end

--   if result then
--     sum = sum + result
--     count = count + 1
--   end
-- end

-- local average = count == 0 and 0 or (sum / count)

-- ADDON:ChatLog("Average Gear Score: %d (%d)", average, count)

--------------------------------------------------------------------------------

-- local tab = UIParent:CreateWidget("tab", "testingtab", "UIParent")
-- tab:SetExtent(1000, 500)
-- tab:AddAnchor("CENTER", 0, 0)
-- tab:Show(true)
-- tab:AddSimpleTab("Login Tracker")
-- tab:AddSimpleTab("Daily Contracts")
-- tab:AddSimpleTab("Details")
-- tab:AddSimpleTab("Events")
-- tab:AddSimpleTab("Auroria")
-- tab:AddSimpleTab("Nuia")
-- tab:AddSimpleTab("Haranya")
-- tab:SetCorner("BOTTOMLEFT")

-- local maxWidth = 0
-- for i = 1, #tab.window do
--   -- local selectedButton = tab.selectedButton[i]:SetStyle("chat_tab_selected")
--   local selectedButton = tab.selectedButton[i]
--   selectedButton:SetInset(15, 0, 15, 0)
--   selectedButton:SetExtent(95, 29)
--   selectedButton.style:SetFontSize(FONT_SIZE.LARGE)
--   selectedButton:SetAutoResize(true)
--   local color = UIParent:GetFontColor("middle_title")
--   selectedButton:SetDisabledTextColor(color[1], color[2], color[3], color[4])
--   selectedButton:SetHighlightTextColor(color[1], color[2], color[3], color[4])
--   selectedButton:SetPushedTextColor(color[1], color[2], color[3], color[4])
--   selectedButton:SetTextColor(color[1], color[2], color[3], color[4])

--   local width = selectedButton:GetWidth()
--   if width > maxWidth then
--     maxWidth = width
--   end

--   local selectedButtonhNormalBackground = assert(selectedButton:CreateThreePartDrawable(TEXTURE_PATH.TAB_LIST,
--     "background"))
--   selectedButtonhNormalBackground:SetTextureInfo("tab_selected_df")
--   selectedButtonhNormalBackground:AddAnchor("TOPLEFT", selectedButton, 0, 0)
--   selectedButtonhNormalBackground:AddAnchor("BOTTOMRIGHT", selectedButton, 0, 0)
--   selectedButton:SetNormalBackground(selectedButtonhNormalBackground)

--   local selectedButtonhHighlightBackground = assert(selectedButton:CreateThreePartDrawable(TEXTURE_PATH.TAB_LIST,
--     "background"))
--   selectedButtonhHighlightBackground:SetTextureInfo("tab_selected_ov")
--   selectedButtonhHighlightBackground:AddAnchor("TOPLEFT", selectedButton, 0, 0)
--   selectedButtonhHighlightBackground:AddAnchor("BOTTOMRIGHT", selectedButton, 0, 0)
--   selectedButton:SetHighlightBackground(selectedButtonhHighlightBackground)

--   local selectedButtonPushedBackground = assert(selectedButton:CreateThreePartDrawable(TEXTURE_PATH.TAB_LIST,
--     "background"))
--   selectedButtonPushedBackground:SetTextureInfo("tab_selected_on")
--   selectedButtonPushedBackground:AddAnchor("TOPLEFT", selectedButton, 0, 0)
--   selectedButtonPushedBackground:AddAnchor("BOTTOMRIGHT", selectedButton, 0, 0)
--   selectedButton:SetPushedBackground(selectedButtonPushedBackground)

--   local selectedButtonDisabledBackground = assert(selectedButton:CreateThreePartDrawable(TEXTURE_PATH.TAB_LIST,
--     "background"))
--   selectedButtonDisabledBackground:SetTextureInfo("tab_selected_dis")
--   selectedButtonDisabledBackground:AddAnchor("TOPLEFT", selectedButton, 0, 0)
--   selectedButtonDisabledBackground:AddAnchor("BOTTOMRIGHT", selectedButton, 0, 0)
--   selectedButton:SetDisabledBackground(selectedButtonDisabledBackground)

--   local unselectedButton = tab.unselectedButton[i]
--   unselectedButton:SetInset(15, 0, 15, 0)
--   unselectedButton:SetExtent(95, 25)
--   unselectedButton.style:SetFontSize(FONT_SIZE.LARGE)
--   unselectedButton:SetAutoResize(true)
--   unselectedButton:SetDisabledTextColor(color[1], color[2], color[3], color[4])
--   unselectedButton:SetHighlightTextColor(color[1], color[2], color[3], color[4])
--   unselectedButton:SetPushedTextColor(color[1], color[2], color[3], color[4])
--   unselectedButton:SetTextColor(color[1], color[2], color[3], color[4])

--   local unselectedButtonhNormalBackground = assert(unselectedButton:CreateThreePartDrawable(TEXTURE_PATH.TAB_LIST,
--     "background"))
--   unselectedButtonhNormalBackground:SetTextureInfo("tab_unselected_df")
--   unselectedButtonhNormalBackground:AddAnchor("TOPLEFT", unselectedButton, 0, 0)
--   unselectedButtonhNormalBackground:AddAnchor("BOTTOMRIGHT", unselectedButton, 0, 0)
--   unselectedButton:SetNormalBackground(unselectedButtonhNormalBackground)

--   local unselectedButtonhHighlightBackground = assert(unselectedButton:CreateThreePartDrawable(TEXTURE_PATH.TAB_LIST,
--     "background"))
--   unselectedButtonhHighlightBackground:SetTextureInfo("tab_unselected_ov")
--   unselectedButtonhHighlightBackground:AddAnchor("TOPLEFT", unselectedButton, 0, 0)
--   unselectedButtonhHighlightBackground:AddAnchor("BOTTOMRIGHT", unselectedButton, 0, 0)
--   unselectedButton:SetHighlightBackground(unselectedButtonhHighlightBackground)

--   local unselectedButtonPushedBackground = assert(unselectedButton:CreateThreePartDrawable(TEXTURE_PATH.TAB_LIST,
--     "background"))
--   unselectedButtonPushedBackground:SetTextureInfo("tab_unselected_on")
--   unselectedButtonPushedBackground:AddAnchor("TOPLEFT", unselectedButton, 0, 0)
--   unselectedButtonPushedBackground:AddAnchor("BOTTOMRIGHT", unselectedButton, 0, 0)
--   unselectedButton:SetPushedBackground(unselectedButtonPushedBackground)

--   local unselectedButtonDisabledBackground = assert(unselectedButton:CreateThreePartDrawable(TEXTURE_PATH.TAB_LIST,
--     "background"))
--   unselectedButtonDisabledBackground:SetTextureInfo("tab_unselected_dis")
--   unselectedButtonDisabledBackground:AddAnchor("TOPLEFT", unselectedButton, 0, 0)
--   unselectedButtonDisabledBackground:AddAnchor("BOTTOMRIGHT", unselectedButton, 0, 0)
--   unselectedButton:SetDisabledBackground(unselectedButtonDisabledBackground)
-- end

-- for i = 1, #tab.window do
--   local selectedButton = tab.selectedButton[i]
--   selectedButton:SetWidth(maxWidth)
--   local unselectedButton = tab.unselectedButton[i]
--   unselectedButton:SetWidth(maxWidth)
-- end


-- tab:SetGap(100)
-- tab:AlignTabButtons()

-- local button = tab.window[1]:CreateChildWidget("button", "test", 0, true)
-- button:SetStyle("text_default")
-- button:SetText("hello, world!")
-- button:AddAnchor("TOPLEFT", 0, 0)

-- local file = open("temp/example.txt", "w")
-- file:write(dump(tab))
-- file:close()

--------------------------------------------------------------------------------

-- I can create a new character binding and a slot that I can drag an item/skill
-- into and use that character binding to activate the slot but I dont have a
-- way to save the slot item.

-- X2Hotkey:BindingToOption()
-- X2Hotkey:SetOptionBindingWithIndex("action_bar_button", "b", 1, 73)
-- X2Hotkey:SaveHotKey()

-- local slot = UIParent:CreateWidget("slot", "slottesting", "UIParent")
-- slot:SetExtent(40, 40)
-- slot:EstablishSlot(ISLOT_ACTION, 73)
-- -- slot:EstablishSlot(ISLOT_BAG, 2)
-- slot:Show(true)

-- local file = open("temp/example.txt", "w")

-- function slot:OnContentUpdated(...)
--   ADDON:ChatLogTable({ ... })
--   -- ADDON:ChatLogTable(slot:GetExtraInfo())
--   -- ADDON:ChatLog(slot:GetBindedType())
--   -- ADDON:ChatLog(slot:GetItemLevelRequirment())
--   -- ADDON:ChatLog(slot:GetPassiveBuffType())
--   -- ADDON:ChatLog(slot:GetSkillType())
--   ADDON:ChatLog("name " .. slot.icon:GetName())
--   ADDON:ChatLog("id " .. slot.icon:GetId())
--   -- ADDON:ChatLogTable(slot:GetTooltip())
--   file:write(dump(slot), "\n\n")
--   file:flush()
--   ADDON:ChatLog("---")
-- end

-- slot:SetHandler("OnContentUpdated", slot.OnContentUpdated)
-- ADDON:ChatLog(slot:GetHotKey())

--------------------------------------------------------------------------------

-- local zone_group_origin = {
--   { id = 1,   display_text = "Gweonid Forest",                     origin_x = 10880.0,       origin_y = 15389.5, },
--   { id = 2,   display_text = "Marianople",                         origin_x = 11264.5614035, origin_y = 11862.45614, },
--   { id = 3,   display_text = "Dewstone Plains",                    origin_x = 12527.5428565, origin_y = 13716.1142855, },
--   { id = 4,   display_text = "Solis Headlands",                    origin_x = 16500.2105265, origin_y = 8373.894737, },
--   { id = 5,   display_text = "Solzreed Peninsula",                 origin_x = 14330.1223145, origin_y = 14707.0, },
--   { id = 6,   display_text = "Lilyut Hills",                       origin_x = 12970.181818,  origin_y = 15845.0909095, },
--   { id = 7,   display_text = "Arcum Iris",                         origin_x = 21183.1794865, origin_y = 7342.769231, },
--   { id = 8,   display_text = "Two Crowns",                         origin_x = 12890.302246,  origin_y = 11104.0, },
--   { id = 9,   display_text = "Mahadevi",                           origin_x = 19335.384619,  origin_y = 8770.4615385, },
--   { id = 10,  display_text = "Airain Rock",                        origin_x = 6678.395752,   origin_y = 13278.0, },
--   { id = 11,  display_text = "Falcorth Plains",                    origin_x = 23954.1333335, origin_y = 9193.6, },
--   { id = 12,  display_text = "Villanelle",                         origin_x = 21688.7272755, origin_y = 10435.6363635, },
--   { id = 13,  display_text = "Sunbite Wilds",                      origin_x = 20988.1726075, origin_y = 5627.5, },
--   { id = 14,  display_text = "Windscour Savannah",                 origin_x = 25092.0,       origin_y = 7134.0, },
--   { id = 15,  display_text = "Perinoor Ruins",                     origin_x = 28023.0,       origin_y = 7164.0, },
--   { id = 16,  display_text = "Rookborne Basin",                    origin_x = 25546.7697755, origin_y = 9891.5, },
--   { id = 17,  display_text = "Ynystere",                           origin_x = 20677.953493,  origin_y = 12520.1860465, },
--   { id = 18,  display_text = "White Arden",                        origin_x = 9840.913574,   origin_y = 13099.5, },
--   { id = 19,  display_text = "Karkasse Ridgelands",                origin_x = 10396.0,       origin_y = 17003.5, },
--   { id = 20,  display_text = "Cinderstone Moor",                   origin_x = 14707.8095235, origin_y = 11886.4761905, },
--   { id = 21,  display_text = "Aubre Cradle",                       origin_x = 7630.402832,   origin_y = 12716.0, },
--   { id = 22,  display_text = "Halcyona",                           origin_x = 9828.3243245,  origin_y = 10692.3243245, },
--   { id = 23,  display_text = "Hasla",                              origin_x = 29266.956787,  origin_y = 8242.5, },
--   { id = 24,  display_text = "Tigerspine Mountains",               origin_x = 21884.9230745, origin_y = 8529.2307695, },
--   { id = 25,  display_text = "Silent Forest",                      origin_x = 23558.9565185, origin_y = 11722.4347825, },
--   { id = 26,  display_text = "Hellswamp",                          origin_x = 7748.413793,   origin_y = 9126.6206895, },
--   { id = 27,  display_text = "Sanddeep",                           origin_x = 9644.5,        origin_y = 9192.0, },
--   { id = 30,  display_text = "Castaway Strait",                    origin_x = 17039.943062,  origin_y = 11264.0, },
--   { id = 31,  display_text = "Drill Camp",                         origin_x = 1176.0620155,  origin_y = 482.60465115, },
--   { id = 33,  display_text = "Heedmar",                            origin_x = 20081.77778,   origin_y = 24079.5555545, },
--   { id = 34,  display_text = "Nuimari",                            origin_x = 21776.4210545, origin_y = 24098.947373, },
--   { id = 36,  display_text = "Arcadian Sea",                       origin_x = 19266.953845,  origin_y = 19968.0, },
--   { id = 39,  display_text = "Halcyona Gulf",                      origin_x = 12765.2625375, origin_y = 7680.0, },
--   { id = 40,  display_text = "Feuille Sound",                      origin_x = 14336.0,       origin_y = 13151.315264, },
--   { id = 43,  display_text = "Marcala",                            origin_x = 20003.2653065, origin_y = 25067.7551035, },
--   { id = 44,  display_text = "Calmlands",                          origin_x = 21507.8554185, origin_y = 25161.253015, },
--   { id = 45,  display_text = "Burnt Castle Armory",                origin_x = 226.0,         origin_y = 238.0, },
--   { id = 46,  display_text = "Hadir Farm",                         origin_x = 732.5,         origin_y = 627.5, },
--   { id = 47,  display_text = "Palace Cellar",                      origin_x = 570.6690675,   origin_y = 351.0, },
--   { id = 49,  display_text = "Mirage Isle",                        origin_x = 4244.5,        origin_y = 4147.0, },
--   { id = 50,  display_text = "Sharpwind Mines",                    origin_x = 598.482025,    origin_y = 480.5, },
--   { id = 51,  display_text = "Howling Abyss",                      origin_x = 513.6546935,   origin_y = 590.5, },
--   { id = 52,  display_text = "Kroloal Cradle",                     origin_x = 487.848938,    origin_y = 645.0, },
--   { id = 54,  display_text = "Exeloch",                            origin_x = 23205.661865,  origin_y = 25152.0, },
--   { id = 56,  display_text = "Sungold Fields",                     origin_x = 22105.5827635, origin_y = 26429.0, },
--   { id = 57,  display_text = "Golden Ruins",                       origin_x = 17556.755371,  origin_y = 27367.0, },
--   { id = 58,  display_text = "Greater Howling Abyss",              origin_x = 513.6546935,   origin_y = 590.5, },
--   { id = 59,  display_text = "Sunspeck Sea",                       origin_x = 21030.050293,  origin_y = 17992.0, },
--   { id = 60,  display_text = "Stormraw Sound",                     origin_x = 15199.0720215, origin_y = 23042.0, },
--   { id = 61,  display_text = "Diamond Shores",                     origin_x = 19514.8129885, origin_y = 27128.5, },
--   { id = 62,  display_text = "Sea of Drowned Love",                origin_x = 1695.8345335,  origin_y = 1314.0, },
--   { id = 63,  display_text = "Reedwind",                           origin_x = 19477.4748535, origin_y = 28690.5, },
--   { id = 64,  display_text = "Lesser Sea of Drowned Love",         origin_x = 1695.8345335,  origin_y = 1314.0, },
--   { id = 78,  display_text = "Mistmerrow",                         origin_x = 23418.7337645, origin_y = 27710.0, },
--   { id = 79,  display_text = "Miroir Tundra",                      origin_x = 7739.093506,   origin_y = 20480.0, },
--   { id = 80,  display_text = "Shattered Sea",                      origin_x = 6712.705078,   origin_y = 18507.5, },
--   { id = 83,  display_text = "Greater Hadir Farm",                 origin_x = 732.5,         origin_y = 627.5, },
--   { id = 84,  display_text = "Greater Burnt Castle Armory",        origin_x = 226.0,         origin_y = 238.0, },
--   { id = 86,  display_text = "Greater Palace Cellar",              origin_x = 570.6690675,   origin_y = 351.0, },
--   { id = 87,  display_text = "Greater Sharpwind Mines",            origin_x = 598.482025,    origin_y = 480.5, },
--   { id = 88,  display_text = "Greater Kroloal Cradle",             origin_x = 487.848938,    origin_y = 645.0, },
--   { id = 89,  display_text = "Mistsong Summit",                    origin_x = 1030.9352415,  origin_y = 1006.5, },
--   { id = 92,  display_text = "Free-For-All Arena",                 origin_x = 562.7769775,   origin_y = 566.0, },
--   { id = 93,  display_text = "Ahnimar",                            origin_x = 5772.5,        origin_y = 9506.5, },
--   { id = 94,  display_text = "Ancient Ezna",                       origin_x = 1177.402893,   origin_y = 1471.0, },
--   { id = 95,  display_text = "Boiling Sea",                        origin_x = 19446.0,       origin_y = 5632.0, },
--   { id = 98,  display_text = "Queen's Chamber",                    origin_x = 2371.5755465,  origin_y = 32020.0, },
--   { id = 99,  display_text = "Rokhala Mountains",                  origin_x = 27983.6259765, origin_y = 10621.0, },
--   { id = 100, display_text = "Queen's Chamber",                    origin_x = 3395.5755465,  origin_y = 32020.0 },
--   { id = 102, display_text = "Aegis Island",                       origin_x = 14322.3813475, origin_y = 26753.0, },
--   { id = 103, display_text = "Whalesong Harbor",                   origin_x = 16901.9783935, origin_y = 28630.5, },
--   { id = 104, display_text = "Whaleswell Straits",                 origin_x = 15398.553955,  origin_y = 27146.0, },
--   { id = 105, display_text = "Ipnysh Sanctuary",                   origin_x = 572.251831,    origin_y = 575.5, },
--   { id = 107, display_text = "Western Hiram Mountains",            origin_x = 19397.690674,  origin_y = 30725.5, },
--   { id = 108, display_text = "Golden Plains Battle",               origin_x = 9238.1870115,  origin_y = 5134.5, },
--   { id = 110, display_text = "Eastern Hiram Mountains",            origin_x = 21753.2373045, origin_y = 30707.5, },
--   { id = 121, display_text = "Red Dragon's Keep",                  origin_x = 3038.2230225,  origin_y = 5144.0, },
--   { id = 122, display_text = "The Fall of Hiram City",             origin_x = 2291.6834715,  origin_y = 2300.0, },
--   { id = 125, display_text = "Noryette Challenge",                 origin_x = 426.3309325,   origin_y = 435.5, },
--   { id = 129, display_text = "Stillwater Gulf",                    origin_x = 10265.7768555, origin_y = 10085.5, },
--   { id = 130, display_text = "Hereafter Rebellion",                origin_x = 1447.266205,   origin_y = 1597.0, },
--   { id = 131, display_text = "Battle of Mistmerrow",               origin_x = 1915.1654665,  origin_y = 2103.0, },
--   { id = 132, display_text = "Kadum",                              origin_x = 891.1654665,   origin_y = 1079.0, },
--   { id = 133, display_text = "Garden of the Gods",                 origin_x = 32599.194336,  origin_y = 35741.5, },
--   { id = 134, display_text = "Gatekeeper Hall",                    origin_x = 503.014389,    origin_y = 38407.5, },
--   { id = 135, display_text = "Dairy Cow Dreamland",                origin_x = 1676.6762695,  origin_y = 2338.5, },
--   { id = 136, display_text = "Circle of Authority",                origin_x = 2305.3740845,  origin_y = 1699.0, },
--   { id = 137, display_text = "Delphinad Mirage",                   origin_x = 1688.0719605,  origin_y = 1991.0, },
--   { id = 139, display_text = "Mysthrane Gorge",                    origin_x = 17366.805786,  origin_y = 30663.0, },
--   { id = 140, display_text = "Ipnya Ridge",                        origin_x = 14444.7626955, origin_y = 30700.5, },
--   { id = 141, display_text = "Skyfin War",                         origin_x = 2847.043152,   origin_y = 737.0, },
--   { id = 142, display_text = "Queen's Altar",                      origin_x = 6874.014389,   origin_y = 6917.5, },
--   { id = 147, display_text = "Great Prairie of the West",          origin_x = 23801.942505,  origin_y = 29342.5, },
--   -- { id = 28,  display_text = "The Wastes",                         origin_x = 5120.0,        origin_y = 5120.0, },
--   -- { id = 29,  display_text = "Libertia Sea",                       origin_x = 5120.0,        origin_y = 5120.0, },
--   -- { id = 32,  display_text = "Dreadnought",                        origin_x = 5120.0,        origin_y = 5120.0, },
--   -- { id = 41,  display_text = "Forbidden Sea",                      origin_x = 5120.0,        origin_y = 5120.0, },
--   -- { id = 42,  display_text = "Forbidden Shore",                    origin_x = 5120.0,        origin_y = 5120.0, },
--   -- { id = 65,  display_text = "Verdant Skychamber",                 origin_x = 2537.007202,   origin_y = 28189.0, },
--   -- { id = 67,  display_text = "Introspect Path",                    origin_x = 2538.007202,   origin_y = 30238.0, },
--   -- { id = 69,  display_text = "Evening Botanica",                   origin_x = 2537.007202,   origin_y = 26141.0, },
--   -- { id = 70,  display_text = "Encyclopedia Room",                  origin_x = 512.949707,    origin_y = 576.0, },
--   -- { id = 71,  display_text = "Libris Garden",                      origin_x = 512.949707,    origin_y = 2624.0, },
--   -- { id = 72,  display_text = "Screaming Archives",                 origin_x = 513.949707,    origin_y = 4672.0, },
--   -- { id = 77,  display_text = "Gladiator Arena",                    origin_x = 572.2086335,   origin_y = 506.0, },
--   -- { id = 97,  display_text = "Bloodsalt Bay",                      origin_x = 2078.741028,   origin_y = 2305.0, },
--   -- { id = 116, display_text = "Unused",                             origin_x = 2487.507202,   origin_y = 30238.0, },
--   -- { id = 117, display_text = "Verdant Skychamber (Disabled)",      origin_x = 2537.007202,   origin_y = 28189.0, },
--   -- { id = 118, display_text = "Evening Botanica (Disabled)",        origin_x = 2537.007202,   origin_y = 26141.0, },
--   -- { id = 119, display_text = "Constellation Breakroom (Disabled)", origin_x = 2537.007202,   origin_y = 26141.0, },
--   -- { id = 126, display_text = "Mistsong Banquet",                   origin_x = 562.5,         origin_y = 566.0, },
--   -- { id = 150, display_text = "Dimensional Boundary Defense Raid",  origin_x = 472.5827635,   origin_y = 1619.5, },
--   -- { id = 154, display_text = "Nightmare Burnt Castle Armory",      origin_x = 226.0,         origin_y = 238.0, },
--   -- { id = 155, display_text = "Crossroads Arena",                   origin_x = 1504.1223145,  origin_y = 1820.0, },
--   -- { id = 156, display_text = "Noryette Arena",                     origin_x = 426.3309325,   origin_y = 435.5, },
--   -- { id = 158, display_text = "Island of Abundance",                origin_x = 1345.7194215,  origin_y = 1216.0, },
--   -- { id = 159, display_text = "Golden Plains Battle",               origin_x = 9238.1870115,  origin_y = 5134.5, },
-- }

-- local currentGroup = 0


-- local backButton = UIParent:CreateWidget("button", "back", "UIParent")
-- backButton:SetStyle("text_default")
-- backButton:SetText("<")
-- backButton:Show(true)
-- backButton:SetWidth(50)

-- local forwardButton = UIParent:CreateWidget("button", "back", "UIParent")
-- forwardButton:SetStyle("text_default")
-- forwardButton:SetText(">")
-- forwardButton:Show(true)
-- forwardButton:SetWidth(50)

-- backButton:AddAnchor("LEFT", 0, 0)
-- forwardButton:AddAnchor("LEFT", backButton, "RIGHT", 0, 0)

-- backButton:SetHandler("OnClick", function (self, mouseButton, doubleClick, keyModifier)
--   if currentGroup > 1 then
--     currentGroup = currentGroup - 1
--     local zone_origin = zone_group_origin[currentGroup]
--     X2Map:ShowWorldmapLocation(zone_origin.id, zone_origin.origin_x, zone_origin.origin_y, 0)
--     ADDON:ChatLog(zone_origin.display_text)
--   end
-- end)

-- forwardButton:SetHandler("OnClick", function (self, mouseButton, doubleClick, keyModifier)
--   if currentGroup < #zone_group_origin then
--     currentGroup = currentGroup + 1
--     local zone_origin = zone_group_origin[currentGroup]
--     X2Map:ShowWorldmapLocation(zone_origin.id, zone_origin.origin_x, zone_origin.origin_y, 0)
--     ADDON:ChatLog(zone_origin.display_text)
--   end
-- end)

--------------------------------------------------------------------------------

-- r_width min 640 max monitor width
-- r_height 480 max monitor height

-- X2Option:SetConsoleVariable("r_width", "1400")
-- X2Option:SetConsoleVariable("r_height", "1100")
-- X2Option:Save()

-- r_width = 2560
-- r_height = 1440

-- r_desireWidth = 1400
-- r_desireHeight = 1100

--------------------------------------------------------------------------------

-- local file = open("temp/example.txt", "w")

-- for k, v in pairs(UIC) do
--   local content = { ADDON:GetContentMainScriptPosVis(v) }
--   -- local content = ADDON:GetContent(v)

--   if content ~= nil and #content > 0 then
--     file:write(k, "\n", dump(content), "\n")
--   end
-- end

-- UIParent:SetEventHandler("CHAT_MESSAGE", function (...)
--   file:write(dump({ ... }), "\n")
--   file:flush()
-- end)
