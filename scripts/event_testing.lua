local file = assert(open("temp/eventdump.txt", "w"))
local eventCount = 0

local function event(name, ...)
  local function handler(...)
    ADDON:ChatLog(name)
    local v, f = dump({ [name] = { ... } })
    file:write(v, "\n")
    if f ~= nil then file:write(f, "\n") end
    file:flush()
  end
  return handler
end

---@param name UIEVENT_TYPE
local function SetEventHandler(name)
  if eventCount < 230 then UI:SetEventHandler(name, event(name)) end
  eventCount = eventCount + 1
  if eventCount == 230 then
    ADDON:ChatLog("last " .. name)
  end
end

-- for api_name, api_id in pairs(API) do
--   ADDON:ImportAPI(api_id)
-- end

--------------------------------------------------------------------------------
-- These events needed further testing.
--------------------------------------------------------------------------------
-- SetEventHandler("DRAW_DOODAD_TOOLTIP")
-- SetEventHandler("DRAW_DOODAD_SIGN_TAG")
SetEventHandler("ACHIEVEMENT_UPDATE")
SetEventHandler("ADD_GIVEN_QUEST_INFO")
SetEventHandler("BAG_ITEM_CONFIRMED")
SetEventHandler("BLESS_UTHSTIN_UPDATE_STATS")
-- SetEventHandler("CHAT_MSG_QUEST")
-- SetEventHandler("COMBAT_TEXT_SYNERGY")
-- SetEventHandler("COMBAT_TEXT")
-- SetEventHandler("COMBAT_MSG")
SetEventHandler("COMPLETE_QUEST_CONTEXT_DOODAD")
SetEventHandler("EXPEDITION_EXP")
SetEventHandler("EXPEDITION_MANAGEMENT_APPLICANTS")
-- SetEventHandler("EXPEDITION_MANAGEMENT_MEMBER_STATUS_CHANGED")
-- SetEventHandler("INIT_CHRONICLE_INFO")
SetEventHandler("LEAVED_INSTANT_GAME_ZONE")
SetEventHandler("MATE_STATE_UPDATE")
-- SetEventHandler("RAID_RECRUIT_HUD")
SetEventHandler("RANK_ALARM_MSG")
-- SetEventHandler("SET_EFFECT_ICON_VISIBLE")
-- SetEventHandler("SHOW_CHAT_TAB_CONTEXT")
SetEventHandler("SKILL_ALERT_ADD")
SetEventHandler("SKILL_UPGRADED")
SetEventHandler("STORE_TRADE_FAILED")
SetEventHandler("STORE_FULL")
SetEventHandler("UPDATE_DURABILITY_STATUS")
-- SetEventHandler("ZONE_SCORE_CONTENT_STATE")
SetEventHandler("HEIR_SKILL_ACTIVE_TYPE_MSG")

--------------------------------------------------------------------------------
-- These events werent found in scriptsbin
--------------------------------------------------------------------------------
SetEventHandler("FAMILY_MEMBER_ONLINE")
SetEventHandler("FAMILY_MGR")
SetEventHandler("FAMILY_REFRESH")
-- SetEventHandler("MIA_MAIL_INBOX_ITEM_TAKEN")
-- SetEventHandler("MIA_MAIL_INBOX_MONEY_TAKEN")
-- SetEventHandler("MIA_MAIL_INBOX_TAX_PAID")
-- SetEventHandler("MIA_MAIL_INBOX_UPDATE")
-- SetEventHandler("MIA_MAIL_RETURNED")
-- SetEventHandler("MIA_MAIL_SENT_SUCCESS")
-- SetEventHandler("MIA_MAIL_SENTBOX_UPDATE")
-- SetEventHandler("MIA_MAIL_WRITE_ITEM_UPDATE")
-- SetEventHandler("SET_LOGIN_BROWSER_URL")

--------------------------------------------------------------------------------
-- Werent found but need documented.
--------------------------------------------------------------------------------
SetEventHandler("AUCTION_TOGGLE")
SetEventHandler("MOVIE_ABORT")
SetEventHandler("MOVIE_LOAD")
SetEventHandler("MOVIE_STOP")
SetEventHandler("GOODS_MAIL_INBOX_MONEY_TAKEN")
SetEventHandler("GOODS_MAIL_INBOX_TAX_PAID")
SetEventHandler("GOODS_MAIL_RETURNED")
SetEventHandler("GOODS_MAIL_SENT_SUCCESS")
SetEventHandler("GOODS_MAIL_SENTBOX_UPDATE")
SetEventHandler("GOODS_MAIL_WRITE_ITEM_UPDATE")
SetEventHandler("GUILD_BANK_INTERACTION_START")
SetEventHandler("GUILD_BANK_REAL_INDEX_SHOW")
SetEventHandler("PLAYER_GEAR_POINT")
SetEventHandler("TOGGLE_COMMUNITY")
SetEventHandler("TOGGLE_CRAFT")
SetEventHandler("TOGGLE_FACTION")
SetEventHandler("TOGGLE_PET_MANAGE")
SetEventHandler("MOUNT_BAG_UPDATE")
SetEventHandler("MOUSE_CLICK")
SetEventHandler("MOUSE_UP")
SetEventHandler("OPEN_NAVI_DOODAD_NAMING_DIALOG")
SetEventHandler("CHANGED_MSG")
SetEventHandler("INSTANT_GAME_BEST_RATING_REWARD")
SetEventHandler("MINE_AMOUNT")
SetEventHandler("LP_MANAGE_CHARACTER_CHANGED")
SetEventHandler("BLOCKED_USERS_INFO")
SetEventHandler("HERO_RANK_DATA_TIMEOUT")
SetEventHandler("DOODAD_LOGIC")
SetEventHandler("ENCHANT_EXAMINE")
SetEventHandler("ENCHANT_SAY_ABILITY")
SetEventHandler("QUEST_CHAT_RESTART")
SetEventHandler("ENTER_ITEM_LOOK_CONVERT_MODE")
SetEventHandler("RANK_SEASON_RESULT_RECEIVED")
SetEventHandler("NPC_CRAFT_ERROR")
SetEventHandler("NPC_CRAFT_UPDATE")
SetEventHandler("STICKED_MSG")
SetEventHandler("QUEST_CHAT_LET_IT_DONE")
SetEventHandler("RENEW_ITEM_SUCCEEDED") -- ring or costume?
SetEventHandler("NAVI_MARK_REMOVE")
SetEventHandler("NAVI_MARK_POS_TO_MAP")
SetEventHandler("SIEGE_WAR_ENDED")
SetEventHandler("SLAVE_SHIP_BOARDING") -- anchor?
SetEventHandler("SLAVE_SHIP_UNBOARDING")
SetEventHandler("MOUNT_SLOT_CHANGED")
SetEventHandler("FACTION_CHANGED")
SetEventHandler("INTERACTION_START")
SetEventHandler("EXPEDITION_MANAGEMENT_GUILD_FUNCTION_CHANGED")
SetEventHandler("EXPEDITION_RANKING")
SetEventHandler("DOMINION_SIEGE_SYSTEM_NOTICE")
SetEventHandler("STORE_ADD_BUY_ITEM")
SetEventHandler("RANK_DATA_RECEIVED")
SetEventHandler("TEAM_JOINT_RESPONSE")
SetEventHandler("TEAM_SUMMON_SUGGEST") -- raid flare?
SetEventHandler("RANK_LOCK")
SetEventHandler("RANK_UNLOCK")
SetEventHandler("SHOW_ADD_TAB_WINDOW")
SetEventHandler("CRAFT_DOODAD_INFO")
SetEventHandler("CRAFT_RECIPE_ADDED")
SetEventHandler("CRAFT_TRAINED")
SetEventHandler("CRAFTING_END")
SetEventHandler("OPEN_EMBLEM_IMPRINT_UI")
SetEventHandler("TRADE_ITEM_UPDATED")
SetEventHandler("ENCHANT_RESULT")

--------------------------------------------------------------------------------
-- Need documented
--------------------------------------------------------------------------------
SetEventHandler("ABILITY_EXP_CHANGED")
SetEventHandler("ACTABILITY_REFRESH_ALL")
SetEventHandler("ASK_BUY_LABOR_POWER_POTION")
SetEventHandler("AUCTION_BIDDEN")
SetEventHandler("BAG_REAL_INDEX_SHOW")
SetEventHandler("BANK_REAL_INDEX_SHOW")
SetEventHandler("BOT_SUSPECT_REPORTED")
-- SetEventHandler("BUFF_SKILL_CHANGED")
SetEventHandler("BUTLER_UI_COMMAND")
SetEventHandler("CANDIDATE_LIST_CHANGED")
SetEventHandler("CANDIDATE_LIST_HIDE")
SetEventHandler("CANDIDATE_LIST_SELECTION_CHANGED")
SetEventHandler("CANDIDATE_LIST_SHOW")
SetEventHandler("CHANGE_ACTABILITY_DECO_NUM") -- this might be housing deco increase?
SetEventHandler("CHANGED_AUTO_USE_AAPOINT")
SetEventHandler("CHAT_MSG_DOODAD")
SetEventHandler("CHECK_TEXTURE")
SetEventHandler("COFFER_INTERACTION_START")
SetEventHandler("COFFER_REAL_INDEX_SHOW")
SetEventHandler("CRAFT_FAILED")
SetEventHandler("DOMINION_GUARD_TOWER_UPDATE_TOOLTIP")
SetEventHandler("ENDED_DUEL")
SetEventHandler("EVENT_SCHEDULE_START")
SetEventHandler("EVENT_SCHEDULE_STOP")
SetEventHandler("FACTION_RELATION_ACCEPTED")
SetEventHandler("FACTION_RELATION_CHANGED")
SetEventHandler("FACTION_RELATION_COUNT")
SetEventHandler("GAME_SCHEDULE") -- this triggered when opening beautyshop
SetEventHandler("GUILD_BANK_MONEY_UPDATE")
SetEventHandler("HEIR_SKILL_ACTIVE_TYPE_MSG")
SetEventHandler("HERO_NOTI") -- this doesnt fire for hero calls, maybe its when heros have been selected?
SetEventHandler("HOUSE_CANCEL_SELL_FAIL")
SetEventHandler("HOUSE_CANCEL_SELL_SUCCESS")
SetEventHandler("HOUSE_DECO_UPDATED") -- this might be housing deco increase?
SetEventHandler("HOUSE_FARM_MSG")
SetEventHandler("HOUSE_INFO_UPDATED")
SetEventHandler("HOUSE_ROTATE_CONFIRM")
SetEventHandler("HOUSE_SALE_SUCCESS")
SetEventHandler("HOUSE_SET_SELL_FAIL")
SetEventHandler("HOUSE_SET_SELL_SUCCESS")
SetEventHandler("ITEM_SMELTING_RESULT")
SetEventHandler("OPEN_EXPEDITION_PORTAL_LIST")
SetEventHandler("PLAYER_AA_POINT")
SetEventHandler("PLAYER_BANK_AA_POINT")
SetEventHandler("SIEGE_APPOINT_RESULT")
SetEventHandler("STARTED_DUEL")
SetEventHandler("STILL_LOADING")
SetEventHandler("TEAM_JOINT_BREAK") -- disband raid?
SetEventHandler("TOGGLE_IN_GAME_NOTICE")
SetEventHandler("TRIAL_CANCELED")
SetEventHandler("TRIAL_MESSAGE")
SetEventHandler("UPDATE_CLIENT_DRIVEN_INFO")
SetEventHandler("UPDATE_ROSTER_MEMBER_INFO")
SetEventHandler("UPDATE_ROUTE_MAP")
-- SetEventHandler("UPDATE_SHORTCUT_SKILLS")
SetEventHandler("VIEW_CASH_BUY_WINDOW")
SetEventHandler("ZONE_SCORE_UPDATED")
-- SetEventHandler("UPDATE_CONTENT_ROSTER_WINDOW") --  i think this is for saving/deleting a raid roster
SetEventHandler("UPDATE_HOUSING_TOOLTIP")
SetEventHandler("UPDATE_EXPEDITION_PORTAL")
SetEventHandler("HERO_CANDIDATE_NOTI")
SetEventHandler("HERO_CANDIDATES_ANNOUNCED")
SetEventHandler("HERO_ELECTION_DAY_ALERT")
SetEventHandler("EXPEDITION_APPLICANT_ACCEPT")
SetEventHandler("EXPEDITION_APPLICANT_REJECT")
SetEventHandler("EXPEDITION_LEVEL_UP")
SetEventHandler("EXPEDITION_MANAGEMENT_APPLICANT_ACCEPT")
SetEventHandler("EXPEDITION_MANAGEMENT_APPLICANT_ADD")
SetEventHandler("EXPEDITION_MANAGEMENT_APPLICANT_DEL")
SetEventHandler("EXPEDITION_MANAGEMENT_APPLICANT_REJECT")
SetEventHandler("EXPEDITION_MANAGEMENT_POLICY_CHANGED")
SetEventHandler("EXPEDITION_MANAGEMENT_RECRUITMENT_ADD")
SetEventHandler("EXPEDITION_MANAGEMENT_RECRUITMENT_DEL")
SetEventHandler("EXPEDITION_MANAGEMENT_ROLE_CHANGED")
SetEventHandler("EXPEDITION_SUMMON_SUGGEST") -- personal flare?
SetEventHandler("EXPEDITION_WAR_DECLARATION_FAILED")
SetEventHandler("EXPEDITION_WAR_DECLARATION_MONEY")
SetEventHandler("FACTION_RELATION_DENIED") -- faction alliance
SetEventHandler("FACTION_RELATION_REQUESTED") -- faction alliance
SetEventHandler("FACTION_RELATION_WILL_CHANGE")            -- faction alliance
SetEventHandler("FAIL_WEB_PLAY_DIARY_INSTANT")
SetEventHandler("FIND_FACTION_REZ_DISTRICT_COOLTIME_FAIL") -- this is probably for hero nuis
SetEventHandler("FIND_FACTION_REZ_DISTRICT_DURATION_FAIL") -- this is probably for hero nuis
SetEventHandler("HOUSE_BUILD_INFO")
SetEventHandler("HOUSE_BUY_FAIL")
SetEventHandler("HOUSING_UCC_CLOSE") -- this triggered when player dies while in beautyshop
SetEventHandler("INSTANT_GAME_JOIN_APPLY")
SetEventHandler("INSTANT_GAME_RETIRE")
SetEventHandler("INSTANT_GAME_ROUND_RESULT")
SetEventHandler("INSTANT_GAME_START_POINT_RETURN_MSG")
SetEventHandler("INSTANT_GAME_UNEARNED_WIN_REMAIN_TIME")
SetEventHandler("INSTANT_GAME_VISIT_COUNT_RESET")
SetEventHandler("INVALID_NAME_POLICY")
SetEventHandler("MAIL_RETURNED")
SetEventHandler("MEGAPHONE_MESSAGE")
SetEventHandler("MINI_SCOREBOARD_CHANGED")
SetEventHandler("MONEY_ACQUISITION_BY_LOOT")
SetEventHandler("NOTIFY_AUTH_ADVERTISING_MESSAGE")
SetEventHandler("NOTIFY_AUTH_BILLING_MESSAGE")
SetEventHandler("NOTIFY_AUTH_DISCONNECTION_MESSAGE")
SetEventHandler("QUEST_DIRECTING_MODE_END")
SetEventHandler("QUEST_MSG")
SetEventHandler("REMOVE_BOSS_TELESCOPE_INFO")
SetEventHandler("REMOVE_CARRYING_BACKPACK_SLAVE_INFO")
SetEventHandler("REQUIRE_DELAY_TO_CHAT")
SetEventHandler("REQUIRE_ITEM_TO_CHAT")
SetEventHandler("RESET_INGAME_SHOP_MODELVIEW")
SetEventHandler("SELECTED_INSTANCE_DIFFICULT")
SetEventHandler("SIM_DOODAD_MSG")
SetEventHandler("SKILL_SELECTIVE_ITEM_NOT_AVAILABLE")
SetEventHandler("SPECIALTY_CONTENT_RECIPE_INFO")
SetEventHandler("START_QUEST_CONTEXT")
SetEventHandler("TEAM_JOINT_CHAT")
SetEventHandler("TEAM_JOINT_TARGET")
SetEventHandler("TRADE_CAN_START")
SetEventHandler("TRADE_CANCELED")
SetEventHandler("TRADE_ITEM_TOOKDOWN")
SetEventHandler("TRADE_OTHER_ITEM_PUTUP")
SetEventHandler("TRADE_OTHER_ITEM_TOOKDOWN")
SetEventHandler("TRADE_OTHER_MONEY_PUTUP")
SetEventHandler("TRADE_UI_TOGGLE")
SetEventHandler("TRADE_UNLOCKED")
SetEventHandler("ROLLBACK_FAVORITE_CRAFTS")
SetEventHandler("UPDATE_INSTANT_GAME_KILLSTREAK")
SetEventHandler("UPDATE_DEFENCE_INFO") -- guild dungeon?
SetEventHandler("UPDATE_RETURN_ACCOUNT_STATUS") -- for a player that returns to the game
SetEventHandler("UPDATE_CARRYING_BACKPACK_SLAVE_INFO")
SetEventHandler("UPDATE_BOT_CHECK_INFO")
SetEventHandler("UCC_IMPRINT_SUCCEEDED")
SetEventHandler("UNFINISHED_BUILD_HOUSE") -- this might trigger if you try to place another house if you already own one that hasnt be built.
SetEventHandler("SURVEY_FORM_UPDATE")
SetEventHandler("SYNC_PORTAL") -- this has to do with portals but unsure what, save/delete/rename already exist. maybe if you discover a new zone?
SetEventHandler("TIME_MESSAGE")
SetEventHandler("NOTIFY_AUTH_FATIGUE_MESSAGE")
SetEventHandler("NOTIFY_AUTH_NOTICE_MESSAGE")
SetEventHandler("NOTIFY_AUTH_TC_FATIGUE_MESSAGE")
SetEventHandler("SHOW_RENAME_EXPEIDITON")
SetEventHandler("START_HERO_ELECTION_PERIOD")
SetEventHandler("NUONS_ARROW_SHOW")
SetEventHandler("NUONS_ARROW_UI_MSG")
SetEventHandler("ONE_AND_ONE_CHAT_END")
SetEventHandler("ONE_AND_ONE_CHAT_ADD_MESSAGE")
SetEventHandler("ONE_AND_ONE_CHAT_START")
SetEventHandler("OPEN_PROMOTION_EVENT_URL")
SetEventHandler("PREMIUM_GRADE_CHANGE") -- this probably happens when you donate to the server and your patron point status changes
SetEventHandler("PREMIUM_LABORPOWER_CHANGED")
SetEventHandler("PREMIUM_POINT_CHANGE") -- this probably happens when you donate to the server and your patron point status changes
SetEventHandler("PREMIUM_SERVICE_BUY_RESULT")
SetEventHandler("RELOAD_CASH")
SetEventHandler("START_TALK_QUEST_CONTEXT")
SetEventHandler("GAME_EVENT_EMPTY")
SetEventHandler("BAD_USER_LIST_UPDATE")
SetEventHandler("BUILD_CONDITION")
SetEventHandler("DIAGONAL_LINE")
SetEventHandler("CREATE_ORIGIN_UCC_ITEM")
SetEventHandler("AGGRO_METER_UPDATED")
SetEventHandler("WEB_BROWSER_ESC_EVENT")

---testing
SetEventHandler("APPELLATION_STAMP_UPDATED")
-- SetEventHandler("SHOW_WORLDMAP_TOOLTIP")
---testing

-- SetEventHandler("COMMUNITY_ERROR")
-- SetEventHandler("ACTIONS_UPDATE")

SetEventHandler("FAMILY_ERROR")
SetEventHandler("FAMILY_EXP_ADD")
SetEventHandler("FAMILY_INFO_REFRESH")
SetEventHandler("FAMILY_LEVEL_UP")
SetEventHandler("FAMILY_MEMBER")
SetEventHandler("FAMILY_MEMBER_ADDED")
SetEventHandler("FAMILY_MEMBER_KICKED")
SetEventHandler("FAMILY_MEMBER_LEFT")
SetEventHandler("FAMILY_NAME_CHANGED")
SetEventHandler("FAMILY_OWNER_CHANGED")
SetEventHandler("FAMILY_REMOVED")

-- SetEventHandler("SECOND_PASSWORD_ACCOUNT_LOCKED")
-- SetEventHandler("SECOND_PASSWORD_CHANGE_COMPLETED")
-- SetEventHandler("SECOND_PASSWORD_CHECK_COMPLETED")
-- SetEventHandler("SECOND_PASSWORD_CHECK_OVER_FAILED")
-- SetEventHandler("SECOND_PASSWORD_CLEAR_COMPLETED")
-- SetEventHandler("SECOND_PASSWORD_CREATION_COMPLETED")

--------------------------------------------------------------------------------
-- These events cause crashes
--------------------------------------------------------------------------------
-- SetEventHandler("START_SENSITIVE_OPERATION")
-- SetEventHandler("STARTING_QUEST_COMPLETED") -- crash
-- SetEventHandler("TARGET_NPC_HEALTH_CHANGED_FOR_DEFENCE_INFO") -- crash?
-- SetEventHandler("TARGET_NPC_HEALTH_CHANGED_FOR_VERSUS_FACTION") -- crash?
-- SetEventHandler("EQUIP_SLOT_REINFORCE_MSG_CHANGE_LEVEL_EFFECT") -- crash
-- SetEventHandler("HOUSE_TAX_INFO")
-- SetEventHandler("REPORT_BAD_USER_UPDATE") -- crash?
-- SetEventHandler("SHOW_DEFENDANT_WAIT_JURY") --crash?
-- SetEventHandler("SHOW_DEFENDANT_WAIT_TRIAL") --crash?
-- SetEventHandler("UPDATE_BUBBLE") -- crash
-- SetEventHandler("NPC_UNIT_EQUIPMENT_CHANGED") -- crash
