---@TODO: dont like this name
---@enum ABILITY_TYPE2
local ABILITY_TYPE2 = {
  FIGHT    = "fight",    -- Battlerage
  ILLUSION = "illusion", -- Witchcraft
  ADAMANT  = "adamant",  -- Defense
  WILL     = "will",     -- Auramancy
  DEATH    = "death",    -- Occultism
  WILD     = "wild",     -- Archery
  MAGIC    = "magic",    -- Sorcery
  VOCATION = "vocation", -- Shadowplay
  ROMANCE  = "romance",  -- Songcraft
  LOVE     = "love",     -- Vitalism
  HATRED   = "hatred",   -- Malediction
  ASSASSIN = "assassin", -- Swiftblade
  MADNESS  = "madness",  -- Gunslinger
  PLEASURE = "pleasure", -- Spelldance
}

---Event triggers when one of the players ability is changed.
---@alias ABILITY_CHANGED_HANDLER fun(newAbility: ABILITY_TYPE2, oldAbility: ABILITY_TYPE2)

---
---@alias ABILITY_EXP_CHANGED_HANDLER fun(expStr: string)

---@enum RESPONSE_TYPE
local RESPONE_TYPE = {
  SAVED_JOB   = 1,
  CHANGED_JOB = 2,
  DELETED_JOB = 3,
}

---Event triggers when the players statsaver set is saved, changed, or deleted
---@alias ABILITY_SET_CHANGED_HANDLER fun(responseType: RESPONSE_TYPE)

---Event triggers when the players statsaver is expanded.
---@alias ABILITY_SET_USABLE_SLOT_COUNT_CHANGED_HANDLER fun()

---Event triggers when the player tracks their daily login.
---@alias ACCOUNT_ATTENDANCE_ADDED_HANDLER fun()

---
---@alias ACCOUNT_ATTENDANCE_LOADED_HANDLER fun()

---
---@alias ACCOUNT_ATTRIBUTE_UPDATED_HANDLER fun(kind, extraKind, state: boolean)

---
---@alias ACCOUNT_RESTRICT_NOTICE_HANDLER fun()

---@TODO: can status be anything other than "update"
---Event triggers when the player updates an achievement.
---@alias ACHIEVEMENT_UPDATE_HANDLER fun(status: string, newAchievementType: number)

---Event triggers when an acquaintance (guild member) logs in.
---@alias ACQUAINTANCE_LOGIN_HANDLER fun(cmf: CMF, charName: string)

---@TODO: Is diff a string?
---Event triggers when the players proficiency changes.
---@alias ACTABILITY_EXPERT_CHANGED_HANDLER fun(actabilityId: number, name: string, diff: number|string, final: number|string)

---
---@alias ACTABILITY_EXPERT_EXPANDED_HANDLER fun()

---db actability_groups
---@enum ACTABILITY_ID
local ACTABILITY_ID = {
  ALCHEMY                   = 1,
  CONSTRUCTION              = 2,
  COOKING                   = 3,
  HANDICRAFTS               = 4,
  HUSBANDRY                 = 5,
  FARMING                   = 6,
  FISHING                   = 7,
  LOGGING                   = 8,
  GATHERING                 = 9,
  MACHINING                 = 10,
  METALWORK                 = 11,
  PRINTING                  = 12,
  MINING                    = 13,
  MASONRY                   = 14,
  TAILORING                 = 15,
  LEATHERWORK               = 16,
  WEAPONRY                  = 17,
  CARPENTRY                 = 18,
  QUEST                     = 19,
  LARCENY                   = 20,
  NUIAN_LANGUAGE            = 21,
  ELVEN_LANGUAGE            = 22,
  DWARVEN_LANGUAGE          = 23,
  FAERIE_LANGUAGE           = 24,
  HARANI_LANGUAGE           = 25,
  FIRRAN_LANGUAGE           = 26,
  WARBORN_LANGUAGE          = 27,
  RETURNED_LANGUAGE         = 28,
  NUIA_CONTINENT_DIALECT    = 29,
  HARANYA_CONTINENT_DIALECT = 30,
  COMMERCE                  = 31,
  MIRAGE_ISLE               = 32,
  ARTISTRY                  = 33,
  EXPLORATION               = 34,
  ZONES                     = 36,
  DUNGEONS                  = 37,
  OTHER                     = 38,
}

---db actability_groups
---@enum ACTABILITY_NAME
local ACTABILITY_NAME = {
  ALCHEMY                   = "Alchemy",
  CONSTRUCTION              = "Construction",
  COOKING                   = "Cooking",
  HANDICRAFTS               = "Handicrafts",
  HUSBANDRY                 = "Husbandry",
  FARMING                   = "Farming",
  FISHING                   = "Fishing",
  LOGGING                   = "Logging",
  GATHERING                 = "Gathering",
  MACHINING                 = "Machining",
  METALWORK                 = "Metalwork",
  PRINTING                  = "Printing",
  MINING                    = "Mining",
  MASONRY                   = "Masonry",
  TAILORING                 = "Tailoring",
  LEATHERWORK               = "Leatherwork",
  WEAPONRY                  = "Weaponry",
  CARPENTRY                 = "Carpentry",
  QUEST                     = "Quest",
  LARCENY                   = "Larceny",
  NUIAN_LANGUAGE            = "Nuian Language",
  ELVEN_LANGUAGE            = "Elven Language",
  DWARVEN_LANGUAGE          = "Dwarven Language",
  FAERIE_LANGUAGE           = "Faerie Language",
  HARANI_LANGUAGE           = "Harani Language",
  FIRRAN_LANGUAGE           = "Firran Language",
  WARBORN_LANGUAGE          = "Warborn Language",
  RETURNED_LANGUAGE         = "Returned Language",
  NUIA_CONTINENT_DIALECT    = "Nuia Continent Dialect",
  HARANYA_CONTINENT_DIALECT = "Haranya Continent Dialect",
  COMMERCE                  = "Commerce",
  MIRAGE_ISLE               = "Mirage Isle",
  ARTISTRY                  = "Artistry",
  EXPLORATION               = "Exploration",
  ZONES                     = "Zones",
  DUNGEONS                  = "Dungeons",
  OTHER                     = "Other",
}

---db expert_limits
---@enum ACTABILITY_GRADE
local ACTABILITY_GRADE = {
  AMATEUR   = "Amateur",
  NOVICE    = "Novice",
  VETERAN   = "Veteran",
  EXPERT    = "Expert",
  MASTER    = "Master",
  AUTHORITY = "Authority",
  CHAMPION  = "Champion",
  ADEPT     = "Adept",
  HERALD    = "Herald",
  VIRTUOSO  = "Virtuoso",
  CELEBRITY = "Celebrity",
  FAMED     = "Famed",
}

---Event triggers when the players proficiency level changes.
---@alias ACTABILITY_EXPERT_GRADE_CHANGED_HANDLER fun(actabilityId: ACTABILITY_ID, isUpgrade: boolean, name: ACTABILITY_NAME, gradeName: ACTABILITY_GRADE)

---Event triggers when the players proficiency modifiers are updated.
---@alias ACTABILITY_MODIFIER_UPDATE_HANDLER fun()

---
---@alias ACTABILITY_REFRESH_ALL_HANDLER fun()

---
---@alias ACTION_BAR_AUTO_REGISTERED_HANDLER fun(slotIndex: number)

---Event triggers when the players action bar changes. (min: `1`)
---@alias ACTION_BAR_PAGE_CHANGED_HANDLER fun(page: number)

---
---@alias ACTIONS_UPDATE_HANDLER fun()

---@TODO: Make a enum for type
---Event triggers when a new event has appeared with in the players range.
---@alias ADD_GIVEN_QUEST_INFO_HANDLER fun(type, questType)

---@TODO: This may not be accurate.
---Event triggers when the player has a quest notification info.
---@alias ADD_NOTIFY_QUEST_INFO_HANDLER fun(qType: number)

---Event triggers when an item has been added to the players inventory.
---@alias ADDED_ITEM_HANDLER fun(itemLinkText: string, itemCount: number, itemTaskType: number, tradeOtherName: string)

---Event triggers when the addon has loaded.
---@alias ADDON_LOADED_HANDLER fun()

---
---@alias AGGRO_METER_CLEARED_HANDLER fun()

---
---@alias AGGRO_METER_UPDATED_HANDLER fun()

---@class SiegeRaidTeam
---@field defense boolean
---@field fName string
---@field isWaitWar boolean
---@field membetCount number
---@field ownerName string
---@field period string = "siege_period_ready_to_siege",
---@field ranking number

---@class SiegeRaidTeamInfos
---@field [1] SiegeRaidTeam
---@field [2] SiegeRaidTeam
---@field [3] SiegeRaidTeam

---
---@alias ALL_SIEGE_RAID_TEAM_INFOS_HANDLER fun(teamInfos: SiegeRaidTeamInfos)

---
---@alias ANTIBOT_PUNISH_HANDLER fun(message)

---Event triggers when a player changes their appellation.
---@alias APPELLATION_CHANGED_HANDLER fun(stringId: string, isChanged: boolean)

---
---@alias APPELLATION_GAINED_HANDLER fun(str: string)

---Event triggers when the players stamp (name icon) changes.
---@alias APPELLATION_STAMP_SET_HANDLER fun()

---
---@alias ARCHE_PASS_BUY_HANDLER fun(passType)

---
---@alias ARCHE_PASS_COMPLETED_HANDLER fun(passType, allDone: boolean)

---
---@alias ARCHE_PASS_DROPPED_HANDLER fun(passType)

---
---@alias ARCHE_PASS_EXPIRED_HANDLER fun(passType)

---
---@alias ARCHE_PASS_LOADED_HANDLER fun()

---
---@alias ARCHE_PASS_MISSION_CHANGED_HANDLER fun()

---
---@alias ARCHE_PASS_MISSION_COMPLETED_HANDLER fun()

---
---@alias ARCHE_PASS_OWNED_HANDLER fun(passType)

---
---@alias ARCHE_PASS_RESETED_HANDLER fun(passType)

---
---@alias ARCHE_PASS_STARTED_HANDLER fun(passType)

---
---@alias ARCHE_PASS_UPDATE_POINT_HANDLER fun(point)

---
---@alias ARCHE_PASS_UPDATE_REWARD_ITEM_HANDLER fun(complete)

---
---@alias ARCHE_PASS_UPDATE_TIER_HANDLER fun(tier)

---
---@alias ARCHE_PASS_UPGRADE_PREMIUM_HANDLER fun()

---
---@alias ASK_BUY_LABOR_POWER_POTION_HANDLER fun()

---Event triggers when the player attempts to turn on bloodlust.
---@alias ASK_FORCE_ATTACK_HANDLER fun(forceAttackLevel: number)

---
---@alias AUCTION_BIDDED_HANDLER fun(itemName, moneyStr)

---
---@alias AUCTION_BIDDEN_HANDLER fun(itemName: string, moneyStr: string)

---Event triggers when the player buys seomthing on the auction house.
---@alias AUCTION_BOUGHT_HANDLER fun()

---Event triggers when the player sells something on the auction house.
---@alias AUCTION_BOUGHT_BY_SOMEONE_HANDLER fun(itemName: string, moneyStr: string)

---Event triggers when the player cancels a listed item.
---@alias AUCTION_CANCELED_HANDLER fun(itemName: string)

---
---@alias AUCTION_CHARACTER_LEVEL_TOO_LOW_HANDLER fun(msg)

---@TODO: true item is attached to ah false no item is attached.
---Event triggers when a player is listing an item on the auction house.
---@alias AUCTION_ITEM_ATTACHMENT_STATE_CHANGED_HANDLER fun(attached: boolean)

---Event triggers when a player is listing an item on the auction house.
---@alias AUCTION_ITEM_PUT_UP_HANDLER fun(itemName: string)

---Event triggers when a player is listing or searching for an item on the auction house.
---@alias AUCTION_ITEM_SEARCH_HANDLER fun()

---Event triggers when a player is listing or searching for an item on the auction house.
---@alias AUCTION_ITEM_SEARCHED_HANDLER fun(clearLastSearchArticle: boolean)

---Event triggers when a player is listing an item on the auction house.
---@alias AUCTION_LOWEST_PRICE_HANDLER fun(itemType: number, grade: ITEM_GRADE_TYPE, price: string)

---Event triggers when a player has started crafting and after each craft end.
---@alias AUCTION_PERMISSION_BY_CRAFT_HANDLER fun(icraftType: number)

---
---@alias AUCTION_TOGGLE_HANDLER fun()

---Event triggers when a player joins the jury audience.
---@alias AUDIENCE_JOINED_HANDLER fun(audienceName: string)

---Event triggers when a player leaves the jury audience.
---@alias AUDIENCE_LEFT_HANDLER fun(audienceName: string)

---
---@alias BAD_USER_LIST_UPDATE_HANDLER fun()

---
---@alias BADWORD_USER_REPORED_RESPONE_MSG_HANDLER fun(success: boolean)

---
---@alias BAG_EXPANDED_HANDLER fun()

---
---@alias BAG_ITEM_CONFIRMED_HANDLER fun()

---
---@alias BAG_REAL_INDEX_SHOW_HANDLER fun(isRealSlotShow: boolean)

---Event triggers when the player creates a tab in their bag.
---@alias BAG_TAB_CREATED_HANDLER fun()

---Event triggers when the player deletes a tab in their bag.
---@alias BAG_TAB_REMOVED_HANDLER fun()

---Event triggers when the players sorts their bag.
---@alias BAG_TAB_SORTED_HANDLER fun(arg: number)

---Event triggers when the player changes the bag tab.
---@alias BAG_TAB_SWITCHED_HANDLER fun(tabId)

---Event triggers when the players bag updates.
---@alias BAG_UPDATE_HANDLER fun(bagId: number, slotId: number)

---
---@alias BAN_PLAYER_RESULT_HANDLER fun(param)

---
---@alias BANK_EXPANDED_HANDLER fun()

---
---@alias BANK_REAL_INDEX_SHOW_HANDLER fun(isRealSlotShow: boolean)

---Event triggers when the players creates a tab in their bank.
---@alias BANK_TAB_CREATED_HANDLER fun()

---Event triggers when the player deletes a tab in their bank.
---@alias BANK_TAB_REMOVED_HANDLER fun()

---Event triggers when the player sorts their bank.
---@alias BANK_TAB_SORTED_HANDLER fun()

---Event triggers when the player changes the bank tab.
---@alias BANK_TAB_SWITCHED_HANDLER fun(tabId: number)

---Event triggers when the players bank updates.
---@alias BANK_UPDATE_HANDLER fun(bagId: number, slotId: number)

---
---@alias BEAUTYSHOP_CLOSE_BY_SYSTEM_HANDLER fun()

---
---@alias BLESS_UTHSTIN_EXTEND_MAX_STATS_HANDLER fun()

---
---@alias BLESS_UTHSTIN_ITEM_SLOT_CLEAR_HANDLER fun()

---
---@alias BLESS_UTHSTIN_ITEM_SLOT_SET_HANDLER fun(msgapplycountlimit)

---
---@alias BLESS_UTHSTIN_MESSAGE_HANDLER fun(messageType: number)

---
---@alias BLESS_UTHSTIN_UPDATE_STATS_HANDLER fun()

---
---@alias BLESS_UTHSTIN_WILL_APPLY_STATS_HANDLER fun(itemType, incStatsKind, decStatsKind, incStatsPoint, decStatsPoint)

---Event triggers when a user is added or removed from the players block list.
---@alias BLOCKED_USER_LIST_HANDLER fun(msg: string)

---Event triggers when a user is added or removed from the players block list.
---@alias BLOCKED_USER_UPDATE_HANDLER fun()

---
---@alias BLOCKED_USERS_INFO_HANDLER fun()

---
---@alias BOT_SUSPECT_REPORTED_HANDLER fun(sourceName: string, targetName: string)

---
---@alias BUFF_SKILL_CHANGED_HANDLER fun(onePetBar: table)

---@enum BUFF_ACTION
local BUFF_ACTION = {
  CREATE = "create",
  DESTROY = "destroy"
}

---@enum BUFF_TARGET
local BUFF_TARGET = {
  CHARACTER = "character",
  SLAVE     = "slave",
  MATE      = "mate",
}

---Event triggers when a buff is created or destroyed for a unit.
---@alias BUFF_UPDATE_HANDLER fun(action: BUFF_ACTION, target: BUFF_TARGET)

---
---@alias BUILD_CONDITION_HANDLER fun(param)

---
---@alias BUILDER_END_HANDLER fun()

---
---@alias BUILDER_STEP_HANDLER fun(step)

---@TODO: This may not be complete.
---@enum BUTLER_EVENT
local BUTLER_EVENT = {
  EQUIPMENT                          = "equipment",
  GARDEN                             = "garden",
  HARVEST_SLOT                       = "harvestSlot",
  LABOW_POWER                        = "labowPower", --- This is misspelt on purpose to match xlgames.
  PRODUCTION_COST                    = "productionCost",
  PRODUCTION_COST_FREE_CHARGED_COUNT = "production_cost_free_charged_count",
  RESERVED_HARVEST                   = "reservedHarvest",
  RESERVED_SLOT                      = "reservedSlot",
  TRACTOR                            = "tractor",
  SPECIALTY_TRADE_SLOT               = "specialtyTradeSlot",
}

---Event triggers when the player is updating the farmhand.
---@alias BUTLER_INFO_UPDATED_HANDLER fun(event: BUTLER_EVENT, noError: boolean)

---
---@alias BUTLER_UI_COMMAND_HANDLER fun(mode: number)

---
---@alias BUY_RESULT_AA_POINT_HANDLER fun(result, moneyString)

---
---@alias BUY_SPECIALTY_CONTENT_INFO_HANDLER fun(list: table)

---Event triggers when a crafting order has been canceled.
---@alias CANCEL_CRAFT_ORDER_HANDLER fun(result: boolean)

---Event triggers when the player exists house preview mode for remodeling a
---building.
---@alias CANCEL_REBUILD_HOUSE_CAMERA_MODE_HANDLER fun()

---
---@alias CANDIDATE_LIST_CHANGED_HANDLER fun()

---
---@alias CANDIDATE_LIST_HIDE_HANDLER fun()

---
---@alias CANDIDATE_LIST_SELECTION_CHANGED_HANDLER fun()

---
---@alias CANDIDATE_LIST_SHOW_HANDLER fun()

---
---@alias CHANGE_ACTABILITY_DECO_NUM_HANDLER fun()

---Event triggers when the player contributes a change to the guilds prestige.
---@alias CHANGE_CONTRIBUTION_POINT_TO_PLAYER_HANDLER fun(isGain: boolean, diff: string, total: string)

---Event triggers when the players guilds prestige changes.
---@alias CHANGE_CONTRIBUTION_POINT_TO_STORE_HANDLER fun()

---Event triggers when the player changes their language.
---@alias CHANGE_MY_LANGUAGE_HANDLER fun()

---
---@alias CHANGE_OPTION_HANDLER fun(optionType: number, infoTable: table)

---
---@alias CHANGE_PAY_INFO_HANDLER fun(oldPayMethod, newPayMethod, oldPayLocation, newPayLocation)

---
---@alias CHANGE_VISUAL_RACE_ENDED_HANDLER fun()

---
---@alias CHANGED_AUTO_USE_AAPOINT_HANDLER fun()

---
---@alias CHANGED_MSG_HANDLER fun()

---
---@alias CHAT_DICE_VALUE_HANDLER fun(msg: string)

---Event triggers when a player does a chat emotion.
---@alias CHAT_EMOTION_HANDLER fun(message: string)

---
---@alias CHAT_FAILED_HANDLER fun(message: string, channelName)

---Event triggers when the player joins a channel.
---@alias CHAT_JOINED_CHANNEL_HANDLER fun(channel: CHAT_MESSAGE_CHANNEL, name: string)

---Event triggers when the player leaves a channel.
---@alias CHAT_LEAVED_CHANNEL_HANDLER fun(channel: CHAT_MESSAGE_CHANNEL, name: string)

---Event triggers when a chat message occurs.
---@alias CHAT_MESSAGE_HANDLER fun(channel: CHAT_MESSAGE_CHANNEL, relation: CHAT_MESSAGE_RELATION, name: string, message: string, info: CHAT_MESSAGE_INFO)

---
---@alias CHAT_MSG_ALARM_HANDLER fun(text)

---
---@alias CHAT_MSG_DOODAD_HANDLER fun(message, author, speakerId, tailType, showTime, fadeTime, hasNext, qtype, forceFinished)

-- CHAT_MSG_QUEST = {
--   a 1 = "Hello, @PC_NAME(0)! May the Goddess’s blessing be with you.",
--   b 2 = "Temple Priestess",
--   c 3 = "b379",
--   d 4 = false,
--   e 5 = 1,
--   f 6 = 5310,
--   g 7 = 323,
--   h 8 = 9000005,
--   i 9 = 9000003,
--   j 10 = false,
-- }

---
---@alias CHAT_MSG_QUEST_HANDLER fun(message: string, author: string, authorId: string, d: boolean, e: number, f: number, g: number, h: number, i: number, j: boolean)

---
---@alias CHECK_TEXTURE_HANDLER fun(texturePath)

---
---@alias CLEAR_BOSS_TELESCOPE_INFO_HANDLER fun()

---
---@alias CLEAR_CARRYING_BACKPACK_SLAVE_INFO_HANDLER fun()

---
---@alias CLEAR_COMPLETED_QUEST_INFO_HANDLER fun()

---Event triggers when the player dies and when the player respawns or the players corpse information expires.
---@alias CLEAR_CORPSE_INFO_HANDLER fun()

---Event triggers when the player opens the map.
---@alias CLEAR_DOODAD_INFO_HANDLER fun()

---
---@alias CLEAR_FISH_SCHOOL_INFO_HANDLER fun()

---
---@alias CLEAR_GIVEN_QUEST_STATIC_INFO_HANDLER fun()

---
---@alias CLEAR_HOUSING_INFO_HANDLER fun()

------Event triggers every 5 seconds to clear the players slave (vehicle) position information.
---@alias CLEAR_MY_SLAVE_POS_INFO_HANDLER fun()

---
---@alias CLEAR_NOTIFY_QUEST_INFO_HANDLER fun()

---
---@alias CLEAR_NPC_INFO_HANDLER fun()

---Event triggers when the player stops using a ship telescope.
---@alias CLEAR_SHIP_TELESCOPE_INFO_HANDLER fun()

---Event triggers when the player stops using a telescope.
---@alias CLEAR_TRANSFER_TELESCOPE_INFO_HANDLER fun()

---
---@alias CLOSE_CRAFT_ORDER_HANDLER fun()

---
---@alias CLOSE_MUSIC_SHEET_HANDLER fun()

---@TODO: Test this more.
---Event triggers when the player interacts with something other than the coffer.
---@alias COFFER_INTERACTION_END_HANDLER fun()

---
---@alias COFFER_INTERACTION_START_HANDLER fun()

---
---@alias COFFER_REAL_INDEX_SHOW_HANDLER fun(isRealSlotShow)

---Event triggers when the player creates a tab for the coffer.
---@alias COFFER_TAB_CREATED_HANDLER fun()

---Event triggers when the player deletes a tab from the coffer.
---@alias COFFER_TAB_REMOVED_HANDLER fun()

---@TODO: arg may be the bagid?
---Event triggers when the player sorts the coffer.
---@alias COFFER_TAB_SORTED_HANDLER fun(arg: number)

---
---@alias COFFER_TAB_SWITCHED_HANDLER fun(tabId: number)

---Event triggers when the players coffer updates.
---@alias COFFER_UPDATE_HANDLER fun(bagId: number, slotId: number)

---Event triggers when a combat message occurs.
---@alias COMBAT_MSG_HANDLER fun(targetUnitId: string, combatEvent: string, source: string, target: string, ...)

-- COMBAT_TEXT = {
--   1 = "1963b",
--   2 = "ee3b",
--   3 = -15342,
--   4 = 0, -- a
--   5 = "SKILL", --b
--   6 = "CRITICAL", --c
--   7 = 0, --d
--   8 = false, --e
--   9 = 3, --f
--   10 = false, --g
--   11 = 12.75, --h
-- }

---@enum COMBAT_HIT_TYPE
local COMBAT_HIT_TYPE = {
  CRITIAL = "CRITICAL",
  HIT     = "HIT",
  IMMUNE  = "IMMUNE",
}

---
---@alias COMBAT_TEXT_HANDLER fun(sourceUnitId: string, targetUnitId: string, amount: number, a: number, b: string, hitType: string, d: COMBAT_HIT_TYPE, e: boolean, f: number, g: boolean, distance: number)

---@TODO: see commonui/logic/chat.lua for args
-- COMBAT_TEXT_COLLISION = {
--   1 = "f2f0",
--   2 = "ENVIRONMENTAL_DAMAGE",
--   3 = "Lutesong Junk",
--   4 = "Lutesong Junk",
--   5 = "COLLISION",
--   6 = 3,
--   7 = true,
--   8 = 4919,
--   9 = "HEALTH",
-- }

---Event triggers when there is a collision.
---@alias COMBAT_TEXT_COLLISION_HANDLER fun(targetUnitId: string, combatEvent: string, source: string, target: string, ...)

---Event triggers when a skill combos.
---@alias COMBAT_TEXT_SYNERGY_HANDLER fun(arg: number)

---
---@alias COMMON_FARM_UPDATED_HANDLER fun()

---
---@alias COMMUNITY_ERROR_HANDLER fun(msg)

---Event triggers when the player completes an achievement.
---@alias COMPLETE_ACHIEVEMENT_HANDLER fun(newAchievementType: number)

---
---@alias COMPLETE_CRAFT_ORDER_HANDLER fun(info)

---
---@alias COMPLETE_QUEST_CONTEXT_DOODAD_HANDLER fun(qtype, useDirectingMode, doodadId)

---
---@alias COMPLETE_QUEST_CONTEXT_NPC_HANDLER fun(qtype, useDirectingMode, npcId)

---
---@alias CONSOLE_WRITE_HANDLER fun()

---Event triggers when the players party is converted into a raid.
---@alias CONVERT_TO_RAID_TEAM_HANDLER fun()

---
---@alias COPY_RAID_MEMBERS_TO_CLIPBOARD_HANDLER fun()

---
---@alias CRAFT_DOODAD_INFO_HANDLER fun()

---Event triggers when an item has been crafted.
---@alias CRAFT_ENDED_HANDLER fun(leftCount)

---
---@alias CRAFT_FAILED_HANDLER fun(itemLinkText)

---@class CraftOrderEntry
---@field chargeFee string
---@field consumeLp number
---@field craftCount number
---@field craftGrade number
---@field craftType number
---@field enableAct boolean
---@field enableLp boolean
---@field entryId number
---@field entryIndex number
---@field fee string
---@field mine number
---@field remainTime number
---@field requireLp number
---@field totalFee string

---@class CraftOrderEntries
---@field [1]? CraftOrderEntry
---@field [2]? CraftOrderEntry
---@field [3]? CraftOrderEntry
---@field [4]? CraftOrderEntry
---@field [5]? CraftOrderEntry
---@field [6]? CraftOrderEntry
---@field [7]? CraftOrderEntry
---@field [8]? CraftOrderEntry

---Event triggers when crafting order entries are requested.
---@alias CRAFT_ORDER_ENTRY_SEARCHED_HANDLER fun(infos: CraftOrderEntries, totalCount: number, page: number)

---
---@alias CRAFT_RECIPE_ADDED_HANDLER fun()

---Event triggers when the player has started crafting.
---@alias CRAFT_STARTED_HANDLER fun(leftCount: number)

---
---@alias CRAFT_TRAINED_HANDLER fun()

---
---@alias CRAFTING_END_HANDLER fun()

---Event triggers when the player opens the crafting window.
---@alias CRAFTING_START_HANDLER fun(doodadId, count)

---
---@alias CREATE_CHARACTER_FAILED_HANDLER fun(key)

---
---@alias CREATE_ORIGIN_UCC_ITEM_HANDLER fun()

---
---@alias CRIME_REPORTED_HANDLER fun(diffPoint, diffRecord, diffScore)

---Event triggers when a debuff is created or destroyed for a unit.
---@alias DEBUFF_UPDATE_HANDLER fun(action: BUFF_ACTION, target: BUFF_TARGET)

---Event triggers when a crafting order has been removed.
---@alias DELETE_CRAFT_ORDER_HANDLER fun()

---Event triggers when a portal has been deleted from the players teleport book.
---@alias DELETE_PORTAL_HANDLER fun()

---
---@alias DESTROY_PAPER_HANDLER fun()

---@class DiagonalASRDailyInfo
---@field dailyAvg string
---@field maxPrice string
---@field minPrice string
---@field volume number
---@field weeklyAvg string

---@TODO: Not sure if all 14 always show.
---@class DiagonalASRInfo
---@field [1] DiagonalASRDailyInfo
---@field [2] DiagonalASRDailyInfo
---@field [3] DiagonalASRDailyInfo
---@field [4] DiagonalASRDailyInfo
---@field [5] DiagonalASRDailyInfo
---@field [6] DiagonalASRDailyInfo
---@field [7] DiagonalASRDailyInfo
---@field [8] DiagonalASRDailyInfo
---@field [9] DiagonalASRDailyInfo
---@field [10] DiagonalASRDailyInfo
---@field [11] DiagonalASRDailyInfo
---@field [12] DiagonalASRDailyInfo
---@field [13] DiagonalASRDailyInfo
---@field [14] DiagonalASRDailyInfo

---Event triggers when the market price of an item is requested.
---@alias DIAGONAL_ASR_HANDLER fun(itemName: string, itemGrade: ITEM_GRADE_TYPE, askMarketPriceUi: boolean, values: DiagonalASRInfo)

---
---@alias DIAGONAL_LINE_HANDLER fun()

---@enum DICE_BID_TYPE
local DICE_BID_TYPE = {
  AUTO_BID            = 2,
  AUTO_PASS           = 3,
  CONFIRMATION_WINDOW = 1,
}

---Event triggers when the players bid type changes.
---@alias DICE_BID_RULE_CHANGED_HANDLER fun(diceBidRule: DICE_BID_TYPE)

---
---@alias DISCONNECT_FROM_AUTH_HANDLER fun()

---Event triggers every 500ms when the player has disconnected from the world.
---@alias DISCONNECTED_BY_WORLD_HANDLER fun(title: string, body: string)

---@TODO: Should this be renamed to playerpet1 playerpet2?
---@enum MATE_TYPE
local MATE_TYPE = {
  MOUNT     = 1,
  BATTLEPET = 2
}

---@TODO: Does this trigger for other players?
---Event triggers when the player dismisses a pet.
---@alias DISMISS_PET_HANDLER fun(mateType: MATE_TYPE)

---Event triggers when the player stops diving.
---@alias DIVE_END_HANDLER fun()

---Event triggers when the player starts diving.
---@alias DIVE_START_HANDLER fun()

---Event triggers when the player events a siegable zone.
---@alias DOMINION_HANDLER fun(action: string, zoneGroupName: string, expeditionName: string)

---
---@alias DOMINION_GUARD_TOWER_STATE_NOTICE_HANDLER fun(key, name, factionName)

---
---@alias DOMINION_GUARD_TOWER_UPDATE_TOOLTIP_HANDLER fun(unitId)

---
---@alias DOMINION_SIEGE_PARTICIPANT_COUNT_CHANGED_HANDLER fun()

---@enum SIEGE_ACTION
local SIEGE_ACTION = {
  CHANGE_STATE = "change_state",
  IGNORE       = "ignore",
}

---@enum SIEGE_PERIOD_NAME
local SIEGE_PERIOD_NAME = {
  SIEGE_PERIOD_HERO_VOLUNTEER = "siege_period_hero_volunteer",
  SIEGE_PERIOD_PEACE          = "siege_period_peace",
}

---@class SiegeInfo
---@field action SIEGE_ACTION
---@field defenseName string
---@field isMyInfo boolean
---@field offenseName string
---@field periodName SIEGE_PERIOD_NAME
---@field team string
---@field zoneGroupName ZONE_NAME
---@field zoneGroupType ZONE_ID

---Event triggers when the siege period changes.
---@alias DOMINION_SIEGE_PERIOD_CHANGED_HANDLER fun(siegeInfo: SiegeInfo)

---
---@alias DOMINION_SIEGE_SYSTEM_NOTICE_HANDLER fun()

---@TODO: when a hero is able to start applying for position
---Event triggers every 500ms while a siege update is occuring.
---@alias DOMINION_SIEGE_UPDATE_TIMER_HANDLER fun(secondHalf)

---
---@alias DOODAD_LOGIC_HANDLER fun()

---Event triggers when a doodad phase message occurs. (ex: Strength of the Faction message)
---@alias DOODAD_PHASE_MSG_HANDLER fun(text: string)

---@class PhaseMsgInfo
---@field color string
---@field iconKey string
---@field msg string
---@field titleColor string
---@field titleMsg string

---@TODO: Clearify this more.
---Event triggers when a title UI message appears.
---@alias DOODAD_PHASE_UI_MSG_HANDLER fun(phaseMsgInfo: PhaseMsgInfo)

---Event triggers when the player hovers over a doodad and the tooltip appears
---in the bottom right of the screen.
---@alias DRAW_DOODAD_SIGN_TAG_HANDLER fun(tooltip?)

---
---@alias DRAW_DOODAD_TOOLTIP_HANDLER fun(info)

---Event triggers when the player ends dying an item.
---@alias DYEING_END_HANDLER fun()

---Event triggers when the player wants to start dying an item.
---@alias DYEING_START_HANDLER fun()

---Event triggers when the player dynamic action bar (interaction bar) is hidden.
---@alias DYNAMIC_ACTION_BAR_HIDE_HANDLER fun()

---Event triggers when the player dynamic action bar (interaction bar) is shown.
---@alias DYNAMIC_ACTION_BAR_SHOW_HANDLER fun(dynamicActionType)

---
---@alias ENABLE_TEAM_AREA_INVITATION_HANDLER fun(enable)

---
---@alias ENCHANT_EXAMINE_HANDLER fun()

---
---@alias ENCHANT_RESULT_HANDLER fun(resultCode, itemLink, oldGrade, newGrade, breakRewardItemType, breakRewardItemCount, breakRewardByMail)

---
---@alias ENCHANT_SAY_ABILITY_HANDLER fun()

---
---@alias END_HERO_ELECTION_PERIOD_HANDLER fun()

---
---@alias END_QUEST_CHAT_BUBBLE_HANDLER fun(playedBubble: boolean)

---
---@alias ENDED_DUEL_HANDLER fun()

---Event triggers when the player enters another zone group.
---@alias ENTER_ANOTHER_ZONEGROUP_HANDLER fun(zoneId: ZONE_ID)

---@enum ENCHANT_ITEM_MODE
local ENCHANT_ITEM_MODE = {
  AWAKEN           = "awaken",
  ELEMENT          = "element",
  EVOLVING         = "evolving",
  EVOLVING_RE_ROLL = "evolving_re_roll",
  GEM              = "gem",
  GRADE            = "grade",
  REFURBISHMENT    = "refurbishment",
  SMELTING         = "smelting",
  SOCKET_EXTRACT   = "socket_extract",
  SOCKET_INSERT    = "socket_insert",
  SOCKET_REMOVE    = "socket_remove",
  SOCKET_UPGRADE   = "socket_upgrade",
}

---@TODO: Needs more testing.
---
---@alias ENTER_ENCHANT_ITEM_MODE_HANDLER fun(mode: ENCHANT_ITEM_MODE)

---Event triggers when the player opens the open chest (gold/silver/copper crate) window.
---@alias ENTER_GACHA_LOOT_MODE_HANDLER fun()

---
---@alias ENTER_ITEM_LOOK_CONVERT_MODE_HANDLER fun()

---
---@alias ENTER_WORLD_CANCELLED_HANDLER fun()

---Event triggers when the player enters a instance.
---@alias ENTERED_INSTANT_GAME_ZONE_HANDLER fun(arg: number)

---Event triggers when the player enters a loading screen.
---@alias ENTERED_LOADING_HANDLER fun(worldImagePath: string)

---
---@alias ENTERED_LOGIN_HANDLER fun()

---Event triggers when the player enters screenshot mode.
---@alias ENTERED_SCREEN_SHOT_CAMERA_MODE_HANDLER fun()

---Event triggers when the player enters a subzone.
---@alias ENTERED_SUBZONE_HANDLER fun(zoneName: string)

---@TODO: scriptsbin says this can return a widget maybe?
---Event triggers when the player enters the world.
---@alias ENTERED_WORLD_HANDLER fun(unknown: boolean)

---
---@alias ENTERED_WORLD_SELECT_HANDLER fun()

---
---@alias EQUIP_SLOT_REINFORCE_MSG_CHANGE_LEVEL_EFFECT_HANDLER fun()

---
---@alias EQUIP_SLOT_REINFORCE_MSG_LEVEL_EFFECT_HANDLER fun(equipSlot, level)

---
---@alias EQUIP_SLOT_REINFORCE_MSG_LEVEL_UP_HANDLER fun(equipSlot, level)

---
---@alias EQUIP_SLOT_REINFORCE_MSG_SET_EFFECT_HANDLER fun(equipSlotAttribute, level)

---Event triggers when the player increases the ipnysh level of an equipment
---slot.
---@alias EQUIP_SLOT_REINFORCE_UPDATE_HANDLER fun(equipSlot)

---@class EscMenuAddButtonInfo
---@field categoryId ESC_MENU_CATEGORY_ID
---@field uiContentType UIC
---@field iconKey ESC_MENU_ICON_KEY
---@field name string

---Event triggers when a new button is added to the escape menu.
---@alias ESC_MENU_ADD_BUTTON_HANDLER fun(info: EscMenuAddButtonInfo)

---
---@alias ESCAPE_END_HANDLER fun()

---
---@alias ESCAPE_START_HANDLER fun(waitTime)

---
---@alias EVENT_SCHEDULE_START_HANDLER fun(msg)

---
---@alias EVENT_SCHEDULE_STOP_HANDLER fun(msg)

---Event triggers when the player receives experience.
---@alias EXP_CHANGED_HANDLER fun(stringId: string, expNum: number, expStr: string)

---
---@alias EXPEDITION_APPLICANT_ACCEPT_HANDLER fun(expeditionName)

---
---@alias EXPEDITION_APPLICANT_REJECT_HANDLER fun(expeditionName)

---
---@alias EXPEDITION_BUFF_CHANGE_HANDLER fun(expedition: number, buff, before, after)

---@TODO: Does this trigger when other players in the guild increase the guilds exp?
---Event triggers when the players guilds experience changes.
---@alias EXPEDITION_EXP_HANDLER fun(amount: number, amountStr: string)

---Event triggers when the player accesses their guild history.
---@alias EXPEDITION_HISTORY_HANDLER fun(tabId: number)

---
---@alias EXPEDITION_LEVEL_UP_HANDLER fun(title, desc)

---
---@alias EXPEDITION_MANAGEMENT_APPLICANT_ACCEPT_HANDLER fun(charId)

---
---@alias EXPEDITION_MANAGEMENT_APPLICANT_ADD_HANDLER fun(expeditionId)

---
---@alias EXPEDITION_MANAGEMENT_APPLICANT_DEL_HANDLER fun(expeditionId)

---
---@alias EXPEDITION_MANAGEMENT_APPLICANT_REJECT_HANDLER fun(charId)

---
---@alias EXPEDITION_MANAGEMENT_APPLICANTS_HANDLER fun(infos)

---
---@alias EXPEDITION_MANAGEMENT_GUILD_FUNCTION_CHANGED_HANDLER fun()

---
---@alias EXPEDITION_MANAGEMENT_MEMBER_NAME_CHANGED_HANDLER fun()

---
---@alias EXPEDITION_MANAGEMENT_MEMBER_STATUS_CHANGED_HANDLER fun()

---@TODO: Enum for faction. ABILITY_TYPE2 needs its own UnitClass enum to names instead of ids
---@class MemberInfo
---@field [1] string Name
---@field [2] number Basic Level
---@field [3] ABILITY_TYPE2[] Class
---@field [4] number Guild Role
---@field [5] EmptyTable Connection Status (empty)
---@field [6] string Memo
---@field [7] boolean Online
---@field [8] boolean Party
---@field [9] number Contribution Points
---@field [10] number Ancestral Level
---@field [11] number Weekly Contribution Points
---@field [12]? any CHK

---Event triggers when the player views the members tab in their guild.
---@alias EXPEDITION_MANAGEMENT_MEMBERS_INFO_HANDLER fun(totalCount: number, startIndex: number, memberInfos: MemberInfo[])

---
---@alias EXPEDITION_MANAGEMENT_POLICY_CHANGED_HANDLER fun()

---
---@alias EXPEDITION_MANAGEMENT_RECRUITMENT_ADD_HANDLER fun(info)

---
---@alias EXPEDITION_MANAGEMENT_RECRUITMENT_DEL_HANDLER fun(expeditionId)

---@class GuildInterests
---@field [1] number Dungeon
---@field [2] number War
---@field [3] number Naval Battles
---@field [4] number Raid
---@field [5] number Adventure
---@field [6] number Crafting

---@class GuildRecruitmentInfo
---@field apply boolean
---@field expeditionId number
---@field expedition_level number
---@field expedition_name string
---@field interests GuildInterests
---@field introduce string
---@field memberCount number
---@field owner_name string
---@field pull boolean Full
---@field remainTime number

---Event triggers when the player opens the guild recruitment tab.
---@alias EXPEDITION_MANAGEMENT_RECRUITMENTS_HANDLER fun(total: number, perPageItemCount: number, infos: GuildRecruitmentInfo[])

---
---@alias EXPEDITION_MANAGEMENT_ROLE_CHANGED_HANDLER fun()

---Event triggers when the guild prestige changes.
---@alias EXPEDITION_MANAGEMENT_UPDATED_HANDLER fun()

---
---@alias EXPEDITION_RANKING_HANDLER fun()

---
---@alias EXPEDITION_SUMMON_SUGGEST_HANDLER fun()

---
---@alias EXPEDITION_WAR_DECLARATION_FAILED_HANDLER fun(errorMsg, param)

---
---@alias EXPEDITION_WAR_DECLARATION_MONEY_HANDLER fun(unitId, name, money)

---Event triggers when the player views the current dominion status.
---@alias EXPEDITION_WAR_KILL_SCORE_HANDLER fun(toggle: boolean)

---
---@alias EXPEDITION_WAR_SET_PROTECT_DATE_HANDLER fun()

---
---@alias EXPEDITION_WAR_STATE_HANDLER fun(related, state, declarer, defendant, winner)

---Event triggers when a item expires for the player.
---@alias EXPIRED_ITEM_HANDLER fun(itemLinkText: string)

---
---@alias FACTION_CHANGED_HANDLER fun()

---
---@alias FACTION_COMPETITION_INFO_HANDLER fun(info)

---
---@alias FACTION_COMPETITION_RESULT_HANDLER fun()

---
---@alias FACTION_COMPETITION_UPDATE_POINT_HANDLER fun(infos)

---
---@alias FACTION_RELATION_ACCEPTED_HANDLER fun(name, factionName)

---
---@alias FACTION_RELATION_CHANGED_HANDLER fun(isHostile, f1Name, f2Name)

---
---@alias FACTION_RELATION_COUNT_HANDLER fun()

---
---@alias FACTION_RELATION_DENIED_HANDLER fun(name)

---
---@alias FACTION_RELATION_HISTORY_HANDLER fun()

---
---@alias FACTION_RELATION_REQUESTED_HANDLER fun(name, factionName)

---
---@alias FACTION_RELATION_WILL_CHANGE_HANDLER fun(f1Name, f2Name)

---Event is triggered if a nation or guild is renamed.
---@alias FACTION_RENAMED_HANDLER fun(isExpedition: boolean, oldName: string, newName: string)

---
---@alias FADE_INOUT_DONE_HANDLER fun(param)

---
---@alias FAIL_WEB_PLAY_DIARY_INSTANT_HANDLER fun()

---
---@alias FAILED_TO_SET_PET_AUTO_SKILL_HANDLER fun(onePetBar, mateType)

---
---@alias FAMILY_ERROR_HANDLER fun(msg)

---
---@alias FAMILY_EXP_ADD_HANDLER fun(amount)

---
---@alias FAMILY_INFO_REFRESH_HANDLER fun()

---
---@alias FAMILY_LEVEL_UP_HANDLER fun(levelName)

---
---@alias FAMILY_MEMBER_HANDLER fun(owner, member, role, title)

---
---@alias FAMILY_MEMBER_ADDED_HANDLER fun(owner, member, title)

---
---@alias FAMILY_MEMBER_KICKED_HANDLER fun(member)

---
---@alias FAMILY_MEMBER_LEFT_HANDLER fun(member)

---
---@alias FAMILY_MEMBER_ONLINE_HANDLER fun()

---
---@alias FAMILY_MGR_HANDLER fun()

---
---@alias FAMILY_NAME_CHANGED_HANDLER fun(FAMILY_NAME_CHANGED)

---
---@alias FAMILY_OWNER_CHANGED_HANDLER fun(owner)

---
---@alias FAMILY_REFRESH_HANDLER fun()

---
---@alias FAMILY_REMOVED_HANDLER fun()

---
---@alias FIND_FACTION_REZ_DISTRICT_COOLTIME_FAIL_HANDLER fun(cooltime)

---
---@alias FIND_FACTION_REZ_DISTRICT_DURATION_FAIL_HANDLER fun(remain)

---Event triggers when the player changes the state of a folder.
---@alias FOLDER_STATE_CHANGED_HANDLER fun(arg: string)

---Event triggers when a player toggles bloodlust mode.
---@alias FORCE_ATTACK_CHANGED_HANDLER fun(uiserId: string, inBloodlust: boolean)

---Event triggers when the player sends a friend request.
---@alias FRIENDLIST_HANDLER fun(msg: string)

---@TODO: Enum for faction.
---@class FriendInfo
---@field [1] string Name
---@field [2] number Basic Level
---@field [3] UnitClass Class
---@field [4] Time Last login
---@field [5] RACE_ID
---@field [6] boolean Online
---@field [7] boolean Party
---@field [8] number Ancestral Level = 40,
---@field [9] number Faction
---@field [10]? number CHK

---Event triggers when the player opens their friend list.
---@alias FRIENDLIST_INFO_HANDLER fun(totalCount: number, memberInfos: FriendInfo[]|EmptyTable)

---@enum FRIEND_LIST_UPDATE_TYPE
local FRIEND_LIST_UPDATE_TYPE = {
  INSERT = "insert",
  DELETE = "delete",
}

---Event triggers when the players friend list updates.
---@alias FRIENDLIST_UPDATE_HANDLER fun(updateType: FRIEND_LIST_UPDATE_TYPE, dataField: FriendInfo|string)

---
---@alias GACHA_LOOT_PACK_LOG_HANDLER fun(logs)

---
---@alias GACHA_LOOT_PACK_RESULT_HANDLER fun(results)

---
---@alias GAME_EVENT_EMPTY_HANDLER fun()

---
---@alias GAME_EVENT_INFO_LIST_UPDATED_HANDLER fun()

---
---@alias GAME_EVENT_INFO_REQUESTED_HANDLER fun()

---
---@alias GAME_SCHEDULE_HANDLER fun()

---
---@alias GENDER_TRANSFERED_HANDLER fun()

---Event triggers when the player picks up something that moves their glider
---into their bag.
---@alias GLIDER_MOVED_INTO_BAG_HANDLER fun()

---
---@alias GOODS_MAIL_INBOX_ITEM_TAKEN_HANDLER fun(index)

---
---@alias GOODS_MAIL_INBOX_MONEY_TAKEN_HANDLER fun()

---
---@alias GOODS_MAIL_INBOX_TAX_PAID_HANDLER fun()

---
---@alias GOODS_MAIL_INBOX_UPDATE_HANDLER fun(read)

---
---@alias GOODS_MAIL_RETURNED_HANDLER fun()

---
---@alias GOODS_MAIL_SENT_SUCCESS_HANDLER fun()

---
---@alias GOODS_MAIL_SENTBOX_UPDATE_HANDLER fun()

---
---@alias GOODS_MAIL_WRITE_ITEM_UPDATE_HANDLER fun()

---Event triggers when a player successfully regrades an item.
---@alias GRADE_ENCHANT_BROADCAST_HANDLER fun(characterName: string, resultCode: number, itemLink: string, oldGrade: ITEM_GRADE_TYPE, newGrade: ITEM_GRADE_TYPE)

---Event triggers when the player regrades an item.
---@alias GRADE_ENCHANT_RESULT_HANDLER fun(resultCode: number, itemLink: string, oldGrade: ITEM_GRADE_TYPE, newGrade: ITEM_GRADE_TYPE, breakRewardItemType: number, breakRewardItemCount: number, breakRewardByMail: boolean)

---
---@alias GUARDTOWER_HEALTH_CHANGED_HANDLER fun()

---
---@alias GUILD_BANK_INDEX_SHOW_HANDLER fun() -- Crash

---
---@alias GUILD_BANK_INTERACTION_END_HANDLER fun()

---
---@alias GUILD_BANK_INTERACTION_START_HANDLER fun()

---Event triggers when the guild bank is shown to the player.
---@alias GUILD_BANK_INVEN_SHOW_HANDLER fun()

---
---@alias GUILD_BANK_MONEY_UPDATE_HANDLER fun()

---
---@alias GUILD_BANK_REAL_INDEX_SHOW_HANDLER fun()

---Event triggers when the player creates a tab for their guild bank.
---@alias GUILD_BANK_TAB_CREATED_HANDLER fun()

---Event triggers when the player deletes a tab from their guild bank.
---@alias GUILD_BANK_TAB_REMOVED_HANDLER fun()

---Event triggers when the player sorts their guild bank.
---@alias GUILD_BANK_TAB_SORTED_HANDLER fun()

---Event triggers when the player changes their guild bank tab.
---@alias GUILD_BANK_TAB_SWITCHED_HANDLER fun()

---
---@alias GUILD_BANK_UPDATE_HANDLER fun()

---Event triggers when a players acestral level increases.
---@alias HEIR_LEVEL_UP_HANDLER fun(myUnit: boolean, unitId: string)

---
---@alias HEIR_SKILL_ACTIVE_TYPE_MSG_HANDLER fun(activeType, ability, text, pos)

---@TODO: I can probably use this in Slot
---@enum HEIR_SKILL_TYPE
local HEIR_SKILL_TYPE = {
  FLAME     = 1,
  LIFE      = 2,
  QUAKE     = 3,
  STONE     = 4,
  WAVE      = 5,
  MIST      = 6,
  GALE      = 7,
  LIGHTNING = 8,
}

---Event triggers when the player changes an ancestral skill.
---@alias HEIR_SKILL_LEARN_HANDLER fun(text: string, pos: HEIR_SKILL_TYPE)

---Event triggers when the player resets an ancestral skill.
---@alias HEIR_SKILL_RESET_HANDLER fun(isAll: boolean, text: string, info: HEIR_SKILL_TYPE)

---Event triggers when the player changes an ancestral skill.
---@alias HEIR_SKILL_UPDATE_HANDLER fun()

---Event triggers when the player tries to retrieve hero information or hero
---mission status.
---@alias HERO_ALL_SCORE_UPDATED_HANDLER fun(factionID: number)

---
---@alias HERO_ANNOUNCE_REMAIN_TIME_HANDLER fun(remainTime, isStartTime)

---
---@alias HERO_CANDIDATE_NOTI_HANDLER fun()

---
---@alias HERO_CANDIDATES_ANNOUNCED_HANDLER fun(title, desc)

---
---@alias HERO_ELECTION_HANDLER fun()

---
---@alias HERO_ELECTION_DAY_ALERT_HANDLER fun(title, desc)

---
---@alias HERO_ELECTION_RESULT_HANDLER fun(title, desc)

---
---@alias HERO_ELECTION_VOTED_HANDLER fun()

---
---@alias HERO_NOTI_HANDLER fun()

---Event triggers when the player tries to retrieve hero information.
---@alias HERO_RANK_DATA_RETRIEVED_HANDLER fun(factionID: number)

---
---@alias HERO_RANK_DATA_TIMEOUT_HANDLER fun()

---Event triggers when the players leadership increases.
---@alias HERO_SCORE_UPDATED_HANDLER fun()

---
---@alias HERO_SEASON_OFF_HANDLER fun()

---
---@alias HERO_SEASON_UPDATED_HANDLER fun()

---Event triggers when the roadmap tooltip is hidden.
---@alias HIDE_ROADMAP_TOOLTIP_HANDLER fun(text)

---Event triggers when the worldmap has an effect that that needs to be hidden.
---@alias HIDE_SKILL_MAP_EFFECT_HANDLER fun(index: number)

---Event triggers when the worldmap tooltip is hidden.
---@alias HIDE_WORLDMAP_TOOLTIP_HANDLER fun()

---
---@alias HOUSE_BUILD_INFO_HANDLER fun(hType, bTax, hTax, heavyTaxHouseCount, normalTaxHouseCount, isHeavyTaxHouse, hostileTaxRate, depositString, taxType, completion)

---
---@alias HOUSE_BUY_FAIL_HANDLER fun()

---
---@alias HOUSE_BUY_SUCCESS_HANDLER fun(houseName)

---
---@alias HOUSE_CANCEL_SELL_FAIL_HANDLER fun()

---
---@alias HOUSE_CANCEL_SELL_SUCCESS_HANDLER fun(houseName)

---
---@alias HOUSE_DECO_UPDATED_HANDLER fun()

---
---@alias HOUSE_FARM_MSG_HANDLER fun(name, total, harvestable)

---
---@alias HOUSE_INFO_UPDATED_HANDLER fun()

---Event triggers when the player ends interacting with the building.
---@alias HOUSE_INTERACTION_END_HANDLER fun()

---Event triggers when the player starts interacting with the building.
---@alias HOUSE_INTERACTION_START_HANDLER fun(structureType: string, viewType: string, arg: boolean)

---Event triggers when the player changes the building permissions.
---@alias HOUSE_PERMISSION_UPDATED_HANDLER fun()

---
---@alias HOUSE_REBUILD_TAX_INFO_HANDLER fun()

---
---@alias HOUSE_ROTATE_CONFIRM_HANDLER fun()

---
---@alias HOUSE_SALE_SUCCESS_HANDLER fun(houseName)

---
---@alias HOUSE_SET_SELL_FAIL_HANDLER fun()

---
---@alias HOUSE_SET_SELL_SUCCESS_HANDLER fun(houseName)

---@enum HOUSE_STRUCTURE_TYPE
local HOUSE_STRUCTURE_TYPE = {
  HOUSING = "housing",
}

---
---@alias HOUSE_STEP_INFO_UPDATED_HANDLER fun(structureType: HOUSE_STRUCTURE_TYPE)

---
---@alias HOUSE_TAX_INFO_HANDLER fun(dominionTaxRate, hostileTaxRate, taxString, dueTime, prepayTime, weeksWithoutPay, weeksPrepay, isAlreadyPaid, isHeavyTaxHouse, depositString, taxType, id)

---
---@alias HOUSING_UCC_CLOSE_HANDLER fun()

---
---@alias HOUSING_UCC_ITEM_SLOT_CLEAR_HANDLER fun()

---
---@alias HOUSING_UCC_ITEM_SLOT_SET_HANDLER fun()

---
---@alias HOUSING_UCC_LEAVE_HANDLER fun()

---
---@alias HOUSING_UCC_UPDATED_HANDLER fun()

---Event triggers when the state of a zone changes.
---@alias HPW_ZONE_STATE_CHANGE_HANDLER fun(zoneId: ZONE_ID)

---@TODO: I think points is honor points?
---Event triggers when a zones war state ends.
---@alias HPW_ZONE_STATE_WAR_END_HANDLER fun(zoneId: ZONE_ID, points: number)

---
---@alias IME_STATUS_CHANGED_HANDLER fun()

---
---@alias INDUN_INITAL_ROUND_INFO_HANDLER fun()

---
---@alias INDUN_ROUND_END_HANDLER fun(success, round, isBossRound, lastRound)

---
---@alias INDUN_ROUND_START_HANDLER fun(round, isBossRound)

---
---@alias INDUN_UPDATE_ROUND_INFO_HANDLER fun()

---
---@alias INGAME_SHOP_BUY_RESULT_HANDLER fun()

---
---@alias INIT_CHRONICLE_INFO_HANDLER fun()

---Event triggers when a crafting order is listed.
---@alias INSERT_CRAFT_ORDER_HANDLER fun()

---@class InstanceEnterableInfo
---@field content string
---@field iconKey string
---@field title string

---Event triggers when an instance is now enterable.
---@alias INSTANCE_ENTERABLE_MSG_HANDLER fun(info: InstanceEnterableInfo)

---
---@alias INSTANT_GAME_BEST_RATING_REWARD_HANDLER fun()

---
---@alias INSTANT_GAME_END_HANDLER fun()

---
---@alias INSTANT_GAME_JOIN_APPLY_HANDLER fun()

---Event triggers when an instance queue has been canceled.
---@alias INSTANT_GAME_JOIN_CANCEL_HANDLER fun()

---@class InstanceGameKillInfo
---@field killer string
---@field killerCorps string
---@field killerCorpsKill number
---@field killerKillstreak number
---@field ruleMode number
---@field victim string
---@field victimCorps string
---@field victimCorpsDeath number

---Event triggers when a player kills another player in an instance.
---@alias INSTANT_GAME_KILL_HANDLER fun(msgInfo: InstanceGameKillInfo)

---
---@alias INSTANT_GAME_PICK_BUFFS_HANDLER fun()

---Event triggers when an instance game is ready.
---@alias INSTANT_GAME_READY_HANDLER fun()

---
---@alias INSTANT_GAME_RETIRE_HANDLER fun()

---
---@alias INSTANT_GAME_ROUND_RESULT_HANDLER fun(resultState, resultRound)

---Event triggers when an instance game starts.
---@alias INSTANT_GAME_START_HANDLER fun()

---
---@alias INSTANT_GAME_START_POINT_RETURN_MSG_HANDLER fun(remainSec)

---
---@alias INSTANT_GAME_UNEARNED_WIN_REMAIN_TIME_HANDLER fun(remainTime)

---
---@alias INSTANT_GAME_VISIT_COUNT_RESET_HANDLER fun()

---
---@alias INSTANT_GAME_WAIT_HANDLER fun()

---Event triggers when the player stops interacting with something.
---@alias INTERACTION_END_HANDLER fun()

---
---@alias INTERACTION_START_HANDLER fun()

---
---@alias INVALID_NAME_POLICY_HANDLER fun(namePolicyType)

---Event triggers when the player starts to split items in their inventory.
---@alias INVEN_SLOT_SPLIT_HANDLER fun(invenType: string, slot: number, amount: number)

---@TODO: Dont think this fires if the player acquires loot.
---Event triggers when a player acquires tool
---@alias ITEM_ACQUISITION_BY_LOOT_HANDLER fun(charName: string, itemLinkText: string, itemCount: number)

---
---@alias ITEM_CHANGE_MAPPING_RESULT_HANDLER fun(result, oldGrade, oldGearScore, itemLink, bonusRate)

---
---@alias ITEM_ENCHANT_MAGICAL_RESULT_HANDLER fun(resultCode, itemLink, gemItemType)

---
---@alias ITEM_EQUIP_RESULT_HANDLER fun(ItemEquipResult)

---
---@alias ITEM_LOOK_CONVERTED_HANDLER fun(itemLinkText)

---
---@alias ITEM_LOOK_CONVERTED_EFFECT_HANDLER fun()

---
---@alias ITEM_REFURBISHMENT_RESULT_HANDLER fun(result, itemLink, beforeScale, afterScale)

---
---@alias ITEM_SMELTING_RESULT_HANDLER fun(resultCode, itemLink, smeltingItemType)

---
---@alias ITEM_SOCKET_UPGRADE_HANDLER fun(socketItemType)

---
---@alias ITEM_SOCKETING_RESULT_HANDLER fun(resultCode, itemLink, socketItemType, install)

---Event triggers when the jury count changes.
---@alias JURY_OK_COUNT_HANDLER fun(count: number, total: number)

---Event triggers when the player is checking their current jury waiting number.
---@alias JURY_WAITING_NUMBER_HANDLER fun(num: number)

---Event triggers when the players labor changes.
---@alias LABORPOWER_CHANGED_HANDLER fun(diff: number, laborPower: number)

---Event triggers when the player leaves enchanting mode.
---@alias LEAVE_ENCHANT_ITEM_MODE_HANDLER fun()

---Event triggers when the player closes the open chest (gold/silver/copper crate) window.
---@alias LEAVE_GACHA_LOOT_MODE_HANDLER fun()

---Event triggers when the player closes the item infusion window.
---@alias LEAVE_ITEM_LOOK_CONVERT_MODE_HANDLER fun()

---
---@alias LEAVED_INSTANT_GAME_ZONE_HANDLER fun()

---Event triggers if the player cancels leaving the world.
---@alias LEAVING_WORLD_CANCELED_HANDLER fun()

---Event triggers if the player is leaving the world.
---@alias LEAVING_WORLD_STARTED_HANDLER fun(waitTime: number, exitTarget: number, idleKick: boolean)

---Event triggers when the player is finished loading.
---@alias LEFT_LOADING_HANDLER fun()

---
---@alias LEFT_LOGIN_HANDLER fun()

---Event triggers when the player leaves screenshot mode
---@alias LEFT_SCREEN_SHOT_CAMERA_MODE_HANDLER fun()

---@TODO: zoneName enum
---Event triggers when the player leaves a subzone.
---@alias LEFT_SUBZONE_HANDLER fun(zoneId: ZONE_ID, zoneName: string)

---Event triggers when the player leaves the world.
---@alias LEFT_WORLD_HANDLER fun()

---
---@alias LEVEL_CHANGED_HANDLER fun(_, stringId)

---
---@alias LOGIN_CHARACTER_UPDATED_HANDLER fun(status, characterIndex)

---
---@alias LOGIN_DENIED_HANDLER fun()

---Event triggers when the player opens the loot bag of a mob.
---@alias LOOT_BAG_CHANGED_HANDLER fun(setTime: boolean)

---Event triggers when the player closes the loot bag of a mob.
---@alias LOOT_BAG_CLOSE_HANDLER fun()

---Event triggers when a player rolls for an item.
---@alias LOOT_DICE_HANDLER fun(charName: string, itemLinkText: string, diceValue: number)

---Event triggers when a player loots an item that broadcasts to the server.
---@alias LOOT_PACK_ITEM_BROADCAST_HANDLER fun(characterName: string, sourceName: string, useItemLink: string, resultItemLink: string)

---Event triggers when the raid leader sets the loot bind on pick up rule.
---@alias LOOTING_RULE_BOP_CHANGED_HANDLER fun(rollForBop: number)

---Event triggers when the raid leader sets the loot grade rule.
---@alias LOOTING_RULE_GRADE_CHANGED_HANDLER fun(grade: number)

---Event triggers when the raid leader sets the loot master rule.
---@alias LOOTING_RULE_MASTER_CHANGED_HANDLER fun(charName: string)

---Event triggers when the raid leader sets the loot method rule.
---@alias LOOTING_RULE_METHOD_CHANGED_HANDLER fun(lootMethod: number)

---
---@alias LP_MANAGE_CHARACTER_CHANGED_HANDLER fun()

---Event triggers when the player takes all from a mail.
---@alias MAIL_INBOX_ATTACHMENT_TAKEN_ALL_HANDLER fun(mailId: number)

---Event triggers when the player takes an item from the mail.
---@alias MAIL_INBOX_ITEM_TAKEN_HANDLER fun(index: number)

---Event triggers when the player takes money from the mail.
---@alias MAIL_INBOX_MONEY_TAKEN_HANDLER fun()

---Event triggers when the player pays their taxes through the mail.
---@alias MAIL_INBOX_TAX_PAID_HANDLER fun()

---Event triggers when the players mailbox has an update.
---@alias MAIL_INBOX_UPDATE_HANDLER fun(read: boolean, mailListKind: number)

---
---@alias MAIL_RETURNED_HANDLER fun()

---Event triggers when the player successfully sends a mail.
---@alias MAIL_SENT_SUCCESS_HANDLER fun()

---Event triggers when the player checks their sent mail.
---@alias MAIL_SENTBOX_UPDATE_HANDLER fun(read, mailListKind)

---Event triggers when the player starts to create a new mail.
---@alias MAIL_WRITE_ITEM_UPDATE_HANDLER fun(index: number)

---
---@alias MAP_EVENT_CHANGED_HANDLER fun()

---Event triggers when the players mount or battlepet learns a new skill.
---@alias MATE_SKILL_LEARNED_HANDLER fun(mateType: MATE_TYPE, text: string)

---
---@alias MATE_STATE_UPDATE_HANDLER fun(mateType: MATE_TYPE, stateIndex)

---
---@alias MEGAPHONE_MESSAGE_HANDLER fun(show, channel, name, message, isMyMessage)

---
---@alias MIA_MAIL_INBOX_ITEM_TAKEN_HANDLER fun()

---
---@alias MIA_MAIL_INBOX_MONEY_TAKEN_HANDLER fun()

---
---@alias MIA_MAIL_INBOX_TAX_PAID_HANDLER fun()

---
---@alias MIA_MAIL_INBOX_UPDATE_HANDLER fun()

---
---@alias MIA_MAIL_RETURNED_HANDLER fun()

---
---@alias MIA_MAIL_SENT_SUCCESS_HANDLER fun()

---
---@alias MIA_MAIL_SENTBOX_UPDATE_HANDLER fun()

---
---@alias MIA_MAIL_WRITE_ITEM_UPDATE_HANDLER fun()

---
---@alias MINE_AMOUNT_HANDLER fun()

---
---@alias MINI_SCOREBOARD_CHANGED_HANDLER fun(status, info)

---Event triggers when the players dynamic shortcut is updated.
---@alias MODE_ACTIONS_UPDATE_HANDLER fun()

---
---@alias MONEY_ACQUISITION_BY_LOOT_HANDLER fun(charName, moneyStr)

---
---@alias MOUNT_BAG_UPDATE_HANDLER fun()

---Event triggers when the player mounts a pet.
---@alias MOUNT_PET_HANDLER fun(mateType: MATE_TYPE, isMyPet: boolean)

---
---@alias MOUNT_SLOT_CHANGED_HANDLER fun()

---
---@alias MOUSE_CLICK_HANDLER fun()

---
---@alias MOUSE_DOWN_HANDLER fun(widgetId)

---
---@alias MOUSE_UP_HANDLER fun()

---Event triggers when the players move speed changes.
---@alias MOVE_SPEED_CHANGE_HANDLER fun()

---
---@alias MOVIE_ABORT_HANDLER fun()

---
---@alias MOVIE_LOAD_HANDLER fun()

---
---@alias MOVIE_START_HANDLER fun()

---
---@alias MOVIE_STOP_HANDLER fun()

---Event triggers when the player interacts with a npc that has multiple quests.
---@alias MULTI_QUEST_CONTEXT_SELECT_HANDLER fun(targetNpc: boolean, qtype: number, useDirectingMode: boolean, targetId: string, interactionValue: string)

---@class QuestItem
---@field order number
---@field qtype number

---@class QuestSelectList
---@field gives QuestItem[]

---Event triggers when the player interacts with a npc that has multiple quests.
---@alias MULTI_QUEST_CONTEXT_SELECT_LIST_HANDLER fun(questList: QuestSelectList)

---@enum NAME_TAG_MODE
local NAME_TAG_MODE = {
  DEFAULT  = 1,
  COMBAT   = 2,
  VOCATION = 3,
  BOX      = 4,
}

---Event triggers when the player changes the name tag mode.
---@alias NAME_TAG_MODE_CHANGED_MSG_HANDLER fun(changedNameTagMode: NAME_TAG_MODE)

---
---@alias NATION_DOMINION_HANDLER fun(zoneGroupType, force)

---
---@alias NAVI_MARK_POS_TO_MAP_HANDLER fun()

---
---@alias NAVI_MARK_REMOVE_HANDLER fun()

---Event triggers when a new day (daily reset) starts.
---@alias NEW_DAY_STARTED_HANDLER fun()

---
---@alias NEW_SKILL_POINT_HANDLER fun(point)

---@class NextSiegeInfo
---@field hour number
---@field min number
---@field week string
---@field zoneGroupName string

---Event triggers when the next siege information is required.
---@alias NEXT_SIEGE_INFO_HANDLER fun(siegeInfo: NextSiegeInfo)

---Event triggers when a notice message occurs.
---@alias NOTICE_MESSAGE_HANDLER fun(noticeType: number, color: string, visibleTime: number, message: string, name: string)

---
---@alias NOTIFY_AUTH_ADVERTISING_MESSAGE_HANDLER fun(msg, remainTime)

---
---@alias NOTIFY_AUTH_BILLING_MESSAGE_HANDLER fun(msg, remainTime)

---
---@alias NOTIFY_AUTH_DISCONNECTION_MESSAGE_HANDLER fun(msg, remainTime)

---
---@alias NOTIFY_AUTH_FATIGUE_MESSAGE_HANDLER fun(msg, remainTime)

---
---@alias NOTIFY_AUTH_NOTICE_MESSAGE_HANDLER fun(message, visibleTime, needCountdown)

---
---@alias NOTIFY_AUTH_TC_FATIGUE_MESSAGE_HANDLER fun(msg, remainTime)

---
---@alias NOTIFY_WEB_TRANSFER_STATE_HANDLER fun(arg)

---
---@alias NPC_CRAFT_ERROR_HANDLER fun()

---
---@alias NPC_CRAFT_UPDATE_HANDLER fun()

---
---@alias NPC_INTERACTION_END_HANDLER fun()

---
---@alias NPC_INTERACTION_START_HANDLER fun(value, addedValue, npcId)

---
---@alias NPC_UNIT_EQUIPMENT_CHANGED_HANDLER fun()

---
---@alias NUONS_ARROW_SHOW_HANDLER fun(visible)

---
---@alias NUONS_ARROW_UI_MSG_HANDLER fun(nuonsMsgInfo)

---
---@alias NUONS_ARROW_UPDATE_HANDLER fun(data)

---
---@alias ONE_AND_ONE_CHAT_ADD_MESSAGE_HANDLER fun(channelId, speakerName, message, isSpeakerGm)

---
---@alias ONE_AND_ONE_CHAT_END_HANDLER fun(channelId)

---
---@alias ONE_AND_ONE_CHAT_START_HANDLER fun(channelId, targetName)

---
---@alias OPEN_ARS_HANDLER fun(number, timeout)

---Event triggers when the player opens their chat.
---@alias OPEN_CHAT_HANDLER fun()

---
---@alias OPEN_COMMON_FARM_INFO_HANDLER fun(commonFarmType)

---Event triggers when the player opens the escape menu with the escape key.
---@alias OPEN_CONFIG_HANDLER fun()

---
---@alias OPEN_CRAFT_ORDER_BOARD_HANDLER fun(tabName)

---
---@alias OPEN_EMBLEM_IMPRINT_UI_HANDLER fun()

---
---@alias OPEN_EMBLEM_UPLOAD_UI_HANDLER fun(doodad)

---
---@alias OPEN_EXPEDITION_PORTAL_LIST_HANDLER fun(addPortal, interactionDoodad, expeditionOwner)

---
---@alias OPEN_MUSIC_SHEET_HANDLER fun(isShow, itemIdString, isWide)

---
---@alias OPEN_NAVI_DOODAD_NAMING_DIALOG_HANDLER fun()

---
---@alias OPEN_OTP_HANDLER fun(currentTry, maxTry, onTime)

---
---@alias OPEN_PAPER_HANDLER fun(type, idx)

---
---@alias OPEN_PCCERT_HANDLER fun(currentTry, maxTry, onTime)

---
---@alias OPEN_PROMOTION_EVENT_URL_HANDLER fun(url)

---
---@alias OPEN_SECURE_CARD_HANDLER fun(secureCardIndex, currentTry, onTime)

---
---@alias OPEN_WORLD_QUEUE_HANDLER fun()

---
---@alias OPTIMIZATION_BUTTON_MESSAGE_HANDLER fun() -- Crash

---
---@alias OPTIMIZATION_RESULT_MESSAGE_HANDLER fun(activated)

---
---@alias OPTION_RESET_HANDLER fun()

---Event triggers when a passenger mounts the players pet.
---@alias PASSENGER_MOUNT_PET_HANDLER fun(mateType: MATE_TYPE)

---Event triggers when a passenger unmounts the players pet.
---@alias PASSENGER_UNMOUNT_PET_HANDLER fun(mateType: MATE_TYPE)

---Event triggers when the players pet auto skill changes
---@alias PET_AUTO_SKILL_CHANGED_HANDLER fun(mateType: MATE_TYPE)

---Event triggers when the players mount state t is following.
---@alias PET_FOLLOWING_MASTER_HANDLER fun(mateType: MATE_TYPE)

---Event triggers when the players mount state is not following.
---@alias PET_STOP_BY_MASTER_HANDLER fun(mateType: MATE_TYPE)

---Event triggers when the player mounts another players pet.
---@alias PETMATE_BOUND_HANDLER fun()

---Event triggers when the player unmounts another players pet.
---@alias PETMATE_UNBOUND_HANDLER fun()

---
---@alias PLAYER_AA_POINT_HANDLER fun(change, changeStr, itemTaskType, info)

---
---@alias PLAYER_ABILITY_LEVEL_CHANGED_HANDLER fun()

---
---@alias PLAYER_BANK_AA_POINT_HANDLER fun()

---Event triggers when the player deposits or withdraws from their bank.
---@alias PLAYER_BANK_MONEY_HANDLER fun(amount: number, amountStr: string)

---Event triggers when the players loyalty tokens change.
---@alias PLAYER_BM_POINT_HANDLER fun(oldBmPoint: string)

---
---@alias PLAYER_GEAR_POINT_HANDLER fun()

---Event triggers when the players honor points change.
---@alias PLAYER_HONOR_POINT_HANDLER fun(amount: number, amountStr: string, isCombatInHonorPointWar?: boolean)

---Event triggers when the players honor points change in a zone.
---@alias PLAYER_HONOR_POINT_CHANGED_IN_HPW_HANDLER fun(amount: number)

---Event triggers when the player completes a trial.
---@alias PLAYER_JURY_POINT_HANDLER fun()

---Event triggers when the player receives leadership points.
---@alias PLAYER_LEADERSHIP_POINT_HANDLER fun(amount: number, amountStr: string)

---Event triggers when the players vocation changes.
---@alias PLAYER_LIVING_POINT_HANDLER fun(amount: number, amountStr: string)

---Event triggers when the players money changes
---@alias PLAYER_MONEY_HANDLER fun(change: number, changeStr: string, itemTaskType: number, info?)

---Event triggers when the player accepts a resurrection.
---@alias PLAYER_RESURRECTED_HANDLER fun()

---Event triggers when the player has been resurrected.
---@alias PLAYER_RESURRECTION_HANDLER fun(name: string)

---
---@alias PLAYER_VISUAL_RACE_HANDLER fun()

---Event triggers when the player attempts to list a craftring request. 
---@alias POST_CRAFT_ORDER_HANDLER fun(result: boolean)

---Event triggers when the player changes equipment.
---@alias PRELIMINARY_EQUIP_UPDATE_HANDLER fun()

---
---@alias PREMIUM_FIRST_BUY_BONUS_HANDLER fun()

---
---@alias PREMIUM_GRADE_CHANGE_HANDLER fun(prevPremiumGrade, presentPremiumGrade)

---
---@alias PREMIUM_LABORPOWER_CHANGED_HANDLER fun(onlineDiff, offlineDiff)

---
---@alias PREMIUM_POINT_CHANGE_HANDLER fun()

---
---@alias PREMIUM_SERVICE_BUY_RESULT_HANDLER fun(err)

---
---@alias PREMIUM_SERVICE_LIST_UPDATED_HANDLER fun()

---
---@alias PROCESS_CRAFT_ORDER_HANDLER fun(result, processType)

---
---@alias PROGRESS_TALK_QUEST_CONTEXT_HANDLER fun(qtype, useDirectingMode, npcId, doodadId)

---
---@alias QUEST_CHAT_LET_IT_DONE_HANDLER fun()

---
---@alias QUEST_CHAT_RESTART_HANDLER fun()

---Event triggers when the players quest condition occurs.
---@alias QUEST_CONTEXT_CONDITION_EVENT_HANDLER fun(objText: string, condition: QUEST_STATUS)

---Eventt triggers when the players quest updates.
---@alias QUEST_CONTEXT_OBJECTIVE_EVENT_HANDLER fun(objText: string)

---@enum QUEST_STATUS
local QUEST_STATUS = {
  DROPPED = "dropped",
  STARTED = "started",
  UPDATED = "updated",
}

---Event triggers when the players quest updates.
---@alias QUEST_CONTEXT_UPDATED_HANDLER fun(qType: number, status: QUEST_STATUS)

---
---@alias QUEST_DIRECTING_MODE_END_HANDLER fun()

---Event triggers when the player uses a hot key to advance the quest dialog.
---@alias QUEST_DIRECTING_MODE_HOT_KEY_HANDLER fun(arg: number)

---
---@alias QUEST_ERROR_INFO_HANDLER fun(errNum, qtype)

---
---@alias QUEST_HIDDEN_COMPLETE_HANDLER fun(qtype)

---
---@alias QUEST_HIDDEN_READY_HANDLER fun(qtype)

---Event triggers when the players quest updates.
---@alias QUEST_LEFT_TIME_UPDATED_HANDLER fun(qtype: number, leftTime: number)

---
---@alias QUEST_MSG_HANDLER fun(arg1, arg2)

---
---@alias QUEST_NOTIFIER_START_HANDLER fun()

---
---@alias QUEST_QUICK_CLOSE_EVENT_HANDLER fun(qtype)

---
---@alias RAID_APPLICANT_LIST_HANDLER fun(data)

---Event triggers when the player checks the status display of the raid and
---changing raid window zoom setting.
---@alias RAID_FRAME_SIMPLE_VIEW_HANDLER fun(simple: boolean)

---@class RaidRecruitDetailInfo
---@field createTime string
---@field hour number
---@field limitGearPoint number
---@field limitLevel number
---@field minute number
---@field msg string
---@field ownerExpedition string
---@field ownerId string
---@field ownerLevel number
---@field ownerName string
---@field subType number
---@field subTypeName string
---@field type number

---Event triggers when the player views thed details of a raid recruit.
---@alias RAID_RECRUIT_DETAIL_HANDLER fun(data: RaidRecruitDetailInfo)

---@TODO: test this more.
---Event triggers when the raid hud changes.
---@alias RAID_RECRUIT_HUD_HANDLER fun(infos: EmptyTable)

---@class RaidRecruitListInfo
---@field recruiter boolean
---@field subRecruiter boolean

---@TODO: This has other triggers
---Event triggers when the player views the raid recruit window.
---@alias RAID_RECRUIT_LIST_HANDLER fun(data: RaidRecruitListInfo)

---
---@alias RANDOM_SHOP_INFO_HANDLER fun(isHide: boolean, isdailyReset: boolean)

---
---@alias RANDOM_SHOP_OPEN_HOT_KEY_HANDLER fun() -- Crash

---
---@alias RANDOM_SHOP_UPDATE_HANDLER fun()

---
---@alias RANK_ALARM_MSG_HANDLER fun(rankType, msg)

---
---@alias RANK_DATA_RECEIVED_HANDLER fun()

---
---@alias RANK_LOCK_HANDLER fun()

---Event triggers when the player views a tab of the ranking information window
---that requires the players personal data.
---@alias RANK_PERSONAL_DATA_HANDLER fun()

---Event triggers when the player views the gear of a player on the ranking
---information window.
---@alias RANK_RANKER_APPEARANCE_HANDLER fun(charID: number)

---
---@alias RANK_REWARD_SNAPSHOTS_HANDLER fun(rankType, divisionId)

---
---@alias RANK_SEASON_RESULT_RECEIVED_HANDLER fun()

---Event triggers when the player checks ranking info.
---@alias RANK_SNAPSHOTS_HANDLER fun(rankType: number, divisionId: number)

---
---@alias RANK_UNLOCK_HANDLER fun()

---
---@alias READY_TO_CONNECT_WORLD_HANDLER fun()

---
---@alias RECOVERABLE_EXP_HANDLER fun(stringId, expNum)

---
---@alias RECOVERED_EXP_HANDLER fun(stringId, expNum)

---
---@alias REENTRY_NOTIFY_DISABLE_HANDLER fun()

---
---@alias REENTRY_NOTIFY_ENABLE_HANDLER fun(param)

---Event triggers when the players combat resource has been refreshed.
---@alias REFRESH_COMBAT_RESOURCE_HANDLER fun(resetBar: boolean, groupType: number, resourceType: number, point?: number)

---Event triggers when the players combat resource has been updated.
---@alias REFRESH_COMBAT_RESOURCE_UPDATE_TIME_HANDLER fun(updateReesourceType: number, nowTime: number, show: boolean)

---Event triggers when the players squad list has refreshed.
---@alias REFRESH_SQUAD_LIST_HANDLER fun(arg?: boolean)

---
---@alias REFRESH_STORE_MERCHANT_GOOD_LIMIT_PURCHASE_HANDLER fun()

---
---@alias REFRESH_WORLD_QUEUE_HANDLER fun()

---
---@alias RELOAD_CASH_HANDLER fun(money)

---
---@alias REMOVE_BOSS_TELESCOPE_INFO_HANDLER fun(arg)

---
---@alias REMOVE_CARRYING_BACKPACK_SLAVE_INFO_HANDLER fun(arg)

---
---@alias REMOVE_FISH_SCHOOL_INFO_HANDLER fun(arg)

---Event triggers when the new quest is not within range of the player.
---@alias REMOVE_GIVEN_QUEST_INFO_HANDLER fun(arg1: number, qType: number)

---Event triggers when a quest notifcation is removed.
---@alias REMOVE_NOTIFY_QUEST_INFO_HANDLER fun(qType: number)

---
---@alias REMOVE_PING_HANDLER fun()

---Event triggers when a ship is no longer on the telescope.
---@alias REMOVE_SHIP_TELESCOPE_INFO_HANDLER fun(arg: number)

---
---@alias REMOVE_TRANSFER_TELESCOPE_INFO_HANDLER fun(arg)

---@TODO: removeState can only be destroy?
---Event triggers when an item has been deleted/removed from the players inventory.
---@alias REMOVED_ITEM_HANDLER fun(itemLinkText: string, itemCount: number, removeState: "destroy", itemTaskType: number, tradeOtherName: string)

---
---@alias RENAME_CHARACTER_FAILED_HANDLER fun(key)

---Event triggers when the player renames a portal.
---@alias RENAME_PORTAL_HANDLER fun()

---
---@alias RENEW_ITEM_SUCCEEDED_HANDLER fun()

---
---@alias REPORT_BAD_USER_UPDATE_HANDLER fun()

---
---@alias REPORT_CRIME_HANDLER fun(doodadName, locationName)

---
---@alias REPRESENT_CHARACTER_RESULT_HANDLER fun(isLoginLoad, success, isClearRequest)

---
---@alias REPUTATION_GIVEN_HANDLER fun()

---
---@alias REQUIRE_DELAY_TO_CHAT_HANDLER fun(channel, delay, remain)

---
---@alias REQUIRE_ITEM_TO_CHAT_HANDLER fun(channel)

---
---@alias RESET_INGAME_SHOP_MODELVIEW_HANDLER fun()

---Event triggers when the player views the residents board type.
---@alias RESIDENT_BOARD_TYPE_HANDLER fun(boardType: RESIDENT_BOARD_TYPE)

---@class ResidentHousing
---@field decoextendnum number
---@field decolimitnum number
---@field division string
---@field kind string
---@field posx number
---@field posy number
---@field posz number
---@field price number
---@field sellername string
---@field zoneId ZONE_ID

---Event triggers when the player views the housing sales tab of a zone.
---@alias RESIDENT_HOUSING_TRADE_LIST_HANDLER fun(infos: ResidentHousing, rownum: number, filter: number, searchword: string, refresh: number)

---@class ResidentMember
---@field [1] string Name
---@field [2] number Basic Level
---@field [3] number Contribution
---@field [4] number Family
---@field [5] boolean Online
---@field [6] boolean Party
---@field [7] boolean CHK
---@field [8] number Ancestral Level
---@field [9] number Contribution Rank

---Event triggers when the player views the housing residents tab of a zone.
---@alias RESIDENT_MEMBER_LIST_HANDLER fun(total: number, start: number, refresh: number, members: ResidentMember[])

---
---@alias RESIDENT_SERVICE_POINT_CHANGED_HANDLER fun(zoneGroupName, amount, total)

---@class ResidentInfo
---@field huntingCharge number
---@field isResident boolean
---@field localCharge? string
---@field localEffect string
---@field localFaction string
---@field localFactionIcon string
---@field memberCount? number
---@field name string
---@field refreshRemain? number
---@field servicePoint? number

---Event triggers when the player accesses the task board at resident townhall
---of the zone.
---@alias RESIDENT_TOWNHALL_HANDLER fun(info: ResidentInfo)

---Event triggers when the player is viewing the location of land for sale in
---sales tab of the resident townhall for the zone.
---@alias RESIDENT_ZONE_STATE_CHANGE_HANDLER fun()

---
---@alias ROLLBACK_FAVORITE_CRAFTS_HANDLER fun(datas)

---Event triggers when a jury ruling is has come to an end.
---@alias RULING_CLOSED_HANDLER fun()

---Event triggers when a member of the jury votes.
---@alias RULING_STATUS_HANDLER fun(count: number, total: number, sentenceType: SENTENCE_TYPE, sentenceTime: number)

---Event triggers when the player saves a portal.
---@alias SAVE_PORTAL_HANDLER fun()

---Event triggers when the player saves a screenshot.
---@alias SAVE_SCREEN_SHOT_HANDLER fun(path: string)

---Event triggers when a player increases the temper of their equipment.
---@alias SCALE_ENCHANT_BROADCAST_HANDLER fun(characterName: string, resultCode: number, itemLink: string, oldScale: string, newScale: string)

---Event triggers when the player clicks on an scheduled item (loyalty token) to
---collect it.
---@alias SCHEDULE_ITEM_SENT_HANDLER fun()

---Event triggers every minute to update the schedule.
---@alias SCHEDULE_ITEM_UPDATED_HANDLER fun()

---
---@alias SECOND_PASSWORD_ACCOUNT_LOCKED_HANDLER fun()

---
---@alias SECOND_PASSWORD_CHANGE_COMPLETED_HANDLER fun(result)

---
---@alias SECOND_PASSWORD_CHECK_COMPLETED_HANDLER fun(success)

---
---@alias SECOND_PASSWORD_CHECK_OVER_FAILED_HANDLER fun()

---
---@alias SECOND_PASSWORD_CLEAR_COMPLETED_HANDLER fun(success)

---
---@alias SECOND_PASSWORD_CREATION_COMPLETED_HANDLER fun(success)

---@class SquadInfo
---@field buttonEnable boolean
---@field buttonType number
---@field curMemberCount number
---@field explanationText string
---@field fieldType number
---@field isMySquad boolean
---@field limitGearScore number
---@field limitLevel number
---@field maxMemberCount number
---@field nameCacheQueryId string
---@field openType number
---@field ownerLevel number
---@field squadId number
---@field worldName string
---@field zoneGroupType number

---@class SelectSquadList
---@field curPage number
---@field listInfo SquadInfo[]|EmptyTable
---@field maxCount number

---Event triggers when the player view the Recruit/Search page for instances.
---@alias SELECT_SQUAD_LIST_HANDLER fun(data: SelectSquadList)

---
---@alias SELECTED_INSTANCE_DIFFICULT_HANDLER fun(difficult)

---
---@alias SELL_SPECIALTY_HANDLER fun(text)

---
---@alias SELL_SPECIALTY_CONTENT_INFO_HANDLER fun(list)

---
---@alias SENSITIVE_OPERATION_VERIFY_HANDLER fun(seqNum, url)

---
---@alias SENSITIVE_OPERATION_VERIFY_SUCCESS_HANDLER fun()

---Event triggers when the player is changing zones in the map.
---@alias SET_DEFAULT_EXPAND_RATIO_HANDLER fun(isSameZone: boolean)

---
---@alias SET_EFFECT_ICON_VISIBLE_HANDLER fun(isShow, arg)

---
---@alias SET_LOGIN_BROWSER_URL_HANDLER fun()

---@TODO: What if a mark is removed?
---Event triggers when a player has a mark set on them.
---@alias SET_OVERHEAD_MARK_HANDLER fun(unitId: string, index: number, visible: boolean)

---Event triggers when the player enables/disables ping mode.
---@alias SET_PING_MODE_HANDLER fun(pick: boolean)

---Event triggers when the player enters house preview mode for remodeling a
---building.
---@alias SET_REBUILD_HOUSE_CAMERA_MODE_HANDLER fun()

---Event triggers when the player enables/disables ping mode.
---@alias SET_ROADMAP_PICKABLE_HANDLER fun(pick: boolean)

---
---@alias SET_UI_MESSAGE_HANDLER fun()

---
---@alias SET_WEB_MESSENGE_COUNT_HANDLER fun()

---@TODO: Does this trigger if the player dies?
---Event triggers when the players honor points change during war due to combat.
---@alias SHOW_ACCUMULATE_HONOR_POINT_DURING_HPW_HANDLER fun(zoneName: string, accumulatePoint: number, state?)

---
---@alias SHOW_ADD_TAB_WINDOW_HANDLER fun()

---@TODO: Does this trigger for all received items or just mail?
---Event triggers when the player receives an item.
---@alias SHOW_ADDED_ITEM_HANDLER fun(item: ItemInfo, count: number, taskType: number)

---Event triggers when a banner should appear for content.
---@alias SHOW_BANNER_HANDLER fun(show: boolean, instanceType: number, remainPreNoticeTime?)

---
---@alias SHOW_CHARACTER_ABILITY_WINDOW_HANDLER fun(show, byCutscene)

---
---@alias SHOW_CHARACTER_CREATE_WINDOW_HANDLER fun(show)

---
---@alias SHOW_CHARACTER_CUSTOMIZE_WINDOW_HANDLER fun(show)

---
---@alias SHOW_CHARACTER_SELECT_WINDOW_HANDLER fun(visible)

---@TODO: returns a widget but unsure which widget as no methods are available.
---Event triggers when the player right clicks on a tab for the context menu.
---@alias SHOW_CHAT_TAB_CONTEXT_HANDLER fun(arg1: Widget, arg2: number)

---Event triggers when the player joins a trial and triggers at each trial state.
---@alias SHOW_CRIME_RECORDS_HANDLER fun(trialState: TRIAL_STATE)

---
---@alias SHOW_DEFENDANT_WAIT_JURY_HANDLER fun()

---
---@alias SHOW_DEFENDANT_WAIT_TRIAL_HANDLER fun()

---
---@alias SHOW_GAME_RATING_HANDLER fun()

---
---@alias SHOW_HEALTH_NOTICE_HANDLER fun()

---
---@alias SHOW_HIDDEN_BUFF_HANDLER fun()

---
---@alias SHOW_LOGIN_WINDOW_HANDLER fun(show)

---
---@alias SHOW_PRIVACY_POLICY_WINDOW_HANDLER fun(show)

---
---@alias SHOW_RAID_FRAME_SETTINGS_HANDLER fun()

---
---@alias SHOW_RECOMMEND_USING_SECOND_PASSWORD_HANDLER fun()

---
---@alias SHOW_RENAME_EXPEIDITON_HANDLER fun(byItem, triedName, ownerWnd)

---Event triggers when a tooltip is shown on the roadmap.
---@alias SHOW_ROADMAP_TOOLTIP_HANDLER fun(tooltipInfo: TooltipInfo, tooltipCount: number)

---
---@alias SHOW_SERVER_SELECT_WINDOW_HANDLER fun(visible)

---Event triggers when the player uses a sextant.
---@alias SHOW_SEXTANT_POS_HANDLER fun(sextantPos: SEXTANT)

---Event triggers when the player checks the summon information of the vehicle.
---@alias SHOW_SLAVE_INFO_HANDLER fun()

---Event triggers when the player has to make a verdict in a trial.
---@alias SHOW_VERDICTS_HANDLER fun(p1: number, p2: number, p3: number, p4: number, p5: number)

---Event triggers when the world map has a location to be shown.
---@alias SHOW_WORLDMAP_LOCATION_HANDLER fun(zoneId: ZONE_KEY, x: number, y: number, z: number)

---@class TooltipInfo
---@field text string
---@field tooltipType string @TODO: Only found normal

---Event triggers when a tooltip is shown on the worldmap.
---@alias SHOW_WORLDMAP_TOOLTIP_HANDLER fun(tooltipInfo, tooltipCount: number)

---
---@alias SIEGE_APPOINT_RESULT_HANDLER fun(isDefender, faction)

---
---@alias SIEGE_RAID_REGISTER_LIST_HANDLER fun(zoneGroupType, bRegistState, bListUpdate)

---@class SiegeRaidMemberInfo
---@field ability ABILITY_TYPE[]
---@field gearScore number
---@field heirLevel number
---@field level number
---@field name string

---@class SiegeRaidScheduleInfo
---@field endHour number
---@field endMin number
---@field startHour number
---@field startMin number
---@field weekDay string

---@class SiegeRaidZoneInfo
---@field commanderName string
---@field factionId number
---@field memberCnt number
---@field memberMax number
---@field scheduleInfo SiegeRaidScheduleInfo
---@field siegeState string = "siege_state_ready_to_siege",
---@field zoneName string = "Heedmar",

---@class SiegeRaidInfo
---@field memberInfo SiegeRaidMemberInfo[]
---@field zoneInfo SiegeRaidZoneInfo

---
---@alias SIEGE_RAID_TEAM_INFO_HANDLER fun(info: SiegeRaidZoneInfo)

---
---@alias SIEGE_WAR_ENDED_HANDLER fun()

---Event triggers when the player mounts a siege weapon.
---@alias SIEGEWEAPON_BOUND_HANDLER fun(arg: number)

---Event triggers when the player unmounts a siege weapon.
---@alias SIEGEWEAPON_UNBOUND_HANDLER fun()

---
---@alias SIM_DOODAD_MSG_HANDLER fun(code)

---Event triggers when the player receives a status debuff.
---@alias SKILL_ALERT_ADD_HANDLER fun(statusBuffType: SKILL_ALERT_STATUS_BUFF_TAG, buffId: number, remainTime: number, name: string)

---Event triggers when the players status debuff is gone.
---@alias SKILL_ALERT_REMOVE_HANDLER fun(statusBuffType: SKILL_ALERT_STATUS_BUFF_TAG)

---
---@alias SKILL_CHANGED_HANDLER fun(text, level, ability)

---
---@alias SKILL_DEBUG_MSG_HANDLER fun(resultCode, param, skillType)

---@enum SKILL_TYPE
local SKILL_TYPE = {
  BUFF  = "buff",
  SKILL = "skill",
}

---Event triggers when the player learns a skill.
---@alias SKILL_LEARNED_HANDLER fun(text: string, skillType: SKILL_TYPE)

---@class SkillMapEffectInfo
---@field a number
---@field b number
---@field g number
---@field index number
---@field r number
---@field radius number
---@field textureKey string
---@field texturePath string
---@field time number
---@field useEffect boolean
---@field x number
---@field y number
---@field z number

---Event triggers when the worldmap has an effect that that needs to be shown.
---@alias SKILL_MAP_EFFECT_HANDLER fun(info: SkillMapEffectInfo)

---Event triggers when the player uses as skill has a message.
---@alias SKILL_MSG_HANDLER fun(resultCode: string, param: string, skillType: number)

---@class SkillSelectiveItemTable
---@field count number
---@field grade number
---@field idx number
---@field name string
---@field selectable boolean
---@field type number

---@class SkillSelectiveItemList
---@field is_multi boolean
---@field itemTables SkillSelectiveItemTable[]
---@field maxTryCount number
---@field popup_text string
---@field select number
---@field srcItem ItemInfo

---Event triggers when the player is trying tos select an item from a supply
---kit.
---@alias SKILL_SELECTIVE_ITEM_HANDLER fun(list: SkillSelectiveItemList, usingSlotIndex: number)

---
---@alias SKILL_SELECTIVE_ITEM_NOT_AVAILABLE_HANDLER fun()

---Event triggers when the player attempts to open an item that has a selection.
---@alias SKILL_SELECTIVE_ITEM_READY_STATUS_HANDLER fun(status: boolean)

---
---@alias SKILL_UPGRADED_HANDLER fun(skillType)

---Event triggers when the player resets a skill tree.
---@alias SKILLS_RESET_HANDLER fun(ability: ABILITY_TYPE2)

---
---@alias SLAVE_SHIP_BOARDING_HANDLER fun()

---
---@alias SLAVE_SHIP_UNBOARDING_HANDLER fun()

---Event triggers when the player spawns a vehicle.
---@alias SLAVE_SPAWN_HANDLER fun()

---Event triggers when the player spawns a pet.
---@alias SPAWN_PET_HANDLER fun(mateType: MATE_TYPE)

---
---@alias SPECIAL_ABILITY_LEARNED_HANDLER fun(recvAbility)

---
---@alias SPECIALTY_CONTENT_RECIPE_INFO_HANDLER fun(list)

---
---@alias SPECIALTY_RATIO_BETWEEN_INFO_HANDLER fun(specialtyRatioTable)

---@TODO: caster seems to be a subset of UNIT, player, target, targettarget, watchtarget
---Event triggers when a unit starts casting a spell.
---@alias SPELLCAST_START_HANDLER fun(spellName: string, castingTime: number, caster: string, castingUseable: boolean)

---Event triggers when a unit stops casting a spell.
---@alias SPELLCAST_STOP_HANDLER fun(caster: string)

---Event triggers when a unit successfully casts a spell.
---@alias SPELLCAST_SUCCEEDED_HANDLER fun(caster: string)

---
---@alias START_CHAT_BUBBLE_HANDLER fun()

---
---@alias START_HERO_ELECTION_PERIOD_HANDLER fun()

---
---@alias START_QUEST_CONTEXT_HANDLER fun(qtype, useDirectingMode, npcId)

---
---@alias START_QUEST_CONTEXT_DOODAD_HANDLER fun(qtype, useDirectingMode, doodadId)

---
---@alias START_QUEST_CONTEXT_NPC_HANDLER fun(qtype, useDirectingMode, npcId)

---
---@alias START_QUEST_CONTEXT_SPHERE_HANDLER fun(qtype, stype)

---
---@alias START_SENSITIVE_OPERATION_HANDLER fun(remainTime)

---
---@alias START_TALK_QUEST_CONTEXT_HANDLER fun(doodadId)

---Event triggers when the player opens a daily assignment.
---@alias START_TODAY_ASSIGNMENT_HANDLER fun(stepName)

---
---@alias STARTED_DUEL_HANDLER fun()

---
---@alias STARTING_QUEST_COMPLETED_HANDLER fun()

---
---@alias STICKED_MSG_HANDLER fun()

---
---@alias STILL_LOADING_HANDLER fun(loadingProgress)

---
---@alias STORE_ADD_BUY_ITEM_HANDLER fun()

---Event triggers when the player attempts to sell an item a merchant.
---@alias STORE_ADD_SELL_ITEM_HANDLER fun(slotNumber: number)

---Event triggers when the player buys an item from merchant.
---@alias STORE_BUY_HANDLER fun(itemLinkText: string, stackCount: number)

---
---@alias STORE_FULL_HANDLER fun()

---Event triggers when the player has sold an item to a merchant.
---@alias STORE_SELL_HANDLER fun(itemLinkText: string, stackCount: number)

---Event triggers when the player accesses a merchant or when the merchants sold
---list updates.
---@alias STORE_SOLD_LIST_HANDLER fun(soldItems: ItemInfo[]|EmptyTable)

---
---@alias STORE_TRADE_FAILED_HANDLER fun()

---
---@alias SURVEY_FORM_UPDATE_HANDLER fun()

---@enum ENCHANT_MODE
local ENCHANT_MODE = {
  GRADE            = "grade",
  SOCKET_INSERT    = "socket_insert",
  SOCKET_REMOVE    = "socket_remove",
  SOCKET_EXTRACT   = "socket_extract",
  SOCKET_UPGRADE   = "socket_upgrade",
  GEM              = "gem",
  EVOLVING         = "evolving",
  EVOLVING_RE_ROLL = "evolving_re_roll",
  ELEMENT          = "element",
  REFURBISHMENT    = "refurbishment",
  SMELTING         = "smelting", -- unsure what this is.
  AWAKEN           = "awaken",
}

---Event triggers when the player changes their enchanting mode.
---@alias SWITCH_ENCHANT_ITEM_MODE_HANDLER fun(mode: ENCHANT_MODE)

---
---@alias SYNC_PORTAL_HANDLER fun()

---
---@alias SYS_INDUN_STAT_UPDATED_HANDLER fun()

---Event triggers when there is a system message.
---@alias SYSMSG_HANDLER fun(msg: string)

---Event triggers when the player targets a new unit.
---@alias TARGET_CHANGED_HANDLER fun(stringId: string, targetType: UNIT_TYPE)

---
---@alias TARGET_NPC_HEALTH_CHANGED_FOR_DEFENCE_INFO_HANDLER fun(curHp, maxHp)

---
---@alias TARGET_NPC_HEALTH_CHANGED_FOR_VERSUS_FACTION_HANDLER fun(target, curHp, maxHp)

---@TODO: This may not be complete.
---@enum TARGET_TYPE
local TARGET_TYPE = {
  DOODAD  = "doodad",
  NOTHING = "nothing",
  UI      = "ui",
  UNIT    = "unit",
}

---Event triggers when the players mouse is over a target.
---@alias TARGET_OVER_HANDLER fun(targetType: TARGET_TYPE, target: string|number)

---Event triggers when the players target changes their target.
---@alias TARGET_TO_TARGET_CHANGED_HANDLER fun(stringId?: string, targetType?: TARGET_TYPE)

---
---@alias TEAM_JOINT_BREAK_HANDLER fun(requester, enable)

---Event triggers when a co raid splits.
---@alias TEAM_JOINT_BROKEN_HANDLER fun()

---
---@alias TEAM_JOINT_CHAT_HANDLER fun()

---
---@alias TEAM_JOINT_RESPONSE_HANDLER fun()

---
---@alias TEAM_JOINT_TARGET_HANDLER fun(isJointable)

---Event triggers when a raid joins another raid join.
---@alias TEAM_JOINTED_HANDLER fun()

---Event triggers when a player in the team is disconnected.
---@alias TEAM_MEMBER_DISCONNECTED_HANDLER fun(isParty: boolean, jointOrder: number, stringId: string, memberIndex: number)

---Event triggers when a team members unit id changes.
---@alias TEAM_MEMBER_UNIT_ID_CHANGED_HANDLER fun(oldStringId: string, stringId: string)

---@enum TEAM_CHANGE_REASON
local TEAM_CHANGE_REASON = {
  JOINED    = "joined",
  LEAVED    = "leaved",
  REFRESHED = "refreshed",
}

---@class TeamMember
---@field isParty boolean
---@field jointOrder number 1 or 2
---@field memberIndex number
---@field name string
---@field teamRoleType string

---Event triggers when the players team changes.
---@alias TEAM_MEMBERS_CHANGED_HANDLER fun(reason: TEAM_CHANGE_REASON, value: TeamMember)

---Event triggers when a player changes their team role.
---@alias TEAM_ROLE_CHANGED_HANDLER fun(jointOrder: number, memberIndex: number, role: TEAM_ROLE)

---
---@alias TEAM_SUMMON_SUGGEST_HANDLER fun()

---
---@alias TENCENT_HEALTH_CARE_URL_HANDLER fun(url, width, height)

---
---@alias TIME_MESSAGE_HANDLER fun(key, timeTable)

---
---@alias TOGGLE_CHANGE_VISUAL_RACE_HANDLER fun(data)

---
---@alias TOGGLE_COMMUNITY_HANDLER fun()

---
---@alias TOGGLE_CRAFT_HANDLER fun()

---
---@alias TOGGLE_FACTION_HANDLER fun()

---Event triggers when the player toggles follow on another player.
---@alias TOGGLE_FOLLOW_HANDLER fun(on: boolean)

---
---@alias TOGGLE_IN_GAME_NOTICE_HANDLER fun(url)

---
---@alias TOGGLE_MEGAPHONE_CHAT_HANDLER fun()

---Event triggers when the players party is shown or hidden.
---@alias TOGGLE_PARTY_FRAME_HANDLER fun(show: boolean)

---
---@alias TOGGLE_PET_MANAGE_HANDLER fun()

---Event triggers when the player uses a teleport book.
---@alias TOGGLE_PORTAL_DIALOG_HANDLER fun(addPortal: boolean, skillTypeNumber: number, itemTypeNumber: number)

---Event triggers when the first raid frame is shown or hidden.
---@alias TOGGLE_RAID_FRAME_HANDLER fun(show: boolean)

---@TODO: Does this trigger for raid2?
---Event triggers when a party in the raid is shown or hidden.
---@alias TOGGLE_RAID_FRAME_PARTY_HANDLER fun(party: number, visible: boolean)

---Event triggers when the second raid frame is shown or hidden.
---@alias TOGGLE_RAID_FRAME2_HANDLER fun()

---Event triggers when the roadmap size is changed.
---@alias TOGGLE_ROADMAP_HANDLER fun()

---Event triggers when the player toggles walk.
---@alias TOGGLE_WALK_HANDLER fun(speed: number)

---Event triggers when a tower defense information updates.
---@alias TOWER_DEF_INFO_UPDATE_HANDLER fun()

---@class TowerDefInfo
---@field color string
---@field iconKey string
---@field msg string
---@field step string
---@field titleMsg string
---@field zoneGroup ZONE_ID @TODO: Might not be ZONE_ID

---Event triggers when a tower defense message occurs.
---@alias TOWER_DEF_MSG_HANDLER fun(towerDefInfo: TowerDefInfo)

---
---@alias TRADE_CAN_START_HANDLER fun(unitIdStr)

---
---@alias TRADE_CANCELED_HANDLER fun()

---@TODO: a player or the player?
---Event triggers when a player puts an item up for trade.
---@alias TRADE_ITEM_PUTUP_HANDLER fun(inventoryIdx: number, amount: number)

---
---@alias TRADE_ITEM_TOOKDOWN_HANDLER fun(inventoryIdx)

---
---@alias TRADE_ITEM_UPDATED_HANDLER fun()

---Event triggers when there player locks their trade.
---@alias TRADE_LOCKED_HANDLER fun()

---Event triggers when a trade has been made.
---@alias TRADE_MADE_HANDLER fun()

---
---@alias TRADE_MONEY_PUTUP_HANDLER fun(money)

---Event triggers when the player confirms the trade.
---@alias TRADE_OK_HANDLER fun()

---
---@alias TRADE_OTHER_ITEM_PUTUP_HANDLER fun(otherIdx, type, stackCount, tooltip)

---
---@alias TRADE_OTHER_ITEM_TOOKDOWN_HANDLER fun(otherIdx)

---Event triggers when the player being traded with locks their trade.
---@alias TRADE_OTHER_LOCKED_HANDLER fun()

---
---@alias TRADE_OTHER_MONEY_PUTUP_HANDLER fun(money)

---Event triggers when the player being traded with confirms their trade.
---@alias TRADE_OTHER_OK_HANDLER fun()

---Event triggers when the player starts trading with another player.
---@alias TRADE_STARTED_HANDLER fun(targetName: string)

---
---@alias TRADE_UI_TOGGLE_HANDLER fun()

---
---@alias TRADE_UNLOCKED_HANDLER fun()

---
---@alias TRANSFORM_COMBAT_RESOURCE_HANDLER fun(groupType)

---
---@alias TRIAL_CANCELED_HANDLER fun()

---Event triggers when a trial is over.
---@alias TRIAL_CLOSED_HANDLER fun()

---
---@alias TRIAL_MESSAGE_HANDLER fun(text)

---Event triggers when the trial changes state,
---@alias TRIAL_STATUS_HANDLER fun(state: TRIAL_STATE, juryCount: number, remainTime: number, arg: number)

---Event triggers every second a player is in a trial.
---@alias TRIAL_TIMER_HANDLER fun(state: TRIAL_STATE, remainTable: Time)

---Event triggers when an item that needs to be rolled on drops.
---@alias TRY_LOOT_DICE_HANDLER fun(key: number, timeStamp: number, itemLink: string)

---
---@alias TUTORIAL_EVENT_HANDLER fun(id, info)

---Event triggers when the player disables pop-up tutorial windows from their
---options window.
---@alias TUTORIAL_HIDE_FROM_OPTION_HANDLER fun()

---
---@alias UCC_IMPRINT_SUCCEEDED_HANDLER fun()

---Event triggers when `ADDON:FireAddon` has been called.
---@alias UI_ADDON_HANDLER fun()

---Event triggers when a ui permission update has occured.
---@alias UI_PERMISSION_UPDATE_HANDLER fun()

---
---@alias UI_RELOADED_HANDLER fun()

---
---@alias ULC_ACTIVATE_HANDLER fun(ulcType)

---
---@alias ULC_SKILL_MSG_HANDLER fun(resultCode, param)

---
---@alias UNFINISHED_BUILD_HOUSE_HANDLER fun(message)

---Event triggers when the combat state of a unit changes.
---@alias UNIT_COMBAT_STATE_CHANGED_HANDLER fun(combat: boolean, unitId: string)

---Event triggers when a player dies.
---@alias UNIT_DEAD_HANDLER fun(stringId: string, lossExp: number, lossDurabilityRatio: number)

---Event triggers when a player dies.
---@alias UNIT_DEAD_NOTICE_HANDLER fun(name: string)

---@enum UNIT_TYPE
local UNIT_TYPE = {
  HOUSING = "housing",
  NPC = "npc",
}

---Event triggers when a unit enters the players sight.
---@alias UNIT_ENTERED_SIGHT_HANDLER fun(unitId: number, unitType: UNIT_TYPE, curHp: string, maxHp: string)

---Event triggers when the player changes their gear.
---@alias UNIT_EQUIPMENT_CHANGED_HANDLER fun(equipSlot: ES)

---@class KillStreakInfo
---@field gameType number
---@field killerKillStreak number
---@field killerName string
---@field param1 number
---@field param2 number threeKillCount
---@field victimName number

---Event triggers when a player is on a kill streak.
---@alias UNIT_KILL_STREAK_HANDLER fun(killStreakInfo: KillStreakInfo)

---Event triggers when a unit leaves the players sight.
---@alias UNIT_LEAVED_SIGHT_HANDLER fun(unitId: number, unitType: UNIT_TYPE)

---Event triggers when a units name changes.
---@alias UNIT_NAME_CHANGED_HANDLER fun(unitId: string)

---
---@alias UNIT_NPC_EQUIPMENT_CHANGED_HANDLER fun()

---Event triggers when a player changes their class.
---@alias UNITFRAME_ABILITY_UPDATE_HANDLER fun(unitId: string)

---Event triggers when the player unmounts a pet.
---@alias UNMOUNT_PET_HANDLER fun(mateType: MATE_TYPE, isMyPet: boolean)

---
---@alias UPDATE_BINDINGS_HANDLER fun()

---
---@alias UPDATE_BOSS_TELESCOPE_AREA_HANDLER fun()

---
---@alias UPDATE_BOSS_TELESCOPE_INFO_HANDLER fun()

---
---@alias UPDATE_BOT_CHECK_INFO_HANDLER fun(totalTime, remainTime, count, question)

---
---@alias UPDATE_BUBBLE_HANDLER fun()

---
---@alias UPDATE_CARRYING_BACKPACK_SLAVE_INFO_HANDLER fun()

---
---@alias UPDATE_CHANGE_VISUAL_RACE_WND_HANDLER fun(fired)

---
---@alias UPDATE_CHRONICLE_INFO_HANDLER fun(info)

---
---@alias UPDATE_CHRONICLE_NOTIFIER_HANDLER fun(init, mainKey)

---
---@alias UPDATE_CLIENT_DRIVEN_INFO_HANDLER fun(sceneInfo)

---
---@alias UPDATE_COMPLETED_QUEST_INFO_HANDLER fun()

---
---@alias UPDATE_CONTENT_ROSTER_WINDOW_HANDLER fun(updateInfo)

---Event triggers when the player dies and when the player respawns.
---@alias UPDATE_CORPSE_INFO_HANDLER fun()

---@class CraftOrderItemFee
---@field defaultFee string
---@field maxFee string
---@field minFee string

---Event triggers when the player is attempting to list a requested item.
---@alias UPDATE_CRAFT_ORDER_ITEM_FEE_HANDLER fun(info: CraftOrderItemFee)

---@class CraftOrderItemSlot
---@field craftCount number
---@field craftGrade number
---@field craftType number

---Event triggers when the request slot updates.
---@alias UPDATE_CRAFT_ORDER_ITEM_SLOT_HANDLER fun(info?: CraftOrderItemSlot)

---Event triggers when the player starts to make, or cancels, a request for a
---craft order.
---@alias UPDATE_CRAFT_ORDER_SKILL_HANDLER fun(key: string, fired: boolean)

---
---@alias UPDATE_DEFENCE_INFO_HANDLER fun(info)

---
---@alias UPDATE_DOMINION_INFO_HANDLER fun()

---Event triggers when the player opens the map.
---@alias UPDATE_DOODAD_INFO_HANDLER fun()

---
---@alias UPDATE_DURABILITY_STATUS_HANDLER fun(frame, added, removed)

---
---@alias UPDATE_DYEING_EXCUTABLE_HANDLER fun(executeable)

---Event triggers when a item is about to be enchanted and when at the start of the item being enchanted.
---@alias UPDATE_ENCHANT_ITEM_MODE_HANDLER fun(isExcutable: boolean, isLock: boolean)

---
---@alias UPDATE_EXPEDITION_PORTAL_HANDLER fun()

---Event triggers when the players guild assignments reset.
---@alias UPDATE_EXPEDITION_TODAY_ASSIGNMENT_RESET_COUNT_HANDLER fun(count: number)

---
---@alias UPDATE_FACTION_REZ_DISTRICT_HANDLER fun()

---
---@alias UPDATE_FISH_SCHOOL_AREA_HANDLER fun()

---
---@alias UPDATE_FISH_SCHOOL_INFO_HANDLER fun()

---Event triggers when the open chest (gold/silver/copper crate) window receives
---a update when the player selects a crate or a key and when each crate is
---opened.
---@alias UPDATE_GACHA_LOOT_MODE_HANDLER fun(isExcutable: boolean, isLock: boolean)

---
---@alias UPDATE_GIVEN_QUEST_STATIC_INFO_HANDLER fun()

---
---@alias UPDATE_HERO_ELECTION_CONDITION_HANDLER fun()

---
---@alias UPDATE_HIDE_OPTIMIZATION_BUTTON_HANDLER fun()

---
---@alias UPDATE_HOUSING_INFO_HANDLER fun()

---
---@alias UPDATE_HOUSING_TOOLTIP_HANDLER fun(unitId)

---
---@alias UPDATE_INGAME_BEAUTYSHOP_STATUS_HANDLER fun()

---@TODO: Figure out a new name for this.
---@enum INGAME_SHOP_TYPE
local UPDATE_INGAME_SHOP_TYPE = {
  CART           = "cart",
  CHECKTIME      = "checkTime",
  EXCHANGE_RATIO = "exchange_ratio",
  GOODS          = "goods",
  MAINTAB        = "maintab",
  SELECTED_GOODS = "selected_goods",
  SUBTAB         = "subtab",
}

---Event triggers when the in game shop recieves an event.
---@alias UPDATE_INGAME_SHOP_HANDLER fun(updateType: INGAME_SHOP_TYPE, page?: number, totalItems?: number, arg4?)

---@enum INGAME_SHOP_VIEW_TYPE
local INGAME_SHOP_VIEW_TYPE = {
  ENTER_MODE = "enter_mode",
  LEAVE_MODE = "leave_mode",
  LEAVE_SORT = "leave_sort",
}

---@TODO:: What types of mode exists? Ive seen 1 and 2.
---Event triggers when the in game shops view changes.
---@alias UPDATE_INGAME_SHOP_VIEW_HANDLER fun(viewType: INGAME_SHOP_VIEW_TYPE, mode: number)

---Event triggers when a instance invitation goes out and each time a player joins.
---@alias UPDATE_INSTANT_GAME_INVITATION_COUNT_HANDLER fun(accept: number, totalSize: number)

---
---@alias UPDATE_INSTANT_GAME_KILLSTREAK_HANDLER fun(count)

---
---@alias UPDATE_INSTANT_GAME_KILLSTREAK_COUNT_HANDLER fun(count)

---Event triggers when an instance score updates.
---@alias UPDATE_INSTANT_GAME_SCORES_HANDLER fun()

---Event triggers when the player queues an instance.
---@alias UPDATE_INSTANT_GAME_STATE_HANDLER fun()

---Event triggers every 500ms while the player is inside an instance.
---@alias UPDATE_INSTANT_GAME_TIME_HANDLER fun()

---Event triggers when the player opens/closes the item infusion window.
---@alias UPDATE_ITEM_LOOK_CONVERT_MODE_HANDLER fun()

---
---@alias UPDATE_MAIN_MENU_EXPEDITION_HANDLER fun() -- Crash

---
---@alias UPDATE_MONITOR_NPC_HANDLER fun()

---Event triggers every 5 seconds to update the players slave (vehicle) position information.
---@alias UPDATE_MY_SLAVE_POS_INFO_HANDLER fun()

---
---@alias UPDATE_NPC_INFO_HANDLER fun()

---
---@alias UPDATE_NPC_INFO_BROADCASTING_HANDLER fun(info)

---Event triggers when the player opens the settings window and triggers when
---the player updates a setting.
---@alias UPDATE_OPTION_BINDINGS_HANDLER fun(overrided?: boolean, oldAction?: string, newAction?: string|nil)

---Event triggers when the map has a ping update.
---@alias UPDATE_PING_INFO_HANDLER fun()

---Event triggers when the player is attemping to revert a crafting order.
---@alias UPDATE_RESTORE_CRAFT_ORDER_ITEM_MATERIAL_HANDLER fun(infos: ItemInfo)

---@class CraftOrderInfo
---@field craftCount number
---@field craftGrade number @TODO: Is this ITEM_GRADE_TYPE?
---@field craftType number

---Event triggers when the player is attempting to revert a crafting order.
---@alias UPDATE_RESTORE_CRAFT_ORDER_ITEM_SLOT_HANDLER fun(info?: CraftOrderInfo)

---
---@alias UPDATE_RETURN_ACCOUNT_STATUS_HANDLER fun(status)

---@TODO:
---Event triggers when the player changes zones.
---@alias UPDATE_ROADMAP_ANCHOR_HANDLER fun(file: string)

---
---@alias UPDATE_ROSTER_MEMBER_INFO_HANDLER fun(rosterId)

---
---@alias UPDATE_ROUTE_MAP_HANDLER fun()

---Event triggers every 500ms while the player is using a ship telescope.
---@alias UPDATE_SHIP_TELESCOPE_INFO_HANDLER fun()

---
---@alias UPDATE_SHORTCUT_SKILLS_HANDLER fun()

---
---@alias UPDATE_SIEGE_SCORE_HANDLER fun(offensePoint, outlawPoint)

---
---@alias UPDATE_SKILL_ACTIVE_TYPE_HANDLER fun()

---
---@alias UPDATE_SLAVE_EQUIPMENT_SLOT_HANDLER fun(reload)

---
---@alias UPDATE_SPECIALTY_RATIO_HANDLER fun(sellItem)

---Event triggers when the players squad updates.
---@alias UPDATE_SQUAD_HANDLER fun()

---Event triggers when the player starts and stops using a ship telescope.
---@alias UPDATE_TELESCOPE_AREA_HANDLER fun()

---Event triggers when the players daily assignment updates.
---@alias UPDATE_TODAY_ASSIGNMENT_HANDLER fun(todayInfo?: TodayAssignmentInfo)

---Event triggers when the players daily assignments reset.
---@alias UPDATE_TODAY_ASSIGNMENT_RESET_COUNT_HANDLER fun(count: number)

---Event triggers when the player starts and stops using a telescope.
---@alias UPDATE_TRANSFER_TELESCOPE_AREA_HANDLER fun()

---Event triggers every 500ms while the player is using a telescope.
---@alias UPDATE_TRANSFER_TELESCOPE_INFO_HANDLER fun()

---Event triggers when the player enters a new zone.
---@alias UPDATE_ZONE_INFO_HANDLER fun()

---@enum ZONE_LEVEL
local ZONE_LEVEL = {
  WORLD     = 0,
  CONTINENT = 1,
  ZONE      = 2,
  CITY      = 3,
}

---Event triggers when the world map zone zoom level changes.
---@alias UPDATE_ZONE_LEVEL_INFO_HANDLER fun(level: ZONE_LEVEL, id: ZONE_ID)

---
---@alias UPDATE_ZONE_PERMISSION_HANDLER fun()

---
---@alias VIEW_CASH_BUY_WINDOW_HANDLER fun(sellType)

---Event triggers when the player receieves a friend request.
---@alias WAIT_FRIEND_ADD_ALARM_HANDLER fun()

---Event triggers when the player receieves a friend request.
---@alias WAIT_FRIENDLIST_UPDATE_HANDLER fun(updateType: string)

---Event triggers when the player is waiting on a reply from the server.
---@alias WAIT_REPLY_FROM_SERVER_HANDLER fun(waiting: boolean)

---Event triggers when the player starts tracking a new target.
---@alias WATCH_TARGET_CHANGED_HANDLER fun(stringId)

---
---@alias WEB_BROWSER_ESC_EVENT_HANDLER fun(browser)

---@class WorldMessageInfo
---@field factionName string
---@field motherFactionName string
---@field name string
---@field sextant SEXTANT
---@field trgFactionName string
---@field trgMotherFactionName string
---@field trgName string
---@field zoneGroupName string

---Event triggers when a world message occurs.
---@alias WORLD_MESSAGE_HANDLER fun(msg: string, iconKey: string, info: table)

---
---@alias ZONE_SCORE_CONTENT_STATE_HANDLER fun(states)

---
---@alias ZONE_SCORE_UPDATED_HANDLER fun(kind, info)
