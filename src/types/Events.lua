---Event triggers for the key down and key up when the player uses a hotkey that
---an addon has registered.
---@alias HOTKEY_ACTION_HANDLER fun(actionName: string, keyUp: boolean)
---@alias WIDGET_HOTKEY_ACTION_HANDLER fun(self: Widget, actionName: string, keyUp: boolean)

---Event triggers when one of the players ability is changed.
---@alias ABILITY_CHANGED_HANDLER fun(newAbility: ABILITY_TYPE_NAME, oldAbility: ABILITY_TYPE_NAME)
---@alias WIDGET_ABILITY_CHANGED_HANDLER fun(self: Widget, newAbility: ABILITY_TYPE_NAME, oldAbility: ABILITY_TYPE_NAME)

---@TODO:
---@alias ABILITY_EXP_CHANGED_HANDLER fun(expStr: string)
---@alias WIDGET_ABILITY_EXP_CHANGED_HANDLER fun(self: Widget, expStr: string)

---Event triggers when the players statsaver set is saved, changed, or deleted
---@alias ABILITY_SET_CHANGED_HANDLER fun(responseType: RESPONSE_TYPE)
---@alias WIDGET_ABILITY_SET_CHANGED_HANDLER fun(self: Widget, responseType: RESPONSE_TYPE)

---Event triggers when the players statsaver is expanded.
---@alias ABILITY_SET_USABLE_SLOT_COUNT_CHANGED_HANDLER fun()
---@alias WIDGET_ABILITY_SET_USABLE_SLOT_COUNT_CHANGED_HANDLER fun(self: Widget)

---Event triggers when the player tracks their daily login.
---@alias ACCOUNT_ATTENDANCE_ADDED_HANDLER fun()
---@alias WIDGET_ACCOUNT_ATTENDANCE_ADDED_HANDLER fun(self: Widget)

---Event triggers when dailies reset.
---@alias ACCOUNT_ATTENDANCE_LOADED_HANDLER fun()
---@alias WIDGET_ACCOUNT_ATTENDANCE_LOADED_HANDLER fun(self: Widget)

---Event triggers when the players account gets restricted.
---@alias ACCOUNT_RESTRICT_NOTICE_HANDLER fun()
---@alias WIDGET_ACCOUNT_RESTRICT_NOTICE_HANDLER fun(self: Widget)

---Event triggers when the player updates an achievement.
---@alias ACHIEVEMENT_UPDATE_HANDLER fun(status: "update"|string, newAchievementType: number)
---@alias WIDGET_ACHIEVEMENT_UPDATE_HANDLER fun(self: Widget, status: "update"|string, newAchievementType: number)

---Event triggers when an acquaintance (guild member) logs in.
---@alias ACQUAINTANCE_LOGIN_HANDLER fun(cmf: CHANNEL_MESSAGE_FILTER, charName: string)
---@alias WIDGET_ACQUAINTANCE_LOGIN_HANDLER fun(self: Widget, cmf: CHANNEL_MESSAGE_FILTER, charName: string)

---Event triggers when the players proficiency changes.
---@alias ACTABILITY_EXPERT_CHANGED_HANDLER fun(actabilityId: number, name: string, diff: number|string, final: number|string)
---@alias WIDGET_ACTABILITY_EXPERT_CHANGED_HANDLER fun(self: Widget, actabilityId: number, name: string, diff: number|string, final: number|string)

---Event triggers when the player expands their maximum proficiency specializations.
---@alias ACTABILITY_EXPERT_EXPANDED_HANDLER fun()
---@alias WIDGET_ACTABILITY_EXPERT_EXPANDED_HANDLER fun(self: Widget)

---Event triggers when the players proficiency level changes.
---@alias ACTABILITY_EXPERT_GRADE_CHANGED_HANDLER fun(actabilityId: ACTABILITY_ID, isUpgrade: boolean, name: ACTABILITY_NAME, gradeName: ACTABILITY_GRADE)
---@alias WIDGET_ACTABILITY_EXPERT_GRADE_CHANGED_HANDLER fun(self: Widget, actabilityId: ACTABILITY_ID, isUpgrade: boolean, name: ACTABILITY_NAME, gradeName: ACTABILITY_GRADE)

---Event triggers when the players proficiency modifiers are updated.
---@alias ACTABILITY_MODIFIER_UPDATE_HANDLER fun()
---@alias WIDGET_ACTABILITY_MODIFIER_UPDATE_HANDLER fun(self: Widget)

---@TODO: I haven't actually seen this happen nor do I know what would cause this to be neccessary.
---Event triggers when the players proficiencies need to be refreshed.
---@alias ACTABILITY_REFRESH_ALL_HANDLER fun()
---@alias WIDGET_ACTABILITY_REFRESH_ALL_HANDLER fun(self: Widget)

---Event triggers when the players shortcut bar has a skill auto registered. (e.g. When the player is leveling and learns a skill and it auto registers to the players shortcut bar.)
---@alias ACTION_BAR_AUTO_REGISTERED_HANDLER fun(slotIndex: number)
---@alias WIDGET_ACTION_BAR_AUTO_REGISTERED_HANDLER fun(self: Widget, slotIndex: number)

---Event triggers when the players action bar changes. (min: `1`)
---@alias ACTION_BAR_PAGE_CHANGED_HANDLER fun(page: number)
---@alias WIDGET_ACTION_BAR_PAGE_CHANGED_HANDLER fun(self: Widget, page: number)

---@TODO:
---@alias ACTIONS_UPDATE_HANDLER fun()
---@alias WIDGET_ACTIONS_UPDATE_HANDLER fun(self: Widget)

---@TODO: Make a enum for type
---Event triggers when a new event has appeared with in the players range.
---@alias ADD_GIVEN_QUEST_INFO_HANDLER fun(type: `0`|`1`, questType: number)
---@alias WIDGET_ADD_GIVEN_QUEST_INFO_HANDLER fun(self: Widget, type: `0`|`1`, questType: number)

---Event triggers when the player has a quest notification info.
---@alias ADD_NOTIFY_QUEST_INFO_HANDLER fun(qType: number)
---@alias WIDGET_ADD_NOTIFY_QUEST_INFO_HANDLER fun(self: Widget, qType: number)

---Event triggers when an item has been added to the players inventory.
---@alias ADDED_ITEM_HANDLER fun(itemLinkText: string, itemCount: number, itemTaskType: number, tradeOtherName: string)
---@alias WIDGET_ADDED_ITEM_HANDLER fun(self: Widget, itemLinkText: string, itemCount: number, itemTaskType: number, tradeOtherName: string)

---Event triggers when the addon has fully loaded.
---@alias ADDON_LOADED_HANDLER fun()
---@alias WIDGET_ADDON_LOADED_HANDLER fun(self: Widget)

---Event triggers when the player views the Siege Info tab when a siege period has started.
---@alias ALL_SIEGE_RAID_TEAM_INFOS_HANDLER fun(teamInfos: SiegeRaidTeamInfos)
---@alias WIDGET_ALL_SIEGE_RAID_TEAM_INFOS_HANDLER fun(self: Widget, teamInfos: SiegeRaidTeamInfos)

---Event triggers when a player changes their appellation.
---@alias APPELLATION_CHANGED_HANDLER fun(stringId: string, isChanged: boolean)
---@alias WIDGET_APPELLATION_CHANGED_HANDLER fun(self: Widget, stringId: string, isChanged: boolean)

---Event triggers when the player gains a title.
---@alias APPELLATION_GAINED_HANDLER fun(str: string)
---@alias WIDGET_APPELLATION_GAINED_HANDLER fun(self: Widget, str: string)

---Event triggers when the players stamp (name icon) changes.
---@alias APPELLATION_STAMP_SET_HANDLER fun()
---@alias WIDGET_APPELLATION_STAMP_SET_HANDLER fun(self: Widget)

---@TODO: I haven't seen this yet. I suspect its disabled on ArcheRage.
---Event triggers when the players labor is low and the game recommends they buy a labor potion from the market place.
---@alias ASK_BUY_LABOR_POWER_POTION_HANDLER fun()
---@alias WIDGET_ASK_BUY_LABOR_POWER_POTION_HANDLER fun(self: Widget)

---Event triggers when the player attempts to turn on bloodlust.
---@alias ASK_FORCE_ATTACK_HANDLER fun(forceAttackLevel: number)
---@alias WIDGET_ASK_FORCE_ATTACK_HANDLER fun(self: Widget, forceAttackLevel: number)

---Event triggers when the player bids on an item on the auction house.
---@alias AUCTION_BIDDED_HANDLER fun(itemName: string, moneyStr: string)
---@alias WIDGET_AUCTION_BIDDED_HANDLER fun(self: Widget, itemName: string, moneyStr: string)

---Event triggers when the player receives a bid on an item on the auction house.
---@alias AUCTION_BIDDEN_HANDLER fun(itemName: string, moneyStr: string)
---@alias WIDGET_AUCTION_BIDDEN_HANDLER fun(self: Widget, itemName: string, moneyStr: string)

---Event triggers when the player buys seomthing on the auction house.
---@alias AUCTION_BOUGHT_HANDLER fun()
---@alias WIDGET_AUCTION_BOUGHT_HANDLER fun(self: Widget)

---Event triggers when the player sells something on the auction house.
---@alias AUCTION_BOUGHT_BY_SOMEONE_HANDLER fun(itemName: string, moneyStr: string)
---@alias WIDGET_AUCTION_BOUGHT_BY_SOMEONE_HANDLER fun(self: Widget, itemName: string, moneyStr: string)

---Event triggers when the player cancels a listed item.
---@alias AUCTION_CANCELED_HANDLER fun(itemName: string)
---@alias WIDGET_AUCTION_CANCELED_HANDLER fun(self: Widget, itemName: string)

---Event triggers when the player attempts to list an item or search for an item
---in the auction house and they are too low of a level.
---@alias AUCTION_CHARACTER_LEVEL_TOO_LOW_HANDLER fun(msg: string)
---@alias WIDGET_AUCTION_CHARACTER_LEVEL_TOO_LOW_HANDLER fun(self: Widget, msg: string)

---Event triggers when a player is listing an item on the auction house.
---@alias AUCTION_ITEM_ATTACHMENT_STATE_CHANGED_HANDLER fun(attached: boolean)
---@alias WIDGET_AUCTION_ITEM_ATTACHMENT_STATE_CHANGED_HANDLER fun(self: Widget, attached: boolean)

---Event triggers when a player is listing an item on the auction house.
---@alias AUCTION_ITEM_PUT_UP_HANDLER fun(itemName: string)
---@alias WIDGET_AUCTION_ITEM_PUT_UP_HANDLER fun(self: Widget, itemName: string)

---Event triggers when a player is listing or searching for an item on the auction house.
---@alias AUCTION_ITEM_SEARCH_HANDLER fun()
---@alias WIDGET_AUCTION_ITEM_SEARCH_HANDLER fun(self: Widget)

---Event triggers when a player is listing or searching for an item on the auction house.
---@alias AUCTION_ITEM_SEARCHED_HANDLER fun(clearLastSearchArticle: boolean)
---@alias WIDGET_AUCTION_ITEM_SEARCHED_HANDLER fun(self: Widget, clearLastSearchArticle: boolean)

---Event triggers when a player is listing an item on the auction house.
---@alias AUCTION_LOWEST_PRICE_HANDLER fun(itemType: number, grade: ITEM_GRADE_TYPE, price: string)
---@alias WIDGET_AUCTION_LOWEST_PRICE_HANDLER fun(self: Widget, itemType: number, grade: ITEM_GRADE_TYPE, price: string)

---Event triggers when a player has started crafting and after each craft end.
---@alias AUCTION_PERMISSION_BY_CRAFT_HANDLER fun(icraftType: number)
---@alias WIDGET_AUCTION_PERMISSION_BY_CRAFT_HANDLER fun(self: Widget, icraftType: number)

---Event triggers when a player joins the jury audience.
---@alias AUDIENCE_JOINED_HANDLER fun(audienceName: string)
---@alias WIDGET_AUDIENCE_JOINED_HANDLER fun(self: Widget, audienceName: string)

---Event triggers when a player leaves the jury audience.
---@alias AUDIENCE_LEFT_HANDLER fun(audienceName: string)
---@alias WIDGET_AUDIENCE_LEFT_HANDLER fun(self: Widget, audienceName: string)

---Event triggers when the list of people who reported a suspicious user is updated.
---@alias BAD_USER_LIST_UPDATE_HANDLER fun()
---@alias WIDGET_BAD_USER_LIST_UPDATE_HANDLER fun(self: Widget)

---Event triggers when the player attempts to report a player for inappropriate language.
---@alias BADWORD_USER_REPORED_RESPONE_MSG_HANDLER fun(success: boolean)
---@alias WIDGET_BADWORD_USER_REPORED_RESPONE_MSG_HANDLER fun(self: Widget, success: boolean)

---Event triggers when the player expands their bag.
---@alias BAG_EXPANDED_HANDLER fun()
---@alias WIDGET_BAG_EXPANDED_HANDLER fun(self: Widget)

---@TODO: this doesnt trigger every time, maybe its when the bag idx changes for each item?
---Event triggers when the player receives an item to their bag.
---@alias BAG_ITEM_CONFIRMED_HANDLER fun()
---@alias WIDGET_BAG_ITEM_CONFIRMED_HANDLER fun(self: Widget)

---@TODO: This would  trigger when the real id should be shown on top of the slot, unsure how I can trigger this. Maybe a console variable?
---@alias BAG_REAL_INDEX_SHOW_HANDLER fun(isRealSlotShow: boolean)
---@alias WIDGET_BAG_REAL_INDEX_SHOW_HANDLER fun(self: Widget, isRealSlotShow: boolean)

---Event triggers when the player creates a tab in their bag.
---@alias BAG_TAB_CREATED_HANDLER fun()
---@alias WIDGET_BAG_TAB_CREATED_HANDLER fun(self: Widget)

---Event triggers when the player deletes a tab in their bag.
---@alias BAG_TAB_REMOVED_HANDLER fun()
---@alias WIDGET_BAG_TAB_REMOVED_HANDLER fun(self: Widget)

---Event triggers when the players sorts their bag.
---@alias BAG_TAB_SORTED_HANDLER fun(arg: number)
---@alias WIDGET_BAG_TAB_SORTED_HANDLER fun(self: Widget, arg: number)

---Event triggers when the player changes the bag tab.
---@alias BAG_TAB_SWITCHED_HANDLER fun(tabId)
---@alias WIDGET_BAG_TAB_SWITCHED_HANDLER fun(self: Widget, tabId)

---Event triggers when the players bag updates.
---@alias BAG_UPDATE_HANDLER fun(bagId: number, slotId: number)
---@alias WIDGET_BAG_UPDATE_HANDLER fun(self: Widget, bagId: number, slotId: number)

---Event triggers when the player expands their bank.
---@alias BANK_EXPANDED_HANDLER fun()
---@alias WIDGET_BANK_EXPANDED_HANDLER fun(self: Widget)

---@TODO:
---@alias BANK_REAL_INDEX_SHOW_HANDLER fun(isRealSlotShow: boolean)
---@alias WIDGET_BANK_REAL_INDEX_SHOW_HANDLER fun(self: Widget, isRealSlotShow: boolean)

---Event triggers when the players creates a tab in their bank.
---@alias BANK_TAB_CREATED_HANDLER fun()
---@alias WIDGET_BANK_TAB_CREATED_HANDLER fun(self: Widget)

---Event triggers when the player deletes a tab in their bank.
---@alias BANK_TAB_REMOVED_HANDLER fun()
---@alias WIDGET_BANK_TAB_REMOVED_HANDLER fun(self: Widget)

---Event triggers when the player sorts their bank.
---@alias BANK_TAB_SORTED_HANDLER fun()
---@alias WIDGET_BANK_TAB_SORTED_HANDLER fun(self: Widget)

---Event triggers when the player changes the bank tab.
---@alias BANK_TAB_SWITCHED_HANDLER fun(tabId: number)
---@alias WIDGET_BANK_TAB_SWITCHED_HANDLER fun(self: Widget, tabId: number)

---Event triggers when the players bank updates.
---@alias BANK_UPDATE_HANDLER fun(bagId: number, slotId: number)
---@alias WIDGET_BANK_UPDATE_HANDLER fun(self: Widget, bagId: number, slotId: number)

---Event triggers when the beautyshop is closed by the system. (e.g the player dies while in the beautyshop)
---@alias BEAUTYSHOP_CLOSE_BY_SYSTEM_HANDLER fun()
---@alias WIDGET_BEAUTYSHOP_CLOSE_BY_SYSTEM_HANDLER fun(self: Widget)

---Event triggers when the player increases their maximum stat migration limit.
---@alias BLESS_UTHSTIN_EXTEND_MAX_STATS_HANDLER fun()
---@alias WIDGET_BLESS_UTHSTIN_EXTEND_MAX_STATS_HANDLER fun(self: Widget)

---Event triggers when the players stat migration slot is clear.
---@alias BLESS_UTHSTIN_ITEM_SLOT_CLEAR_HANDLER fun()
---@alias WIDGET_BLESS_UTHSTIN_ITEM_SLOT_CLEAR_HANDLER fun(self: Widget)

---Event triggers when the player sets a item in the stat migration slot.
---@alias BLESS_UTHSTIN_ITEM_SLOT_SET_HANDLER fun(msgapplycountlimit?)
---@alias WIDGET_BLESS_UTHSTIN_ITEM_SLOT_SET_HANDLER fun(self: Widget, msgapplycountlimit?)

---Event triggers when the players stat migration or ipnysh artifacts emmits a message.
---@alias BLESS_UTHSTIN_MESSAGE_HANDLER fun(messageType: number)
---@alias WIDGET_BLESS_UTHSTIN_MESSAGE_HANDLER fun(self: Widget, messageType: number)

---Event triggers when the player changes their stat migration or activates a different stat migration.
---@alias BLESS_UTHSTIN_UPDATE_STATS_HANDLER fun()
---@alias WIDGET_BLESS_UTHSTIN_UPDATE_STATS_HANDLER fun(self: Widget)

---Event triggers when the player applies the stat migration item in the slot.
---@alias BLESS_UTHSTIN_WILL_APPLY_STATS_HANDLER fun(itemType: number, incStatsKind: STAT_KIND, decStatsKind: STAT_KIND, incStatsPoint: number, decStatsPoint: number)
---@alias WIDGET_BLESS_UTHSTIN_WILL_APPLY_STATS_HANDLER fun(self: Widget, itemType: number, incStatsKind: STAT_KIND, decStatsKind: STAT_KIND, incStatsPoint: number, decStatsPoint: number)

---Event triggers when a user is added or removed from the players block list.
---@alias BLOCKED_USER_LIST_HANDLER fun(msg: string)
---@alias WIDGET_BLOCKED_USER_LIST_HANDLER fun(self: Widget, msg: string)

---Event triggers when a user is added or removed from the players block list.
---@alias BLOCKED_USER_UPDATE_HANDLER fun()
---@alias WIDGET_BLOCKED_USER_UPDATE_HANDLER fun(self: Widget)

---@TODO:
---@alias BLOCKED_USERS_INFO_HANDLER fun()
---@alias WIDGET_BLOCKED_USERS_INFO_HANDLER fun(self: Widget)

---@TODO:
---@alias BOT_SUSPECT_REPORTED_HANDLER fun(sourceName: string, targetName: string)
---@alias WIDGET_BOT_SUSPECT_REPORTED_HANDLER fun(self: Widget, sourceName: string, targetName: string)

---Event triggers when the players buff/debuff/hidden buff that gives a skill for the dynamic shortcut changes.
---@alias BUFF_SKILL_CHANGED_HANDLER fun()
---@alias WIDGET_BUFF_SKILL_CHANGED_HANDLER fun(self: Widget)

---Event triggers when a buff is created or destroyed for a unit.
---@alias BUFF_UPDATE_HANDLER fun(action: BUFF_ACTION, target: BUFF_TARGET)
---@alias WIDGET_BUFF_UPDATE_HANDLER fun(self: Widget, action: BUFF_ACTION, target: BUFF_TARGET)

---Event triggers when the player views the build condition of a community center.
---@alias BUILD_CONDITION_HANDLER fun(condition: BuildCondition)
---@alias WIDGET_BUILD_CONDITION_HANDLER fun(self: Widget, condition: BuildCondition)

---Event triggers when the player cancels trying to place something that can be built.
---@alias BUILDER_END_HANDLER fun()
---@alias WIDGET_BUILDER_END_HANDLER fun(self: Widget)

---Event triggers when the player is attempting to place something that can be built.
---@alias BUILDER_STEP_HANDLER fun(step: "position"|"roation")
---@alias WIDGET_BUILDER_STEP_HANDLER fun(self: Widget, step: "position"|"roation")

---Event triggers when the player is updating the farmhand.
---@alias BUTLER_INFO_UPDATED_HANDLER fun(event: BUTLER_EVENT, noError: boolean)
---@alias WIDGET_BUTLER_INFO_UPDATED_HANDLER fun(self: Widget, event: BUTLER_EVENT, noError: boolean)

---@TODO:
---@alias BUTLER_UI_COMMAND_HANDLER fun(mode: number)
---@alias WIDGET_BUTLER_UI_COMMAND_HANDLER fun(self: Widget, mode: number)

---Event triggers when the player opens the purchase cargo window.
---@alias BUY_SPECIALTY_CONTENT_INFO_HANDLER fun(list: SpecialtyContentInfo[])
---@alias WIDGET_BUY_SPECIALTY_CONTENT_INFO_HANDLER fun(self: Widget, list: SpecialtyContentInfo[])

---Event triggers when a crafting order has been canceled.
---@alias CANCEL_CRAFT_ORDER_HANDLER fun(result: boolean)
---@alias WIDGET_CANCEL_CRAFT_ORDER_HANDLER fun(self: Widget, result: boolean)

---Event triggers when the player exists house preview mode for remodeling a
---building.
---@alias CANCEL_REBUILD_HOUSE_CAMERA_MODE_HANDLER fun()
---@alias WIDGET_CANCEL_REBUILD_HOUSE_CAMERA_MODE_HANDLER fun(self: Widget)

---@TODO:
---@alias CANDIDATE_LIST_CHANGED_HANDLER fun()
---@alias WIDGET_CANDIDATE_LIST_CHANGED_HANDLER fun(self: Widget)

---@TODO:
---@alias CANDIDATE_LIST_HIDE_HANDLER fun()
---@alias WIDGET_CANDIDATE_LIST_HIDE_HANDLER fun(self: Widget)

---@TODO:
---@alias CANDIDATE_LIST_SELECTION_CHANGED_HANDLER fun()
---@alias WIDGET_CANDIDATE_LIST_SELECTION_CHANGED_HANDLER fun(self: Widget)

---@TODO:
---@alias CANDIDATE_LIST_SHOW_HANDLER fun()
---@alias WIDGET_CANDIDATE_LIST_SHOW_HANDLER fun(self: Widget)

---@TODO:
---@alias CHANGE_ACTABILITY_DECO_NUM_HANDLER fun()
---@alias WIDGET_CHANGE_ACTABILITY_DECO_NUM_HANDLER fun(self: Widget)

---Event triggers when the player contributes a change to the guilds prestige.
---@alias CHANGE_CONTRIBUTION_POINT_TO_PLAYER_HANDLER fun(isGain: boolean, diff: string, total: string)
---@alias WIDGET_CHANGE_CONTRIBUTION_POINT_TO_PLAYER_HANDLER fun(self: Widget, isGain: boolean, diff: string, total: string)

---Event triggers when the players guilds prestige changes.
---@alias CHANGE_CONTRIBUTION_POINT_TO_STORE_HANDLER fun()
---@alias WIDGET_CHANGE_CONTRIBUTION_POINT_TO_STORE_HANDLER fun(self: Widget)

---Event triggers when the player changes their language.
---@alias CHANGE_MY_LANGUAGE_HANDLER fun()
---@alias WIDGET_CHANGE_MY_LANGUAGE_HANDLER fun(self: Widget)

---Event triggers when the player changes a Game Settings option.
---@alias CHANGE_OPTION_HANDLER fun(optionType: number, infoTable: ChangeOptionInfo)
---@alias WIDGET_CHANGE_OPTION_HANDLER fun(self: Widget, optionType: number, infoTable: ChangeOptionInfo)

---Event triggers when the player changes race.
---@alias CHANGE_VISUAL_RACE_ENDED_HANDLER fun()
---@alias WIDGET_CHANGE_VISUAL_RACE_ENDED_HANDLER fun(self: Widget)

---@TODO:
---@alias CHANGED_MSG_HANDLER fun()
---@alias WIDGET_CHANGED_MSG_HANDLER fun(self: Widget)

---Event triggers when a player uses /roll.
---@alias CHAT_DICE_VALUE_HANDLER fun(msg: string)
---@alias WIDGET_CHAT_DICE_VALUE_HANDLER fun(self: Widget, msg: string)

---Event triggers when a player does a chat emotion.
---@alias CHAT_EMOTION_HANDLER fun(message: string)
---@alias WIDGET_CHAT_EMOTION_HANDLER fun(self: Widget, message: string)

---Event triggers when the player fails to send a chat message.
---@alias CHAT_FAILED_HANDLER fun(message: string, channelName: string)
---@alias WIDGET_CHAT_FAILED_HANDLER fun(self: Widget, message: string, channelName: string)

---Event triggers when the player joins a channel.
---@alias CHAT_JOINED_CHANNEL_HANDLER fun(channel: CHAT_MESSAGE_CHANNEL, name: string)
---@alias WIDGET_CHAT_JOINED_CHANNEL_HANDLER fun(self: Widget, channel: CHAT_MESSAGE_CHANNEL, name: string)

---Event triggers when the player leaves a channel.
---@alias CHAT_LEAVED_CHANNEL_HANDLER fun(channel: CHAT_MESSAGE_CHANNEL, name: string)
---@alias WIDGET_CHAT_LEAVED_CHANNEL_HANDLER fun(self: Widget, channel: CHAT_MESSAGE_CHANNEL, name: string)

---Event triggers when a chat message occurs.
---@alias CHAT_MESSAGE_HANDLER fun(channel: CHAT_MESSAGE_CHANNEL, relation: UNIT_RELATION, name: string, message: string, info: CHAT_MESSAGE_INFO)
---@alias WIDGET_CHAT_MESSAGE_HANDLER fun(self: Widget, channel: CHAT_MESSAGE_CHANNEL, relation: UNIT_RELATION, name: string, message: string, info: CHAT_MESSAGE_INFO)

---Event triggers when a chat message alarm occurs.
---@alias CHAT_MSG_ALARM_HANDLER fun(text: string)
---@alias WIDGET_CHAT_MSG_ALARM_HANDLER fun(self: Widget, text: string)

---Event triggers when the player receives a chat message from a doodad/npc.
---@alias CHAT_MSG_DOODAD_HANDLER fun(message: string, author: string, authorId: string, isSelf: boolean, tailType: CHAT_BUBBLE_KIND, showTime: number, fadeTime: number, currentBubbleType: number|nil, qtype: number|nil, forceFinished: boolean|nil)
---@alias WIDGET_CHAT_MSG_DOODAD_HANDLER fun(self: Widget, message: string, author: string, authorId: string, isSelf: boolean, tailType: CHAT_BUBBLE_KIND, showTime: number, fadeTime: number, currentBubbleType: number|nil, qtype: number|nil, forceFinished: boolean|nil)

---Event triggers when the player interacts with a npc that has a quest message.
---@alias CHAT_MSG_QUEST_HANDLER fun(message: string, author: string, authorId: string, isSelf: boolean, tailType: CHAT_BUBBLE_KIND, showTime: number, fadeTime: number, currentBubbleType: number|nil, qtype: number|nil, forceFinished: boolean|nil)
---@alias WIDGET_CHAT_MSG_QUEST_HANDLER fun(self: Widget, message: string, author: string, authorId: string, isSelf: boolean, tailType: CHAT_BUBBLE_KIND, showTime: number, fadeTime: number, currentBubbleType: number|nil, qtype: number|nil, forceFinished: boolean|nil)

---@TODO:
---@alias CHECK_TEXTURE_HANDLER fun(texturePath: string)
---@alias WIDGET_CHECK_TEXTURE_HANDLER fun(self: Widget, texturePath: string)

---Event triggers when the boss telescope information needs to be cleared from the map.
---@alias CLEAR_BOSS_TELESCOPE_INFO_HANDLER fun()
---@alias WIDGET_CLEAR_BOSS_TELESCOPE_INFO_HANDLER fun(self: Widget)

---Event triggers when the pack slave information needs to be cleared from the map.
---@alias CLEAR_CARRYING_BACKPACK_SLAVE_INFO_HANDLER fun()
---@alias WIDGET_CLEAR_CARRYING_BACKPACK_SLAVE_INFO_HANDLER fun(self: Widget)

---Event triggers when the completed quest information needs to be cleared from the map.
---@alias CLEAR_COMPLETED_QUEST_INFO_HANDLER fun()
---@alias WIDGET_CLEAR_COMPLETED_QUEST_INFO_HANDLER fun(self: Widget)

---Event triggers when the player dies and when the player respawns or the players corpse information expires.
---@alias CLEAR_CORPSE_INFO_HANDLER fun()
---@alias WIDGET_CLEAR_CORPSE_INFO_HANDLER fun(self: Widget)

---Event triggers when the player opens the map.
---@alias CLEAR_DOODAD_INFO_HANDLER fun()
---@alias WIDGET_CLEAR_DOODAD_INFO_HANDLER fun(self: Widget)

---Event triggers when the fish school information needs to be cleared from the map.
---@alias CLEAR_FISH_SCHOOL_INFO_HANDLER fun()
---@alias WIDGET_CLEAR_FISH_SCHOOL_INFO_HANDLER fun(self: Widget)

---Event triggers when the given quest information needs to be cleared from the map.
---@alias CLEAR_GIVEN_QUEST_STATIC_INFO_HANDLER fun()
---@alias WIDGET_CLEAR_GIVEN_QUEST_STATIC_INFO_HANDLER fun(self: Widget)

---Event triggers when the housing information needs to be cleared from the map.
---@alias CLEAR_HOUSING_INFO_HANDLER fun()
---@alias WIDGET_CLEAR_HOUSING_INFO_HANDLER fun(self: Widget)

---Event triggers every 5 seconds to clear the players slave (vehicle) position information.
---@alias CLEAR_MY_SLAVE_POS_INFO_HANDLER fun()
---@alias WIDGET_CLEAR_MY_SLAVE_POS_INFO_HANDLER fun(self: Widget)

---Event triggers when the notify quest information needs to be cleared from the map.
---@alias CLEAR_NOTIFY_QUEST_INFO_HANDLER fun()
---@alias WIDGET_CLEAR_NOTIFY_QUEST_INFO_HANDLER fun(self: Widget)

---Event triggers when the npc information needs to be cleared from the map.
---@alias CLEAR_NPC_INFO_HANDLER fun()
---@alias WIDGET_CLEAR_NPC_INFO_HANDLER fun(self: Widget)

---Event triggers when the player stops using a ship telescope.
---@alias CLEAR_SHIP_TELESCOPE_INFO_HANDLER fun()
---@alias WIDGET_CLEAR_SHIP_TELESCOPE_INFO_HANDLER fun(self: Widget)

---Event triggers when the player stops using a telescope.
---@alias CLEAR_TRANSFER_TELESCOPE_INFO_HANDLER fun()
---@alias WIDGET_CLEAR_TRANSFER_TELESCOPE_INFO_HANDLER fun(self: Widget)

---Event triggers when the player creates a craft order.
---@alias CLOSE_CRAFT_ORDER_HANDLER fun()
---@alias WIDGET_CLOSE_CRAFT_ORDER_HANDLER fun(self: Widget)

---Event triggers when the player attempts to use sheet music.
---@alias CLOSE_MUSIC_SHEET_HANDLER fun()
---@alias WIDGET_CLOSE_MUSIC_SHEET_HANDLER fun(self: Widget)

---Event triggers when the player interacts with something other than the coffer (storage chest).
---@alias COFFER_INTERACTION_END_HANDLER fun()
---@alias WIDGET_COFFER_INTERACTION_END_HANDLER fun(self: Widget)

---@TODO:
---@alias COFFER_INTERACTION_START_HANDLER fun()
---@alias WIDGET_COFFER_INTERACTION_START_HANDLER fun(self: Widget)

---@TODO:
---@alias COFFER_REAL_INDEX_SHOW_HANDLER fun(isRealSlotShow)
---@alias WIDGET_COFFER_REAL_INDEX_SHOW_HANDLER fun(self: Widget, isRealSlotShow)

---Event triggers when the player creates a tab for the coffer (storage chest).
---@alias COFFER_TAB_CREATED_HANDLER fun()
---@alias WIDGET_COFFER_TAB_CREATED_HANDLER fun(self: Widget)

---Event triggers when the player deletes a tab from the coffer (storage chest).
---@alias COFFER_TAB_REMOVED_HANDLER fun()
---@alias WIDGET_COFFER_TAB_REMOVED_HANDLER fun(self: Widget)

---Event triggers when the player sorts the coffer (storage chest).
---@alias COFFER_TAB_SORTED_HANDLER fun(bagId: number)
---@alias WIDGET_COFFER_TAB_SORTED_HANDLER fun(self: Widget, bagId: number)

---Event triggers when the player changes their coffer (storage chest) tab.
---@alias COFFER_TAB_SWITCHED_HANDLER fun(tabId: number)
---@alias WIDGET_COFFER_TAB_SWITCHED_HANDLER fun(self: Widget, tabId: number)

---Event triggers when the players coffer (storage chest) updates.
---@alias COFFER_UPDATE_HANDLER fun(bagId: number, slotId: number)
---@alias WIDGET_COFFER_UPDATE_HANDLER fun(self: Widget, bagId: number, slotId: number)

---Event triggers when a combat message occurs.
---@alias COMBAT_MSG_HANDLER fun(targetUnitId: string, combatEvent: COMBAT_EVENT, source: string, target: string, ...)
---@alias WIDGET_COMBAT_MSG_HANDLER fun(self: Widget, targetUnitId: string, combatEvent: COMBAT_EVENT, source: string, target: string, ...)

-- COMBAT_TEXT = {
--   1 = "1963b", sourceUnitId
--   2 = "ee3b",  targetUnitId
--   3 = -15342,  amount
--   4 = 0, -- a
--   5 = "SKILL", --b "SKILL"|"DOT"|"HEAL"|"SWING"|"MANA"
--   6 = "CRITICAL", hitType "CRITICAL"|"HIT"|"BLOCK"|"IMMUNE"|"DODGE"|"PARRY"|"MISS"
--   7 = 0, --d this becomes distance if dodge/block/IMMUNE/PARRY/MISS?
-- if 6 == dodge/block/IMMUNE/PARRY/MISS then none of this exists
--   ?8 = false, --e true for ode, mend, could be aoeheal boolean? fired for resurg could be a isVitalism boolean
--   ?9 = 3, --f i think this is the attackers race RACE_ID, 3 for dwarf and 5 for haranian, shouldve been 8 but got 2 for fairy, could be a mistake by xlgames, RACE_NUIAN was correct
--   ?10 = false, --g
--   ?11 = 12.75,  distance
-- }

---@TODO: all players depending on players Damage/Heal Info: Target in settings>game info
---@alias COMBAT_TEXT_HANDLER fun(sourceUnitId: string, targetUnitId: string, amount: number, a: number, b: string, hitType: COMBAT_HIT_TYPE, d: number, e: boolean, f: number, g: boolean, distance: number)
---@alias WIDGET_COMBAT_TEXT_HANDLER fun(self: Widget, sourceUnitId: string, targetUnitId: string, amount: number, a: number, b: string, hitType: COMBAT_HIT_TYPE, d: number, e: boolean, f: number, g: boolean, distance: number)

---Event triggers when there is a collision.
---@alias COMBAT_TEXT_COLLISION_HANDLER fun(targetUnitId: string, combatEvent: string, source: string, target: string,
---  collisionSource: COLLISION_SOURCE, subType: COLLISION_PART, mySlave: boolean, damage: number,
---  powerType: POWER_TYPE)
---@alias WIDGET_COMBAT_TEXT_COLLISION_HANDLER fun(targetUnitId: string, combatEvent: string, source: string, target: string,
---  collisionSource: COLLISION_SOURCE, subType: COLLISION_PART, mySlave: boolean, damage: number,
---  powerType: POWER_TYPE)

---@TODO: What is the difference between a combo effect and combo? discord>ceaseless is a combo effect not a combo
---Event triggers when a skill has a combo **effect**.
---@alias COMBAT_TEXT_SYNERGY_HANDLER fun(arg: number)
---@alias WIDGET_COMBAT_TEXT_SYNERGY_HANDLER fun(self: Widget, arg: number)

---Event triggers whenever the players common (public) farm updates.
---@alias COMMON_FARM_UPDATED_HANDLER fun()
---@alias WIDGET_COMMON_FARM_UPDATED_HANDLER fun(self: Widget)

---@TODO:
---@alias COMMUNITY_ERROR_HANDLER fun(msg)
---@alias WIDGET_COMMUNITY_ERROR_HANDLER fun(self: Widget, msg)

---Event triggers when the player completes an achievement.
---@alias COMPLETE_ACHIEVEMENT_HANDLER fun(newAchievementType: number)
---@alias WIDGET_COMPLETE_ACHIEVEMENT_HANDLER fun(self: Widget, newAchievementType: number)

---Event triggers when the players craft order has been completed.
---@alias COMPLETE_CRAFT_ORDER_HANDLER fun(info: CraftOrderInfo)
---@alias WIDGET_COMPLETE_CRAFT_ORDER_HANDLER fun(self: Widget, info: CraftOrderInfo)

---Event triggers when the player completes part of a quest doodad.
---@alias COMPLETE_QUEST_CONTEXT_DOODAD_HANDLER fun(qtype: number, useDirectingMode: boolean, doodadId: string)
---@alias WIDGET_COMPLETE_QUEST_CONTEXT_DOODAD_HANDLER fun(self: Widget, qtype: number, useDirectingMode: boolean, doodadId: string)

---Event triggers when the player completes a npc context quest.
---@alias COMPLETE_QUEST_CONTEXT_NPC_HANDLER fun(qtype: number, useDirectingMode: boolean, npcId: string)
---@alias WIDGET_COMPLETE_QUEST_CONTEXT_NPC_HANDLER fun(self: Widget, qtype: number, useDirectingMode: boolean, npcId: string)

---Event triggers when the players party is converted into a raid.
---@alias CONVERT_TO_RAID_TEAM_HANDLER fun()
---@alias WIDGET_CONVERT_TO_RAID_TEAM_HANDLER fun(self: Widget)

---Event triggers when the players copies raid members to their clipboard.
---@alias COPY_RAID_MEMBERS_TO_CLIPBOARD_HANDLER fun()
---@alias WIDGET_COPY_RAID_MEMBERS_TO_CLIPBOARD_HANDLER fun(self: Widget)

---@TODO:
---@alias CRAFT_DOODAD_INFO_HANDLER fun()
---@alias WIDGET_CRAFT_DOODAD_INFO_HANDLER fun(self: Widget)

---Event triggers when an item has been crafted.
---@alias CRAFT_ENDED_HANDLER fun(leftCount)
---@alias WIDGET_CRAFT_ENDED_HANDLER fun(self: Widget, leftCount)

---Event triggers when the player fails to craft an item.
---@alias CRAFT_FAILED_HANDLER fun(itemLinkText: string)
---@alias WIDGET_CRAFT_FAILED_HANDLER fun(self: Widget, itemLinkText: string)

---Event triggers when crafting order entries are requested.
---@alias CRAFT_ORDER_ENTRY_SEARCHED_HANDLER fun(infos: CraftOrderEntries, totalCount: number, page: number)
---@alias WIDGET_CRAFT_ORDER_ENTRY_SEARCHED_HANDLER fun(self: Widget, infos: CraftOrderEntries, totalCount: number, page: number)

---@TODO:
---@alias CRAFT_RECIPE_ADDED_HANDLER fun()
---@alias WIDGET_CRAFT_RECIPE_ADDED_HANDLER fun(self: Widget)

---Event triggers when the player has started crafting.
---@alias CRAFT_STARTED_HANDLER fun(leftCount: number)
---@alias WIDGET_CRAFT_STARTED_HANDLER fun(self: Widget, leftCount: number)

---@TODO:
---@alias CRAFT_TRAINED_HANDLER fun()
---@alias WIDGET_CRAFT_TRAINED_HANDLER fun(self: Widget)

---@TODO:
---@alias CRAFTING_END_HANDLER fun()
---@alias WIDGET_CRAFTING_END_HANDLER fun(self: Widget)

---Event triggers when the player opens the crafting window.
---@alias CRAFTING_START_HANDLER fun(doodadId, count)
---@alias WIDGET_CRAFTING_START_HANDLER fun(self: Widget, doodadId, count)

---@TODO:
---@alias CREATE_ORIGIN_UCC_ITEM_HANDLER fun()
---@alias WIDGET_CREATE_ORIGIN_UCC_ITEM_HANDLER fun(self: Widget)

---Event triggers when the players crime has been reported.
---@alias CRIME_REPORTED_HANDLER fun(diffPoint: number, diffRecord: number, diffScore: number)
---@alias WIDGET_CRIME_REPORTED_HANDLER fun(self: Widget, diffPoint: number, diffRecord: number, diffScore: number)

---Event triggers when a debuff is created or destroyed for a unit.
---@alias DEBUFF_UPDATE_HANDLER fun(action: BUFF_ACTION, target: BUFF_TARGET)
---@alias WIDGET_DEBUFF_UPDATE_HANDLER fun(self: Widget, action: BUFF_ACTION, target: BUFF_TARGET)

---Event triggers when a crafting order has been removed.
---@alias DELETE_CRAFT_ORDER_HANDLER fun()
---@alias WIDGET_DELETE_CRAFT_ORDER_HANDLER fun(self: Widget)

---Event triggers when a portal has been deleted from the players teleport book.
---@alias DELETE_PORTAL_HANDLER fun()
---@alias WIDGET_DELETE_PORTAL_HANDLER fun(self: Widget)

---Event triggers when the player deletes a letter/book from their inventory.
---@alias DESTROY_PAPER_HANDLER fun()
---@alias WIDGET_DESTROY_PAPER_HANDLER fun(self: Widget)

---Event triggers when the market price of an item is requested.
---@alias DIAGONAL_ASR_HANDLER fun(itemName: string, itemGrade: ITEM_GRADE_TYPE, askMarketPriceUi: boolean, values: DiagonalASRInfo)
---@alias WIDGET_DIAGONAL_ASR_HANDLER fun(self: Widget, itemName: string, itemGrade: ITEM_GRADE_TYPE, askMarketPriceUi: boolean, values: DiagonalASRInfo)

---@TODO:
---@alias DIAGONAL_LINE_HANDLER fun()
---@alias WIDGET_DIAGONAL_LINE_HANDLER fun(self: Widget)

---Event triggers when the players bid type changes.
---@alias DICE_BID_RULE_CHANGED_HANDLER fun(diceBidRule: DICE_BID_TYPE)
---@alias WIDGET_DICE_BID_RULE_CHANGED_HANDLER fun(self: Widget, diceBidRule: DICE_BID_TYPE)

---Event triggers every 500ms when the player has disconnected from the world.
---@alias DISCONNECTED_BY_WORLD_HANDLER fun(title: string, body: string)
---@alias WIDGET_DISCONNECTED_BY_WORLD_HANDLER fun(self: Widget, title: string, body: string)

---Event triggers when the player dismisses a pet.
---@alias DISMISS_PET_HANDLER fun(mateType: MATE_TYPE)
---@alias WIDGET_DISMISS_PET_HANDLER fun(self: Widget, mateType: MATE_TYPE)

---Event triggers when the player stops diving.
---@alias DIVE_END_HANDLER fun()
---@alias WIDGET_DIVE_END_HANDLER fun(self: Widget)

---Event triggers when the player starts diving.
---@alias DIVE_START_HANDLER fun()
---@alias WIDGET_DIVE_START_HANDLER fun(self: Widget)

---Event triggers when the player events a siegable zone.
---@alias DOMINION_HANDLER fun(action: string, zoneGroupName: string, expeditionName: string)
---@alias WIDGET_DOMINION_HANDLER fun(self: Widget, action: string, zoneGroupName: string, expeditionName: string)

---Event triggers when the siege lodestones state changes.
---@alias DOMINION_GUARD_TOWER_STATE_NOTICE_HANDLER fun(key: DOMINION_GUARD_TOWER_STATE_NOTICE_KEY, name: string, factionName: string)
---@alias WIDGET_DOMINION_GUARD_TOWER_STATE_NOTICE_HANDLER fun(self: Widget, key: DOMINION_GUARD_TOWER_STATE_NOTICE_KEY, name: string, factionName: string)

---@TODO:
---@alias DOMINION_GUARD_TOWER_UPDATE_TOOLTIP_HANDLER fun(unitId)
---@alias WIDGET_DOMINION_GUARD_TOWER_UPDATE_TOOLTIP_HANDLER fun(self: Widget, unitId)

---Event triggers when the player joins a siege raid.
---@alias DOMINION_SIEGE_PARTICIPANT_COUNT_CHANGED_HANDLER fun(count: number)
---@alias WIDGET_DOMINION_SIEGE_PARTICIPANT_COUNT_CHANGED_HANDLER fun(self: Widget, count: number)

---Event triggers when the siege period changes.
---@alias DOMINION_SIEGE_PERIOD_CHANGED_HANDLER fun(siegeInfo: SiegeInfo)
---@alias WIDGET_DOMINION_SIEGE_PERIOD_CHANGED_HANDLER fun(self: Widget, siegeInfo: SiegeInfo)

---@TODO:
---@alias DOMINION_SIEGE_SYSTEM_NOTICE_HANDLER fun()
---@alias WIDGET_DOMINION_SIEGE_SYSTEM_NOTICE_HANDLER fun(self: Widget)

---Event triggers every 500ms while a siege update is occuring.
---@alias DOMINION_SIEGE_UPDATE_TIMER_HANDLER fun(secondHalf: boolean)
---@alias WIDGET_DOMINION_SIEGE_UPDATE_TIMER_HANDLER fun(self: Widget, secondHalf: boolean)

---@TODO:
---@alias DOODAD_LOGIC_HANDLER fun()
---@alias WIDGET_DOODAD_LOGIC_HANDLER fun(self: Widget)

---Event triggers when a doodad phase message occurs. (ex: Strength of the Faction message)
---@alias DOODAD_PHASE_MSG_HANDLER fun(text: string)
---@alias WIDGET_DOODAD_PHASE_MSG_HANDLER fun(self: Widget, text: string)

---Event triggers when a title UI message appears.
---@alias DOODAD_PHASE_UI_MSG_HANDLER fun(phaseMsgInfo: PhaseMsgInfo)
---@alias WIDGET_DOODAD_PHASE_UI_MSG_HANDLER fun(self: Widget, phaseMsgInfo: PhaseMsgInfo)

---@TODO: tooltip?
---Event triggers when the player hovers over a doodad and the tooltip appears
---in the bottom right of the screen.
---@alias DRAW_DOODAD_SIGN_TAG_HANDLER fun(tooltip: nil)
---@alias WIDGET_DRAW_DOODAD_SIGN_TAG_HANDLER fun(self: Widget, tooltip: nil)

---Event triggers every frame the players mouse hovers a doodad.
---@alias DRAW_DOODAD_TOOLTIP_HANDLER fun(info: DoodadTooltipInfo)
---@alias WIDGET_DRAW_DOODAD_TOOLTIP_HANDLER fun(self: Widget, info: DoodadTooltipInfo)

---Event triggers when the player ends dying an item.
---@alias DYEING_END_HANDLER fun()
---@alias WIDGET_DYEING_END_HANDLER fun(self: Widget)

---Event triggers when the player wants to start dying an item.
---@alias DYEING_START_HANDLER fun()
---@alias WIDGET_DYEING_START_HANDLER fun(self: Widget)

---Event triggers when the player dynamic action bar (interaction bar) is hidden.
---@alias DYNAMIC_ACTION_BAR_HIDE_HANDLER fun()
---@alias WIDGET_DYNAMIC_ACTION_BAR_HIDE_HANDLER fun(self: Widget)

---Event triggers when the player dynamic action bar (interaction bar) is shown.
---@alias DYNAMIC_ACTION_BAR_SHOW_HANDLER fun(dynamicActionType)
---@alias WIDGET_DYNAMIC_ACTION_BAR_SHOW_HANDLER fun(self: Widget, dynamicActionType)

---Event triggers when the player does a radius invite and when that radius invite is off cooldown.
---@alias ENABLE_TEAM_AREA_INVITATION_HANDLER fun(enable: boolean)
---@alias WIDGET_ENABLE_TEAM_AREA_INVITATION_HANDLER fun(self: Widget, enable: boolean)

---@TODO:
---@alias ENCHANT_EXAMINE_HANDLER fun()
---@alias WIDGET_ENCHANT_EXAMINE_HANDLER fun(self: Widget)

---@TODO:
---@alias ENCHANT_RESULT_HANDLER fun(resultCode, itemLink, oldGrade, newGrade, breakRewardItemType, breakRewardItemCount, breakRewardByMail)
---@alias WIDGET_ENCHANT_RESULT_HANDLER fun(self: Widget, resultCode, itemLink, oldGrade, newGrade, breakRewardItemType, breakRewardItemCount, breakRewardByMail)

---@TODO:
---@alias ENCHANT_SAY_ABILITY_HANDLER fun()
---@alias WIDGET_ENCHANT_SAY_ABILITY_HANDLER fun(self: Widget)

---Event triggers when the hero election period has ended.
---@alias END_HERO_ELECTION_PERIOD_HANDLER fun()
---@alias WIDGET_END_HERO_ELECTION_PERIOD_HANDLER fun(self: Widget)

---Event triggers when the player talks to a npc with a quest chat bubble.
---@alias END_QUEST_CHAT_BUBBLE_HANDLER fun(playedBubble: boolean)
---@alias WIDGET_END_QUEST_CHAT_BUBBLE_HANDLER fun(self: Widget, playedBubble: boolean)

---@TODO:
---@alias ENDED_DUEL_HANDLER fun()
---@alias WIDGET_ENDED_DUEL_HANDLER fun(self: Widget)

---Event triggers when the player enters another zone group.
---@alias ENTER_ANOTHER_ZONEGROUP_HANDLER fun(zoneId: ZONE_GROUP_ID)
---@alias WIDGET_ENTER_ANOTHER_ZONEGROUP_HANDLER fun(self: Widget, zoneId: ZONE_GROUP_ID)

---Event triggers when the player attempts to enter enchanting mode.
---@alias ENTER_ENCHANT_ITEM_MODE_HANDLER fun(mode: ENCHANT_ITEM_MODE)
---@alias WIDGET_ENTER_ENCHANT_ITEM_MODE_HANDLER fun(self: Widget, mode: ENCHANT_ITEM_MODE)

---Event triggers when the player opens the open chest (gold/silver/copper crate) window.
---@alias ENTER_GACHA_LOOT_MODE_HANDLER fun()
---@alias WIDGET_ENTER_GACHA_LOOT_MODE_HANDLER fun(self: Widget)

---@TODO:
---@alias ENTER_ITEM_LOOK_CONVERT_MODE_HANDLER fun()
---@alias WIDGET_ENTER_ITEM_LOOK_CONVERT_MODE_HANDLER fun(self: Widget)

---Event triggers when the player enters a instance.
---@alias ENTERED_INSTANT_GAME_ZONE_HANDLER fun(arg: number)
---@alias WIDGET_ENTERED_INSTANT_GAME_ZONE_HANDLER fun(self: Widget, arg: number)

---Event triggers when the player enters a loading screen.
---@alias ENTERED_LOADING_HANDLER fun(worldImagePath: string)
---@alias WIDGET_ENTERED_LOADING_HANDLER fun(self: Widget, worldImagePath: string)

---Event triggers when the player enters screenshot mode.
---@alias ENTERED_SCREEN_SHOT_CAMERA_MODE_HANDLER fun()
---@alias WIDGET_ENTERED_SCREEN_SHOT_CAMERA_MODE_HANDLER fun(self: Widget)

---Event triggers when the player enters a subzone.
---@alias ENTERED_SUBZONE_HANDLER fun(zoneName: SUB_ZONE_NAME)
---@alias WIDGET_ENTERED_SUBZONE_HANDLER fun(self: Widget, zoneName: SUB_ZONE_NAME)

---Event triggers when the player enters the world.
---@alias ENTERED_WORLD_HANDLER fun(unknown: boolean)
---@alias WIDGET_ENTERED_WORLD_HANDLER fun(self: Widget, unknown: boolean)

---@TODO:
---@alias EQUIP_SLOT_REINFORCE_MSG_CHANGE_LEVEL_EFFECT_HANDLER fun()
---@alias WIDGET_EQUIP_SLOT_REINFORCE_MSG_CHANGE_LEVEL_EFFECT_HANDLER fun(self: Widget)

---Event triggers when the player expands their Ipnysh Artifacts pages.
---@alias EQUIP_SLOT_REINFORCE_EXPAND_PAGE_HANDLER fun()
---@alias WIDGET_EQUIP_SLOT_REINFORCE_EXPAND_PAGE_HANDLER fun(self: Widget)

---Event triggers when the players ipnysh equipment slot effect levels up.
---@alias EQUIP_SLOT_REINFORCE_MSG_LEVEL_EFFECT_HANDLER fun(equipSlot: EQUIPMENT_SLOT, level: number)
---@alias WIDGET_EQUIP_SLOT_REINFORCE_MSG_LEVEL_EFFECT_HANDLER fun(self: Widget, equipSlot: EQUIPMENT_SLOT, level: number)

---Event triggers when the players ipnysh equipment slot levels up.
---@alias EQUIP_SLOT_REINFORCE_MSG_LEVEL_UP_HANDLER fun(equipSlot: EQUIPMENT_SLOT, level: number)
---@alias WIDGET_EQUIP_SLOT_REINFORCE_MSG_LEVEL_UP_HANDLER fun(self: Widget, equipSlot: EQUIPMENT_SLOT, level: number)

---Event triggers when the players ipnysh equipment slot levels up.
---@alias EQUIP_SLOT_REINFORCE_MSG_SET_EFFECT_HANDLER fun(equipSlotAttribute: number, level: number)
---@alias WIDGET_EQUIP_SLOT_REINFORCE_MSG_SET_EFFECT_HANDLER fun(self: Widget, equipSlotAttribute: number, level: number)

---Event triggers when the player changes their Ipnysh Artifacts page.
---@alias EQUIP_SLOT_REINFORCE_SELECT_PAGE_HANDLER fun()
---@alias WIDGET_EQUIP_SLOT_REINFORCE_SELECT_PAGE_HANDLER fun(self: Widget)

---Event triggers when the player increases the ipnysh level of an equipment
---slot.
---@alias EQUIP_SLOT_REINFORCE_UPDATE_HANDLER fun(equipSlot)
---@alias WIDGET_EQUIP_SLOT_REINFORCE_UPDATE_HANDLER fun(self: Widget, equipSlot)

---Event triggers when a new button is added to the escape menu.
---@alias ESC_MENU_ADD_BUTTON_HANDLER fun(info: EscMenuAddButtonInfo)
---@alias WIDGET_ESC_MENU_ADD_BUTTON_HANDLER fun(self: Widget, info: EscMenuAddButtonInfo)

---Event triggers when the player stops using the escape skill or the player has successfully escaped.
---@alias ESCAPE_END_HANDLER fun()
---@alias WIDGET_ESCAPE_END_HANDLER fun(self: Widget)

---Event triggers when the player attempts to use the escape skill.
---@alias ESCAPE_START_HANDLER fun(waitTime: number)
---@alias WIDGET_ESCAPE_START_HANDLER fun(self: Widget, waitTime: number)

---@TODO:
---@alias EVENT_SCHEDULE_START_HANDLER fun(msg)
---@alias WIDGET_EVENT_SCHEDULE_START_HANDLER fun(self: Widget, msg)

---@TODO:
---@alias EVENT_SCHEDULE_STOP_HANDLER fun(msg)
---@alias WIDGET_EVENT_SCHEDULE_STOP_HANDLER fun(self: Widget, msg)

---Event triggers when the player receives experience.
---@alias EXP_CHANGED_HANDLER fun(stringId: string, expNum: number, expStr: string)
---@alias WIDGET_EXP_CHANGED_HANDLER fun(self: Widget, stringId: string, expNum: number, expStr: string)

---Event triggers when the players application to a guild is accepted.
---@alias EXPEDITION_APPLICANT_ACCEPT_HANDLER fun(expeditionName: string)
---@alias WIDGET_EXPEDITION_APPLICANT_ACCEPT_HANDLER fun(self: Widget, expeditionName: string)

---Event triggers when the players application to a guild is rejected.
---@alias EXPEDITION_APPLICANT_REJECT_HANDLER fun(expeditionName: string)
---@alias WIDGET_EXPEDITION_APPLICANT_REJECT_HANDLER fun(self: Widget, expeditionName: string)

---Event triggers when a guilds buff changes.
---@alias EXPEDITION_BUFF_CHANGE_HANDLER fun(expedition: number)
---@alias WIDGET_EXPEDITION_BUFF_CHANGE_HANDLER fun(self: Widget, expedition: number)

---Event triggers when the player changes the guilds experience.
---@alias EXPEDITION_EXP_HANDLER fun(amount: number, amountStr: string)
---@alias WIDGET_EXPEDITION_EXP_HANDLER fun(self: Widget, amount: number, amountStr: string)

---Event triggers when the player accesses their guild history.
---@alias EXPEDITION_HISTORY_HANDLER fun(tabId: number)
---@alias WIDGET_EXPEDITION_HISTORY_HANDLER fun(self: Widget, tabId: number)

---@TODO:
---@alias EXPEDITION_LEVEL_UP_HANDLER fun(level)
---@alias WIDGET_EXPEDITION_LEVEL_UP_HANDLER fun(self: Widget, level)

---@TODO:
---@alias EXPEDITION_MANAGEMENT_APPLICANT_ACCEPT_HANDLER fun(charId)
---@alias WIDGET_EXPEDITION_MANAGEMENT_APPLICANT_ACCEPT_HANDLER fun(self: Widget, charId)

---@TODO:
---@alias EXPEDITION_MANAGEMENT_APPLICANT_ADD_HANDLER fun(expeditionId)
---@alias WIDGET_EXPEDITION_MANAGEMENT_APPLICANT_ADD_HANDLER fun(self: Widget, expeditionId)

---@TODO:
---@alias EXPEDITION_MANAGEMENT_APPLICANT_DEL_HANDLER fun(expeditionId)
---@alias WIDGET_EXPEDITION_MANAGEMENT_APPLICANT_DEL_HANDLER fun(self: Widget, expeditionId)

---@TODO:
---@alias EXPEDITION_MANAGEMENT_APPLICANT_REJECT_HANDLER fun(charId)
---@alias WIDGET_EXPEDITION_MANAGEMENT_APPLICANT_REJECT_HANDLER fun(self: Widget, charId)

---Event triggers when a guild member (who has permissions) opens the manage applicants window.
---@alias EXPEDITION_MANAGEMENT_APPLICANTS_HANDLER fun(infos: ExpeditionApplicant[])
---@alias WIDGET_EXPEDITION_MANAGEMENT_APPLICANTS_HANDLER fun(self: Widget, infos: ExpeditionApplicant[])

---@TODO:
---@alias EXPEDITION_MANAGEMENT_GUILD_FUNCTION_CHANGED_HANDLER fun()
---@alias WIDGET_EXPEDITION_MANAGEMENT_GUILD_FUNCTION_CHANGED_HANDLER fun(self: Widget)

---Event triggers when a member of the players guild changes their name.
---@alias EXPEDITION_MANAGEMENT_MEMBER_NAME_CHANGED_HANDLER fun()
---@alias WIDGET_EXPEDITION_MANAGEMENT_MEMBER_NAME_CHANGED_HANDLER fun(self: Widget)

---Event triggers when the prestige of a guild member changes.
---@alias EXPEDITION_MANAGEMENT_MEMBER_STATUS_CHANGED_HANDLER fun()
---@alias WIDGET_EXPEDITION_MANAGEMENT_MEMBER_STATUS_CHANGED_HANDLER fun(self: Widget)

---Event triggers when the player views the members tab in their guild.
---@alias EXPEDITION_MANAGEMENT_MEMBERS_INFO_HANDLER fun(totalCount: number, startIndex: number, memberInfos: MemberInfo[])
---@alias WIDGET_EXPEDITION_MANAGEMENT_MEMBERS_INFO_HANDLER fun(self: Widget, totalCount: number, startIndex: number, memberInfos: MemberInfo[])

---@TODO:
---@alias EXPEDITION_MANAGEMENT_POLICY_CHANGED_HANDLER fun()
---@alias WIDGET_EXPEDITION_MANAGEMENT_POLICY_CHANGED_HANDLER fun(self: Widget)

---@TODO:
---@alias EXPEDITION_MANAGEMENT_RECRUITMENT_ADD_HANDLER fun(info)
---@alias WIDGET_EXPEDITION_MANAGEMENT_RECRUITMENT_ADD_HANDLER fun(self: Widget, info)

---@TODO:
---@alias EXPEDITION_MANAGEMENT_RECRUITMENT_DEL_HANDLER fun(expeditionId)
---@alias WIDGET_EXPEDITION_MANAGEMENT_RECRUITMENT_DEL_HANDLER fun(self: Widget, expeditionId)

---Event triggers when the player opens the guild recruitment tab.
---@alias EXPEDITION_MANAGEMENT_RECRUITMENTS_HANDLER fun(total: number, perPageItemCount: number, infos: GuildRecruitmentInfo[])
---@alias WIDGET_EXPEDITION_MANAGEMENT_RECRUITMENTS_HANDLER fun(self: Widget, total: number, perPageItemCount: number, infos: GuildRecruitmentInfo[])

---@TODO:
---@alias EXPEDITION_MANAGEMENT_ROLE_CHANGED_HANDLER fun()
---@alias WIDGET_EXPEDITION_MANAGEMENT_ROLE_CHANGED_HANDLER fun(self: Widget)

---Event triggers when the guild prestige changes.
---@alias EXPEDITION_MANAGEMENT_UPDATED_HANDLER fun()
---@alias WIDGET_EXPEDITION_MANAGEMENT_UPDATED_HANDLER fun(self: Widget)

---@TODO:
---@alias EXPEDITION_RANKING_HANDLER fun()
---@alias WIDGET_EXPEDITION_RANKING_HANDLER fun(self: Widget)

---@TODO:
---@alias EXPEDITION_SUMMON_SUGGEST_HANDLER fun()
---@alias WIDGET_EXPEDITION_SUMMON_SUGGEST_HANDLER fun(self: Widget)

---@TODO:
---@alias EXPEDITION_WAR_DECLARATION_FAILED_HANDLER fun(errorMsg, param)
---@alias WIDGET_EXPEDITION_WAR_DECLARATION_FAILED_HANDLER fun(self: Widget, errorMsg, param)

---@TODO:
---@alias EXPEDITION_WAR_DECLARATION_MONEY_HANDLER fun(unitId, name, money)
---@alias WIDGET_EXPEDITION_WAR_DECLARATION_MONEY_HANDLER fun(self: Widget, unitId, name, money)

---Event triggers when the player views the current dominion status.
---@alias EXPEDITION_WAR_KILL_SCORE_HANDLER fun(toggle: boolean)
---@alias WIDGET_EXPEDITION_WAR_KILL_SCORE_HANDLER fun(self: Widget, toggle: boolean)

---Event triggers when the players guild dominion protection date changes.
---@alias EXPEDITION_WAR_SET_PROTECT_DATE_HANDLER fun()
---@alias WIDGET_EXPEDITION_WAR_SET_PROTECT_DATE_HANDLER fun(self: Widget)

---Event triggers when a guild starts a dominion with another guild.
---@alias EXPEDITION_WAR_STATE_HANDLER fun(related: boolean, state: string, declarer: string, defendant: string, winner: string)
---@alias WIDGET_EXPEDITION_WAR_STATE_HANDLER fun(self: Widget, related: boolean, state: string, declarer: string, defendant: string, winner: string)

---Event triggers when an item expires for the player.
---@alias EXPIRED_ITEM_HANDLER fun(itemLinkText: string)
---@alias WIDGET_EXPIRED_ITEM_HANDLER fun(self: Widget, itemLinkText: string)

---@TODO:
---@alias FACTION_CHANGED_HANDLER fun()
---@alias WIDGET_FACTION_CHANGED_HANDLER fun(self: Widget)

---Event triggers when the player enters a zone with a competition. (e.g. Akasch Invasion/Mysthrane Gorge/Reedwind/Great Prairie/Cinderstone+Ynystere war)
---@alias FACTION_COMPETITION_INFO_HANDLER fun(info: FactionCompetitionInfo)
---@alias WIDGET_FACTION_COMPETITION_INFO_HANDLER fun(self: Widget, info: FactionCompetitionInfo)

---Event triggers when a faction competition is over. (e.g. Akasch Invasion/Mysthrane Gorge/Reedwind/Great Prairie/Cinderstone+Ynystere war)
---@alias FACTION_COMPETITION_RESULT_HANDLER fun(infos: FactionCompetitionResultInfos)
---@alias WIDGET_FACTION_COMPETITION_RESULT_HANDLER fun(self: Widget, infos: FactionCompetitionResultInfos)

---Event triggers when a factions competition points (e.g. Akasch Invasion/Mysthrane Gorge/Reedwind/Great Prairie/Cinderstone+Ynystere war) update.
---@alias FACTION_COMPETITION_UPDATE_POINT_HANDLER fun(infos: FactionCompetitionPointInfo)
---@alias WIDGET_FACTION_COMPETITION_UPDATE_POINT_HANDLER fun(self: Widget, infos: FactionCompetitionPointInfo)

---@TODO:
---@alias FACTION_RELATION_ACCEPTED_HANDLER fun(name, factionName)
---@alias WIDGET_FACTION_RELATION_ACCEPTED_HANDLER fun(self: Widget, name, factionName)

---@TODO: i think the only happens when a relation starts
---Event triggers when a faction relation changes.
---@alias FACTION_RELATION_CHANGED_HANDLER fun(isHostile: boolean, f1Name: string, f2Name: string)
---@alias WIDGET_FACTION_RELATION_CHANGED_HANDLER fun(self: Widget, isHostile: boolean, f1Name: string, f2Name: string)

---@TODO:
---@alias FACTION_RELATION_COUNT_HANDLER fun()
---@alias WIDGET_FACTION_RELATION_COUNT_HANDLER fun(self: Widget)

---@TODO:
---@alias FACTION_RELATION_DENIED_HANDLER fun(name)
---@alias WIDGET_FACTION_RELATION_DENIED_HANDLER fun(self: Widget, name)

---Event triggers when the player views the alliance history of a faction.
---@alias FACTION_RELATION_HISTORY_HANDLER fun()
---@alias WIDGET_FACTION_RELATION_HISTORY_HANDLER fun(self: Widget)

---@TODO:
---@alias FACTION_RELATION_REQUESTED_HANDLER fun(name, factionName)
---@alias WIDGET_FACTION_RELATION_REQUESTED_HANDLER fun(self: Widget, name, factionName)

---@TODO: i think the only happens when a relation ends
---Event triggers when a faction relation will change.
---@alias FACTION_RELATION_WILL_CHANGE_HANDLER fun(f1Name: string, f2Name: string)
---@alias WIDGET_FACTION_RELATION_WILL_CHANGE_HANDLER fun(self: Widget, f1Name: string, f2Name: string)

---Event triggers if a nation or guild is renamed.
---@alias FACTION_RENAMED_HANDLER fun(isExpedition: boolean, oldName: string, newName: string)
---@alias WIDGET_FACTION_RENAMED_HANDLER fun(self: Widget, isExpedition: boolean, oldName: string, newName: string)

---Event triggers when the player failed to set a pet auto skill. (e.g. Mount skill auto use/Battlepet not in defensive mode skill auto use)
---@alias FAILED_TO_SET_PET_AUTO_SKILL_HANDLER fun(mateType: MATE_TYPE)
---@alias WIDGET_FAILED_TO_SET_PET_AUTO_SKILL_HANDLER fun(self: Widget, mateType: MATE_TYPE)

---@TODO:
---@alias FAMILY_ERROR_HANDLER fun(msg)
---@alias WIDGET_FAMILY_ERROR_HANDLER fun(self: Widget, msg)

---@TODO:
---@alias FAMILY_EXP_ADD_HANDLER fun(amount)
---@alias WIDGET_FAMILY_EXP_ADD_HANDLER fun(self: Widget, amount)

---@TODO:
---@alias FAMILY_INFO_REFRESH_HANDLER fun()
---@alias WIDGET_FAMILY_INFO_REFRESH_HANDLER fun(self: Widget)

---@TODO:
---@alias FAMILY_LEVEL_UP_HANDLER fun(levelName)
---@alias WIDGET_FAMILY_LEVEL_UP_HANDLER fun(self: Widget, levelName)

---@TODO:
---@alias FAMILY_MEMBER_HANDLER fun(owner, member, role, title)
---@alias WIDGET_FAMILY_MEMBER_HANDLER fun(self: Widget, owner, member, role, title)

---@TODO:
---@alias FAMILY_MEMBER_ADDED_HANDLER fun(owner, member, title)
---@alias WIDGET_FAMILY_MEMBER_ADDED_HANDLER fun(self: Widget, owner, member, title)

---@TODO:
---@alias FAMILY_MEMBER_KICKED_HANDLER fun(member)
---@alias WIDGET_FAMILY_MEMBER_KICKED_HANDLER fun(self: Widget, member)

---@TODO:
---@alias FAMILY_MEMBER_LEFT_HANDLER fun(member)
---@alias WIDGET_FAMILY_MEMBER_LEFT_HANDLER fun(self: Widget, member)

---@TODO:
---@alias FAMILY_MEMBER_ONLINE_HANDLER fun()
---@alias WIDGET_FAMILY_MEMBER_ONLINE_HANDLER fun(self: Widget)

---@TODO:
---@alias FAMILY_MGR_HANDLER fun()
---@alias WIDGET_FAMILY_MGR_HANDLER fun(self: Widget)

---@TODO:
---@alias FAMILY_NAME_CHANGED_HANDLER fun(FAMILY_NAME_CHANGED)
---@alias WIDGET_FAMILY_NAME_CHANGED_HANDLER fun(self: Widget, FAMILY_NAME_CHANGED)

---@TODO:
---@alias FAMILY_OWNER_CHANGED_HANDLER fun(owner)
---@alias WIDGET_FAMILY_OWNER_CHANGED_HANDLER fun(self: Widget, owner)

---@TODO:
---@alias FAMILY_REFRESH_HANDLER fun()
---@alias WIDGET_FAMILY_REFRESH_HANDLER fun(self: Widget)

---@TODO:
---@alias FAMILY_REMOVED_HANDLER fun()
---@alias WIDGET_FAMILY_REMOVED_HANDLER fun(self: Widget)

---Event triggers when the player (as a hero) tries to activate a respawn location that is not available yet due to a cooltime.
---@alias FIND_FACTION_REZ_DISTRICT_COOLTIME_FAIL_HANDLER fun(cooltime: number)
---@alias WIDGET_FIND_FACTION_REZ_DISTRICT_COOLTIME_FAIL_HANDLER fun(self: Widget, cooltime: number)

---Event triggers when the player (as a hero) tries to activate a respawn location that is already in use.
---@alias FIND_FACTION_REZ_DISTRICT_DURATION_FAIL_HANDLER fun(remain: number)
---@alias WIDGET_FIND_FACTION_REZ_DISTRICT_DURATION_FAIL_HANDLER fun(self: Widget, remain: number)

---Event triggers when the player changes the state of a folder.
---@alias FOLDER_STATE_CHANGED_HANDLER fun(arg: string)
---@alias WIDGET_FOLDER_STATE_CHANGED_HANDLER fun(self: Widget, arg: string)

---Event triggers when a player toggles bloodlust mode.
---@alias FORCE_ATTACK_CHANGED_HANDLER fun(uiserId: string, inBloodlust: boolean)
---@alias WIDGET_FORCE_ATTACK_CHANGED_HANDLER fun(self: Widget, uiserId: string, inBloodlust: boolean)

---Event triggers when the player sends a friend request.
---@alias FRIENDLIST_HANDLER fun(msg: string)
---@alias WIDGET_FRIENDLIST_HANDLER fun(self: Widget, msg: string)

---Event triggers when the player opens their friend list.
---@alias FRIENDLIST_INFO_HANDLER fun(totalCount: number, memberInfos: FriendInfo[])
---@alias WIDGET_FRIENDLIST_INFO_HANDLER fun(self: Widget, totalCount: number, memberInfos: FriendInfo[])

---Event triggers when the players friend list updates.
---@alias FRIENDLIST_UPDATE_HANDLER fun(updateType: FRIEND_LIST_UPDATE_TYPE, dataField: FriendInfo|string)
---@alias WIDGET_FRIENDLIST_UPDATE_HANDLER fun(self: Widget, updateType: FRIEND_LIST_UPDATE_TYPE, dataField: FriendInfo|string)

---Event triggers when the player opens a locked crate.
---@alias GACHA_LOOT_PACK_LOG_HANDLER fun(logs: GachaLootPackLog)
---@alias WIDGET_GACHA_LOOT_PACK_LOG_HANDLER fun(self: Widget, logs: GachaLootPackLog)

---Event triggers when the player opens a locked crate.
---@alias GACHA_LOOT_PACK_RESULT_HANDLER fun(results: GachaLootPackResult)
---@alias WIDGET_GACHA_LOOT_PACK_RESULT_HANDLER fun(self: Widget, results: GachaLootPackResult)

---@TODO:
---@alias GAME_EVENT_EMPTY_HANDLER fun()
---@alias WIDGET_GAME_EVENT_EMPTY_HANDLER fun(self: Widget)

---Event triggers when the player opens the daily schedule window.
---@alias GAME_EVENT_INFO_LIST_UPDATED_HANDLER fun()
---@alias WIDGET_GAME_EVENT_INFO_LIST_UPDATED_HANDLER fun(self: Widget)

---Event triggers when the player opens the daily schedule window after loading into the world.
---@alias GAME_EVENT_INFO_REQUESTED_HANDLER fun()
---@alias WIDGET_GAME_EVENT_INFO_REQUESTED_HANDLER fun(self: Widget)

---@TODO: triggered when opening beauty shop and triggers when you open the full kit demo window and then "randomly" when while the window is open
---@alias GAME_SCHEDULE_HANDLER fun()
---@alias WIDGET_GAME_SCHEDULE_HANDLER fun(self: Widget)

---Event triggers when the player changes their characters gender.
---@alias GENDER_TRANSFERED_HANDLER fun()
---@alias WIDGET_GENDER_TRANSFERED_HANDLER fun(self: Widget)

---Event triggers when the player picks up something that moves their glider
---into their bag.
---@alias GLIDER_MOVED_INTO_BAG_HANDLER fun()
---@alias WIDGET_GLIDER_MOVED_INTO_BAG_HANDLER fun(self: Widget)

---Event triggers when the player takes an item from their marketplace mailbox.
---@alias GOODS_MAIL_INBOX_ITEM_TAKEN_HANDLER fun(index)
---@alias WIDGET_GOODS_MAIL_INBOX_ITEM_TAKEN_HANDLER fun(self: Widget, index)

---@TODO:
---@alias GOODS_MAIL_INBOX_MONEY_TAKEN_HANDLER fun()
---@alias WIDGET_GOODS_MAIL_INBOX_MONEY_TAKEN_HANDLER fun(self: Widget)

---@TODO:
---@alias GOODS_MAIL_INBOX_TAX_PAID_HANDLER fun()
---@alias WIDGET_GOODS_MAIL_INBOX_TAX_PAID_HANDLER fun(self: Widget)

---Event triggers when the players marketplace mail updates.
---@alias GOODS_MAIL_INBOX_UPDATE_HANDLER fun(read: boolean, arg: number)
---@alias WIDGET_GOODS_MAIL_INBOX_UPDATE_HANDLER fun(self: Widget, read: boolean, arg: number)

---@TODO:
---@alias GOODS_MAIL_RETURNED_HANDLER fun()
---@alias WIDGET_GOODS_MAIL_RETURNED_HANDLER fun(self: Widget)

---@TODO:
---@alias GOODS_MAIL_SENT_SUCCESS_HANDLER fun()
---@alias WIDGET_GOODS_MAIL_SENT_SUCCESS_HANDLER fun(self: Widget)

---@TODO:
---@alias GOODS_MAIL_SENTBOX_UPDATE_HANDLER fun()
---@alias WIDGET_GOODS_MAIL_SENTBOX_UPDATE_HANDLER fun(self: Widget)

---@TODO:
---@alias GOODS_MAIL_WRITE_ITEM_UPDATE_HANDLER fun()
---@alias WIDGET_GOODS_MAIL_WRITE_ITEM_UPDATE_HANDLER fun(self: Widget)

---Event triggers when a player successfully enchants an item to a new grade.
---@alias GRADE_ENCHANT_BROADCAST_HANDLER fun(characterName: string, resultCode: ITEM_ENCHANT_BROAD_CAST_TYPE, itemLink: string, oldGrade: ITEM_GRADE_TYPE, newGrade: ITEM_GRADE_TYPE)
---@alias WIDGET_GRADE_ENCHANT_BROADCAST_HANDLER fun(self: Widget, characterName: string, resultCode: ITEM_ENCHANT_BROAD_CAST_TYPE, itemLink: string, oldGrade: ITEM_GRADE_TYPE, newGrade: ITEM_GRADE_TYPE)

---Event triggers when the player regrades an item.
---@alias GRADE_ENCHANT_RESULT_HANDLER fun(resultCode: ITEM_GRADE_ENCHANT_RESULT, itemLink: string, oldGrade: ITEM_GRADE_TYPE, newGrade: ITEM_GRADE_TYPE, breakRewardItemType: number, breakRewardItemCount: number, breakRewardByMail: boolean)
---@alias WIDGET_GRADE_ENCHANT_RESULT_HANDLER fun(self: Widget, resultCode: ITEM_GRADE_ENCHANT_RESULT, itemLink: string, oldGrade: ITEM_GRADE_TYPE, newGrade: ITEM_GRADE_TYPE, breakRewardItemType: number, breakRewardItemCount: number, breakRewardByMail: boolean)

---Event triggers when a guard tower health changes.
---@alias GUARDTOWER_HEALTH_CHANGED_HANDLER fun(arg1: string, arg2: string, arg3: string)
---@alias WIDGET_GUARDTOWER_HEALTH_CHANGED_HANDLER fun(self: Widget, arg1: string, arg2: string, arg3: string)

---@TODO:
---@alias GUILD_BANK_INDEX_SHOW_HANDLER fun() -- Crash
---@alias WIDGET_GUILD_BANK_INDEX_SHOW_HANDLER fun(self: Widget) -- Crash

---Event triggers when the player ends interacting with their guild bank.
---@alias GUILD_BANK_INTERACTION_END_HANDLER fun()
---@alias WIDGET_GUILD_BANK_INTERACTION_END_HANDLER fun(self: Widget)

---@TODO:
---@alias GUILD_BANK_INTERACTION_START_HANDLER fun()
---@alias WIDGET_GUILD_BANK_INTERACTION_START_HANDLER fun(self: Widget)

---Event triggers when the guild bank is shown to the player.
---@alias GUILD_BANK_INVEN_SHOW_HANDLER fun()
---@alias WIDGET_GUILD_BANK_INVEN_SHOW_HANDLER fun(self: Widget)

---@TODO:
---@alias GUILD_BANK_MONEY_UPDATE_HANDLER fun()
---@alias WIDGET_GUILD_BANK_MONEY_UPDATE_HANDLER fun(self: Widget)

---@TODO:
---@alias GUILD_BANK_REAL_INDEX_SHOW_HANDLER fun()
---@alias WIDGET_GUILD_BANK_REAL_INDEX_SHOW_HANDLER fun(self: Widget)

---Event triggers when the player creates a tab for their guild bank.
---@alias GUILD_BANK_TAB_CREATED_HANDLER fun()
---@alias WIDGET_GUILD_BANK_TAB_CREATED_HANDLER fun(self: Widget)

---Event triggers when the player deletes a tab from their guild bank.
---@alias GUILD_BANK_TAB_REMOVED_HANDLER fun()
---@alias WIDGET_GUILD_BANK_TAB_REMOVED_HANDLER fun(self: Widget)

---Event triggers when the player sorts their guild bank.
---@alias GUILD_BANK_TAB_SORTED_HANDLER fun()
---@alias WIDGET_GUILD_BANK_TAB_SORTED_HANDLER fun(self: Widget)

---Event triggers when the player changes their guild bank tab.
---@alias GUILD_BANK_TAB_SWITCHED_HANDLER fun()
---@alias WIDGET_GUILD_BANK_TAB_SWITCHED_HANDLER fun(self: Widget)

---Event triggers when the player takes/places an item into their guild bank.
---@alias GUILD_BANK_UPDATE_HANDLER fun(arg1: number, slot: number)
---@alias WIDGET_GUILD_BANK_UPDATE_HANDLER fun(self: Widget, arg1: number, slot: number)

---Event triggers when a players acestral level increases.
---@alias HEIR_LEVEL_UP_HANDLER fun(myUnit: boolean, unitId: string)
---@alias WIDGET_HEIR_LEVEL_UP_HANDLER fun(self: Widget, myUnit: boolean, unitId: string)

---@TODO: I think this is part of a old/beta heir skills when you could purchases skills from the arena shop.
---@alias HEIR_SKILL_ACTIVE_TYPE_MSG_HANDLER fun(activeType: number, ability: number, text: string, pos: HEIR_SKILL_TYPE)
---@alias WIDGET_HEIR_SKILL_ACTIVE_TYPE_MSG_HANDLER fun(self: Widget, activeType: number, ability: number, text: string, pos: HEIR_SKILL_TYPE)

---Event triggers when the player changes an ancestral skill.
---@alias HEIR_SKILL_LEARN_HANDLER fun(text: string, pos: HEIR_SKILL_TYPE)
---@alias WIDGET_HEIR_SKILL_LEARN_HANDLER fun(self: Widget, text: string, pos: HEIR_SKILL_TYPE)

---Event triggers when the player resets an ancestral skill.
---@alias HEIR_SKILL_RESET_HANDLER fun(isAll: boolean, text: string, info: HEIR_SKILL_TYPE)
---@alias WIDGET_HEIR_SKILL_RESET_HANDLER fun(self: Widget, isAll: boolean, text: string, info: HEIR_SKILL_TYPE)

---Event triggers when the player changes an ancestral skill.
---@alias HEIR_SKILL_UPDATE_HANDLER fun()
---@alias WIDGET_HEIR_SKILL_UPDATE_HANDLER fun(self: Widget)

---Event triggers when the player tries to retrieve hero information or hero
---mission status.
---@alias HERO_ALL_SCORE_UPDATED_HANDLER fun(factionID: FACTION_TYPE)
---@alias WIDGET_HERO_ALL_SCORE_UPDATED_HANDLER fun(self: Widget, factionID: FACTION_TYPE)

---Event triggers every 10 seconds when hero annoucement is about to happen.
---@alias HERO_ANNOUNCE_REMAIN_TIME_HANDLER fun(remainTime: number, isStartTime: boolean)
---@alias WIDGET_HERO_ANNOUNCE_REMAIN_TIME_HANDLER fun(self: Widget, remainTime: number, isStartTime: boolean)

---@TODO:
---@alias HERO_CANDIDATE_NOTI_HANDLER fun()
---@alias WIDGET_HERO_CANDIDATE_NOTI_HANDLER fun(self: Widget)

---@TODO:
---@alias HERO_CANDIDATES_ANNOUNCED_HANDLER fun()
---@alias WIDGET_HERO_CANDIDATES_ANNOUNCED_HANDLER fun(self: Widget)

---Event triggers when the player opens the hero election list to cast a vote.
---@alias HERO_ELECTION_HANDLER fun()
---@alias WIDGET_HERO_ELECTION_HANDLER fun(self: Widget)

---@TODO:
---@alias HERO_ELECTION_DAY_ALERT_HANDLER fun(title, desc)
---@alias WIDGET_HERO_ELECTION_DAY_ALERT_HANDLER fun(self: Widget, title, desc)

---Event triggers when the hero election has results.
---@alias HERO_ELECTION_RESULT_HANDLER fun()
---@alias WIDGET_HERO_ELECTION_RESULT_HANDLER fun(self: Widget)

---Event triggers when the player casts their vote in a hero election,
---@alias HERO_ELECTION_VOTED_HANDLER fun()
---@alias WIDGET_HERO_ELECTION_VOTED_HANDLER fun(self: Widget)

---@TODO:
---@alias HERO_NOTI_HANDLER fun()
---@alias WIDGET_HERO_NOTI_HANDLER fun(self: Widget)

---Event triggers when the player tries to retrieve hero information.
---@alias HERO_RANK_DATA_RETRIEVED_HANDLER fun(factionID: FACTION_TYPE)
---@alias WIDGET_HERO_RANK_DATA_RETRIEVED_HANDLER fun(self: Widget, factionID: FACTION_TYPE)

---@TODO:
---@alias HERO_RANK_DATA_TIMEOUT_HANDLER fun()
---@alias WIDGET_HERO_RANK_DATA_TIMEOUT_HANDLER fun(self: Widget)

---Event triggers when the players leadership increases.
---@alias HERO_SCORE_UPDATED_HANDLER fun()
---@alias WIDGET_HERO_SCORE_UPDATED_HANDLER fun(self: Widget)

---Event triggers when a hero season is over.
---@alias HERO_SEASON_OFF_HANDLER fun()
---@alias WIDGET_HERO_SEASON_OFF_HANDLER fun(self: Widget)

---Event triggers when a new hero season has begun.
---@alias HERO_SEASON_UPDATED_HANDLER fun()
---@alias WIDGET_HERO_SEASON_UPDATED_HANDLER fun(self: Widget)

---Event triggers when the roadmap tooltip is hidden.
---@alias HIDE_ROADMAP_TOOLTIP_HANDLER fun(text)
---@alias WIDGET_HIDE_ROADMAP_TOOLTIP_HANDLER fun(self: Widget, text)

---Event triggers when the worldmap has an effect that that needs to be hidden.
---@alias HIDE_SKILL_MAP_EFFECT_HANDLER fun(index: number)
---@alias WIDGET_HIDE_SKILL_MAP_EFFECT_HANDLER fun(self: Widget, index: number)

---Event triggers when the worldmap tooltip is hidden.
---@alias HIDE_WORLDMAP_TOOLTIP_HANDLER fun()
---@alias WIDGET_HIDE_WORLDMAP_TOOLTIP_HANDLER fun(self: Widget)

---Event triggers when the player attempts to place a building and the start construction window is shown/hidden.
---@alias HOUSE_BUILD_INFO_HANDLER fun(hType: HOUSE_TYPE, baseTax: string, hTax: string, heavyTaxHouseCount: number, normalTaxHouseCount: number, isHeavyTaxHouse: boolean, hostileTaxRate: number, monopolyTaxRate: number, depositString: string, taxType: HOUSING_TAX, completion: boolean)
---@alias WIDGET_HOUSE_BUILD_INFO_HANDLER fun(self: Widget, hType: HOUSE_TYPE, baseTax: string, hTax: string, heavyTaxHouseCount: number, normalTaxHouseCount: number, isHeavyTaxHouse: boolean, hostileTaxRate: number, monopolyTaxRate: number, depositString: string, taxType: HOUSING_TAX, completion: boolean)

---@TODO:
---@alias HOUSE_BUY_FAIL_HANDLER fun()
---@alias WIDGET_HOUSE_BUY_FAIL_HANDLER fun(self: Widget)

---Event triggers when the player buys a house.
---@alias HOUSE_BUY_SUCCESS_HANDLER fun(houseName: string)
---@alias WIDGET_HOUSE_BUY_SUCCESS_HANDLER fun(self: Widget, houseName: string)

---Event triggers when the player fails to cancel selling their house.
---@alias HOUSE_CANCEL_SELL_FAIL_HANDLER fun()
---@alias WIDGET_HOUSE_CANCEL_SELL_FAIL_HANDLER fun(self: Widget)

---Event triggers when the player successfully cancels selling their house.
---@alias HOUSE_CANCEL_SELL_SUCCESS_HANDLER fun(houseName: string)
---@alias WIDGET_HOUSE_CANCEL_SELL_SUCCESS_HANDLER fun(self: Widget, houseName: string)

---@TODO:
---@alias HOUSE_DECO_UPDATED_HANDLER fun()
---@alias WIDGET_HOUSE_DECO_UPDATED_HANDLER fun(self: Widget)

---@TODO:
---@alias HOUSE_FARM_MSG_HANDLER fun(name, total, harvestable)
---@alias WIDGET_HOUSE_FARM_MSG_HANDLER fun(self: Widget, name, total, harvestable)

---@TODO:
---@alias HOUSE_INFO_UPDATED_HANDLER fun()
---@alias WIDGET_HOUSE_INFO_UPDATED_HANDLER fun(self: Widget)

---Event triggers when the player ends interacting with the building.
---@alias HOUSE_INTERACTION_END_HANDLER fun()
---@alias WIDGET_HOUSE_INTERACTION_END_HANDLER fun(self: Widget)

---Event triggers when the player starts interacting with the building.
---@alias HOUSE_INTERACTION_START_HANDLER fun(structureType: string, viewType: string, arg: boolean)
---@alias WIDGET_HOUSE_INTERACTION_START_HANDLER fun(self: Widget, structureType: string, viewType: string, arg: boolean)

---Event triggers when the player changes the building permissions.
---@alias HOUSE_PERMISSION_UPDATED_HANDLER fun()
---@alias WIDGET_HOUSE_PERMISSION_UPDATED_HANDLER fun(self: Widget)

---Event triggers when the player opens the remodel window for their house.
---@alias HOUSE_REBUILD_TAX_INFO_HANDLER fun()
---@alias WIDGET_HOUSE_REBUILD_TAX_INFO_HANDLER fun(self: Widget)

---@TODO:
---@alias HOUSE_ROTATE_CONFIRM_HANDLER fun()
---@alias WIDGET_HOUSE_ROTATE_CONFIRM_HANDLER fun(self: Widget)

---Event triggers when the player successfully sells a house.
---@alias HOUSE_SALE_SUCCESS_HANDLER fun(houseName: string)
---@alias WIDGET_HOUSE_SALE_SUCCESS_HANDLER fun(self: Widget, houseName: string)

---Event triggers when the player fails to set the house to sell.
---@alias HOUSE_SET_SELL_FAIL_HANDLER fun()
---@alias WIDGET_HOUSE_SET_SELL_FAIL_HANDLER fun(self: Widget)

---Event triggers when the player successfully set the house to sell.
---@alias HOUSE_SET_SELL_SUCCESS_HANDLER fun(houseName: string)
---@alias WIDGET_HOUSE_SET_SELL_SUCCESS_HANDLER fun(self: Widget, houseName: string)

---Event triggers when a house is being built within range of the player.
---@alias HOUSE_STEP_INFO_UPDATED_HANDLER fun(structureType: HOUSE_STRUCTURE_TYPE)
---@alias WIDGET_HOUSE_STEP_INFO_UPDATED_HANDLER fun(self: Widget, structureType: HOUSE_STRUCTURE_TYPE)

---@TODO:
---@alias HOUSE_TAX_INFO_HANDLER fun(dominionTaxRate, hostileTaxRate, taxString, dueTime, prepayTime, weeksWithoutPay, weeksPrepay, isAlreadyPaid, isHeavyTaxHouse, depositString, taxType, id)
---@alias WIDGET_HOUSE_TAX_INFO_HANDLER fun(self: Widget, dominionTaxRate, hostileTaxRate, taxString, dueTime, prepayTime, weeksWithoutPay, weeksPrepay, isAlreadyPaid, isHeavyTaxHouse, depositString, taxType, id)

---@TODO:
---@alias HOUSING_UCC_CLOSE_HANDLER fun()
---@alias WIDGET_HOUSING_UCC_CLOSE_HANDLER fun(self: Widget)

---Event triggers when the customization window slot is cleared.
---@alias HOUSING_UCC_ITEM_SLOT_CLEAR_HANDLER fun()
---@alias WIDGET_HOUSING_UCC_ITEM_SLOT_CLEAR_HANDLER fun(self: Widget)

---Event triggers when the player places a crest stamp in the housing ucc
---customization window slot.
---@alias HOUSING_UCC_ITEM_SLOT_SET_HANDLER fun()
---@alias WIDGET_HOUSING_UCC_ITEM_SLOT_SET_HANDLER fun(self: Widget)

---Event triggers when the player leaves the house ucc customization window.
---@alias HOUSING_UCC_LEAVE_HANDLER fun()
---@alias WIDGET_HOUSING_UCC_LEAVE_HANDLER fun(self: Widget)

---Event triggers when the players housing ucc updates.
---@alias HOUSING_UCC_UPDATED_HANDLER fun()
---@alias WIDGET_HOUSING_UCC_UPDATED_HANDLER fun(self: Widget)

---Event triggers when the state of a zone changes.
---@alias HPW_ZONE_STATE_CHANGE_HANDLER fun(zoneId: ZONE_GROUP_ID)
---@alias WIDGET_HPW_ZONE_STATE_CHANGE_HANDLER fun(self: Widget, zoneId: ZONE_GROUP_ID)

---Event triggers when a zones war state ends.
---@alias HPW_ZONE_STATE_WAR_END_HANDLER fun(zoneId: ZONE_GROUP_ID, points: number)
---@alias WIDGET_HPW_ZONE_STATE_WAR_END_HANDLER fun(self: Widget, zoneId: ZONE_GROUP_ID, points: number)

---Event triggers when the players ime status changes.
---@alias IME_STATUS_CHANGED_HANDLER fun()
---@alias WIDGET_IME_STATUS_CHANGED_HANDLER fun(self: Widget)

---Event triggers when a instance initial round starts. (e.g. Noryette Challenge)
---@alias INDUN_INITAL_ROUND_INFO_HANDLER fun()
---@alias WIDGET_INDUN_INITAL_ROUND_INFO_HANDLER fun(self: Widget)

---Event triggers when a instance round ends. (e.g. Noryette Challenge)
---@alias INDUN_ROUND_END_HANDLER fun(success: boolean, round: number, isBossRound: boolean, lastRound: boolean)
---@alias WIDGET_INDUN_ROUND_END_HANDLER fun(self: Widget, success: boolean, round: number, isBossRound: boolean, lastRound: boolean)

---Event triggers when a instance round begins. (e.g. Noryette Challenge)
---@alias INDUN_ROUND_START_HANDLER fun(round: number, isBossRound: boolean)
---@alias WIDGET_INDUN_ROUND_START_HANDLER fun(self: Widget, round: number, isBossRound: boolean)

---Event triggers when a instance round begins. (e.g. Noryette Challenge)
---@alias INDUN_UPDATE_ROUND_INFO_HANDLER fun()
---@alias WIDGET_INDUN_UPDATE_ROUND_INFO_HANDLER fun(self: Widget)

---Event triggers when the player attempts to purchase an item from the marketplace.
---@alias INGAME_SHOP_BUY_RESULT_HANDLER fun()
---@alias WIDGET_INGAME_SHOP_BUY_RESULT_HANDLER fun(self: Widget)

---@TODO: not sure if this is 100% accurate if all quests are complete.
---Event triggers when the player loads into the world to initalize the chronicle quest window.
---@alias INIT_CHRONICLE_INFO_HANDLER fun()
---@alias WIDGET_INIT_CHRONICLE_INFO_HANDLER fun(self: Widget)

---Event triggers when a crafting order is listed.
---@alias INSERT_CRAFT_ORDER_HANDLER fun()
---@alias WIDGET_INSERT_CRAFT_ORDER_HANDLER fun(self: Widget)

---Event triggers when an instance is now enterable.
---@alias INSTANCE_ENTERABLE_MSG_HANDLER fun(info: InstanceEnterableInfo)
---@alias WIDGET_INSTANCE_ENTERABLE_MSG_HANDLER fun(self: Widget, info: InstanceEnterableInfo)

---@TODO:
---@alias INSTANT_GAME_BEST_RATING_REWARD_HANDLER fun()
---@alias WIDGET_INSTANT_GAME_BEST_RATING_REWARD_HANDLER fun(self: Widget)

---Event triggers when the instance game ends.
---@alias INSTANT_GAME_END_HANDLER fun()
---@alias WIDGET_INSTANT_GAME_END_HANDLER fun(self: Widget)

---@TODO:
---@alias INSTANT_GAME_JOIN_APPLY_HANDLER fun()
---@alias WIDGET_INSTANT_GAME_JOIN_APPLY_HANDLER fun(self: Widget)

---Event triggers when an instance queue has been canceled.
---@alias INSTANT_GAME_JOIN_CANCEL_HANDLER fun()
---@alias WIDGET_INSTANT_GAME_JOIN_CANCEL_HANDLER fun(self: Widget)

---Event triggers when a player kills another player in an instance.
---@alias INSTANT_GAME_KILL_HANDLER fun(msgInfo: InstanceGameKillInfo)
---@alias WIDGET_INSTANT_GAME_KILL_HANDLER fun(self: Widget, msgInfo: InstanceGameKillInfo)

---Event triggers when the instance game pickable buffs is available.
---@alias INSTANT_GAME_PICK_BUFFS_HANDLER fun()
---@alias WIDGET_INSTANT_GAME_PICK_BUFFS_HANDLER fun(self: Widget)

---Event triggers when an instance game is ready.
---@alias INSTANT_GAME_READY_HANDLER fun()
---@alias WIDGET_INSTANT_GAME_READY_HANDLER fun(self: Widget)

---@TODO:
---@alias INSTANT_GAME_RETIRE_HANDLER fun()
---@alias WIDGET_INSTANT_GAME_RETIRE_HANDLER fun(self: Widget)

---@TODO:
---@alias INSTANT_GAME_ROUND_RESULT_HANDLER fun(resultState, resultRound)
---@alias WIDGET_INSTANT_GAME_ROUND_RESULT_HANDLER fun(self: Widget, resultState, resultRound)

---Event triggers when an instance game starts.
---@alias INSTANT_GAME_START_HANDLER fun()
---@alias WIDGET_INSTANT_GAME_START_HANDLER fun(self: Widget)

---@TODO:
---@alias INSTANT_GAME_START_POINT_RETURN_MSG_HANDLER fun(remainSec: number)
---@alias WIDGET_INSTANT_GAME_START_POINT_RETURN_MSG_HANDLER fun(self: Widget, remainSec: number)

---@TODO:
---@alias INSTANT_GAME_UNEARNED_WIN_REMAIN_TIME_HANDLER fun(remainTime)
---@alias WIDGET_INSTANT_GAME_UNEARNED_WIN_REMAIN_TIME_HANDLER fun(self: Widget, remainTime)

---Event triggers when the instance game is waiting.
---@alias INSTANT_GAME_WAIT_HANDLER fun()
---@alias WIDGET_INSTANT_GAME_WAIT_HANDLER fun(self: Widget)

---Event triggers when the player stops interacting with something.
---@alias INTERACTION_END_HANDLER fun()
---@alias WIDGET_INTERACTION_END_HANDLER fun(self: Widget)

---@TODO:
---@alias INTERACTION_START_HANDLER fun()
---@alias WIDGET_INTERACTION_START_HANDLER fun(self: Widget)

---@TODO:
---@alias INVALID_NAME_POLICY_HANDLER fun(namePolicyType)
---@alias WIDGET_INVALID_NAME_POLICY_HANDLER fun(self: Widget, namePolicyType)

---Event triggers when the player starts to split items in their inventory.
---@alias INVEN_SLOT_SPLIT_HANDLER fun(invenType: string, slot: number, amount: number)
---@alias WIDGET_INVEN_SLOT_SPLIT_HANDLER fun(self: Widget, invenType: string, slot: number, amount: number)

---Event triggers when a player acquires loot.
---@alias ITEM_ACQUISITION_BY_LOOT_HANDLER fun(charName: string, itemLinkText: string, itemCount: number)
---@alias WIDGET_ITEM_ACQUISITION_BY_LOOT_HANDLER fun(self: Widget, charName: string, itemLinkText: string, itemCount: number)

---Event triggers when the player attempts to awaken a item.
---@alias ITEM_CHANGE_MAPPING_RESULT_HANDLER fun(result: ITEM_CHANGE_MESSAGE_RESULT, oldGrade: ITEM_GRADE_TYPE, oldGearScore: number, itemLink: string, bonusRate: number)
---@alias WIDGET_ITEM_CHANGE_MAPPING_RESULT_HANDLER fun(self: Widget, result: ITEM_CHANGE_MESSAGE_RESULT, oldGrade: ITEM_GRADE_TYPE, oldGearScore: number, itemLink: string, bonusRate: number)

---Event triggers when the player enchants an item with a lunastone.
---@alias ITEM_ENCHANT_MAGICAL_RESULT_HANDLER fun(resultCode: `1`|number, itemLink: string, gemItemType: number)
---@alias WIDGET_ITEM_ENCHANT_MAGICAL_RESULT_HANDLER fun(self: Widget, resultCode: `1`|number, itemLink: string, gemItemType: number)

---Event triggers when the player attempt to equip an item to a mate/slave and it fails.
---@alias ITEM_EQUIP_RESULT_HANDLER fun(ItemEquipResult: ITEM_MATE)
---@alias WIDGET_ITEM_EQUIP_RESULT_HANDLER fun(self: Widget, ItemEquipResult: ITEM_MATE)

---Event triggers when the player changes the image of an item.
---@alias ITEM_LOOK_CONVERTED_HANDLER fun(itemLinkText: string)
---@alias WIDGET_ITEM_LOOK_CONVERTED_HANDLER fun(self: Widget, itemLinkText: string)

---Event triggers when the player changes the image of an item.
---@alias ITEM_LOOK_CONVERTED_EFFECT_HANDLER fun(itemInfo: ItemInfo)
---@alias WIDGET_ITEM_LOOK_CONVERTED_EFFECT_HANDLER fun(self: Widget, itemInfo: ItemInfo)

---Event triggers when the player attempts to temper an item.
---@alias ITEM_REFURBISHMENT_RESULT_HANDLER fun(resultCode: ITEM_GRADE_ENCHANT_RESULT, itemLink: string, beforeScale: string, afterScale: string)
---@alias WIDGET_ITEM_REFURBISHMENT_RESULT_HANDLER fun(self: Widget, resultCode: ITEM_GRADE_ENCHANT_RESULT, itemLink: string, beforeScale: string, afterScale: string)

---@TODO:
---@alias ITEM_SMELTING_RESULT_HANDLER fun(resultCode, itemLink, smeltingItemType)
---@alias WIDGET_ITEM_SMELTING_RESULT_HANDLER fun(self: Widget, resultCode, itemLink, smeltingItemType)

---Event triggers when the player upgrades a socketed lunagem in an item.
---@alias ITEM_SOCKET_UPGRADE_HANDLER fun(socketItemType: number)
---@alias WIDGET_ITEM_SOCKET_UPGRADE_HANDLER fun(self: Widget, socketItemType: number)

---Event triggers when the player sockets a lunagem into an item.
---@alias ITEM_SOCKETING_RESULT_HANDLER fun(resultCode: ITEM_SOCKETING_RESULT_CODE, itemLink: string, socketItemType: number, install: boolean)
---@alias WIDGET_ITEM_SOCKETING_RESULT_HANDLER fun(self: Widget, resultCode: ITEM_SOCKETING_RESULT_CODE, itemLink: string, socketItemType: number, install: boolean)

---Event triggers when the jury count changes.
---@alias JURY_OK_COUNT_HANDLER fun(count: number, total: number)
---@alias WIDGET_JURY_OK_COUNT_HANDLER fun(self: Widget, count: number, total: number)

---Event triggers when the player is checking their current jury waiting number.
---@alias JURY_WAITING_NUMBER_HANDLER fun(num: number)
---@alias WIDGET_JURY_WAITING_NUMBER_HANDLER fun(self: Widget, num: number)

---Event triggers when the players labor changes.
---@alias LABORPOWER_CHANGED_HANDLER fun(diff: number, laborPower: number)
---@alias WIDGET_LABORPOWER_CHANGED_HANDLER fun(self: Widget, diff: number, laborPower: number)

---Event triggers when the player leaves enchanting mode.
---@alias LEAVE_ENCHANT_ITEM_MODE_HANDLER fun()
---@alias WIDGET_LEAVE_ENCHANT_ITEM_MODE_HANDLER fun(self: Widget)

---Event triggers when the player closes the open chest (gold/silver/copper crate) window.
---@alias LEAVE_GACHA_LOOT_MODE_HANDLER fun()
---@alias WIDGET_LEAVE_GACHA_LOOT_MODE_HANDLER fun(self: Widget)

---Event triggers when the player closes the item infusion window.
---@alias LEAVE_ITEM_LOOK_CONVERT_MODE_HANDLER fun()
---@alias WIDGET_LEAVE_ITEM_LOOK_CONVERT_MODE_HANDLER fun(self: Widget)

---Event triggers when the player leaves the instance.
---@alias LEAVED_INSTANT_GAME_ZONE_HANDLER fun()
---@alias WIDGET_LEAVED_INSTANT_GAME_ZONE_HANDLER fun(self: Widget)

---Event triggers if the player cancels leaving the world.
---@alias LEAVING_WORLD_CANCELED_HANDLER fun()
---@alias WIDGET_LEAVING_WORLD_CANCELED_HANDLER fun(self: Widget)

---Event triggers if the player is leaving the world.
---@alias LEAVING_WORLD_STARTED_HANDLER fun(waitTime: number, exitTarget: EXIT_TARGET, idleKick: boolean)
---@alias WIDGET_LEAVING_WORLD_STARTED_HANDLER fun(self: Widget, waitTime: number, exitTarget: EXIT_TARGET, idleKick: boolean)

---Event triggers when the player is finished loading.
---@alias LEFT_LOADING_HANDLER fun()
---@alias WIDGET_LEFT_LOADING_HANDLER fun(self: Widget)

---Event triggers when the player leaves screenshot mode
---@alias LEFT_SCREEN_SHOT_CAMERA_MODE_HANDLER fun()
---@alias WIDGET_LEFT_SCREEN_SHOT_CAMERA_MODE_HANDLER fun(self: Widget)

---Event triggers when the player leaves a subzone.
---@alias LEFT_SUBZONE_HANDLER fun(zoneId: SUB_ZONE_ID, zoneName: SUB_ZONE_NAME)
---@alias WIDGET_LEFT_SUBZONE_HANDLER fun(self: Widget, zoneId: SUB_ZONE_ID, zoneName: SUB_ZONE_NAME)

---Event triggers when the player leaves the world.
---@alias LEFT_WORLD_HANDLER fun()
---@alias WIDGET_LEFT_WORLD_HANDLER fun(self: Widget)

---Event triggers when a players level changes.
---@alias LEVEL_CHANGED_HANDLER fun(name: string, stringId: string)
---@alias WIDGET_LEVEL_CHANGED_HANDLER fun(self: Widget, name: string, stringId: string)

---Event triggers when the player opens the loot bag of a mob.
---@alias LOOT_BAG_CHANGED_HANDLER fun(setTime: boolean)
---@alias WIDGET_LOOT_BAG_CHANGED_HANDLER fun(self: Widget, setTime: boolean)

---Event triggers when the player closes the loot bag of a mob.
---@alias LOOT_BAG_CLOSE_HANDLER fun()
---@alias WIDGET_LOOT_BAG_CLOSE_HANDLER fun(self: Widget)

---Event triggers when a player rolls for an item.
---@alias LOOT_DICE_HANDLER fun(charName: string, itemLinkText: string, diceValue: number)
---@alias WIDGET_LOOT_DICE_HANDLER fun(self: Widget, charName: string, itemLinkText: string, diceValue: number)

---Event triggers when a player loots an item that broadcasts to the server.
---@alias LOOT_PACK_ITEM_BROADCAST_HANDLER fun(characterName: string, sourceName: string, useItemLink: string, resultItemLink: string)
---@alias WIDGET_LOOT_PACK_ITEM_BROADCAST_HANDLER fun(self: Widget, characterName: string, sourceName: string, useItemLink: string, resultItemLink: string)

---Event triggers when the raid leader sets the loot bind on pick up rule.
---@alias LOOTING_RULE_BOP_CHANGED_HANDLER fun(rollForBop: number)
---@alias WIDGET_LOOTING_RULE_BOP_CHANGED_HANDLER fun(self: Widget, rollForBop: number)

---Event triggers when the raid leader sets the loot grade rule.
---@alias LOOTING_RULE_GRADE_CHANGED_HANDLER fun(grade: number)
---@alias WIDGET_LOOTING_RULE_GRADE_CHANGED_HANDLER fun(self: Widget, grade: number)

---Event triggers when the raid leader sets the loot master rule.
---@alias LOOTING_RULE_MASTER_CHANGED_HANDLER fun(charName: string)
---@alias WIDGET_LOOTING_RULE_MASTER_CHANGED_HANDLER fun(self: Widget, charName: string)

---Event triggers when the raid leader sets the loot method rule.
---@alias LOOTING_RULE_METHOD_CHANGED_HANDLER fun(lootMethod: number)
---@alias WIDGET_LOOTING_RULE_METHOD_CHANGED_HANDLER fun(self: Widget, lootMethod: number)

---@TODO:
---@alias LP_MANAGE_CHARACTER_CHANGED_HANDLER fun()
---@alias WIDGET_LP_MANAGE_CHARACTER_CHANGED_HANDLER fun(self: Widget)

---Event triggers when the player takes all from a mail.
---@alias MAIL_INBOX_ATTACHMENT_TAKEN_ALL_HANDLER fun(mailId: number)
---@alias WIDGET_MAIL_INBOX_ATTACHMENT_TAKEN_ALL_HANDLER fun(self: Widget, mailId: number)

---Event triggers when the player takes an item from the mail.
---@alias MAIL_INBOX_ITEM_TAKEN_HANDLER fun(index: number)
---@alias WIDGET_MAIL_INBOX_ITEM_TAKEN_HANDLER fun(self: Widget, index: number)

---Event triggers when the player takes money from the mail.
---@alias MAIL_INBOX_MONEY_TAKEN_HANDLER fun()
---@alias WIDGET_MAIL_INBOX_MONEY_TAKEN_HANDLER fun(self: Widget)

---Event triggers when the player pays their taxes through the mail.
---@alias MAIL_INBOX_TAX_PAID_HANDLER fun()
---@alias WIDGET_MAIL_INBOX_TAX_PAID_HANDLER fun(self: Widget)

---Event triggers when the players mailbox has an update.
---@alias MAIL_INBOX_UPDATE_HANDLER fun(read: boolean|nil, mailListKind: MAIL_LIST_TYPE|nil)
---@alias WIDGET_MAIL_INBOX_UPDATE_HANDLER fun(self: Widget, read: boolean|nil, mailListKind: MAIL_LIST_TYPE|nil)

---@TODO:
---@alias MAIL_RETURNED_HANDLER fun()
---@alias WIDGET_MAIL_RETURNED_HANDLER fun(self: Widget)

---Event triggers when the player successfully sends a mail.
---@alias MAIL_SENT_SUCCESS_HANDLER fun()
---@alias WIDGET_MAIL_SENT_SUCCESS_HANDLER fun(self: Widget)

---Event triggers when the player checks their sent mail.
---@alias MAIL_SENTBOX_UPDATE_HANDLER fun(read, mailListKind)
---@alias WIDGET_MAIL_SENTBOX_UPDATE_HANDLER fun(self: Widget, read, mailListKind)

---Event triggers when the player starts to create a new mail.
---@alias MAIL_WRITE_ITEM_UPDATE_HANDLER fun(index: number)
---@alias WIDGET_MAIL_WRITE_ITEM_UPDATE_HANDLER fun(self: Widget, index: number)

---Event triggers when the player opens the map.
---@alias MAP_EVENT_CHANGED_HANDLER fun()
---@alias WIDGET_MAP_EVENT_CHANGED_HANDLER fun(self: Widget)

---Event triggers when the players mount or battlepet learns a new skill.
---@alias MATE_SKILL_LEARNED_HANDLER fun(mateType: MATE_TYPE, text: string)
---@alias WIDGET_MATE_SKILL_LEARNED_HANDLER fun(self: Widget, mateType: MATE_TYPE, text: string)

---Event triggers when the players mount of battlepet state changes without the
---player changing it.
---@alias MATE_STATE_UPDATE_HANDLER fun(mateType: MATE_TYPE, stateIndex: MATE_STATE)
---@alias WIDGET_MATE_STATE_UPDATE_HANDLER fun(self: Widget, mateType: MATE_TYPE, stateIndex: MATE_STATE)

---@TODO:
---@alias MEGAPHONE_MESSAGE_HANDLER fun(show, channel, name, message, isMyMessage)
---@alias WIDGET_MEGAPHONE_MESSAGE_HANDLER fun(self: Widget, show, channel, name, message, isMyMessage)

---@TODO:
---@alias MIA_MAIL_INBOX_ITEM_TAKEN_HANDLER fun()
---@alias WIDGET_MIA_MAIL_INBOX_ITEM_TAKEN_HANDLER fun(self: Widget)

---@TODO:
---@alias MIA_MAIL_INBOX_MONEY_TAKEN_HANDLER fun()
---@alias WIDGET_MIA_MAIL_INBOX_MONEY_TAKEN_HANDLER fun(self: Widget)

---@TODO:
---@alias MIA_MAIL_INBOX_TAX_PAID_HANDLER fun()
---@alias WIDGET_MIA_MAIL_INBOX_TAX_PAID_HANDLER fun(self: Widget)

---@TODO:
---@alias MIA_MAIL_INBOX_UPDATE_HANDLER fun()
---@alias WIDGET_MIA_MAIL_INBOX_UPDATE_HANDLER fun(self: Widget)

---@TODO:
---@alias MIA_MAIL_RETURNED_HANDLER fun()
---@alias WIDGET_MIA_MAIL_RETURNED_HANDLER fun(self: Widget)

---@TODO:
---@alias MIA_MAIL_SENT_SUCCESS_HANDLER fun()
---@alias WIDGET_MIA_MAIL_SENT_SUCCESS_HANDLER fun(self: Widget)

---@TODO:
---@alias MIA_MAIL_SENTBOX_UPDATE_HANDLER fun()
---@alias WIDGET_MIA_MAIL_SENTBOX_UPDATE_HANDLER fun(self: Widget)

---@TODO:
---@alias MIA_MAIL_WRITE_ITEM_UPDATE_HANDLER fun()
---@alias WIDGET_MIA_MAIL_WRITE_ITEM_UPDATE_HANDLER fun(self: Widget)

---@TODO:
---@alias MINE_AMOUNT_HANDLER fun()
---@alias WIDGET_MINE_AMOUNT_HANDLER fun(self: Widget)

---Event triggers when the mini scoreboard changes.
---@alias MINI_SCOREBOARD_CHANGED_HANDLER fun(status: MINI_SCOREBOARD_CHANGED_STATUS, info: MiniScoreBoardInfo[]|nil)
---@alias WIDGET_MINI_SCOREBOARD_CHANGED_HANDLER fun(self: Widget, status: MINI_SCOREBOARD_CHANGED_STATUS, info: MiniScoreBoardInfo[]|nil)

---Event triggers when the players dynamic shortcut is updated.
---@alias MODE_ACTIONS_UPDATE_HANDLER fun()
---@alias WIDGET_MODE_ACTIONS_UPDATE_HANDLER fun(self: Widget)

---@TODO:
---@alias MONEY_ACQUISITION_BY_LOOT_HANDLER fun(charName, moneyStr)
---@alias WIDGET_MONEY_ACQUISITION_BY_LOOT_HANDLER fun(self: Widget, charName, moneyStr)

---@TODO:
---@alias MOUNT_BAG_UPDATE_HANDLER fun()
---@alias WIDGET_MOUNT_BAG_UPDATE_HANDLER fun(self: Widget)

---Event triggers when the player mounts a pet.
---@alias MOUNT_PET_HANDLER fun(mateType: MATE_TYPE, isMyPet: boolean)
---@alias WIDGET_MOUNT_PET_HANDLER fun(self: Widget, mateType: MATE_TYPE, isMyPet: boolean)

---@TODO:
---@alias MOUNT_SLOT_CHANGED_HANDLER fun()
---@alias WIDGET_MOUNT_SLOT_CHANGED_HANDLER fun(self: Widget)

---@TODO:
---@alias MOUSE_CLICK_HANDLER fun()
---@alias WIDGET_MOUSE_CLICK_HANDLER fun(self: Widget)

---Event triggers when the player clicks on a widget.
---@alias MOUSE_DOWN_HANDLER fun(widgetId: string)
---@alias WIDGET_MOUSE_DOWN_HANDLER fun(self: Widget, widgetId: string)

---@TODO:
---@alias MOUSE_UP_HANDLER fun()
---@alias WIDGET_MOUSE_UP_HANDLER fun(self: Widget)

---Event triggers when the players move speed changes.
---@alias MOVE_SPEED_CHANGE_HANDLER fun()
---@alias WIDGET_MOVE_SPEED_CHANGE_HANDLER fun(self: Widget)

---@TODO:
---@alias MOVIE_ABORT_HANDLER fun()
---@alias WIDGET_MOVIE_ABORT_HANDLER fun(self: Widget)

---@TODO:
---@alias MOVIE_LOAD_HANDLER fun()
---@alias WIDGET_MOVIE_LOAD_HANDLER fun(self: Widget)

---@TODO:
---@alias MOVIE_STOP_HANDLER fun()
---@alias WIDGET_MOVIE_STOP_HANDLER fun(self: Widget)

---Event triggers when the player interacts with a npc that has multiple quests.
---@alias MULTI_QUEST_CONTEXT_SELECT_HANDLER fun(targetNpc: boolean, qtype: number, useDirectingMode: boolean, targetId: string, interactionValue: string)
---@alias WIDGET_MULTI_QUEST_CONTEXT_SELECT_HANDLER fun(self: Widget, targetNpc: boolean, qtype: number, useDirectingMode: boolean, targetId: string, interactionValue: string)

---Event triggers when the player interacts with a npc that has multiple quests.
---@alias MULTI_QUEST_CONTEXT_SELECT_LIST_HANDLER fun(questList: QuestSelectList)
---@alias WIDGET_MULTI_QUEST_CONTEXT_SELECT_LIST_HANDLER fun(self: Widget, questList: QuestSelectList)

---Event triggers when the player changes the name tag mode.
---@alias NAME_TAG_MODE_CHANGED_MSG_HANDLER fun(changedNameTagMode: NAME_TAG_MODE_OFFSET)
---@alias WIDGET_NAME_TAG_MODE_CHANGED_MSG_HANDLER fun(self: Widget, changedNameTagMode: NAME_TAG_MODE_OFFSET)

---Event triggers when the player is selecting a territory from the Faction > Auroria Territories window.
---@alias NATION_DOMINION_HANDLER fun(zoneGroupType: ZONE_GROUP_ID, force: boolean)
---@alias WIDGET_NATION_DOMINION_HANDLER fun(self: Widget, zoneGroupType: ZONE_GROUP_ID, force: boolean)

---@TODO:
---@alias NAVI_MARK_POS_TO_MAP_HANDLER fun()
---@alias WIDGET_NAVI_MARK_POS_TO_MAP_HANDLER fun(self: Widget)

---@TODO:
---@alias NAVI_MARK_REMOVE_HANDLER fun()
---@alias WIDGET_NAVI_MARK_REMOVE_HANDLER fun(self: Widget)

---Event triggers when a new day (daily reset) starts.
---@alias NEW_DAY_STARTED_HANDLER fun()
---@alias WIDGET_NEW_DAY_STARTED_HANDLER fun(self: Widget)

---Event triggers when the player gains a new skill point.
---@alias NEW_SKILL_POINT_HANDLER fun(point: number)
---@alias WIDGET_NEW_SKILL_POINT_HANDLER fun(self: Widget, point: number)

---Event triggers when the next siege information is required.
---@alias NEXT_SIEGE_INFO_HANDLER fun(siegeInfo: NextSiegeInfo)
---@alias WIDGET_NEXT_SIEGE_INFO_HANDLER fun(self: Widget, siegeInfo: NextSiegeInfo)

---@TODO:  noticeType 1 = send to chat otherwise send to centerMessage, name could be nil?
---Event triggers when a gm notice message occurs.
---@alias NOTICE_MESSAGE_HANDLER fun(noticeType: number, color: string, visibleTime: number, message: string, name: string)
---@alias WIDGET_NOTICE_MESSAGE_HANDLER fun(self: Widget, noticeType: number, color: string, visibleTime: number, message: string, name: string)

---@TODO:
---@alias NOTIFY_AUTH_ADVERTISING_MESSAGE_HANDLER fun(msg, remainTime)
---@alias WIDGET_NOTIFY_AUTH_ADVERTISING_MESSAGE_HANDLER fun(self: Widget, msg, remainTime)

---@TODO:
---@alias NOTIFY_AUTH_BILLING_MESSAGE_HANDLER fun(msg, remainTime)
---@alias WIDGET_NOTIFY_AUTH_BILLING_MESSAGE_HANDLER fun(self: Widget, msg, remainTime)

---@TODO:
---@alias NOTIFY_AUTH_DISCONNECTION_MESSAGE_HANDLER fun(msg, remainTime)
---@alias WIDGET_NOTIFY_AUTH_DISCONNECTION_MESSAGE_HANDLER fun(self: Widget, msg, remainTime)

---@TODO:
---@alias NOTIFY_AUTH_FATIGUE_MESSAGE_HANDLER fun(msg, remainTime)
---@alias WIDGET_NOTIFY_AUTH_FATIGUE_MESSAGE_HANDLER fun(self: Widget, msg, remainTime)

---@TODO:
---@alias NOTIFY_AUTH_NOTICE_MESSAGE_HANDLER fun(message, visibleTime, needCountdown)
---@alias WIDGET_NOTIFY_AUTH_NOTICE_MESSAGE_HANDLER fun(self: Widget, message, visibleTime, needCountdown)

---@TODO:
---@alias NOTIFY_AUTH_TC_FATIGUE_MESSAGE_HANDLER fun(msg, remainTime)
---@alias WIDGET_NOTIFY_AUTH_TC_FATIGUE_MESSAGE_HANDLER fun(self: Widget, msg, remainTime)

---@TODO:
---@alias NPC_CRAFT_ERROR_HANDLER fun()
---@alias WIDGET_NPC_CRAFT_ERROR_HANDLER fun(self: Widget)

---@TODO:
---@alias NPC_CRAFT_UPDATE_HANDLER fun()
---@alias WIDGET_NPC_CRAFT_UPDATE_HANDLER fun(self: Widget)

---Event triggers when the player ends a interaction with a npc.
---@alias NPC_INTERACTION_END_HANDLER fun()
---@alias WIDGET_NPC_INTERACTION_END_HANDLER fun(self: Widget)

---Event triggers when the player starts a interaction with a npc.
---@alias NPC_INTERACTION_START_HANDLER fun(value: "quest", addedValue: NPC_INTERACTION_ADDED_VALUE, npcId: string)
---@alias WIDGET_NPC_INTERACTION_START_HANDLER fun(self: Widget, value: "quest", addedValue: NPC_INTERACTION_ADDED_VALUE, npcId: string)

---@TODO:
---@alias NPC_UNIT_EQUIPMENT_CHANGED_HANDLER fun()
---@alias WIDGET_NPC_UNIT_EQUIPMENT_CHANGED_HANDLER fun(self: Widget)

---@TODO:
---@alias NUONS_ARROW_SHOW_HANDLER fun(visible)
---@alias WIDGET_NUONS_ARROW_SHOW_HANDLER fun(self: Widget, visible)

---@TODO:
---@alias NUONS_ARROW_UI_MSG_HANDLER fun(nuonsMsgInfo)
---@alias WIDGET_NUONS_ARROW_UI_MSG_HANDLER fun(self: Widget, nuonsMsgInfo)

---Event triggers when a continent has regional community center development update.
---@alias NUONS_ARROW_UPDATE_HANDLER fun(data: NuonsArrowUpdate[])
---@alias WIDGET_NUONS_ARROW_UPDATE_HANDLER fun(self: Widget, data: NuonsArrowUpdate[])

---@TODO:
---@alias ONE_AND_ONE_CHAT_ADD_MESSAGE_HANDLER fun(channelId, speakerName, message, isSpeakerGm)
---@alias WIDGET_ONE_AND_ONE_CHAT_ADD_MESSAGE_HANDLER fun(self: Widget, channelId, speakerName, message, isSpeakerGm)

---@TODO:
---@alias ONE_AND_ONE_CHAT_END_HANDLER fun(channelId)
---@alias WIDGET_ONE_AND_ONE_CHAT_END_HANDLER fun(self: Widget, channelId)

---@TODO:
---@alias ONE_AND_ONE_CHAT_START_HANDLER fun(channelId, targetName)
---@alias WIDGET_ONE_AND_ONE_CHAT_START_HANDLER fun(self: Widget, channelId, targetName)

---Event triggers when the player opens their chat.
---@alias OPEN_CHAT_HANDLER fun()
---@alias WIDGET_OPEN_CHAT_HANDLER fun(self: Widget)

---Event triggers when the player opens information board at a public farm to check which items can be placed.
---@alias OPEN_COMMON_FARM_INFO_HANDLER fun(commonFarmType: COMMON_FARM_TYPE)
---@alias WIDGET_OPEN_COMMON_FARM_INFO_HANDLER fun(self: Widget, commonFarmType: COMMON_FARM_TYPE)

---Event triggers when the player opens the escape menu with the escape key.
---@alias OPEN_CONFIG_HANDLER fun()
---@alias WIDGET_OPEN_CONFIG_HANDLER fun(self: Widget)

---Event triggers when the player opens the crafting request window by right clicking on a crafting request.
---@alias OPEN_CRAFT_ORDER_BOARD_HANDLER fun(tabName: string)
---@alias WIDGET_OPEN_CRAFT_ORDER_BOARD_HANDLER fun(self: Widget, tabName: string)

---@TODO:
---@alias OPEN_EMBLEM_IMPRINT_UI_HANDLER fun()
---@alias WIDGET_OPEN_EMBLEM_IMPRINT_UI_HANDLER fun(self: Widget)

---Event triggers when the player opens the crest printer window.
---@alias OPEN_EMBLEM_UPLOAD_UI_HANDLER fun(doodad: number)
---@alias WIDGET_OPEN_EMBLEM_UPLOAD_UI_HANDLER fun(self: Widget, doodad: number)

---Event triggers when the player interacts with their guild portal.
---@alias OPEN_EXPEDITION_PORTAL_LIST_HANDLER fun(addPortal: boolean, interactionDoodad: boolean, expeditionOwner: boolean)
---@alias WIDGET_OPEN_EXPEDITION_PORTAL_LIST_HANDLER fun(self: Widget, addPortal: boolean, interactionDoodad: boolean, expeditionOwner: boolean)

---Event triggers when the player opens a music sheet to begin composing music.
---@alias OPEN_MUSIC_SHEET_HANDLER fun(isShow: boolean, itemIdString: string, isWide: number)
---@alias WIDGET_OPEN_MUSIC_SHEET_HANDLER fun(self: Widget, isShow: boolean, itemIdString: string, isWide: number)

---@TODO:
---@alias OPEN_NAVI_DOODAD_NAMING_DIALOG_HANDLER fun()
---@alias WIDGET_OPEN_NAVI_DOODAD_NAMING_DIALOG_HANDLER fun(self: Widget)

---Event triggers when the player opens a letter/book in their inventory.
---@alias OPEN_PAPER_HANDLER fun(type: "page"|"book", idx: number)
---@alias WIDGET_OPEN_PAPER_HANDLER fun(self: Widget, type: "page"|"book", idx: number)

---@TODO:
---@alias OPEN_PROMOTION_EVENT_URL_HANDLER fun(url)
---@alias WIDGET_OPEN_PROMOTION_EVENT_URL_HANDLER fun(self: Widget, url)

---Event triggers when the player enables/disables optimization.
---@alias OPTIMIZATION_RESULT_MESSAGE_HANDLER fun(activated: boolean)
---@alias WIDGET_OPTIMIZATION_RESULT_MESSAGE_HANDLER fun(self: Widget, activated: boolean)

---Event triggers when the player resets a Game Settings option.
---@alias OPTION_RESET_HANDLER fun()
---@alias WIDGET_OPTION_RESET_HANDLER fun(self: Widget)

---Event triggers when a passenger mounts the players pet.
---@alias PASSENGER_MOUNT_PET_HANDLER fun(mateType: MATE_TYPE)
---@alias WIDGET_PASSENGER_MOUNT_PET_HANDLER fun(self: Widget, mateType: MATE_TYPE)

---Event triggers when a passenger unmounts the players pet.
---@alias PASSENGER_UNMOUNT_PET_HANDLER fun(mateType: MATE_TYPE)
---@alias WIDGET_PASSENGER_UNMOUNT_PET_HANDLER fun(self: Widget, mateType: MATE_TYPE)

---Event triggers when the players pet auto skill changes
---@alias PET_AUTO_SKILL_CHANGED_HANDLER fun(mateType: MATE_TYPE)
---@alias WIDGET_PET_AUTO_SKILL_CHANGED_HANDLER fun(self: Widget, mateType: MATE_TYPE)

---Event triggers when the players mount state t is following.
---@alias PET_FOLLOWING_MASTER_HANDLER fun(mateType: MATE_TYPE)
---@alias WIDGET_PET_FOLLOWING_MASTER_HANDLER fun(self: Widget, mateType: MATE_TYPE)

---Event triggers when the players mount state is not following.
---@alias PET_STOP_BY_MASTER_HANDLER fun(mateType: MATE_TYPE)
---@alias WIDGET_PET_STOP_BY_MASTER_HANDLER fun(self: Widget, mateType: MATE_TYPE)

---Event triggers when the player mounts another players pet.
---@alias PETMATE_BOUND_HANDLER fun()
---@alias WIDGET_PETMATE_BOUND_HANDLER fun(self: Widget)

---Event triggers when the player unmounts another players pet.
---@alias PETMATE_UNBOUND_HANDLER fun()
---@alias WIDGET_PETMATE_UNBOUND_HANDLER fun(self: Widget)

---@TODO:
---@alias PLAYER_AA_POINT_HANDLER fun(change, changeStr, itemTaskType, info)
---@alias WIDGET_PLAYER_AA_POINT_HANDLER fun(self: Widget, change, changeStr, itemTaskType, info)

---Event triggers when the players ability level changes.
---@alias PLAYER_ABILITY_LEVEL_CHANGED_HANDLER fun()
---@alias WIDGET_PLAYER_ABILITY_LEVEL_CHANGED_HANDLER fun(self: Widget)

---@TODO:
---@alias PLAYER_BANK_AA_POINT_HANDLER fun()
---@alias WIDGET_PLAYER_BANK_AA_POINT_HANDLER fun(self: Widget)

---Event triggers when the player deposits or withdraws from their bank.
---@alias PLAYER_BANK_MONEY_HANDLER fun(amount: number, amountStr: string)
---@alias WIDGET_PLAYER_BANK_MONEY_HANDLER fun(self: Widget, amount: number, amountStr: string)

---Event triggers when the players loyalty tokens change.
---@alias PLAYER_BM_POINT_HANDLER fun(oldBmPoint: string)
---@alias WIDGET_PLAYER_BM_POINT_HANDLER fun(self: Widget, oldBmPoint: string)

---@TODO:
---@alias PLAYER_GEAR_POINT_HANDLER fun()
---@alias WIDGET_PLAYER_GEAR_POINT_HANDLER fun(self: Widget)

---Event triggers when the players honor points change.
---@alias PLAYER_HONOR_POINT_HANDLER fun(amount: number, amountStr: string, isCombatInHonorPointWar?: boolean)
---@alias WIDGET_PLAYER_HONOR_POINT_HANDLER fun(self: Widget, amount: number, amountStr: string, isCombatInHonorPointWar?: boolean)

---Event triggers when the players honor points change in a zone.
---@alias PLAYER_HONOR_POINT_CHANGED_IN_HPW_HANDLER fun(amount: number)
---@alias WIDGET_PLAYER_HONOR_POINT_CHANGED_IN_HPW_HANDLER fun(self: Widget, amount: number)

---Event triggers when the player completes a trial.
---@alias PLAYER_JURY_POINT_HANDLER fun()
---@alias WIDGET_PLAYER_JURY_POINT_HANDLER fun(self: Widget)

---Event triggers when the player receives leadership points.
---@alias PLAYER_LEADERSHIP_POINT_HANDLER fun(amount: number, amountStr: string)
---@alias WIDGET_PLAYER_LEADERSHIP_POINT_HANDLER fun(self: Widget, amount: number, amountStr: string)

---Event triggers when the players vocation changes.
---@alias PLAYER_LIVING_POINT_HANDLER fun(amount: number, amountStr: string)
---@alias WIDGET_PLAYER_LIVING_POINT_HANDLER fun(self: Widget, amount: number, amountStr: string)

---Event triggers when the players money changes
---@alias PLAYER_MONEY_HANDLER fun(change: number, changeStr: string, itemTaskType: number, info?)
---@alias WIDGET_PLAYER_MONEY_HANDLER fun(self: Widget, change: number, changeStr: string, itemTaskType: number, info?)

---Event triggers when the player accepts a resurrection.
---@alias PLAYER_RESURRECTED_HANDLER fun()
---@alias WIDGET_PLAYER_RESURRECTED_HANDLER fun(self: Widget)

---Event triggers when the player has been resurrected.
---@alias PLAYER_RESURRECTION_HANDLER fun(name: string)
---@alias WIDGET_PLAYER_RESURRECTION_HANDLER fun(self: Widget, name: string)

---Event triggers when the player changes race.
---@alias PLAYER_VISUAL_RACE_HANDLER fun()
---@alias WIDGET_PLAYER_VISUAL_RACE_HANDLER fun(self: Widget)

---Event triggers when the player attempts to list a craftring request.
---@alias POST_CRAFT_ORDER_HANDLER fun(result: boolean)
---@alias WIDGET_POST_CRAFT_ORDER_HANDLER fun(self: Widget, result: boolean)

---Event triggers when the player changes equipment.
---@alias PRELIMINARY_EQUIP_UPDATE_HANDLER fun()
---@alias WIDGET_PRELIMINARY_EQUIP_UPDATE_HANDLER fun(self: Widget)

---@TODO:
---@alias PREMIUM_GRADE_CHANGE_HANDLER fun(prevPremiumGrade, presentPremiumGrade)
---@alias WIDGET_PREMIUM_GRADE_CHANGE_HANDLER fun(self: Widget, prevPremiumGrade, presentPremiumGrade)

---@TODO:
---@alias PREMIUM_LABORPOWER_CHANGED_HANDLER fun(onlineDiff, offlineDiff)
---@alias WIDGET_PREMIUM_LABORPOWER_CHANGED_HANDLER fun(self: Widget, onlineDiff, offlineDiff)

---@TODO:
---@alias PREMIUM_POINT_CHANGE_HANDLER fun()
---@alias WIDGET_PREMIUM_POINT_CHANGE_HANDLER fun(self: Widget)

---@TODO:
---@alias PREMIUM_SERVICE_BUY_RESULT_HANDLER fun(err)
---@alias WIDGET_PREMIUM_SERVICE_BUY_RESULT_HANDLER fun(self: Widget, err)

---Event triggers when the player opens the patron window.
---@alias PREMIUM_SERVICE_LIST_UPDATED_HANDLER fun()
---@alias WIDGET_PREMIUM_SERVICE_LIST_UPDATED_HANDLER fun(self: Widget)

---Event triggers when the player processes a crafting order.
---@alias PROCESS_CRAFT_ORDER_HANDLER fun(result: boolean, processType: CRAFT_ORDER_PROCESS_TYPE)
---@alias WIDGET_PROCESS_CRAFT_ORDER_HANDLER fun(self: Widget, result: boolean, processType: CRAFT_ORDER_PROCESS_TYPE)

---Event triggers when the player talks to a npc that is required to progress a quest.
---@alias PROGRESS_TALK_QUEST_CONTEXT_HANDLER fun(qtype: number, useDirectingMode: boolean, npcId: string, doodadId?: string)
---@alias WIDGET_PROGRESS_TALK_QUEST_CONTEXT_HANDLER fun(self: Widget, qtype: number, useDirectingMode: boolean, npcId: string, doodadId?: string)

---@TODO:
---@alias QUEST_CHAT_LET_IT_DONE_HANDLER fun()
---@alias WIDGET_QUEST_CHAT_LET_IT_DONE_HANDLER fun(self: Widget)

---@TODO:
---@alias QUEST_CHAT_RESTART_HANDLER fun()
---@alias WIDGET_QUEST_CHAT_RESTART_HANDLER fun(self: Widget)

---Event triggers when the players quest condition occurs.
---@alias QUEST_CONTEXT_CONDITION_EVENT_HANDLER fun(objText: string, condition: QUEST_STATUS)
---@alias WIDGET_QUEST_CONTEXT_CONDITION_EVENT_HANDLER fun(self: Widget, objText: string, condition: QUEST_STATUS)

---Event triggers when the players quest updates.
---@alias QUEST_CONTEXT_OBJECTIVE_EVENT_HANDLER fun(objText: string)
---@alias WIDGET_QUEST_CONTEXT_OBJECTIVE_EVENT_HANDLER fun(self: Widget, objText: string)

---Event triggers when the players quest updates.
---@alias QUEST_CONTEXT_UPDATED_HANDLER fun(qType: number, status: QUEST_STATUS)
---@alias WIDGET_QUEST_CONTEXT_UPDATED_HANDLER fun(self: Widget, qType: number, status: QUEST_STATUS)

---@TODO:
---@alias QUEST_DIRECTING_MODE_END_HANDLER fun()
---@alias WIDGET_QUEST_DIRECTING_MODE_END_HANDLER fun(self: Widget)

---Event triggers when the player uses a hot key to advance the quest dialog.
---@alias QUEST_DIRECTING_MODE_HOT_KEY_HANDLER fun(key: QUEST_DIRECTING_MODE_HOT_KEY_TYPE)
---@alias WIDGET_QUEST_DIRECTING_MODE_HOT_KEY_HANDLER fun(self: Widget, key: QUEST_DIRECTING_MODE_HOT_KEY_TYPE)

---Event triggers when the players quest has an error.
---@alias QUEST_ERROR_INFO_HANDLER fun(errNum: QUEST_ERROR, qtype: number, questDetail?: string, isCommon?: boolean)
---@alias WIDGET_QUEST_ERROR_INFO_HANDLER fun(self: Widget, errNum: QUEST_ERROR, qtype: number, questDetail?: string, isCommon?: boolean)

---Event triggers when the player completes a hidden quest.
---@alias QUEST_HIDDEN_COMPLETE_HANDLER fun(qtype: number)
---@alias WIDGET_QUEST_HIDDEN_COMPLETE_HANDLER fun(self: Widget, qtype: number)

---Event triggers when the player activates a hidden quest.
---@alias QUEST_HIDDEN_READY_HANDLER fun(qtype: number)
---@alias WIDGET_QUEST_HIDDEN_READY_HANDLER fun(self: Widget, qtype: number)

---Event triggers when the players quest updates.
---@alias QUEST_LEFT_TIME_UPDATED_HANDLER fun(qtype: number, leftTime: number)
---@alias WIDGET_QUEST_LEFT_TIME_UPDATED_HANDLER fun(self: Widget, qtype: number, leftTime: number)

---@TODO: arg2 is for msg_quest > The quest "$1" must be in-progess.
---@alias QUEST_MSG_HANDLER fun(arg1: string, arg2: string)
---@alias WIDGET_QUEST_MSG_HANDLER fun(self: Widget, arg1: string, arg2: string)

---Event triggers when the player loads into the world and the quest notifier needs to be initialized or refreshed.
---@alias QUEST_NOTIFIER_START_HANDLER fun()
---@alias WIDGET_QUEST_NOTIFIER_START_HANDLER fun(self: Widget)

---Event triggers when a quests window is closed to show a video.
---@alias QUEST_QUICK_CLOSE_EVENT_HANDLER fun(qtype: number)
---@alias WIDGET_QUEST_QUICK_CLOSE_EVENT_HANDLER fun(self: Widget, qtype: number)

---Event triggers when the player checks their raid applicant list.
---@alias RAID_APPLICANT_LIST_HANDLER fun(data: RaidApplicantData)
---@alias WIDGET_RAID_APPLICANT_LIST_HANDLER fun(self: Widget, data: RaidApplicantData)

---Event triggers when the player checks the status display of the raid and
---changing raid window zoom setting.
---@alias RAID_FRAME_SIMPLE_VIEW_HANDLER fun(simple: boolean)
---@alias WIDGET_RAID_FRAME_SIMPLE_VIEW_HANDLER fun(self: Widget, simple: boolean)

---Event triggers when the player views the details of a raid recruit.
---@alias RAID_RECRUIT_DETAIL_HANDLER fun(data: RaidRecruitDetailInfo)
---@alias WIDGET_RAID_RECRUIT_DETAIL_HANDLER fun(self: Widget, data: RaidRecruitDetailInfo)

---Event triggers when the raid hud changes.
---@alias RAID_RECRUIT_HUD_HANDLER fun(infos: RaidRecruitInfo[])
---@alias WIDGET_RAID_RECRUIT_HUD_HANDLER fun(self: Widget, infos: RaidRecruitInfo[])

---Event triggers when the player views the raid recruit window.
---@alias RAID_RECRUIT_LIST_HANDLER fun(data: RaidRecruitListInfo)
---@alias WIDGET_RAID_RECRUIT_LIST_HANDLER fun(self: Widget, data: RaidRecruitListInfo)

---Event triggers when the manastorm shop updates.
---@alias RANDOM_SHOP_INFO_HANDLER fun(isHide: boolean, isdailyReset: boolean)
---@alias WIDGET_RANDOM_SHOP_INFO_HANDLER fun(self: Widget, isHide: boolean, isdailyReset: boolean)

---Event triggers when the manastorm shop updates.
---@alias RANDOM_SHOP_UPDATE_HANDLER fun()
---@alias WIDGET_RANDOM_SHOP_UPDATE_HANDLER fun(self: Widget)

---Event triggers when a ranking information alarm occurs.
---@alias RANK_ALARM_MSG_HANDLER fun(rankType: RANK_KIND, msg: string)
---@alias WIDGET_RANK_ALARM_MSG_HANDLER fun(self: Widget, rankType: RANK_KIND, msg: string)

---@TODO:
---@alias RANK_DATA_RECEIVED_HANDLER fun()
---@alias WIDGET_RANK_DATA_RECEIVED_HANDLER fun(self: Widget)

---@TODO:
---@alias RANK_LOCK_HANDLER fun()
---@alias WIDGET_RANK_LOCK_HANDLER fun(self: Widget)

---Event triggers when the player views a tab of the ranking information window
---that requires the players personal data.
---@alias RANK_PERSONAL_DATA_HANDLER fun()
---@alias WIDGET_RANK_PERSONAL_DATA_HANDLER fun(self: Widget)

---Event triggers when the player views the gear of a player on the ranking
---information window.
---@alias RANK_RANKER_APPEARANCE_HANDLER fun(charID: number)
---@alias WIDGET_RANK_RANKER_APPEARANCE_HANDLER fun(self: Widget, charID: number)

---Event triggers when the player views a pervious ranking snapshot.
---@alias RANK_REWARD_SNAPSHOTS_HANDLER fun(rankType: number, divisionId: number)
---@alias WIDGET_RANK_REWARD_SNAPSHOTS_HANDLER fun(self: Widget, rankType: number, divisionId: number)

---@TODO:
---@alias RANK_SEASON_RESULT_RECEIVED_HANDLER fun()
---@alias WIDGET_RANK_SEASON_RESULT_RECEIVED_HANDLER fun(self: Widget)

---Event triggers when the player checks ranking info.
---@alias RANK_SNAPSHOTS_HANDLER fun(rankType: number, divisionId: number)
---@alias WIDGET_RANK_SNAPSHOTS_HANDLER fun(self: Widget, rankType: number, divisionId: number)

---@TODO:
---@alias RANK_UNLOCK_HANDLER fun()
---@alias WIDGET_RANK_UNLOCK_HANDLER fun(self: Widget)

---Event triggers when the player dies and has recoverable exp.
---@alias RECOVERABLE_EXP_HANDLER fun(stringId: string, restorableExp: number, expLoss: number)
---@alias WIDGET_RECOVERABLE_EXP_HANDLER fun(self: Widget, stringId: string, restorableExp: number, expLoss: number)

---Event triggers when the player recovers lost exp.
---@alias RECOVERED_EXP_HANDLER fun(stringId: string, recoveredExp: number)
---@alias WIDGET_RECOVERED_EXP_HANDLER fun(self: Widget, stringId: string, recoveredExp: number)

---Event triggers when the player is no longer able to reenter a instance.
---@alias REENTRY_NOTIFY_DISABLE_HANDLER fun()
---@alias WIDGET_REENTRY_NOTIFY_DISABLE_HANDLER fun(self: Widget)

---Event triggers when the player can still reenter a instance.
---@alias REENTRY_NOTIFY_ENABLE_HANDLER fun(param: ReentryParam)
---@alias WIDGET_REENTRY_NOTIFY_ENABLE_HANDLER fun(self: Widget, param: ReentryParam)

---Event triggers when the players combat resource has been refreshed.
---@alias REFRESH_COMBAT_RESOURCE_HANDLER fun(resetBar: boolean, groupType: number, resourceType: number, point?: number)
---@alias WIDGET_REFRESH_COMBAT_RESOURCE_HANDLER fun(self: Widget, resetBar: boolean, groupType: number, resourceType: number, point?: number)

---Event triggers when the players combat resource has been updated.
---@alias REFRESH_COMBAT_RESOURCE_UPDATE_TIME_HANDLER fun(updateReesourceType: number, nowTime: number, show: boolean)
---@alias WIDGET_REFRESH_COMBAT_RESOURCE_UPDATE_TIME_HANDLER fun(self: Widget, updateReesourceType: number, nowTime: number, show: boolean)

---Event triggers when the players squad list has refreshed.
---@alias REFRESH_SQUAD_LIST_HANDLER fun(arg?: boolean)
---@alias WIDGET_REFRESH_SQUAD_LIST_HANDLER fun(self: Widget, arg?: boolean)

---Event triggers when the stores purchase count for a limited item changes.
---@alias REFRESH_STORE_MERCHANT_GOOD_LIMIT_PURCHASE_HANDLER fun()
---@alias WIDGET_REFRESH_STORE_MERCHANT_GOOD_LIMIT_PURCHASE_HANDLER fun(self: Widget)

---@TODO:
---@alias RELOAD_CASH_HANDLER fun(money)
---@alias WIDGET_RELOAD_CASH_HANDLER fun(self: Widget, money)

---@TODO:
---@alias REMOVE_BOSS_TELESCOPE_INFO_HANDLER fun(arg)
---@alias WIDGET_REMOVE_BOSS_TELESCOPE_INFO_HANDLER fun(self: Widget, arg)

---@TODO:
---@alias REMOVE_CARRYING_BACKPACK_SLAVE_INFO_HANDLER fun(arg)
---@alias WIDGET_REMOVE_CARRYING_BACKPACK_SLAVE_INFO_HANDLER fun(self: Widget, arg)

---Event triggers when a fish is no longer on fish telescope.
---@alias REMOVE_FISH_SCHOOL_INFO_HANDLER fun(index: number)
---@alias WIDGET_REMOVE_FISH_SCHOOL_INFO_HANDLER fun(self: Widget, index: number)

---Event triggers when the new quest is not within range of the player.
---@alias REMOVE_GIVEN_QUEST_INFO_HANDLER fun(arg1: number, qType: number)
---@alias WIDGET_REMOVE_GIVEN_QUEST_INFO_HANDLER fun(self: Widget, arg1: number, qType: number)

---Event triggers when a quest notifcation is removed.
---@alias REMOVE_NOTIFY_QUEST_INFO_HANDLER fun(qType: number)
---@alias WIDGET_REMOVE_NOTIFY_QUEST_INFO_HANDLER fun(self: Widget, qType: number)

---Event triggers when the player enters/exits an instance and the map needs to remove all pings.
---@alias REMOVE_PING_HANDLER fun()
---@alias WIDGET_REMOVE_PING_HANDLER fun(self: Widget)

---Event triggers when a ship is no longer on the telescope.
---@alias REMOVE_SHIP_TELESCOPE_INFO_HANDLER fun(arg: number)
---@alias WIDGET_REMOVE_SHIP_TELESCOPE_INFO_HANDLER fun(self: Widget, arg: number)

---Event triggers when a transfer vehicle is no longer on the telescope.
---@alias REMOVE_TRANSFER_TELESCOPE_INFO_HANDLER fun(index: number)
---@alias WIDGET_REMOVE_TRANSFER_TELESCOPE_INFO_HANDLER fun(self: Widget, index: number)

---Event triggers when an item has been deleted/removed from the players inventory.
---@alias REMOVED_ITEM_HANDLER fun(itemLinkText: string, itemCount: number, removeState: "destroy"|"consume"|"conversion", itemTaskType: number, tradeOtherName: string)
---@alias WIDGET_REMOVED_ITEM_HANDLER fun(self: Widget, itemLinkText: string, itemCount: number, removeState: "destroy"|"consume"|"conversion", itemTaskType: number, tradeOtherName: string)

---Event triggers when the player renames a portal.
---@alias RENAME_PORTAL_HANDLER fun()
---@alias WIDGET_RENAME_PORTAL_HANDLER fun(self: Widget)

---@TODO:
---@alias RENEW_ITEM_SUCCEEDED_HANDLER fun()
---@alias WIDGET_RENEW_ITEM_SUCCEEDED_HANDLER fun(self: Widget)

---@TODO:
---@alias REPORT_BAD_USER_UPDATE_HANDLER fun()
---@alias WIDGET_REPORT_BAD_USER_UPDATE_HANDLER fun(self: Widget)

---Event triggers when the player begins to report a crime.
---@alias REPORT_CRIME_HANDLER fun(doodadName: string, locationName: string)
---@alias WIDGET_REPORT_CRIME_HANDLER fun(self: Widget, doodadName: string, locationName: string)

---Event triggers when the player thumbs a player.
---@alias REPUTATION_GIVEN_HANDLER fun()
---@alias WIDGET_REPUTATION_GIVEN_HANDLER fun(self: Widget)

---@TODO:
---@alias REQUIRE_DELAY_TO_CHAT_HANDLER fun(channel, delay, remain)
---@alias WIDGET_REQUIRE_DELAY_TO_CHAT_HANDLER fun(self: Widget, channel, delay, remain)

---@TODO:
---@alias REQUIRE_ITEM_TO_CHAT_HANDLER fun(channel)
---@alias WIDGET_REQUIRE_ITEM_TO_CHAT_HANDLER fun(self: Widget, channel)

---@TODO:
---@alias RESET_INGAME_SHOP_MODELVIEW_HANDLER fun()
---@alias WIDGET_RESET_INGAME_SHOP_MODELVIEW_HANDLER fun(self: Widget)

---Event triggers when the player views the residents board type.
---@alias RESIDENT_BOARD_TYPE_HANDLER fun(boardType: RESIDENT_BOARD_TYPE)
---@alias WIDGET_RESIDENT_BOARD_TYPE_HANDLER fun(self: Widget, boardType: RESIDENT_BOARD_TYPE)

---Event triggers when the player views the housing sales tab of a zone.
---@alias RESIDENT_HOUSING_TRADE_LIST_HANDLER fun(infos: ResidentHousing, rownum: number, filter: number, searchword: string, refresh: number)
---@alias WIDGET_RESIDENT_HOUSING_TRADE_LIST_HANDLER fun(self: Widget, infos: ResidentHousing, rownum: number, filter: number, searchword: string, refresh: number)

---Event triggers when the player views the housing residents tab of a zone.
---@alias RESIDENT_MEMBER_LIST_HANDLER fun(total: number, start: number, refresh: number, members: ResidentMember[])
---@alias WIDGET_RESIDENT_MEMBER_LIST_HANDLER fun(self: Widget, total: number, start: number, refresh: number, members: ResidentMember[])

---Event triggers when the players residental contribution points change.
---@alias RESIDENT_SERVICE_POINT_CHANGED_HANDLER fun(zoneGroupName: ZONE_NAME, amount: number, total: number)
---@alias WIDGET_RESIDENT_SERVICE_POINT_CHANGED_HANDLER fun(self: Widget, zoneGroupName: ZONE_NAME, amount: number, total: number)

---Event triggers when the player accesses the task board at resident townhall
---of the zone.
---@alias RESIDENT_TOWNHALL_HANDLER fun(info: ResidentInfo)
---@alias WIDGET_RESIDENT_TOWNHALL_HANDLER fun(self: Widget, info: ResidentInfo)

---Event triggers when the player is viewing the location of land for sale in
---sales tab of the resident townhall for the zone.
---@alias RESIDENT_ZONE_STATE_CHANGE_HANDLER fun()
---@alias WIDGET_RESIDENT_ZONE_STATE_CHANGE_HANDLER fun(self: Widget)

---@TODO: I haven't seen this.
---Event triggers when the players favorite crafts are rolledback.
---@alias ROLLBACK_FAVORITE_CRAFTS_HANDLER fun(datas: Craft[])
---@alias WIDGET_ROLLBACK_FAVORITE_CRAFTS_HANDLER fun(self: Widget, datas: Craft[])

---Event triggers when a jury ruling is has come to an end.
---@alias RULING_CLOSED_HANDLER fun()
---@alias WIDGET_RULING_CLOSED_HANDLER fun(self: Widget)

---Event triggers when a member of the jury votes.
---@alias RULING_STATUS_HANDLER fun(count: number, total: number, sentenceType: SENTENCE_TYPE, sentenceTime: number)
---@alias WIDGET_RULING_STATUS_HANDLER fun(self: Widget, count: number, total: number, sentenceType: SENTENCE_TYPE, sentenceTime: number)

---Event triggers when the player saves a portal.
---@alias SAVE_PORTAL_HANDLER fun()
---@alias WIDGET_SAVE_PORTAL_HANDLER fun(self: Widget)

---Event triggers when the player saves a screenshot.
---@alias SAVE_SCREEN_SHOT_HANDLER fun(path: string)
---@alias WIDGET_SAVE_SCREEN_SHOT_HANDLER fun(self: Widget, path: string)

---Event triggers when a player increases the temper of their equipment and it is broadcasted to the server.
---@alias SCALE_ENCHANT_BROADCAST_HANDLER fun(characterName: string, resultCode: ITEM_ENCHANT_BROAD_CAST_TYPE, itemLink: string, oldScale: string, newScale: string)
---@alias WIDGET_SCALE_ENCHANT_BROADCAST_HANDLER fun(self: Widget, characterName: string, resultCode: ITEM_ENCHANT_BROAD_CAST_TYPE, itemLink: string, oldScale: string, newScale: string)

---Event triggers when the player clicks on an scheduled item (loyalty token) to
---collect it.
---@alias SCHEDULE_ITEM_SENT_HANDLER fun()
---@alias WIDGET_SCHEDULE_ITEM_SENT_HANDLER fun(self: Widget)

---Event triggers every minute to update the schedule.
---@alias SCHEDULE_ITEM_UPDATED_HANDLER fun()
---@alias WIDGET_SCHEDULE_ITEM_UPDATED_HANDLER fun(self: Widget)

---Event triggers when the player view the Recruit/Search page for instances.
---@alias SELECT_SQUAD_LIST_HANDLER fun(data: SelectSquadList)
---@alias WIDGET_SELECT_SQUAD_LIST_HANDLER fun(self: Widget, data: SelectSquadList)

---@TODO:
---@alias SELECTED_INSTANCE_DIFFICULT_HANDLER fun(difficult)
---@alias WIDGET_SELECTED_INSTANCE_DIFFICULT_HANDLER fun(self: Widget, difficult)

---Event triggers when the player sells specialty cargo.
---@alias SELL_SPECIALTY_HANDLER fun(text: string)
---@alias WIDGET_SELL_SPECIALTY_HANDLER fun(self: Widget, text: string)

---Event triggers when the player checks the specialty price information at a
---trade outlet.
---@alias SELL_SPECIALTY_CONTENT_INFO_HANDLER fun(list: SpecialtyInfo)
---@alias WIDGET_SELL_SPECIALTY_CONTENT_INFO_HANDLER fun(self: Widget, list: SpecialtyInfo)

---Event triggers when the player is changing zones in the map.
---@alias SET_DEFAULT_EXPAND_RATIO_HANDLER fun(isSameZone: boolean)
---@alias WIDGET_SET_DEFAULT_EXPAND_RATIO_HANDLER fun(self: Widget, isSameZone: boolean)

---@TODO: the widget it returns has extra properties but unable to get them.
---Event triggers when a effect icon should be visible on the map.
---@alias SET_EFFECT_ICON_VISIBLE_HANDLER fun(isShow: boolean, arg: Widget)
---@alias WIDGET_SET_EFFECT_ICON_VISIBLE_HANDLER fun(self: Widget, isShow: boolean, arg: Widget)

---Event triggers when a player has a mark set or remove on them.
---@alias SET_OVERHEAD_MARK_HANDLER fun(unitId: string, index: number, visible: boolean)
---@alias WIDGET_SET_OVERHEAD_MARK_HANDLER fun(self: Widget, unitId: string, index: number, visible: boolean)

---Event triggers when the player enables/disables ping mode.
---@alias SET_PING_MODE_HANDLER fun(pick: boolean)
---@alias WIDGET_SET_PING_MODE_HANDLER fun(self: Widget, pick: boolean)

---Event triggers when the player enters house preview mode for remodeling a
---building.
---@alias SET_REBUILD_HOUSE_CAMERA_MODE_HANDLER fun()
---@alias WIDGET_SET_REBUILD_HOUSE_CAMERA_MODE_HANDLER fun(self: Widget)

---Event triggers when the player enables/disables ping mode.
---@alias SET_ROADMAP_PICKABLE_HANDLER fun(pick: boolean)
---@alias WIDGET_SET_ROADMAP_PICKABLE_HANDLER fun(self: Widget, pick: boolean)

---Event triggers when the players honor points change during war due to combat.
---@alias SHOW_ACCUMULATE_HONOR_POINT_DURING_HPW_HANDLER fun(zoneName: string, accumulatePoint: number, state?)
---@alias WIDGET_SHOW_ACCUMULATE_HONOR_POINT_DURING_HPW_HANDLER fun(self: Widget, zoneName: string, accumulatePoint: number, state?)

---@TODO:
---@alias SHOW_ADD_TAB_WINDOW_HANDLER fun()
---@alias WIDGET_SHOW_ADD_TAB_WINDOW_HANDLER fun(self: Widget)

---Event triggers when the player receives an item.
---@alias SHOW_ADDED_ITEM_HANDLER fun(item: ItemInfo, count: number, taskType: number)
---@alias WIDGET_SHOW_ADDED_ITEM_HANDLER fun(self: Widget, item: ItemInfo, count: number, taskType: number)

---Event triggers when a banner should appear for content.
---@alias SHOW_BANNER_HANDLER fun(show: boolean, instanceType: number, remainPreNoticeTime?)
---@alias WIDGET_SHOW_BANNER_HANDLER fun(self: Widget, show: boolean, instanceType: number, remainPreNoticeTime?)

---@TODO: returns a widget but unsure which widget as no methods are available.
---Event triggers when the player right clicks on a tab for the context menu.
---@alias SHOW_CHAT_TAB_CONTEXT_HANDLER fun(arg1: Widget, arg2: number)
---@alias WIDGET_SHOW_CHAT_TAB_CONTEXT_HANDLER fun(self: Widget, arg1: Widget, arg2: number)

---Event triggers when the player joins a trial and triggers at each trial state.
---@alias SHOW_CRIME_RECORDS_HANDLER fun(trialState: TRIAL_STATE)
---@alias WIDGET_SHOW_CRIME_RECORDS_HANDLER fun(self: Widget, trialState: TRIAL_STATE)

---@TODO:
---@alias SHOW_DEFENDANT_WAIT_JURY_HANDLER fun()
---@alias WIDGET_SHOW_DEFENDANT_WAIT_JURY_HANDLER fun(self: Widget)

---@TODO:
---@alias SHOW_DEFENDANT_WAIT_TRIAL_HANDLER fun()
---@alias WIDGET_SHOW_DEFENDANT_WAIT_TRIAL_HANDLER fun(self: Widget)

---Event triggers when the player views the raid frame settings.
---@alias SHOW_RAID_FRAME_SETTINGS_HANDLER fun()
---@alias WIDGET_SHOW_RAID_FRAME_SETTINGS_HANDLER fun(self: Widget)

---@TODO: Does not appear to work.
---@alias SHOW_RENAME_EXPEIDITON_HANDLER fun(byItem, triedName, ownerWnd)
---@alias WIDGET_SHOW_RENAME_EXPEIDITON_HANDLER fun(self: Widget, byItem, triedName, ownerWnd)

---Event triggers when a tooltip is shown on the roadmap.
---@alias SHOW_ROADMAP_TOOLTIP_HANDLER fun(tooltipInfo: TooltipInfo[], tooltipCount: number)
---@alias WIDGET_SHOW_ROADMAP_TOOLTIP_HANDLER fun(self: Widget, tooltipInfo: TooltipInfo[], tooltipCount: number)

---Event triggers when the player uses a sextant.
---@alias SHOW_SEXTANT_POS_HANDLER fun(sextantPos: SEXTANT)
---@alias WIDGET_SHOW_SEXTANT_POS_HANDLER fun(self: Widget, sextantPos: SEXTANT)

---Event triggers when the player checks the summon information of the vehicle.
---@alias SHOW_SLAVE_INFO_HANDLER fun()
---@alias WIDGET_SHOW_SLAVE_INFO_HANDLER fun(self: Widget)

---Event triggers when the player has to make a verdict in a trial.
---@alias SHOW_VERDICTS_HANDLER fun(p1: number, p2: number, p3: number, p4: number, p5: number)
---@alias WIDGET_SHOW_VERDICTS_HANDLER fun(self: Widget, p1: number, p2: number, p3: number, p4: number, p5: number)

---Event triggers when the world map has a location to be shown.
---@alias SHOW_WORLDMAP_LOCATION_HANDLER fun(zoneId: ZONE_KEY, x: number, y: number, z: number)
---@alias WIDGET_SHOW_WORLDMAP_LOCATION_HANDLER fun(self: Widget, zoneId: ZONE_KEY, x: number, y: number, z: number)

---Event triggers when a tooltip is shown on the worldmap.
---@alias SHOW_WORLDMAP_TOOLTIP_HANDLER fun(tooltipInfo: TooltipInfo[], tooltipCount: number)
---@alias WIDGET_SHOW_WORLDMAP_TOOLTIP_HANDLER fun(self: Widget, tooltipInfo: TooltipInfo[], tooltipCount: number)

---@TODO:
---@alias SIEGE_APPOINT_RESULT_HANDLER fun(isDefender, faction)
---@alias WIDGET_SIEGE_APPOINT_RESULT_HANDLER fun(self: Widget, isDefender, faction)

---Event triggers when a siege raid is created.
---@alias SIEGE_RAID_REGISTER_LIST_HANDLER fun(zoneGroupType?, bRegistState?, bListUpdate?)
---@alias WIDGET_SIEGE_RAID_REGISTER_LIST_HANDLER fun(self: Widget, zoneGroupType?, bRegistState?, bListUpdate?)

---@TODO:
---@alias SIEGE_RAID_TEAM_INFO_HANDLER fun(info: SiegeRaidInfo)
---@alias WIDGET_SIEGE_RAID_TEAM_INFO_HANDLER fun(self: Widget, info: SiegeRaidInfo)

---@TODO:
---@alias SIEGE_WAR_ENDED_HANDLER fun()
---@alias WIDGET_SIEGE_WAR_ENDED_HANDLER fun(self: Widget)

---Event triggers when the player mounts a siege weapon.
---@alias SIEGEWEAPON_BOUND_HANDLER fun(arg: number)
---@alias WIDGET_SIEGEWEAPON_BOUND_HANDLER fun(self: Widget, arg: number)

---Event triggers when the player unmounts a siege weapon.
---@alias SIEGEWEAPON_UNBOUND_HANDLER fun()
---@alias WIDGET_SIEGEWEAPON_UNBOUND_HANDLER fun(self: Widget)

---@TODO: cancel placing a diary pen
---@alias SIM_DOODAD_MSG_HANDLER fun(code?)
---@alias WIDGET_SIM_DOODAD_MSG_HANDLER fun(self: Widget, code?)

---Event triggers when the player receives a status debuff.
---@alias SKILL_ALERT_ADD_HANDLER fun(statusBuffType: SKILL_ALERT_STATUS_BUFF_TAG, buffId: number, remainTime: number, name: SKILL_ALERT_STATUS_BUFF_NAME)
---@alias WIDGET_SKILL_ALERT_ADD_HANDLER fun(self: Widget, statusBuffType: SKILL_ALERT_STATUS_BUFF_TAG, buffId: number, remainTime: number, name: SKILL_ALERT_STATUS_BUFF_NAME)

---Event triggers when the players status debuff is gone.
---@alias SKILL_ALERT_REMOVE_HANDLER fun(statusBuffType: SKILL_ALERT_STATUS_BUFF_TAG)
---@alias WIDGET_SKILL_ALERT_REMOVE_HANDLER fun(self: Widget, statusBuffType: SKILL_ALERT_STATUS_BUFF_TAG)

---Event triggers when the players skill level changes.
---@alias SKILL_CHANGED_HANDLER fun(text: string, level: number, ability: ABILITY_TYPE_NAME)
---@alias WIDGET_SKILL_CHANGED_HANDLER fun(self: Widget, text: string, level: number, ability: ABILITY_TYPE_NAME)

---Event triggers when the player learns a skill.
---@alias SKILL_LEARNED_HANDLER fun(text: string, skillType: SKILL_TYPE)
---@alias WIDGET_SKILL_LEARNED_HANDLER fun(self: Widget, text: string, skillType: SKILL_TYPE)

---Event triggers when the worldmap has an effect that that needs to be shown.
---@alias SKILL_MAP_EFFECT_HANDLER fun(info: SkillMapEffectInfo)
---@alias WIDGET_SKILL_MAP_EFFECT_HANDLER fun(self: Widget, info: SkillMapEffectInfo)

---Event triggers when the player uses as skill has a message.
---@alias SKILL_MSG_HANDLER fun(resultCode: SKILL_MSG_RESULT_CODE, param: string, skillType: number)
---@alias WIDGET_SKILL_MSG_HANDLER fun(self: Widget, resultCode: SKILL_MSG_RESULT_CODE, param: string, skillType: number)

---Event triggers when the player is trying tos select an item from a supply
---kit.
---@alias SKILL_SELECTIVE_ITEM_HANDLER fun(list: SkillSelectiveItemList, usingSlotIndex: number)
---@alias WIDGET_SKILL_SELECTIVE_ITEM_HANDLER fun(self: Widget, list: SkillSelectiveItemList, usingSlotIndex: number)

---@TODO:
---@alias SKILL_SELECTIVE_ITEM_NOT_AVAILABLE_HANDLER fun()
---@alias WIDGET_SKILL_SELECTIVE_ITEM_NOT_AVAILABLE_HANDLER fun(self: Widget)

---Event triggers when the player attempts to open an item that has a selection.
---@alias SKILL_SELECTIVE_ITEM_READY_STATUS_HANDLER fun(status: boolean)
---@alias WIDGET_SKILL_SELECTIVE_ITEM_READY_STATUS_HANDLER fun(self: Widget, status: boolean)

---Event triggers when the players skill upgrades.
---@alias SKILL_UPGRADED_HANDLER fun(skillType: number, level: number, oldLevel: number)
---@alias WIDGET_SKILL_UPGRADED_HANDLER fun(self: Widget, skillType: number, level: number, oldLevel: number)

---Event triggers when the player resets a skill tree.
---@alias SKILLS_RESET_HANDLER fun(ability: ABILITY_TYPE_NAME)
---@alias WIDGET_SKILLS_RESET_HANDLER fun(self: Widget, ability: ABILITY_TYPE_NAME)

---@TODO:
---@alias SLAVE_SHIP_BOARDING_HANDLER fun()
---@alias WIDGET_SLAVE_SHIP_BOARDING_HANDLER fun(self: Widget)

---@TODO:
---@alias SLAVE_SHIP_UNBOARDING_HANDLER fun()
---@alias WIDGET_SLAVE_SHIP_UNBOARDING_HANDLER fun(self: Widget)

---Event triggers when the player spawns a vehicle.
---@alias SLAVE_SPAWN_HANDLER fun()
---@alias WIDGET_SLAVE_SPAWN_HANDLER fun(self: Widget)

---Event triggers when the player spawns a pet.
---@alias SPAWN_PET_HANDLER fun(mateType: MATE_TYPE)
---@alias WIDGET_SPAWN_PET_HANDLER fun(self: Widget, mateType: MATE_TYPE)

---Event triggers when the player learns to transform.
---@alias SPECIAL_ABILITY_LEARNED_HANDLER fun(recvAbility: number)
---@alias WIDGET_SPECIAL_ABILITY_LEARNED_HANDLER fun(self: Widget, recvAbility: number)

---@TODO:
---@alias SPECIALTY_CONTENT_RECIPE_INFO_HANDLER fun(list)
---@alias WIDGET_SPECIALTY_CONTENT_RECIPE_INFO_HANDLER fun(self: Widget, list)

---Event triggers when the player checks the specialty ratio between two zones.
---@alias SPECIALTY_RATIO_BETWEEN_INFO_HANDLER fun(specialtyRatioTable: SpecialtyRatioInfo[])
---@alias WIDGET_SPECIALTY_RATIO_BETWEEN_INFO_HANDLER fun(self: Widget, specialtyRatioTable: SpecialtyRatioInfo[])

---Event triggers when a local unit starts casting a spell.
---@alias SPELLCAST_START_HANDLER fun(spellName: string, castingTime: number, caster: UNIT_LOCAL, castingUseable: boolean)
---@alias WIDGET_SPELLCAST_START_HANDLER fun(self: Widget, spellName: string, castingTime: number, caster: UNIT_LOCAL, castingUseable: boolean)

---Event triggers when a local unit stops casting a spell.
---@alias SPELLCAST_STOP_HANDLER fun(caster: UNIT_LOCAL)
---@alias WIDGET_SPELLCAST_STOP_HANDLER fun(self: Widget, caster: UNIT_LOCAL)

---Event triggers when a local unit successfully casts a spell.
---@alias SPELLCAST_SUCCEEDED_HANDLER fun(caster: UNIT_LOCAL)
---@alias WIDGET_SPELLCAST_SUCCEEDED_HANDLER fun(self: Widget, caster: UNIT_LOCAL)

---Event triggers when the player interacts with a npc that starts a chat bubble.
---@alias START_CHAT_BUBBLE_HANDLER fun(arg: string)
---@alias WIDGET_START_CHAT_BUBBLE_HANDLER fun(self: Widget, arg: string)

---@TODO:
---@alias START_HERO_ELECTION_PERIOD_HANDLER fun()
---@alias WIDGET_START_HERO_ELECTION_PERIOD_HANDLER fun(self: Widget)

---@TODO:
---@alias START_QUEST_CONTEXT_HANDLER fun(qtype, useDirectingMode, npcId)
---@alias WIDGET_START_QUEST_CONTEXT_HANDLER fun(self: Widget, qtype, useDirectingMode, npcId)

---Event triggers when the player starts a quest with a context doodad.
---@alias START_QUEST_CONTEXT_DOODAD_HANDLER fun(qtype: number, useDirectingMode: boolean, doodadId: number)
---@alias WIDGET_START_QUEST_CONTEXT_DOODAD_HANDLER fun(self: Widget, qtype: number, useDirectingMode: boolean, doodadId: number)

---Event triggers when the player interacts with a npc that gives a quest with context,
---@alias START_QUEST_CONTEXT_NPC_HANDLER fun(qtype: number, useDirectingMode: boolean, npcId: string)
---@alias WIDGET_START_QUEST_CONTEXT_NPC_HANDLER fun(self: Widget, qtype: number, useDirectingMode: boolean, npcId: string)

---Event triggers when the player enters a quest sphere and a quest starts.
---@alias START_QUEST_CONTEXT_SPHERE_HANDLER fun(qtype: number, stype: number)
---@alias WIDGET_START_QUEST_CONTEXT_SPHERE_HANDLER fun(self: Widget, qtype: number, stype: number)

---@TODO:
---@alias START_SENSITIVE_OPERATION_HANDLER fun(remainTime)
---@alias WIDGET_START_SENSITIVE_OPERATION_HANDLER fun(self: Widget, remainTime)

---@TODO:
---@alias START_TALK_QUEST_CONTEXT_HANDLER fun(doodadId)
---@alias WIDGET_START_TALK_QUEST_CONTEXT_HANDLER fun(self: Widget, doodadId)

---Event triggers when the player opens a daily assignment.
---@alias START_TODAY_ASSIGNMENT_HANDLER fun(stepName)
---@alias WIDGET_START_TODAY_ASSIGNMENT_HANDLER fun(self: Widget, stepName)

---@TODO:
---@alias STARTED_DUEL_HANDLER fun()
---@alias WIDGET_STARTED_DUEL_HANDLER fun(self: Widget)

---@TODO:
---@alias STICKED_MSG_HANDLER fun()
---@alias WIDGET_STICKED_MSG_HANDLER fun(self: Widget)

---@TODO:
---@alias STILL_LOADING_HANDLER fun(loadingProgress)
---@alias WIDGET_STILL_LOADING_HANDLER fun(self: Widget, loadingProgress)

---@TODO:
---@alias STORE_ADD_BUY_ITEM_HANDLER fun()
---@alias WIDGET_STORE_ADD_BUY_ITEM_HANDLER fun(self: Widget)

---Event triggers when the player attempts to sell an item a merchant.
---@alias STORE_ADD_SELL_ITEM_HANDLER fun(slotNumber: number)
---@alias WIDGET_STORE_ADD_SELL_ITEM_HANDLER fun(self: Widget, slotNumber: number)

---Event triggers when the player buys an item from merchant.
---@alias STORE_BUY_HANDLER fun(itemLinkText: string, stackCount: number)
---@alias WIDGET_STORE_BUY_HANDLER fun(self: Widget, itemLinkText: string, stackCount: number)

---Event triggers when the player attempts to purchase an item from a store and their bag is full.
---@alias STORE_FULL_HANDLER fun()
---@alias WIDGET_STORE_FULL_HANDLER fun(self: Widget)

---Event triggers when the player has sold an item to a merchant.
---@alias STORE_SELL_HANDLER fun(itemLinkText: string, stackCount: number)
---@alias WIDGET_STORE_SELL_HANDLER fun(self: Widget, itemLinkText: string, stackCount: number)

---Event triggers when the player accesses a merchant or when the merchants sold
---list updates.
---@alias STORE_SOLD_LIST_HANDLER fun(soldItems: ItemInfo[])
---@alias WIDGET_STORE_SOLD_LIST_HANDLER fun(self: Widget, soldItems: ItemInfo[])

---@TODO: Unsure the difference between STORE_FULL and STORE_TRADE_FAILED as different items give different events when the players bag is full.
---Event triggers when the player attempts to purchase an item from a store and their bag is full.
---@alias STORE_TRADE_FAILED_HANDLER fun()
---@alias WIDGET_STORE_TRADE_FAILED_HANDLER fun(self: Widget)

---@TODO:
---@alias SURVEY_FORM_UPDATE_HANDLER fun()
---@alias WIDGET_SURVEY_FORM_UPDATE_HANDLER fun(self: Widget)

---Event triggers when the player changes their enchanting mode.
---@alias SWITCH_ENCHANT_ITEM_MODE_HANDLER fun(mode: ENCHANT_MODE)
---@alias WIDGET_SWITCH_ENCHANT_ITEM_MODE_HANDLER fun(self: Widget, mode: ENCHANT_MODE)

---@TODO:
---@alias SYNC_PORTAL_HANDLER fun()
---@alias WIDGET_SYNC_PORTAL_HANDLER fun(self: Widget)

---Event triggers when the player views the system status of a dungeon instance.
---@alias SYS_INDUN_STAT_UPDATED_HANDLER fun()
---@alias WIDGET_SYS_INDUN_STAT_UPDATED_HANDLER fun(self: Widget)

---Event triggers when there is a system message.
---@alias SYSMSG_HANDLER fun(msg: string)
---@alias WIDGET_SYSMSG_HANDLER fun(self: Widget, msg: string)

---Event triggers when the player targets a new unit.
---@alias TARGET_CHANGED_HANDLER fun(stringId: string|nil, targetType: UNIT_TYPE|nil)
---@alias WIDGET_TARGET_CHANGED_HANDLER fun(self: Widget, stringId: string|nil, targetType: UNIT_TYPE|nil)

---@TODO:
---@alias TARGET_NPC_HEALTH_CHANGED_FOR_DEFENCE_INFO_HANDLER fun(curHp, maxHp)
---@alias WIDGET_TARGET_NPC_HEALTH_CHANGED_FOR_DEFENCE_INFO_HANDLER fun(self: Widget, curHp, maxHp)

---Event triggers when the players mouse is over a target.
---@alias TARGET_OVER_HANDLER fun(targetType: TARGET_TYPE, unitId: string|number)
---@alias WIDGET_TARGET_OVER_HANDLER fun(self: Widget, targetType: TARGET_TYPE, unitId: string|number)

---Event triggers when the players target changes their target.
---@alias TARGET_TO_TARGET_CHANGED_HANDLER fun(stringId: string|nil, targetType: TARGET_TYPE|nil)
---@alias WIDGET_TARGET_TO_TARGET_CHANGED_HANDLER fun(self: Widget, stringId: string|nil, targetType: TARGET_TYPE|nil)

---@TODO:
---@alias TEAM_JOINT_BREAK_HANDLER fun(requester, enable)
---@alias WIDGET_TEAM_JOINT_BREAK_HANDLER fun(self: Widget, requester, enable)

---Event triggers when a co raid splits.
---@alias TEAM_JOINT_BROKEN_HANDLER fun()
---@alias WIDGET_TEAM_JOINT_BROKEN_HANDLER fun(self: Widget)

---@TODO:
---@alias TEAM_JOINT_CHAT_HANDLER fun()
---@alias WIDGET_TEAM_JOINT_CHAT_HANDLER fun(self: Widget)

---@TODO:
---@alias TEAM_JOINT_RESPONSE_HANDLER fun()
---@alias WIDGET_TEAM_JOINT_RESPONSE_HANDLER fun(self: Widget)

---@TODO:
---@alias TEAM_JOINT_TARGET_HANDLER fun(isJointable)
---@alias WIDGET_TEAM_JOINT_TARGET_HANDLER fun(self: Widget, isJointable)

---Event triggers when a raid joins another raid join.
---@alias TEAM_JOINTED_HANDLER fun()
---@alias WIDGET_TEAM_JOINTED_HANDLER fun(self: Widget)

---Event triggers when a player in the team is disconnected.
---@alias TEAM_MEMBER_DISCONNECTED_HANDLER fun(isParty: boolean, jointOrder: number, stringId: string, memberIndex: number)
---@alias WIDGET_TEAM_MEMBER_DISCONNECTED_HANDLER fun(self: Widget, isParty: boolean, jointOrder: number, stringId: string, memberIndex: number)

---Event triggers when a team members unit id changes.
---@alias TEAM_MEMBER_UNIT_ID_CHANGED_HANDLER fun(oldStringId: string, stringId: string)
---@alias WIDGET_TEAM_MEMBER_UNIT_ID_CHANGED_HANDLER fun(self: Widget, oldStringId: string, stringId: string)

---Event triggers when the players team changes.
---@alias TEAM_MEMBERS_CHANGED_HANDLER fun(reason: TEAM_CHANGE_REASON, value: TeamMember)
---@alias WIDGET_TEAM_MEMBERS_CHANGED_HANDLER fun(self: Widget, reason: TEAM_CHANGE_REASON, value: TeamMember)

---Event triggers when a player changes their team role.
---@alias TEAM_ROLE_CHANGED_HANDLER fun(jointOrder: number, memberIndex: number, role: TEAM_ROLE)
---@alias WIDGET_TEAM_ROLE_CHANGED_HANDLER fun(self: Widget, jointOrder: number, memberIndex: number, role: TEAM_ROLE)

---@TODO:
---@alias TEAM_SUMMON_SUGGEST_HANDLER fun()
---@alias WIDGET_TEAM_SUMMON_SUGGEST_HANDLER fun(self: Widget)

---@TODO:
---@alias TIME_MESSAGE_HANDLER fun(key, timeTable)
---@alias WIDGET_TIME_MESSAGE_HANDLER fun(self: Widget, key, timeTable)


---Event triggers when the player attempts to use a race change elixir.
---@alias TOGGLE_CHANGE_VISUAL_RACE_HANDLER fun(data: ChangeVisualRace)
---@alias WIDGET_TOGGLE_CHANGE_VISUAL_RACE_HANDLER fun(self: Widget, data: ChangeVisualRace)

---@TODO:
---@alias TOGGLE_COMMUNITY_HANDLER fun()
---@alias WIDGET_TOGGLE_COMMUNITY_HANDLER fun(self: Widget)

---@TODO:
---@alias TOGGLE_CRAFT_HANDLER fun()
---@alias WIDGET_TOGGLE_CRAFT_HANDLER fun(self: Widget)

---@TODO:
---@alias TOGGLE_FACTION_HANDLER fun()
---@alias WIDGET_TOGGLE_FACTION_HANDLER fun(self: Widget)

---Event triggers when the player toggles follow on another player.
---@alias TOGGLE_FOLLOW_HANDLER fun(on: boolean)
---@alias WIDGET_TOGGLE_FOLLOW_HANDLER fun(self: Widget, on: boolean)

---@TODO:
---@alias TOGGLE_IN_GAME_NOTICE_HANDLER fun(url)
---@alias WIDGET_TOGGLE_IN_GAME_NOTICE_HANDLER fun(self: Widget, url)

---Event triggers when the players party is shown or hidden.
---@alias TOGGLE_PARTY_FRAME_HANDLER fun(show: boolean)
---@alias WIDGET_TOGGLE_PARTY_FRAME_HANDLER fun(self: Widget, show: boolean)

---@TODO:
---@alias TOGGLE_PET_MANAGE_HANDLER fun()
---@alias WIDGET_TOGGLE_PET_MANAGE_HANDLER fun(self: Widget)

---Event triggers when the player uses a teleport book.
---@alias TOGGLE_PORTAL_DIALOG_HANDLER fun(addPortal: boolean, skillTypeNumber: number, itemTypeNumber: number)
---@alias WIDGET_TOGGLE_PORTAL_DIALOG_HANDLER fun(self: Widget, addPortal: boolean, skillTypeNumber: number, itemTypeNumber: number)

---Event triggers when the first raid frame is shown or hidden.
---@alias TOGGLE_RAID_FRAME_HANDLER fun(show: boolean)
---@alias WIDGET_TOGGLE_RAID_FRAME_HANDLER fun(self: Widget, show: boolean)

---@FIXME: Both raids parties get shown or hidden regardless of which raid party your trying to change.
---Event triggers when a party in the raid is shown or hidden.
---@alias TOGGLE_RAID_FRAME_PARTY_HANDLER fun(party: number, visible: boolean)
---@alias WIDGET_TOGGLE_RAID_FRAME_PARTY_HANDLER fun(self: Widget, party: number, visible: boolean)

---Event triggers when the second raid frame is shown or hidden.
---@alias TOGGLE_RAID_FRAME2_HANDLER fun()
---@alias WIDGET_TOGGLE_RAID_FRAME2_HANDLER fun(self: Widget)

---Event triggers when the roadmap size is changed.
---@alias TOGGLE_ROADMAP_HANDLER fun()
---@alias WIDGET_TOGGLE_ROADMAP_HANDLER fun(self: Widget)

---Event triggers when the player toggles walk.
---@alias TOGGLE_WALK_HANDLER fun(speed: number)
---@alias WIDGET_TOGGLE_WALK_HANDLER fun(self: Widget, speed: number)

---Event triggers when a tower defense information updates.
---@alias TOWER_DEF_INFO_UPDATE_HANDLER fun()
---@alias WIDGET_TOWER_DEF_INFO_UPDATE_HANDLER fun(self: Widget)

---Event triggers when a tower defense message occurs.
---@alias TOWER_DEF_MSG_HANDLER fun(towerDefInfo: TowerDefInfo)
---@alias WIDGET_TOWER_DEF_MSG_HANDLER fun(self: Widget, towerDefInfo: TowerDefInfo)

---@TODO:
---@alias TRADE_CAN_START_HANDLER fun(unitIdStr)
---@alias WIDGET_TRADE_CAN_START_HANDLER fun(self: Widget, unitIdStr)

---@TODO:
---@alias TRADE_CANCELED_HANDLER fun()
---@alias WIDGET_TRADE_CANCELED_HANDLER fun(self: Widget)

---Event triggers when the player puts an item up for trade.
---@alias TRADE_ITEM_PUTUP_HANDLER fun(inventoryIdx: number, amount: number)
---@alias WIDGET_TRADE_ITEM_PUTUP_HANDLER fun(self: Widget, inventoryIdx: number, amount: number)

---@TODO:
---@alias TRADE_ITEM_TOOKDOWN_HANDLER fun(inventoryIdx)
---@alias WIDGET_TRADE_ITEM_TOOKDOWN_HANDLER fun(self: Widget, inventoryIdx)

---@TODO:
---@alias TRADE_ITEM_UPDATED_HANDLER fun()
---@alias WIDGET_TRADE_ITEM_UPDATED_HANDLER fun(self: Widget)

---Event triggers when the player locks their trade.
---@alias TRADE_LOCKED_HANDLER fun()
---@alias WIDGET_TRADE_LOCKED_HANDLER fun(self: Widget)

---Event triggers when a trade has been made.
---@alias TRADE_MADE_HANDLER fun()
---@alias WIDGET_TRADE_MADE_HANDLER fun(self: Widget)

---Event triggers when the player puts up money on their trade.
---@alias TRADE_MONEY_PUTUP_HANDLER fun(money: string)
---@alias WIDGET_TRADE_MONEY_PUTUP_HANDLER fun(self: Widget, money: string)

---Event triggers when the player confirms the trade.
---@alias TRADE_OK_HANDLER fun()
---@alias WIDGET_TRADE_OK_HANDLER fun(self: Widget)

---@TODO:
---@alias TRADE_OTHER_ITEM_PUTUP_HANDLER fun(otherIdx, type, stackCount, tooltip)
---@alias WIDGET_TRADE_OTHER_ITEM_PUTUP_HANDLER fun(self: Widget, otherIdx, type, stackCount, tooltip)

---@TODO:
---@alias TRADE_OTHER_ITEM_TOOKDOWN_HANDLER fun(otherIdx)
---@alias WIDGET_TRADE_OTHER_ITEM_TOOKDOWN_HANDLER fun(self: Widget, otherIdx)

---Event triggers when the other player being traded with locks their trade.
---@alias TRADE_OTHER_LOCKED_HANDLER fun()
---@alias WIDGET_TRADE_OTHER_LOCKED_HANDLER fun(self: Widget)

---@TODO:
---@alias TRADE_OTHER_MONEY_PUTUP_HANDLER fun(money)
---@alias WIDGET_TRADE_OTHER_MONEY_PUTUP_HANDLER fun(self: Widget, money)

---Event triggers when the other player being traded with confirms their trade.
---@alias TRADE_OTHER_OK_HANDLER fun()
---@alias WIDGET_TRADE_OTHER_OK_HANDLER fun(self: Widget)

---Event triggers when the player starts trading with another player.
---@alias TRADE_STARTED_HANDLER fun(targetName: string)
---@alias WIDGET_TRADE_STARTED_HANDLER fun(self: Widget, targetName: string)

---@TODO:
---@alias TRADE_UI_TOGGLE_HANDLER fun()
---@alias WIDGET_TRADE_UI_TOGGLE_HANDLER fun(self: Widget)

---@TODO:
---@alias TRADE_UNLOCKED_HANDLER fun()
---@alias WIDGET_TRADE_UNLOCKED_HANDLER fun(self: Widget)

---Event triggers when a combat resource has been transformed. (e.g. When Vitalism Prayer reaches max stacks it converts into Divine Response.)
---@alias TRANSFORM_COMBAT_RESOURCE_HANDLER fun(groupType: ABILITY_TYPE)
---@alias WIDGET_TRANSFORM_COMBAT_RESOURCE_HANDLER fun(self: Widget, groupType: ABILITY_TYPE)

---@TODO:
---@alias TRIAL_CANCELED_HANDLER fun()
---@alias WIDGET_TRIAL_CANCELED_HANDLER fun(self: Widget)

---Event triggers when a trial is over.
---@alias TRIAL_CLOSED_HANDLER fun()
---@alias WIDGET_TRIAL_CLOSED_HANDLER fun(self: Widget)

---@TODO: are there other triggers?
---Event triggers when the player attempts to join a trial that has already begun.
---@alias TRIAL_MESSAGE_HANDLER fun(text: string)
---@alias WIDGET_TRIAL_MESSAGE_HANDLER fun(self: Widget, text: string)

---Event triggers when the trial changes state,
---@alias TRIAL_STATUS_HANDLER fun(state: TRIAL_STATE, juryCount: number, remainTime: number, arg: number)
---@alias WIDGET_TRIAL_STATUS_HANDLER fun(self: Widget, state: TRIAL_STATE, juryCount: number, remainTime: number, arg: number)

---Event triggers every second a player is in a trial.
---@alias TRIAL_TIMER_HANDLER fun(state: TRIAL_STATE, remainTable: Time)
---@alias WIDGET_TRIAL_TIMER_HANDLER fun(self: Widget, state: TRIAL_STATE, remainTable: Time)

---Event triggers when an item that needs to be rolled on drops.
---@alias TRY_LOOT_DICE_HANDLER fun(key: number, timeStamp: number, itemLink: string)
---@alias WIDGET_TRY_LOOT_DICE_HANDLER fun(self: Widget, key: number, timeStamp: number, itemLink: string)

---Event triggers when an tutorial event occurs.
---@alias TUTORIAL_EVENT_HANDLER fun(id: number, info: TutorialInfo[])
---@alias WIDGET_TUTORIAL_EVENT_HANDLER fun(self: Widget, id: number, info: TutorialInfo[])

---Event triggers when the player disables pop-up tutorial windows from their
---options window.
---@alias TUTORIAL_HIDE_FROM_OPTION_HANDLER fun()
---@alias WIDGET_TUTORIAL_HIDE_FROM_OPTION_HANDLER fun(self: Widget)

---Event triggers when a ucc imprint has succeeded.
---@alias UCC_IMPRINT_SUCCEEDED_HANDLER fun()
---@alias WIDGET_UCC_IMPRINT_SUCCEEDED_HANDLER fun(self: Widget)

---Event triggers when `ADDON:FireAddon` has been called.
---@alias UI_ADDON_HANDLER fun()
---@alias WIDGET_UI_ADDON_HANDLER fun(self: Widget)

---Event triggers when a ui permission update has occured.
---@alias UI_PERMISSION_UPDATE_HANDLER fun()
---@alias WIDGET_UI_PERMISSION_UPDATE_HANDLER fun(self: Widget)

---Event triggers when the players UI reloads. (Toggling Vertical Sync will cause a UI reload)
---@alias UI_RELOADED_HANDLER fun()
---@alias WIDGET_UI_RELOADED_HANDLER fun(self: Widget)

---Event triggers when the player attempts to place land while they already have land that is unbuilt.
---@alias UNFINISHED_BUILD_HOUSE_HANDLER fun(message: string)
---@alias WIDGET_UNFINISHED_BUILD_HOUSE_HANDLER fun(self: Widget, message: string)

---Event triggers when the combat state of a unit changes.
---@alias UNIT_COMBAT_STATE_CHANGED_HANDLER fun(combat: boolean, unitId: string)
---@alias WIDGET_UNIT_COMBAT_STATE_CHANGED_HANDLER fun(self: Widget, combat: boolean, unitId: string)

---Event triggers when a player dies.
---@alias UNIT_DEAD_HANDLER fun(stringId: string, lossExp: number, lossDurabilityRatio: number)
---@alias WIDGET_UNIT_DEAD_HANDLER fun(self: Widget, stringId: string, lossExp: number, lossDurabilityRatio: number)

---Event triggers when a player dies.
---@alias UNIT_DEAD_NOTICE_HANDLER fun(name: string)
---@alias WIDGET_UNIT_DEAD_NOTICE_HANDLER fun(self: Widget, name: string)

---Event triggers when a unit enters the players sight.
---@alias UNIT_ENTERED_SIGHT_HANDLER fun(unitId: number, unitType: UNIT_TYPE, curHp: string, maxHp: string)
---@alias WIDGET_UNIT_ENTERED_SIGHT_HANDLER fun(self: Widget, unitId: number, unitType: UNIT_TYPE, curHp: string, maxHp: string)

---Event triggers when the player changes their gear.
---@alias UNIT_EQUIPMENT_CHANGED_HANDLER fun(equipSlot: EQUIPMENT_SLOT)
---@alias WIDGET_UNIT_EQUIPMENT_CHANGED_HANDLER fun(self: Widget, equipSlot: EQUIPMENT_SLOT)

---Event triggers when a player is on a kill streak.
---@alias UNIT_KILL_STREAK_HANDLER fun(killStreakInfo: KillStreakInfo)
---@alias WIDGET_UNIT_KILL_STREAK_HANDLER fun(self: Widget, killStreakInfo: KillStreakInfo)

---Event triggers when a unit leaves the players sight.
---@alias UNIT_LEAVED_SIGHT_HANDLER fun(unitId: number, unitType: UNIT_TYPE)
---@alias WIDGET_UNIT_LEAVED_SIGHT_HANDLER fun(self: Widget, unitId: number, unitType: UNIT_TYPE)

---Event triggers when a units name changes.
---@alias UNIT_NAME_CHANGED_HANDLER fun(unitId: string)
---@alias WIDGET_UNIT_NAME_CHANGED_HANDLER fun(self: Widget, unitId: string)

---Event triggers when the players pet equipment changes.
---@alias UNIT_NPC_EQUIPMENT_CHANGED_HANDLER fun(arg: EQUIPMENT_SLOT)
---@alias WIDGET_UNIT_NPC_EQUIPMENT_CHANGED_HANDLER fun(self: Widget, arg: EQUIPMENT_SLOT)

---Event triggers when a player changes their class.
---@alias UNITFRAME_ABILITY_UPDATE_HANDLER fun(unitId: string)
---@alias WIDGET_UNITFRAME_ABILITY_UPDATE_HANDLER fun(self: Widget, unitId: string)

---Event triggers when the player unmounts a pet.
---@alias UNMOUNT_PET_HANDLER fun(mateType: MATE_TYPE, isMyPet: boolean)
---@alias WIDGET_UNMOUNT_PET_HANDLER fun(self: Widget, mateType: MATE_TYPE, isMyPet: boolean)

---Event triggers when the player applies updates to their hotkey bindings.
---@alias UPDATE_BINDINGS_HANDLER fun()
---@alias WIDGET_UPDATE_BINDINGS_HANDLER fun(self: Widget)

---Event triggers when the player starts and stops using a boss telescope.
---@alias UPDATE_BOSS_TELESCOPE_AREA_HANDLER fun()
---@alias WIDGET_UPDATE_BOSS_TELESCOPE_AREA_HANDLER fun(self: Widget)

---Event triggers every 500ms while the player is using a boss telescope.
---@alias UPDATE_BOSS_TELESCOPE_INFO_HANDLER fun()
---@alias WIDGET_UPDATE_BOSS_TELESCOPE_INFO_HANDLER fun(self: Widget)

---Event triggers when the bot check window info for the player updates.
---@alias UPDATE_BOT_CHECK_INFO_HANDLER fun(totalTime: number, remainTime: number, count: number, question: string)
---@alias WIDGET_UPDATE_BOT_CHECK_INFO_HANDLER fun(self: Widget, totalTime: number, remainTime: number, count: number, question: string)

---@TODO:
---@alias UPDATE_BUBBLE_HANDLER fun()
---@alias WIDGET_UPDATE_BUBBLE_HANDLER fun(self: Widget)

---@TODO:
---@alias UPDATE_CARRYING_BACKPACK_SLAVE_INFO_HANDLER fun()
---@alias WIDGET_UPDATE_CARRYING_BACKPACK_SLAVE_INFO_HANDLER fun(self: Widget)

---Event triggers when the player starts/cancels the race transformation.
---@alias UPDATE_CHANGE_VISUAL_RACE_WND_HANDLER fun(fired: boolean)
---@alias WIDGET_UPDATE_CHANGE_VISUAL_RACE_WND_HANDLER fun(self: Widget, fired: boolean)

---Event triggers when the player purchases a chronicle quest.
---@alias UPDATE_CHRONICLE_INFO_HANDLER fun(info: ChronicleInfo)
---@alias WIDGET_UPDATE_CHRONICLE_INFO_HANDLER fun(self: Widget, info: ChronicleInfo)

---Event triggers when the players chronicle quest notification tab updates.
---@alias UPDATE_CHRONICLE_NOTIFIER_HANDLER fun(init: boolean, mainKey: number)
---@alias WIDGET_UPDATE_CHRONICLE_NOTIFIER_HANDLER fun(self: Widget, init: boolean, mainKey: number)

---@TODO:
---@alias UPDATE_CLIENT_DRIVEN_INFO_HANDLER fun(sceneInfo)
---@alias WIDGET_UPDATE_CLIENT_DRIVEN_INFO_HANDLER fun(self: Widget, sceneInfo)

---Event triggers when the map needs to update the completed quest information.
---@alias UPDATE_COMPLETED_QUEST_INFO_HANDLER fun()
---@alias WIDGET_UPDATE_COMPLETED_QUEST_INFO_HANDLER fun(self: Widget)

---@TODO:
---@alias UPDATE_CONTENT_ROSTER_WINDOW_HANDLER fun(updateInfo)
---@alias WIDGET_UPDATE_CONTENT_ROSTER_WINDOW_HANDLER fun(self: Widget, updateInfo)

---Event triggers when the player dies and when the player respawns.
---@alias UPDATE_CORPSE_INFO_HANDLER fun()
---@alias WIDGET_UPDATE_CORPSE_INFO_HANDLER fun(self: Widget)

---Event triggers when the player is attempting to list a requested item.
---@alias UPDATE_CRAFT_ORDER_ITEM_FEE_HANDLER fun(info: CraftOrderItemFee)
---@alias WIDGET_UPDATE_CRAFT_ORDER_ITEM_FEE_HANDLER fun(self: Widget, info: CraftOrderItemFee)

---Event triggers when the request slot updates.
---@alias UPDATE_CRAFT_ORDER_ITEM_SLOT_HANDLER fun(info?: CraftOrderItemSlot)
---@alias WIDGET_UPDATE_CRAFT_ORDER_ITEM_SLOT_HANDLER fun(self: Widget, info?: CraftOrderItemSlot)

---Event triggers when the player starts to make, or cancels, a request for a
---craft order.
---@alias UPDATE_CRAFT_ORDER_SKILL_HANDLER fun(key: string, fired: boolean)
---@alias WIDGET_UPDATE_CRAFT_ORDER_SKILL_HANDLER fun(self: Widget, key: string, fired: boolean)

---@TODO:
---@alias UPDATE_DEFENCE_INFO_HANDLER fun(info)
---@alias WIDGET_UPDATE_DEFENCE_INFO_HANDLER fun(self: Widget, info)

---Event triggers whenever there is a siege information update.
---@alias UPDATE_DOMINION_INFO_HANDLER fun()
---@alias WIDGET_UPDATE_DOMINION_INFO_HANDLER fun(self: Widget)

---Event triggers when the player opens the map.
---@alias UPDATE_DOODAD_INFO_HANDLER fun()
---@alias WIDGET_UPDATE_DOODAD_INFO_HANDLER fun(self: Widget)

---Event triggers when the players durability status of their gear changes. (e.g., Item is nearly broken)
---@alias UPDATE_DURABILITY_STATUS_HANDLER fun(added: boolean, removed: boolean)
---@alias WIDGET_UPDATE_DURABILITY_STATUS_HANDLER fun(self: Widget, added: boolean, removed: boolean)

---Event triggers when the player attempts to dye an item and the dye preview window opens.
---@alias UPDATE_DYEING_EXCUTABLE_HANDLER fun(executeable: boolean)
---@alias WIDGET_UPDATE_DYEING_EXCUTABLE_HANDLER fun(self: Widget, executeable: boolean)

---Event triggers when an item is about to be enchanted and when at the start of the item being enchanted.
---@alias UPDATE_ENCHANT_ITEM_MODE_HANDLER fun(isExcutable: boolean, isLock: boolean)
---@alias WIDGET_UPDATE_ENCHANT_ITEM_MODE_HANDLER fun(self: Widget, isExcutable: boolean, isLock: boolean)

---Event triggers when the players guild house portal list changes.
---@alias UPDATE_EXPEDITION_PORTAL_HANDLER fun()
---@alias WIDGET_UPDATE_EXPEDITION_PORTAL_HANDLER fun(self: Widget)

---Event triggers when the players guild assignments reset.
---@alias UPDATE_EXPEDITION_TODAY_ASSIGNMENT_RESET_COUNT_HANDLER fun(count: number)
---@alias WIDGET_UPDATE_EXPEDITION_TODAY_ASSIGNMENT_RESET_COUNT_HANDLER fun(self: Widget, count: number)

---Event triggers when a hero activates a hero respawn spot.
---@alias UPDATE_FACTION_REZ_DISTRICT_HANDLER fun()
---@alias WIDGET_UPDATE_FACTION_REZ_DISTRICT_HANDLER fun(self: Widget)

---Event triggers when the player starts and stops using a ship fish telescope.
---@alias UPDATE_FISH_SCHOOL_AREA_HANDLER fun()
---@alias WIDGET_UPDATE_FISH_SCHOOL_AREA_HANDLER fun(self: Widget)

---Event triggers every 500ms while the player is using a ship fish telescope.
---@alias UPDATE_FISH_SCHOOL_INFO_HANDLER fun()
---@alias WIDGET_UPDATE_FISH_SCHOOL_INFO_HANDLER fun(self: Widget)

---Event triggers when the open chest (gold/silver/copper crate) window receives
---a update when the player selects a crate or a key and when each crate is
---opened.
---@alias UPDATE_GACHA_LOOT_MODE_HANDLER fun(isExcutable: boolean, isLock: boolean)
---@alias WIDGET_UPDATE_GACHA_LOOT_MODE_HANDLER fun(self: Widget, isExcutable: boolean, isLock: boolean)

---Event triggers when the players given quest information updates.
---@alias UPDATE_GIVEN_QUEST_STATIC_INFO_HANDLER fun()
---@alias WIDGET_UPDATE_GIVEN_QUEST_STATIC_INFO_HANDLER fun(self: Widget)

---Event triggers when the hero election condition has updated.
---@alias UPDATE_HERO_ELECTION_CONDITION_HANDLER fun()
---@alias WIDGET_UPDATE_HERO_ELECTION_CONDITION_HANDLER fun(self: Widget)

---Event triggers when the housing information for the map updates.
---@alias UPDATE_HOUSING_INFO_HANDLER fun()
---@alias WIDGET_UPDATE_HOUSING_INFO_HANDLER fun(self: Widget)

---Event triggers when a housing tooltip updates.
---@alias UPDATE_HOUSING_TOOLTIP_HANDLER fun(unitId: string)
---@alias WIDGET_UPDATE_HOUSING_TOOLTIP_HANDLER fun(self: Widget, unitId: string)

---Event triggers when the players ability to use the beautyshop changes.
---@alias UPDATE_INGAME_BEAUTYSHOP_STATUS_HANDLER fun()
---@alias WIDGET_UPDATE_INGAME_BEAUTYSHOP_STATUS_HANDLER fun(self: Widget)

---Event triggers when the in game shop receives an event.
---@alias UPDATE_INGAME_SHOP_HANDLER fun(updateType: INGAME_SHOP_TYPE, page?: number, totalItems?: number, arg4?)
---@alias WIDGET_UPDATE_INGAME_SHOP_HANDLER fun(self: Widget, updateType: INGAME_SHOP_TYPE, page?: number, totalItems?: number, arg4?)

---Event triggers when the in game shops view changes.
---@alias UPDATE_INGAME_SHOP_VIEW_HANDLER fun(viewType: INGAME_SHOP_VIEW_TYPE, mode: INGAME_SHOP_VIEW_MODE)
---@alias WIDGET_UPDATE_INGAME_SHOP_VIEW_HANDLER fun(self: Widget, viewType: INGAME_SHOP_VIEW_TYPE, mode: INGAME_SHOP_VIEW_MODE)

---Event triggers when a instance invitation goes out and each time a player joins.
---@alias UPDATE_INSTANT_GAME_INVITATION_COUNT_HANDLER fun(accept: number, totalSize: number)
---@alias WIDGET_UPDATE_INSTANT_GAME_INVITATION_COUNT_HANDLER fun(self: Widget, accept: number, totalSize: number)

---@TODO:
---@alias UPDATE_INSTANT_GAME_KILLSTREAK_HANDLER fun(count)
---@alias WIDGET_UPDATE_INSTANT_GAME_KILLSTREAK_HANDLER fun(self: Widget, count)

---Event triggers when the player kills another player in a instance.
---@alias UPDATE_INSTANT_GAME_KILLSTREAK_COUNT_HANDLER fun(count: number)
---@alias WIDGET_UPDATE_INSTANT_GAME_KILLSTREAK_COUNT_HANDLER fun(self: Widget, count: number)

---Event triggers when an instance score updates.
---@alias UPDATE_INSTANT_GAME_SCORES_HANDLER fun()
---@alias WIDGET_UPDATE_INSTANT_GAME_SCORES_HANDLER fun(self: Widget)

---Event triggers when the player queues an instance.
---@alias UPDATE_INSTANT_GAME_STATE_HANDLER fun()
---@alias WIDGET_UPDATE_INSTANT_GAME_STATE_HANDLER fun(self: Widget)

---Event triggers when the instance target npc information changes. (e.g., Halcyona War Relics)
---@alias UPDATE_INSTANT_GAME_TARGET_NPC_INFO_HANDLER fun()
---@alias WIDGET_UPDATE_INSTANT_GAME_TARGET_NPC_INFO_HANDLER fun(self: Widget)

---Event triggers every 500ms while the player is inside an instance.
---@alias UPDATE_INSTANT_GAME_TIME_HANDLER fun()
---@alias WIDGET_UPDATE_INSTANT_GAME_TIME_HANDLER fun(self: Widget)

---Event triggers when the player opens/closes the item infusion window.
---@alias UPDATE_ITEM_LOOK_CONVERT_MODE_HANDLER fun()
---@alias WIDGET_UPDATE_ITEM_LOOK_CONVERT_MODE_HANDLER fun(self: Widget)

---Event triggers when a montiored npc updates for the map.
---@alias UPDATE_MONITOR_NPC_HANDLER fun()
---@alias WIDGET_UPDATE_MONITOR_NPC_HANDLER fun(self: Widget)

---Event triggers every 5 seconds to update the players slave (vehicle) position information.
---@alias UPDATE_MY_SLAVE_POS_INFO_HANDLER fun()
---@alias WIDGET_UPDATE_MY_SLAVE_POS_INFO_HANDLER fun(self: Widget)

---Event triggers when npc information for the map has changed.
---@alias UPDATE_NPC_INFO_HANDLER fun()
---@alias WIDGET_UPDATE_NPC_INFO_HANDLER fun(self: Widget)

---Event triggers every second while the npc info is broadcasting for the player. (e.g. Hereafter Rebellion Win Condition/Progress)
---@alias UPDATE_INDUN_PLAYING_INFO_BROADCASTING_HANDLER fun(info: NpcBroadcastingInfo[])
---@alias WIDGET_UPDATE_INDUN_PLAYING_INFO_BROADCASTING_HANDLER fun(self: Widget, info: NpcBroadcastingInfo[])

---Event triggers when the player opens the settings window and triggers when
---the player updates a setting.
---@alias UPDATE_OPTION_BINDINGS_HANDLER fun(overrided?: boolean, oldAction?: string, newAction?: string|nil)
---@alias WIDGET_UPDATE_OPTION_BINDINGS_HANDLER fun(self: Widget, overrided?: boolean, oldAction?: string, newAction?: string|nil)

---Event triggers when the map has a ping update.
---@alias UPDATE_PING_INFO_HANDLER fun()
---@alias WIDGET_UPDATE_PING_INFO_HANDLER fun(self: Widget)

---Event triggers when the player is attemping to revert a crafting order.
---@alias UPDATE_RESTORE_CRAFT_ORDER_ITEM_MATERIAL_HANDLER fun(infos: ItemInfo)
---@alias WIDGET_UPDATE_RESTORE_CRAFT_ORDER_ITEM_MATERIAL_HANDLER fun(self: Widget, infos: ItemInfo)

---Event triggers when the player is attempting to revert a crafting order.
---@alias UPDATE_RESTORE_CRAFT_ORDER_ITEM_SLOT_HANDLER fun(info: CraftOrderInfo|nil)
---@alias WIDGET_UPDATE_RESTORE_CRAFT_ORDER_ITEM_SLOT_HANDLER fun(self: Widget, info: CraftOrderInfo|nil)

---Event triggers when the player returns to the game after a month. https://na.archerage.to/forums/threads/returning-player-pack.10482/
---@alias UPDATE_RETURN_ACCOUNT_STATUS_HANDLER fun(status: `1`|`2`|`3`)
---@alias WIDGET_UPDATE_RETURN_ACCOUNT_STATUS_HANDLER fun(self: Widget, status: `1`|`2`|`3`)

---Event triggers when the player changes zones.
---@alias UPDATE_ROADMAP_ANCHOR_HANDLER fun(file: string)
---@alias WIDGET_UPDATE_ROADMAP_ANCHOR_HANDLER fun(self: Widget, file: string)

---@TODO:
---@alias UPDATE_ROSTER_MEMBER_INFO_HANDLER fun(rosterId)
---@alias WIDGET_UPDATE_ROSTER_MEMBER_INFO_HANDLER fun(self: Widget, rosterId)

---@TODO:
---@alias UPDATE_ROUTE_MAP_HANDLER fun()
---@alias WIDGET_UPDATE_ROUTE_MAP_HANDLER fun(self: Widget)

---Event triggers every 500ms while the player is using a ship telescope.
---@alias UPDATE_SHIP_TELESCOPE_INFO_HANDLER fun()
---@alias WIDGET_UPDATE_SHIP_TELESCOPE_INFO_HANDLER fun(self: Widget)

---@TODO:
---@alias UPDATE_SHORTCUT_SKILLS_HANDLER fun()
---@alias WIDGET_UPDATE_SHORTCUT_SKILLS_HANDLER fun(self: Widget)

---Event triggers when the siege score changes.
---@alias UPDATE_SIEGE_SCORE_HANDLER fun(offensePoint: number, outlawPoint: number)
---@alias WIDGET_UPDATE_SIEGE_SCORE_HANDLER fun(self: Widget, offensePoint: number, outlawPoint: number)

---Event triggers when the player learns a new emote.
---@alias UPDATE_SKILL_ACTIVE_TYPE_HANDLER fun()
---@alias WIDGET_UPDATE_SKILL_ACTIVE_TYPE_HANDLER fun(self: Widget)

---Event triggers when the players slave equipment slot updates.
---@alias UPDATE_SLAVE_EQUIPMENT_SLOT_HANDLER fun(reload: boolean)
---@alias WIDGET_UPDATE_SLAVE_EQUIPMENT_SLOT_HANDLER fun(self: Widget, reload: boolean)

---Event triggers when the player opens the sell cargo window. Event triggers when `X2Store:GetZoneSpecialtyRatio` is used.
---@alias UPDATE_SPECIALTY_RATIO_HANDLER fun(sellItem: SellSpecialtyInfo)
---@alias WIDGET_UPDATE_SPECIALTY_RATIO_HANDLER fun(self: Widget, sellItem: SellSpecialtyInfo)

---Event triggers when the players squad updates.
---@alias UPDATE_SQUAD_HANDLER fun()
---@alias WIDGET_UPDATE_SQUAD_HANDLER fun(self: Widget)

---Event triggers when the player starts and stops using a ship telescope.
---@alias UPDATE_TELESCOPE_AREA_HANDLER fun()
---@alias WIDGET_UPDATE_TELESCOPE_AREA_HANDLER fun(self: Widget)

---Event triggers when the players daily assignment updates.
---@alias UPDATE_TODAY_ASSIGNMENT_HANDLER fun(todayInfo?: TodayAssignmentInfo)
---@alias WIDGET_UPDATE_TODAY_ASSIGNMENT_HANDLER fun(self: Widget, todayInfo?: TodayAssignmentInfo)

---Event triggers when the players daily assignments reset.
---@alias UPDATE_TODAY_ASSIGNMENT_RESET_COUNT_HANDLER fun(count: number)
---@alias WIDGET_UPDATE_TODAY_ASSIGNMENT_RESET_COUNT_HANDLER fun(self: Widget, count: number)

---Event triggers when the player starts and stops using a telescope.
---@alias UPDATE_TRANSFER_TELESCOPE_AREA_HANDLER fun()
---@alias WIDGET_UPDATE_TRANSFER_TELESCOPE_AREA_HANDLER fun(self: Widget)

---Event triggers every 500ms while the player is using a telescope.
---@alias UPDATE_TRANSFER_TELESCOPE_INFO_HANDLER fun()
---@alias WIDGET_UPDATE_TRANSFER_TELESCOPE_INFO_HANDLER fun(self: Widget)

---Event triggers when the player enters a new zone.
---@alias UPDATE_ZONE_INFO_HANDLER fun()
---@alias WIDGET_UPDATE_ZONE_INFO_HANDLER fun(self: Widget)

---Event triggers when the world map zone zoom level changes.
---@alias UPDATE_ZONE_LEVEL_INFO_HANDLER fun(level: ZONE_LEVEL, id: ZONE_GROUP_ID)
---@alias WIDGET_UPDATE_ZONE_LEVEL_INFO_HANDLER fun(self: Widget, level: ZONE_LEVEL, id: ZONE_GROUP_ID)

---Event triggers when the player enters a zone with permissions. (Ipyna Ridge Akasch Invasion)
---@alias UPDATE_ZONE_PERMISSION_HANDLER fun()
---@alias WIDGET_UPDATE_ZONE_PERMISSION_HANDLER fun(self: Widget)

---@TODO:
---@alias VIEW_CASH_BUY_WINDOW_HANDLER fun(sellType)
---@alias WIDGET_VIEW_CASH_BUY_WINDOW_HANDLER fun(self: Widget, sellType)

---Event triggers when the player receieves a friend request.
---@alias WAIT_FRIEND_ADD_ALARM_HANDLER fun()
---@alias WIDGET_WAIT_FRIEND_ADD_ALARM_HANDLER fun(self: Widget)

---Event triggers when the player receieves a friend request.
---@alias WAIT_FRIENDLIST_UPDATE_HANDLER fun(updateType: string)
---@alias WIDGET_WAIT_FRIENDLIST_UPDATE_HANDLER fun(self: Widget, updateType: string)

---Event triggers when the player is waiting on a reply from the server.
---@alias WAIT_REPLY_FROM_SERVER_HANDLER fun(waiting: boolean)
---@alias WIDGET_WAIT_REPLY_FROM_SERVER_HANDLER fun(self: Widget, waiting: boolean)

---Event triggers when the player starts tracking a new target.
---@alias WATCH_TARGET_CHANGED_HANDLER fun(stringId)
---@alias WIDGET_WATCH_TARGET_CHANGED_HANDLER fun(self: Widget, stringId)

---@TODO:
---@alias WEB_BROWSER_ESC_EVENT_HANDLER fun(browser)
---@alias WIDGET_WEB_BROWSER_ESC_EVENT_HANDLER fun(self: Widget, browser)

---Event triggers when a world message occurs.
---@alias WORLD_MESSAGE_HANDLER fun(msg: string, iconKey: string, info: WorldMessageInfo)
---@alias WIDGET_WORLD_MESSAGE_HANDLER fun(self: Widget, msg: string, iconKey: string, info: WorldMessageInfo)

---@TODO: I think each zone has a score based on content that has been completed.
---Event triggers when the zones content score changes.
---@alias ZONE_SCORE_CONTENT_STATE_HANDLER fun(states?)
---@alias WIDGET_ZONE_SCORE_CONTENT_STATE_HANDLER fun(self: Widget, states?)

---@TODO:
---@alias ZONE_SCORE_UPDATED_HANDLER fun(kind, info)
---@alias WIDGET_ZONE_SCORE_UPDATED_HANDLER fun(self: Widget, kind, info)

--------------------------------------------------------------------------------
-- ArchePass does not exist on ArcheRage.
--------------------------------------------------------------------------------
-- @alias ARCHE_PASS_BUY_HANDLER fun(passType)
-- @alias ARCHE_PASS_COMPLETED_HANDLER fun(passType, allDone: boolean)
-- @alias ARCHE_PASS_DROPPED_HANDLER fun(passType)
-- @alias ARCHE_PASS_EXPIRED_HANDLER fun(passType)
-- @alias ARCHE_PASS_LOADED_HANDLER fun()
-- @alias ARCHE_PASS_MISSION_CHANGED_HANDLER fun()
-- @alias ARCHE_PASS_MISSION_COMPLETED_HANDLER fun()
-- @alias ARCHE_PASS_OWNED_HANDLER fun(passType)
-- @alias ARCHE_PASS_RESETED_HANDLER fun(passType)
-- @alias ARCHE_PASS_STARTED_HANDLER fun(passType)
-- @alias ARCHE_PASS_UPDATE_POINT_HANDLER fun(point)
-- @alias ARCHE_PASS_UPDATE_REWARD_ITEM_HANDLER fun(complete)
-- @alias ARCHE_PASS_UPDATE_TIER_HANDLER fun(tier)
-- @alias ARCHE_PASS_UPGRADE_PREMIUM_HANDLER fun()

--------------------------------------------------------------------------------
-- Outside of addon scope/player permissions.
--------------------------------------------------------------------------------
-- @alias ACCOUNT_ATTRIBUTE_UPDATED_HANDLER fun(kind, extraKind, state: boolean)
-- @alias ANTIBOT_PUNISH_HANDLER fun(message)
-- @alias BAN_PLAYER_RESULT_HANDLER fun(param)
-- @alias BUY_RESULT_AA_POINT_HANDLER fun(result, moneyString)
-- @alias CHANGE_PAY_INFO_HANDLER fun(oldPayMethod, newPayMethod, oldPayLocation, newPayLocation)
-- @alias CONSOLE_WRITE_HANDLER fun()
-- @alias CREATE_CHARACTER_FAILED_HANDLER fun(key)
-- @alias DISCONNECT_FROM_AUTH_HANDLER fun()
-- @alias ENTER_WORLD_CANCELLED_HANDLER fun()
-- @alias ENTERED_LOGIN_HANDLER fun()
-- @alias ENTERED_WORLD_SELECT_HANDLER fun()
-- @alias FADE_INOUT_DONE_HANDLER fun(param)
-- @alias LEFT_LOGIN_HANDLER fun()
-- @alias LOGIN_CHARACTER_UPDATED_HANDLER fun(status, characterIndex)
-- @alias LOGIN_DENIED_HANDLER fun()
-- @alias MOVIE_START_HANDLER fun()
-- @alias NOTIFY_WEB_TRANSFER_STATE_HANDLER fun(arg)
-- @alias OPEN_ARS_HANDLER fun(number, timeout)
-- @alias OPEN_OTP_HANDLER fun(currentTry, maxTry, onTime)
-- @alias OPEN_PCCERT_HANDLER fun(currentTry, maxTry, onTime)
-- @alias OPEN_SECURE_CARD_HANDLER fun(secureCardIndex, currentTry, onTime)
-- @alias OPEN_WORLD_QUEUE_HANDLER fun()
-- @alias PREMIUM_FIRST_BUY_BONUS_HANDLER fun()
-- @alias READY_TO_CONNECT_WORLD_HANDLER fun()
-- @alias REFRESH_WORLD_QUEUE_HANDLER fun()
-- @alias RENAME_CHARACTER_FAILED_HANDLER fun(key)
-- @alias REPRESENT_CHARACTER_RESULT_HANDLER fun(isLoginLoad, success, isClearRequest)
-- @alias SENSITIVE_OPERATION_VERIFY_HANDLER fun(seqNum, url)
-- @alias SENSITIVE_OPERATION_VERIFY_SUCCESS_HANDLER fun()
-- @alias SET_UI_MESSAGE_HANDLER fun()
-- @alias SET_WEB_MESSENGE_COUNT_HANDLER fun()
-- @alias SHOW_CHARACTER_ABILITY_WINDOW_HANDLER fun(show, byCutscene)
-- @alias SHOW_CHARACTER_CREATE_WINDOW_HANDLER fun(show)
-- @alias SHOW_CHARACTER_CUSTOMIZE_WINDOW_HANDLER fun(show)
-- @alias SHOW_CHARACTER_SELECT_WINDOW_HANDLER fun(visible)
-- @alias SHOW_GAME_RATING_HANDLER fun()
-- @alias SHOW_HEALTH_NOTICE_HANDLER fun()
-- @alias SHOW_HIDDEN_BUFF_HANDLER fun()
-- @alias SHOW_LOGIN_WINDOW_HANDLER fun(show)
-- @alias SHOW_PRIVACY_POLICY_WINDOW_HANDLER fun(show)
-- @alias SHOW_RECOMMEND_USING_SECOND_PASSWORD_HANDLER fun()
-- @alias SKILL_DEBUG_MSG_HANDLER fun(resultCode, param, skillType)
-- @alias TENCENT_HEALTH_CARE_URL_HANDLER fun(url, width, height)
-- @alias TOGGLE_MEGAPHONE_CHAT_HANDLER fun()
-- @alias ULC_ACTIVATE_HANDLER fun(ulcType)
-- @alias ULC_SKILL_MSG_HANDLER fun(resultCode, param)
-- @alias SHOW_SERVER_SELECT_WINDOW_HANDLER fun(visible)
-- @alias FAIL_WEB_PLAY_DIARY_INSTANT_HANDLER fun()
-- @alias SET_LOGIN_BROWSER_URL_HANDLER fun()
-- @alias SECOND_PASSWORD_ACCOUNT_LOCKED_HANDLER fun()
-- @alias SECOND_PASSWORD_CHANGE_COMPLETED_HANDLER fun(result)
-- @alias SECOND_PASSWORD_CHECK_COMPLETED_HANDLER fun(success)
-- @alias SECOND_PASSWORD_CHECK_OVER_FAILED_HANDLER fun()
-- @alias SECOND_PASSWORD_CLEAR_COMPLETED_HANDLER fun(success)
-- @alias SECOND_PASSWORD_CREATION_COMPLETED_HANDLER fun(success)
---Event triggers when the players aggro meter has been cleared.
-- @alias AGGRO_METER_CLEARED_HANDLER fun()
-- @alias AGGRO_METER_UPDATED_HANDLER fun()
-- @alias AUCTION_TOGGLE_HANDLER fun()
-- @alias CHANGED_AUTO_USE_AAPOINT_HANDLER fun()
