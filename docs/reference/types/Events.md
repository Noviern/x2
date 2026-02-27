# Events
## Aliases
**ABILITY_CHANGED_HANDLER**

fun(newAbility: "adamant"|"assassin"|"death"|"fight"|"hatred"...(+9), oldAbility: "adamant"|"assassin"|"death"|"fight"|"hatred"...(+9))

Event triggers when one of the players ability is changed.

**ABILITY_EXP_CHANGED_HANDLER**

fun(expStr: string)



**ABILITY_SET_CHANGED_HANDLER**

fun(responseType: `1`|`2`|`3`)

Event triggers when the players statsaver set is saved, changed, or deleted

**ABILITY_SET_USABLE_SLOT_COUNT_CHANGED_HANDLER**

fun()

Event triggers when the players statsaver is expanded.

**ACCOUNT_ATTENDANCE_ADDED_HANDLER**

fun()

Event triggers when the player tracks their daily login.

**ACCOUNT_ATTENDANCE_LOADED_HANDLER**

fun()

Event triggers when dailies reset.

**ACCOUNT_RESTRICT_NOTICE_HANDLER**

fun()

Event triggers when the players account gets restricted.

**ACHIEVEMENT_UPDATE_HANDLER**

fun(status: string|"update", newAchievementType: number)

Event triggers when the player updates an achievement.

**ACQUAINTANCE_LOGIN_HANDLER**

fun(cmf: `CMF_ACQ_CONSUME_GROUP`|`CMF_ADDED_ITEM_GROUP`|`CMF_ADDED_ITEM_SELF`|`CMF_ADDED_ITEM_TEAM`|`CMF_ALL_SERVER`...(+60), charName: string)

Event triggers when an acquaintance (guild member) logs in.

**ACTABILITY_EXPERT_CHANGED_HANDLER**

fun(actabilityId: number, name: string, diff: string|number, final: string|number)

Event triggers when the players proficiency changes.

**ACTABILITY_EXPERT_EXPANDED_HANDLER**

fun()

Event triggers when the player expands their maximum proficiency specializations.

**ACTABILITY_EXPERT_GRADE_CHANGED_HANDLER**

fun(actabilityId: `10`|`11`|`12`|`13`|`14`...(+32), isUpgrade: boolean, name: "Alchemy"|"Artistry"|"Carpentry"|"Commerce"|"Construction"...(+32), gradeName: "Adept"|"Amateur"|"Authority"|"Celebrity"|"Champion"...(+7))

Event triggers when the players proficiency level changes.

**ACTABILITY_MODIFIER_UPDATE_HANDLER**

fun()

Event triggers when the players proficiency modifiers are updated.

**ACTABILITY_REFRESH_ALL_HANDLER**

fun()

Event triggers when the players proficiencies need to be refreshed.

**ACTIONS_UPDATE_HANDLER**

fun()



**ACTION_BAR_AUTO_REGISTERED_HANDLER**

fun(slotIndex: number)

Event triggers when the players shortcut bar has a skill auto registered. (e.g. When the player is leveling and learns a skill and it auto registers to the players shortcut bar.)

**ACTION_BAR_PAGE_CHANGED_HANDLER**

fun(page: number)

Event triggers when the players action bar changes. (min: `1`)

**ADDED_ITEM_HANDLER**

fun(itemLinkText: string, itemCount: number, itemTaskType: number, tradeOtherName: string)

Event triggers when an item has been added to the players inventory.

**ADDON_LOADED_HANDLER**

fun()

Event triggers when the addon has fully loaded.

**ADD_GIVEN_QUEST_INFO_HANDLER**

fun(type: `0`|`1`, questType: number)

Event triggers when a new event has appeared with in the players range.

**ADD_NOTIFY_QUEST_INFO_HANDLER**

fun(qType: number)

Event triggers when the player has a quest notification info.

**ALL_SIEGE_RAID_TEAM_INFOS_HANDLER**

fun(teamInfos: SiegeRaidTeamInfos)

Event triggers when the player views the Siege Info tab when a siege period has started.

**APPELLATION_CHANGED_HANDLER**

fun(stringId: string, isChanged: boolean)

Event triggers when a player changes their appellation.

**APPELLATION_GAINED_HANDLER**

fun(str: string)

Event triggers when the player gains a title.

**APPELLATION_STAMP_SET_HANDLER**

fun()

Event triggers when the players stamp (name icon) changes.

**ASK_BUY_LABOR_POWER_POTION_HANDLER**

fun()

Event triggers when the players labor is low and the game recommends they buy a labor potion from the market place.

**ASK_FORCE_ATTACK_HANDLER**

fun(forceAttackLevel: number)

Event triggers when the player attempts to turn on bloodlust.

**AUCTION_BIDDED_HANDLER**

fun(itemName: string, moneyStr: string)

Event triggers when the player bids on an item on the auction house.

**AUCTION_BIDDEN_HANDLER**

fun(itemName: string, moneyStr: string)

Event triggers when the player receives a bid on an item on the auction house.

**AUCTION_BOUGHT_BY_SOMEONE_HANDLER**

fun(itemName: string, moneyStr: string)

Event triggers when the player sells something on the auction house.

**AUCTION_BOUGHT_HANDLER**

fun()

Event triggers when the player buys seomthing on the auction house.

**AUCTION_CANCELED_HANDLER**

fun(itemName: string)

Event triggers when the player cancels a listed item.

**AUCTION_CHARACTER_LEVEL_TOO_LOW_HANDLER**

fun(msg: string)

Event triggers when the player attempts to list an item or search for an item
in the auction house and they are too low of a level.

**AUCTION_ITEM_ATTACHMENT_STATE_CHANGED_HANDLER**

fun(attached: boolean)

Event triggers when a player is listing an item on the auction house.

**AUCTION_ITEM_PUT_UP_HANDLER**

fun(itemName: string)

Event triggers when a player is listing an item on the auction house.

**AUCTION_ITEM_SEARCHED_HANDLER**

fun(clearLastSearchArticle: boolean)

Event triggers when a player is listing or searching for an item on the auction house.

**AUCTION_ITEM_SEARCH_HANDLER**

fun()

Event triggers when a player is listing or searching for an item on the auction house.

**AUCTION_LOWEST_PRICE_HANDLER**

fun(itemType: number, grade: `0`|`10`|`11`|`12`|`1`...(+8), price: string)

Event triggers when a player is listing an item on the auction house.

**AUCTION_PERMISSION_BY_CRAFT_HANDLER**

fun(icraftType: number)

Event triggers when a player has started crafting and after each craft end.

**AUDIENCE_JOINED_HANDLER**

fun(audienceName: string)

Event triggers when a player joins the jury audience.

**AUDIENCE_LEFT_HANDLER**

fun(audienceName: string)

Event triggers when a player leaves the jury audience.

**BADWORD_USER_REPORED_RESPONE_MSG_HANDLER**

fun(success: boolean)

Event triggers when the player attempts to report a player for inappropriate language.

**BAD_USER_LIST_UPDATE_HANDLER**

fun()

Event triggers when the list of people who reported a suspicious user is updated.

**BAG_EXPANDED_HANDLER**

fun()

Event triggers when the player expands their bag.

**BAG_ITEM_CONFIRMED_HANDLER**

fun()

Event triggers when the player receives an item to their bag.

**BAG_REAL_INDEX_SHOW_HANDLER**

fun(isRealSlotShow: boolean)



**BAG_TAB_CREATED_HANDLER**

fun()

Event triggers when the player creates a tab in their bag.

**BAG_TAB_REMOVED_HANDLER**

fun()

Event triggers when the player deletes a tab in their bag.

**BAG_TAB_SORTED_HANDLER**

fun(arg: number)

Event triggers when the players sorts their bag.

**BAG_TAB_SWITCHED_HANDLER**

fun(tabId: any)

Event triggers when the player changes the bag tab.

**BAG_UPDATE_HANDLER**

fun(bagId: number, slotId: number)

Event triggers when the players bag updates.

**BANK_EXPANDED_HANDLER**

fun()

Event triggers when the player expands their bank.

**BANK_REAL_INDEX_SHOW_HANDLER**

fun(isRealSlotShow: boolean)



**BANK_TAB_CREATED_HANDLER**

fun()

Event triggers when the players creates a tab in their bank.

**BANK_TAB_REMOVED_HANDLER**

fun()

Event triggers when the player deletes a tab in their bank.

**BANK_TAB_SORTED_HANDLER**

fun()

Event triggers when the player sorts their bank.

**BANK_TAB_SWITCHED_HANDLER**

fun(tabId: number)

Event triggers when the player changes the bank tab.

**BANK_UPDATE_HANDLER**

fun(bagId: number, slotId: number)

Event triggers when the players bank updates.

**BEAUTYSHOP_CLOSE_BY_SYSTEM_HANDLER**

fun()

Event triggers when the beautyshop is closed by the system. (e.g the player dies while in the beautyshop)

**BLESS_UTHSTIN_EXTEND_MAX_STATS_HANDLER**

fun()

Event triggers when the player increases their maximum stat migration limit.

**BLESS_UTHSTIN_ITEM_SLOT_CLEAR_HANDLER**

fun()

Event triggers when the players stat migration slot is clear.

**BLESS_UTHSTIN_ITEM_SLOT_SET_HANDLER**

fun(msgapplycountlimit?: any)

Event triggers when the player sets a item in the stat migration slot.

**BLESS_UTHSTIN_MESSAGE_HANDLER**

fun(messageType: number)

Event triggers when the players stat migration or ipnysh artifacts emmits a message.

**BLESS_UTHSTIN_UPDATE_STATS_HANDLER**

fun()

Event triggers when the player changes their stat migration or activates a different stat migration.

**BLESS_UTHSTIN_WILL_APPLY_STATS_HANDLER**

fun(itemType: number, incStatsKind: `1`|`2`|`3`|`4`|`5`, decStatsKind: `1`|`2`|`3`|`4`|`5`, incStatsPoint: number, decStatsPoint: number)

Event triggers when the player applies the stat migration item in the slot.

**BLOCKED_USERS_INFO_HANDLER**

fun()



**BLOCKED_USER_LIST_HANDLER**

fun(msg: string)

Event triggers when a user is added or removed from the players block list.

**BLOCKED_USER_UPDATE_HANDLER**

fun()

Event triggers when a user is added or removed from the players block list.

**BOT_SUSPECT_REPORTED_HANDLER**

fun(sourceName: string, targetName: string)



**BUFF_SKILL_CHANGED_HANDLER**

fun()



**BUFF_UPDATE_HANDLER**

fun(action: "create"|"destroy", target: "character"|"mate"|"slave")

Event triggers when a buff is created or destroyed for a unit.

**BUILDER_END_HANDLER**

fun()

Event triggers when the player cancels trying to place something that can be built.

**BUILDER_STEP_HANDLER**

fun(step: "position"|"roation")

Event triggers when the player is attempting to place something that can be built.

**BUILD_CONDITION_HANDLER**

fun(param: any)



**BUTLER_INFO_UPDATED_HANDLER**

fun(event: "equipment"|"garden"|"harvestSlot"|"labowPower"|"productionCost"...(+5), noError: boolean)

Event triggers when the player is updating the farmhand.

**BUTLER_UI_COMMAND_HANDLER**

fun(mode: number)



**BUY_SPECIALTY_CONTENT_INFO_HANDLER**

fun(list: SpecialtyContentInfo[])

Event triggers when the player opens the purchase cargo window.

**CANCEL_CRAFT_ORDER_HANDLER**

fun(result: boolean)

Event triggers when a crafting order has been canceled.

**CANCEL_REBUILD_HOUSE_CAMERA_MODE_HANDLER**

fun()

Event triggers when the player exists house preview mode for remodeling a
building.

**CANDIDATE_LIST_CHANGED_HANDLER**

fun()



**CANDIDATE_LIST_HIDE_HANDLER**

fun()



**CANDIDATE_LIST_SELECTION_CHANGED_HANDLER**

fun()



**CANDIDATE_LIST_SHOW_HANDLER**

fun()



**CHANGED_MSG_HANDLER**

fun()



**CHANGE_ACTABILITY_DECO_NUM_HANDLER**

fun()



**CHANGE_CONTRIBUTION_POINT_TO_PLAYER_HANDLER**

fun(isGain: boolean, diff: string, total: string)

Event triggers when the player contributes a change to the guilds prestige.

**CHANGE_CONTRIBUTION_POINT_TO_STORE_HANDLER**

fun()

Event triggers when the players guilds prestige changes.

**CHANGE_MY_LANGUAGE_HANDLER**

fun()

Event triggers when the player changes their language.

**CHANGE_OPTION_HANDLER**

fun(optionType: number, infoTable: ChangeOptionInfo)

Event triggers when the player changes a Game Settings option.

**CHANGE_VISUAL_RACE_ENDED_HANDLER**

fun()

Event triggers when the player changes race.

**CHAT_DICE_VALUE_HANDLER**

fun(msg: string)

Event triggers when a player uses /roll.

**CHAT_EMOTION_HANDLER**

fun(message: string)

Event triggers when a player does a chat emotion.

**CHAT_FAILED_HANDLER**

fun(message: string, channelName: string)

Event triggers when the player fails to send a chat message.

**CHAT_JOINED_CHANNEL_HANDLER**

fun(channel: `CHAT_ALL_SERVER`|`CHAT_BIG_MEGAPHONE`|`CHAT_DAILY_MSG`|`CHAT_EXPEDITION`|`CHAT_FACTION`...(+22), name: string)

Event triggers when the player joins a channel.

**CHAT_LEAVED_CHANNEL_HANDLER**

fun(channel: `CHAT_ALL_SERVER`|`CHAT_BIG_MEGAPHONE`|`CHAT_DAILY_MSG`|`CHAT_EXPEDITION`|`CHAT_FACTION`...(+22), name: string)

Event triggers when the player leaves a channel.

**CHAT_MESSAGE_HANDLER**

fun(channel: `CHAT_ALL_SERVER`|`CHAT_BIG_MEGAPHONE`|`CHAT_DAILY_MSG`|`CHAT_EXPEDITION`|`CHAT_FACTION`...(+22), relation: `UR_FRIENDLY`|`UR_HOSTILE`|`UR_NEUTRAL`, name: string, message: string, info: CHAT_MESSAGE_INFO)

Event triggers when a chat message occurs.

**CHAT_MSG_ALARM_HANDLER**

fun(text: string)

Event triggers when a chat message alarm occurs.

**CHAT_MSG_DOODAD_HANDLER**

fun(message: string, author: string, authorId: string, isSelf: boolean, tailType: `CBK_NORMAL`|`CBK_SYSTEM`|`CBK_THINK`, showTime: number, fadeTime: number, currentBubbleType: number|nil, qtype: number|nil, forceFinished: boolean|nil)

Event triggers when the player receives a chat message from a doodad/npc.

**CHAT_MSG_QUEST_HANDLER**

fun(message: string, author: string, authorId: string, isSelf: boolean, tailType: `CBK_NORMAL`|`CBK_SYSTEM`|`CBK_THINK`, showTime: number, fadeTime: number, currentBubbleType: number|nil, qtype: number|nil, forceFinished: boolean|nil)

Event triggers when the player interacts with a npc that has a quest message.

**CHECK_TEXTURE_HANDLER**

fun(texturePath: string)



**CLEAR_BOSS_TELESCOPE_INFO_HANDLER**

fun()

Event triggers when the boss telescope information needs to be cleared from the map.

**CLEAR_CARRYING_BACKPACK_SLAVE_INFO_HANDLER**

fun()

Event triggers when the pack slave information needs to be cleared from the map.

**CLEAR_COMPLETED_QUEST_INFO_HANDLER**

fun()

Event triggers when the completed quest information needs to be cleared from the map.

**CLEAR_CORPSE_INFO_HANDLER**

fun()

Event triggers when the player dies and when the player respawns or the players corpse information expires.

**CLEAR_DOODAD_INFO_HANDLER**

fun()

Event triggers when the player opens the map.

**CLEAR_FISH_SCHOOL_INFO_HANDLER**

fun()

Event triggers when the fish school information needs to be cleared from the map.

**CLEAR_GIVEN_QUEST_STATIC_INFO_HANDLER**

fun()

Event triggers when the given quest information needs to be cleared from the map.

**CLEAR_HOUSING_INFO_HANDLER**

fun()

Event triggers when the housing information needs to be cleared from the map.

**CLEAR_MY_SLAVE_POS_INFO_HANDLER**

fun()

Event triggers every 5 seconds to clear the players slave (vehicle) position information.

**CLEAR_NOTIFY_QUEST_INFO_HANDLER**

fun()

Event triggers when the notify quest information needs to be cleared from the map.

**CLEAR_NPC_INFO_HANDLER**

fun()

Event triggers when the npc information needs to be cleared from the map.

**CLEAR_SHIP_TELESCOPE_INFO_HANDLER**

fun()

Event triggers when the player stops using a ship telescope.

**CLEAR_TRANSFER_TELESCOPE_INFO_HANDLER**

fun()

Event triggers when the player stops using a telescope.

**CLOSE_CRAFT_ORDER_HANDLER**

fun()

Event triggers when the player creates a craft order.

**CLOSE_MUSIC_SHEET_HANDLER**

fun()

Event triggers when the player attempts to use sheet music.

**COFFER_INTERACTION_END_HANDLER**

fun()

Event triggers when the player interacts with something other than the coffer.

**COFFER_INTERACTION_START_HANDLER**

fun()



**COFFER_REAL_INDEX_SHOW_HANDLER**

fun(isRealSlotShow: any)



**COFFER_TAB_CREATED_HANDLER**

fun()

Event triggers when the player creates a tab for the coffer.

**COFFER_TAB_REMOVED_HANDLER**

fun()

Event triggers when the player deletes a tab from the coffer.

**COFFER_TAB_SORTED_HANDLER**

fun(bagId: number)

Event triggers when the player sorts the coffer.

**COFFER_TAB_SWITCHED_HANDLER**

fun(tabId: number)



**COFFER_UPDATE_HANDLER**

fun(bagId: number, slotId: number)

Event triggers when the players coffer updates.

**COMBAT_MSG_HANDLER**

fun(targetUnitId: string, combatEvent: "ENVIRONMENTAL_DAMAGE"|"ENVIRONMENTAL_DRAIN"|"ENVIRONMENTAL_ENERGIZE"|"ENVIRONMENTAL_HEALED"|"ENVIRONMENTAL_LEECH"...(+14), source: string, target: string, ...any)

Event triggers when a combat message occurs.

**COMBAT_TEXT_COLLISION_HANDLER**

fun(targetUnitId: string, combatEvent: string, source: string, target: string, collisionSource: "COLLISION"|"DROWNING"|"FALLING", subType: `COLLISION_PART_BOTTOM`|`COLLISION_PART_FRONT`|`COLLISION_PART_REAR`|`COLLISION_PART_SIDE`|`COLLISION_PART_TOP`, mySlave: boolean, damage: number, powerType: "HEALTH"|"MANA")

Event triggers when there is a collision.

**COMBAT_TEXT_HANDLER**

fun(sourceUnitId: string, targetUnitId: string, amount: number, a: number, b: string, hitType: "CRITICAL"|"HIT"|"IMMUNE", d: number, e: boolean, f: number, g: boolean, distance: number)



**COMBAT_TEXT_SYNERGY_HANDLER**

fun(arg: number)

Event triggers when a skill has a combo **effect**.

**COMMON_FARM_UPDATED_HANDLER**

fun()

Event triggers whenever the players common (public) farm updates.

**COMMUNITY_ERROR_HANDLER**

fun(msg: any)



**COMPLETE_ACHIEVEMENT_HANDLER**

fun(newAchievementType: number)

Event triggers when the player completes an achievement.

**COMPLETE_CRAFT_ORDER_HANDLER**

fun(info: CraftOrderInfo)

Event triggers when the players craft order has been completed.

**COMPLETE_QUEST_CONTEXT_DOODAD_HANDLER**

fun(qtype: number, useDirectingMode: boolean, doodadId: string)

Event triggers when the player completes part of a quest doodad.

**COMPLETE_QUEST_CONTEXT_NPC_HANDLER**

fun(qtype: number, useDirectingMode: boolean, npcId: string)

Event triggers when the player completes a npc context quest.

**CONVERT_TO_RAID_TEAM_HANDLER**

fun()

Event triggers when the players party is converted into a raid.

**COPY_RAID_MEMBERS_TO_CLIPBOARD_HANDLER**

fun()

Event triggers when the players copies raid members to their clipboard.

**CRAFTING_END_HANDLER**

fun()



**CRAFTING_START_HANDLER**

fun(doodadId: any, count: any)

Event triggers when the player opens the crafting window.

**CRAFT_DOODAD_INFO_HANDLER**

fun()



**CRAFT_ENDED_HANDLER**

fun(leftCount: any)

Event triggers when an item has been crafted.

**CRAFT_FAILED_HANDLER**

fun(itemLinkText: string)

Event triggers when the player fails to craft an item.

**CRAFT_ORDER_ENTRY_SEARCHED_HANDLER**

fun(infos: CraftOrderEntries, totalCount: number, page: number)

Event triggers when crafting order entries are requested.

**CRAFT_RECIPE_ADDED_HANDLER**

fun()



**CRAFT_STARTED_HANDLER**

fun(leftCount: number)

Event triggers when the player has started crafting.

**CRAFT_TRAINED_HANDLER**

fun()



**CREATE_ORIGIN_UCC_ITEM_HANDLER**

fun()



**CRIME_REPORTED_HANDLER**

fun(diffPoint: number, diffRecord: number, diffScore: number)

Event triggers when the players crime has been reported.

**DEBUFF_UPDATE_HANDLER**

fun(action: "create"|"destroy", target: "character"|"mate"|"slave")

Event triggers when a debuff is created or destroyed for a unit.

**DELETE_CRAFT_ORDER_HANDLER**

fun()

Event triggers when a crafting order has been removed.

**DELETE_PORTAL_HANDLER**

fun()

Event triggers when a portal has been deleted from the players teleport book.

**DESTROY_PAPER_HANDLER**

fun()

Event triggers when the player deletes a letter/book from their inventory.

**DIAGONAL_ASR_HANDLER**

fun(itemName: string, itemGrade: `0`|`10`|`11`|`12`|`1`...(+8), askMarketPriceUi: boolean, values: DiagonalASRInfo)

Event triggers when the market price of an item is requested.

**DIAGONAL_LINE_HANDLER**

fun()



**DICE_BID_RULE_CHANGED_HANDLER**

fun(diceBidRule: `1`|`2`|`3`)

Event triggers when the players bid type changes.

**DISCONNECTED_BY_WORLD_HANDLER**

fun(title: string, body: string)

Event triggers every 500ms when the player has disconnected from the world.

**DISMISS_PET_HANDLER**

fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)

Event triggers when the player dismisses a pet.

**DIVE_END_HANDLER**

fun()

Event triggers when the player stops diving.

**DIVE_START_HANDLER**

fun()

Event triggers when the player starts diving.

**DOMINION_GUARD_TOWER_STATE_NOTICE_HANDLER**

fun(key: `0`|`1`|`2`|`3`|`4`...(+2), name: string, factionName: string)

Event triggers when the siege lodestones state changes.

**DOMINION_GUARD_TOWER_UPDATE_TOOLTIP_HANDLER**

fun(unitId: any)



**DOMINION_HANDLER**

fun(action: string, zoneGroupName: string, expeditionName: string)

Event triggers when the player events a siegable zone.

**DOMINION_SIEGE_PARTICIPANT_COUNT_CHANGED_HANDLER**

fun(count: number)

Event triggers when the player joins a siege raid.

**DOMINION_SIEGE_PERIOD_CHANGED_HANDLER**

fun(siegeInfo: SiegeInfo)

Event triggers when the siege period changes.

**DOMINION_SIEGE_SYSTEM_NOTICE_HANDLER**

fun()



**DOMINION_SIEGE_UPDATE_TIMER_HANDLER**

fun(secondHalf: boolean)

Event triggers every 500ms while a siege update is occuring.

**DOODAD_LOGIC_HANDLER**

fun()



**DOODAD_PHASE_MSG_HANDLER**

fun(text: string)

Event triggers when a doodad phase message occurs. (ex: Strength of the Faction message)

**DOODAD_PHASE_UI_MSG_HANDLER**

fun(phaseMsgInfo: PhaseMsgInfo)

Event triggers when a title UI message appears.

**DRAW_DOODAD_SIGN_TAG_HANDLER**

fun(tooltip: nil)

Event triggers when the player hovers over a doodad and the tooltip appears
in the bottom right of the screen.

**DRAW_DOODAD_TOOLTIP_HANDLER**

fun(info: DoodadTooltipInfo)

Event triggers every frame the players mouse hovers a doodad.

**DYEING_END_HANDLER**

fun()

Event triggers when the player ends dying an item.

**DYEING_START_HANDLER**

fun()

Event triggers when the player wants to start dying an item.

**DYNAMIC_ACTION_BAR_HIDE_HANDLER**

fun()

Event triggers when the player dynamic action bar (interaction bar) is hidden.

**DYNAMIC_ACTION_BAR_SHOW_HANDLER**

fun(dynamicActionType: any)

Event triggers when the player dynamic action bar (interaction bar) is shown.

**ENABLE_TEAM_AREA_INVITATION_HANDLER**

fun(enable: boolean)

Event triggers when the player does a radius invite and when that radius invite is off cooldown.

**ENCHANT_EXAMINE_HANDLER**

fun()



**ENCHANT_RESULT_HANDLER**

fun(resultCode: any, itemLink: any, oldGrade: any, newGrade: any, breakRewardItemType: any, breakRewardItemCount: any, breakRewardByMail: any)



**ENCHANT_SAY_ABILITY_HANDLER**

fun()



**ENDED_DUEL_HANDLER**

fun()



**END_HERO_ELECTION_PERIOD_HANDLER**

fun()

Event triggers when the hero election period has ended.

**END_QUEST_CHAT_BUBBLE_HANDLER**

fun(playedBubble: boolean)

Event triggers when the player talks to a npc with a quest chat bubble.

**ENTERED_INSTANT_GAME_ZONE_HANDLER**

fun(arg: number)

Event triggers when the player enters a instance.

**ENTERED_LOADING_HANDLER**

fun(worldImagePath: string)

Event triggers when the player enters a loading screen.

**ENTERED_SCREEN_SHOT_CAMERA_MODE_HANDLER**

fun()

Event triggers when the player enters screenshot mode.

**ENTERED_SUBZONE_HANDLER**

fun(zoneName: ""|"3rd Corps Camp"|"Abandoned Claimstake"|"Abandoned Drill Camp"|"Abandoned Guardpost"...(+1163))

Event triggers when the player enters a subzone.

**ENTERED_WORLD_HANDLER**

fun(unknown: boolean)

Event triggers when the player enters the world.

**ENTER_ANOTHER_ZONEGROUP_HANDLER**

fun(zoneId: `0`|`100`|`101`|`102`|`103`...(+151))

Event triggers when the player enters another zone group.

**ENTER_ENCHANT_ITEM_MODE_HANDLER**

fun(mode: "awaken"|"element"|"evolving"|"evolving_re_roll"|"gem"...(+7))



**ENTER_GACHA_LOOT_MODE_HANDLER**

fun()

Event triggers when the player opens the open chest (gold/silver/copper crate) window.

**ENTER_ITEM_LOOK_CONVERT_MODE_HANDLER**

fun()



**EQUIP_SLOT_REINFORCE_EXPAND_PAGE_HANDLER**

fun()

Event triggers when the player expands their Ipnysh Artifacts pages.

**EQUIP_SLOT_REINFORCE_MSG_CHANGE_LEVEL_EFFECT_HANDLER**

fun()



**EQUIP_SLOT_REINFORCE_MSG_LEVEL_EFFECT_HANDLER**

fun(equipSlot: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27), level: number)

Event triggers when the players ipnysh equipment slot effect levels up.

**EQUIP_SLOT_REINFORCE_MSG_LEVEL_UP_HANDLER**

fun(equipSlot: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27), level: number)

Event triggers when the players ipnysh equipment slot levels up.

**EQUIP_SLOT_REINFORCE_MSG_SET_EFFECT_HANDLER**

fun(equipSlotAttribute: number, level: number)

Event triggers when the players ipnysh equipment slot levels up.

**EQUIP_SLOT_REINFORCE_SELECT_PAGE_HANDLER**

fun()

Event triggers when the player changes their Ipnysh Artifacts page.

**EQUIP_SLOT_REINFORCE_UPDATE_HANDLER**

fun(equipSlot: any)

Event triggers when the player increases the ipnysh level of an equipment
slot.

**ESCAPE_END_HANDLER**

fun()

Event triggers when the player stops using the escape skill or the player has successfully escaped.

**ESCAPE_START_HANDLER**

fun(waitTime: number)

Event triggers when the player attempts to use the escape skill.

**ESC_MENU_ADD_BUTTON_HANDLER**

fun(info: EscMenuAddButtonInfo)

Event triggers when a new button is added to the escape menu.

**EVENT_SCHEDULE_START_HANDLER**

fun(msg: any)



**EVENT_SCHEDULE_STOP_HANDLER**

fun(msg: any)



**EXPEDITION_APPLICANT_ACCEPT_HANDLER**

fun(expeditionName: string)

Event triggers when the players application to a guild is accepted.

**EXPEDITION_APPLICANT_REJECT_HANDLER**

fun(expeditionName: string)

Event triggers when the players application to a guild is rejected.

**EXPEDITION_BUFF_CHANGE_HANDLER**

fun(expedition: number)

Event triggers when a guilds buff changes.

**EXPEDITION_EXP_HANDLER**

fun(amount: number, amountStr: string)

Event triggers when the player changes the guilds experience.

**EXPEDITION_HISTORY_HANDLER**

fun(tabId: number)

Event triggers when the player accesses their guild history.

**EXPEDITION_LEVEL_UP_HANDLER**

fun(level: any)



**EXPEDITION_MANAGEMENT_APPLICANTS_HANDLER**

fun(infos: ExpeditionApplicant[])

Event triggers when a guild member (who has permissions) opens the manage applicants window.

**EXPEDITION_MANAGEMENT_APPLICANT_ACCEPT_HANDLER**

fun(charId: any)



**EXPEDITION_MANAGEMENT_APPLICANT_ADD_HANDLER**

fun(expeditionId: any)



**EXPEDITION_MANAGEMENT_APPLICANT_DEL_HANDLER**

fun(expeditionId: any)



**EXPEDITION_MANAGEMENT_APPLICANT_REJECT_HANDLER**

fun(charId: any)



**EXPEDITION_MANAGEMENT_GUILD_FUNCTION_CHANGED_HANDLER**

fun()



**EXPEDITION_MANAGEMENT_MEMBERS_INFO_HANDLER**

fun(totalCount: number, startIndex: number, memberInfos: MemberInfo[])

Event triggers when the player views the members tab in their guild.

**EXPEDITION_MANAGEMENT_MEMBER_NAME_CHANGED_HANDLER**

fun()

Event triggers when a member of the players guild changes their name.

**EXPEDITION_MANAGEMENT_MEMBER_STATUS_CHANGED_HANDLER**

fun()

Event triggers when the prestige of a guild member changes.

**EXPEDITION_MANAGEMENT_POLICY_CHANGED_HANDLER**

fun()



**EXPEDITION_MANAGEMENT_RECRUITMENTS_HANDLER**

fun(total: number, perPageItemCount: number, infos: GuildRecruitmentInfo[])

Event triggers when the player opens the guild recruitment tab.

**EXPEDITION_MANAGEMENT_RECRUITMENT_ADD_HANDLER**

fun(info: any)



**EXPEDITION_MANAGEMENT_RECRUITMENT_DEL_HANDLER**

fun(expeditionId: any)



**EXPEDITION_MANAGEMENT_ROLE_CHANGED_HANDLER**

fun()



**EXPEDITION_MANAGEMENT_UPDATED_HANDLER**

fun()

Event triggers when the guild prestige changes.

**EXPEDITION_RANKING_HANDLER**

fun()



**EXPEDITION_SUMMON_SUGGEST_HANDLER**

fun()



**EXPEDITION_WAR_DECLARATION_FAILED_HANDLER**

fun(errorMsg: any, param: any)



**EXPEDITION_WAR_DECLARATION_MONEY_HANDLER**

fun(unitId: any, name: any, money: any)



**EXPEDITION_WAR_KILL_SCORE_HANDLER**

fun(toggle: boolean)

Event triggers when the player views the current dominion status.

**EXPEDITION_WAR_SET_PROTECT_DATE_HANDLER**

fun()

Event triggers when the players guild dominion protection date changes.

**EXPEDITION_WAR_STATE_HANDLER**

fun(related: boolean, state: string, declarer: string, defendant: string, winner: string)

Event triggers when a guild starts a dominion with another guild.

**EXPIRED_ITEM_HANDLER**

fun(itemLinkText: string)

Event triggers when an item expires for the player.

**EXP_CHANGED_HANDLER**

fun(stringId: string, expNum: number, expStr: string)

Event triggers when the player receives experience.

**FACTION_CHANGED_HANDLER**

fun()



**FACTION_COMPETITION_INFO_HANDLER**

fun(info: FactionCompetitionInfo)

Event triggers when the player enters a zone with a competition. (e.g. Akasch Invasion/Mysthrane Gorge/Reedwind/Great Prairie/Cinderstone+Ynystere war)

**FACTION_COMPETITION_RESULT_HANDLER**

fun(infos: FactionCompetitionResultInfos)

Event triggers when a faction competition is over. (e.g. Akasch Invasion/Mysthrane Gorge/Reedwind/Great Prairie/Cinderstone+Ynystere war)

**FACTION_COMPETITION_UPDATE_POINT_HANDLER**

fun(infos: FactionCompetitionPointInfo)

Event triggers when a factions competition points (e.g. Akasch Invasion/Mysthrane Gorge/Reedwind/Great Prairie/Cinderstone+Ynystere war) update.

**FACTION_RELATION_ACCEPTED_HANDLER**

fun(name: any, factionName: any)



**FACTION_RELATION_CHANGED_HANDLER**

fun(isHostile: boolean, f1Name: string, f2Name: string)

Event triggers when a faction relation changes.

**FACTION_RELATION_COUNT_HANDLER**

fun()



**FACTION_RELATION_DENIED_HANDLER**

fun(name: any)



**FACTION_RELATION_HISTORY_HANDLER**

fun()

Event triggers when the player views the alliance history of a faction.

**FACTION_RELATION_REQUESTED_HANDLER**

fun(name: any, factionName: any)



**FACTION_RELATION_WILL_CHANGE_HANDLER**

fun(f1Name: string, f2Name: string)

Event triggers when a faction relation will change.

**FACTION_RENAMED_HANDLER**

fun(isExpedition: boolean, oldName: string, newName: string)

Event triggers if a nation or guild is renamed.

**FAILED_TO_SET_PET_AUTO_SKILL_HANDLER**

fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)

Event triggers when the player failed to set a pet auto skill. (e.g. Mount skill auto use/Battlepet not in defensive mode skill auto use)

**FAMILY_ERROR_HANDLER**

fun(msg: any)



**FAMILY_EXP_ADD_HANDLER**

fun(amount: any)



**FAMILY_INFO_REFRESH_HANDLER**

fun()



**FAMILY_LEVEL_UP_HANDLER**

fun(levelName: any)



**FAMILY_MEMBER_ADDED_HANDLER**

fun(owner: any, member: any, title: any)



**FAMILY_MEMBER_HANDLER**

fun(owner: any, member: any, role: any, title: any)



**FAMILY_MEMBER_KICKED_HANDLER**

fun(member: any)



**FAMILY_MEMBER_LEFT_HANDLER**

fun(member: any)



**FAMILY_MEMBER_ONLINE_HANDLER**

fun()



**FAMILY_MGR_HANDLER**

fun()



**FAMILY_NAME_CHANGED_HANDLER**

fun(FAMILY_NAME_CHANGED: any)



**FAMILY_OWNER_CHANGED_HANDLER**

fun(owner: any)



**FAMILY_REFRESH_HANDLER**

fun()



**FAMILY_REMOVED_HANDLER**

fun()



**FIND_FACTION_REZ_DISTRICT_COOLTIME_FAIL_HANDLER**

fun(cooltime: number)

Event triggers when the player (as a hero) tries to activate a respawn location that is not available yet due to a cooltime.

**FIND_FACTION_REZ_DISTRICT_DURATION_FAIL_HANDLER**

fun(remain: number)

Event triggers when the player (as a hero) tries to activate a respawn location that is already in use.

**FOLDER_STATE_CHANGED_HANDLER**

fun(arg: string)

Event triggers when the player changes the state of a folder.

**FORCE_ATTACK_CHANGED_HANDLER**

fun(uiserId: string, inBloodlust: boolean)

Event triggers when a player toggles bloodlust mode.

**FRIENDLIST_HANDLER**

fun(msg: string)

Event triggers when the player sends a friend request.

**FRIENDLIST_INFO_HANDLER**

fun(totalCount: number, memberInfos: FriendInfo[])

Event triggers when the player opens their friend list.

**FRIENDLIST_UPDATE_HANDLER**

fun(updateType: "delete"|"insert", dataField: string|FriendInfo)

Event triggers when the players friend list updates.

**GACHA_LOOT_PACK_LOG_HANDLER**

fun(logs: GachaLootPackLog)

Event triggers when the player opens a locked crate.

**GACHA_LOOT_PACK_RESULT_HANDLER**

fun(results: GachaLootPackResult)

Event triggers when the player opens a locked crate.

**GAME_EVENT_EMPTY_HANDLER**

fun()



**GAME_EVENT_INFO_LIST_UPDATED_HANDLER**

fun()

Event triggers when the player opens the daily schedule window.

**GAME_EVENT_INFO_REQUESTED_HANDLER**

fun()

Event triggers when the player opens the daily schedule window after loading into the world.

**GAME_SCHEDULE_HANDLER**

fun()



**GENDER_TRANSFERED_HANDLER**

fun()

Event triggers when the player changes their characters gender.

**GLIDER_MOVED_INTO_BAG_HANDLER**

fun()

Event triggers when the player picks up something that moves their glider
into their bag.

**GOODS_MAIL_INBOX_ITEM_TAKEN_HANDLER**

fun(index: any)

Event triggers when the player takes an item from their marketplace mailbox.

**GOODS_MAIL_INBOX_MONEY_TAKEN_HANDLER**

fun()



**GOODS_MAIL_INBOX_TAX_PAID_HANDLER**

fun()



**GOODS_MAIL_INBOX_UPDATE_HANDLER**

fun(read: boolean, arg: number)

Event triggers when the players marketplace mail updates.

**GOODS_MAIL_RETURNED_HANDLER**

fun()



**GOODS_MAIL_SENTBOX_UPDATE_HANDLER**

fun()



**GOODS_MAIL_SENT_SUCCESS_HANDLER**

fun()



**GOODS_MAIL_WRITE_ITEM_UPDATE_HANDLER**

fun()



**GRADE_ENCHANT_BROADCAST_HANDLER**

fun(characterName: string, resultCode: `IEBCT_ENCHANT_GREATE_SUCCESS`|`IEBCT_ENCHANT_SUCCESS`|`IEBCT_EVOVING`, itemLink: string, oldGrade: `0`|`10`|`11`|`12`|`1`...(+8), newGrade: `0`|`10`|`11`|`12`|`1`...(+8))

Event triggers when a player successfully enchants an item to a new grade.

**GRADE_ENCHANT_RESULT_HANDLER**

fun(resultCode: `IGER_BREAK`|`IGER_DISABLE`|`IGER_DOWNGRADE`|`IGER_FAIL`|`IGER_GREAT_SUCCESS`...(+2), itemLink: string, oldGrade: `0`|`10`|`11`|`12`|`1`...(+8), newGrade: `0`|`10`|`11`|`12`|`1`...(+8), breakRewardItemType: number, breakRewardItemCount: number, breakRewardByMail: boolean)

Event triggers when the player regrades an item.

**GUARDTOWER_HEALTH_CHANGED_HANDLER**

fun(arg1: string, arg2: string, arg3: string)

Event triggers when a guard tower health changes.

**GUILD_BANK_INDEX_SHOW_HANDLER**

fun()



**GUILD_BANK_INTERACTION_END_HANDLER**

fun()

Event triggers when the player ends interacting with their guild bank.

**GUILD_BANK_INTERACTION_START_HANDLER**

fun()



**GUILD_BANK_INVEN_SHOW_HANDLER**

fun()

Event triggers when the guild bank is shown to the player.

**GUILD_BANK_MONEY_UPDATE_HANDLER**

fun()



**GUILD_BANK_REAL_INDEX_SHOW_HANDLER**

fun()



**GUILD_BANK_TAB_CREATED_HANDLER**

fun()

Event triggers when the player creates a tab for their guild bank.

**GUILD_BANK_TAB_REMOVED_HANDLER**

fun()

Event triggers when the player deletes a tab from their guild bank.

**GUILD_BANK_TAB_SORTED_HANDLER**

fun()

Event triggers when the player sorts their guild bank.

**GUILD_BANK_TAB_SWITCHED_HANDLER**

fun()

Event triggers when the player changes their guild bank tab.

**GUILD_BANK_UPDATE_HANDLER**

fun(arg1: number, slot: number)

Event triggers when the player takes/places an item into their guild bank.

**HEIR_LEVEL_UP_HANDLER**

fun(myUnit: boolean, unitId: string)

Event triggers when a players acestral level increases.

**HEIR_SKILL_ACTIVE_TYPE_MSG_HANDLER**

fun(activeType: number, ability: number, text: string, pos: `1`|`2`|`3`|`4`|`5`...(+3))



**HEIR_SKILL_LEARN_HANDLER**

fun(text: string, pos: `1`|`2`|`3`|`4`|`5`...(+3))

Event triggers when the player changes an ancestral skill.

**HEIR_SKILL_RESET_HANDLER**

fun(isAll: boolean, text: string, info: `1`|`2`|`3`|`4`|`5`...(+3))

Event triggers when the player resets an ancestral skill.

**HEIR_SKILL_UPDATE_HANDLER**

fun()

Event triggers when the player changes an ancestral skill.

**HERO_ALL_SCORE_UPDATED_HANDLER**

fun(factionID: `HARIHARA_FACTION_ID`|`MONSTER_FACTION_ID`|`NUIA_FACTION_ID`|`OUTLAW_FACTION_ID`|`PC_IN_ALL_FACTION_ID`)

Event triggers when the player tries to retrieve hero information or hero
mission status.

**HERO_ANNOUNCE_REMAIN_TIME_HANDLER**

fun(remainTime: number, isStartTime: boolean)

Event triggers every 10 seconds when hero annoucement is about to happen.

**HERO_CANDIDATES_ANNOUNCED_HANDLER**

fun()



**HERO_CANDIDATE_NOTI_HANDLER**

fun()



**HERO_ELECTION_DAY_ALERT_HANDLER**

fun(title: any, desc: any)



**HERO_ELECTION_HANDLER**

fun()

Event triggers when the player opens the hero election list to cast a vote.

**HERO_ELECTION_RESULT_HANDLER**

fun()

Event triggers when the hero election has results.

**HERO_ELECTION_VOTED_HANDLER**

fun()

Event triggers when the player casts their vote in a hero election,

**HERO_NOTI_HANDLER**

fun()



**HERO_RANK_DATA_RETRIEVED_HANDLER**

fun(factionID: `HARIHARA_FACTION_ID`|`MONSTER_FACTION_ID`|`NUIA_FACTION_ID`|`OUTLAW_FACTION_ID`|`PC_IN_ALL_FACTION_ID`)

Event triggers when the player tries to retrieve hero information.

**HERO_RANK_DATA_TIMEOUT_HANDLER**

fun()



**HERO_SCORE_UPDATED_HANDLER**

fun()

Event triggers when the players leadership increases.

**HERO_SEASON_OFF_HANDLER**

fun()

Event triggers when a hero season is over.

**HERO_SEASON_UPDATED_HANDLER**

fun()

Event triggers when a new hero season has begun.

**HIDE_ROADMAP_TOOLTIP_HANDLER**

fun(text: any)

Event triggers when the roadmap tooltip is hidden.

**HIDE_SKILL_MAP_EFFECT_HANDLER**

fun(index: number)

Event triggers when the worldmap has an effect that that needs to be hidden.

**HIDE_WORLDMAP_TOOLTIP_HANDLER**

fun()

Event triggers when the worldmap tooltip is hidden.

**HOTKEY_ACTION_HANDLER**

fun(actionName: string, keyUp: boolean)

Event triggers for the key down and key up when the player uses a hotkey that
an addon has registered.

**HOUSE_BUILD_INFO_HANDLER**

fun(hType: `100`|`101`|`102`|`103`|`104`...(+832), baseTax: string, hTax: string, heavyTaxHouseCount: number, normalTaxHouseCount: number, isHeavyTaxHouse: boolean, hostileTaxRate: number, monopolyTaxRate: number, depositString: string, taxType: `HOUSING_TAX_CONTRIBUTION`|`HOUSING_TAX_SEAL`, completion: boolean)

Event triggers when the player attempts to place a building and the start construction window is shown/hidden.

**HOUSE_BUY_FAIL_HANDLER**

fun()



**HOUSE_BUY_SUCCESS_HANDLER**

fun(houseName: string)

Event triggers when the player buys a house.

**HOUSE_CANCEL_SELL_FAIL_HANDLER**

fun()

Event triggers when the player fails to cancel selling their house.

**HOUSE_CANCEL_SELL_SUCCESS_HANDLER**

fun(houseName: string)

Event triggers when the player successfully cancels selling their house.

**HOUSE_DECO_UPDATED_HANDLER**

fun()



**HOUSE_FARM_MSG_HANDLER**

fun(name: any, total: any, harvestable: any)



**HOUSE_INFO_UPDATED_HANDLER**

fun()



**HOUSE_INTERACTION_END_HANDLER**

fun()

Event triggers when the player ends interacting with the building.

**HOUSE_INTERACTION_START_HANDLER**

fun(structureType: string, viewType: string, arg: boolean)

Event triggers when the player starts interacting with the building.

**HOUSE_PERMISSION_UPDATED_HANDLER**

fun()

Event triggers when the player changes the building permissions.

**HOUSE_REBUILD_TAX_INFO_HANDLER**

fun()

Event triggers when the player opens the remodel window for their house.

**HOUSE_ROTATE_CONFIRM_HANDLER**

fun()



**HOUSE_SALE_SUCCESS_HANDLER**

fun(houseName: string)

Event triggers when the player successfully sells a house.

**HOUSE_SET_SELL_FAIL_HANDLER**

fun()

Event triggers when the player fails to set the house to sell.

**HOUSE_SET_SELL_SUCCESS_HANDLER**

fun(houseName: string)

Event triggers when the player successfully set the house to sell.

**HOUSE_STEP_INFO_UPDATED_HANDLER**

fun(structureType: "housing"|"shipyard")

Event triggers when a house is being built within range of the player.

**HOUSE_TAX_INFO_HANDLER**

fun(dominionTaxRate: any, hostileTaxRate: any, taxString: any, dueTime: any, prepayTime: any, weeksWithoutPay: any, weeksPrepay: any, isAlreadyPaid: any, isHeavyTaxHouse: any, depositString: any, taxType: any, id: any)



**HOUSING_UCC_CLOSE_HANDLER**

fun()



**HOUSING_UCC_ITEM_SLOT_CLEAR_HANDLER**

fun()

Event triggers when the customization window slot is cleared.

**HOUSING_UCC_ITEM_SLOT_SET_HANDLER**

fun()

Event triggers when the player places a crest stamp in the housing ucc
customization window slot.

**HOUSING_UCC_LEAVE_HANDLER**

fun()

Event triggers when the player leaves the house ucc customization window.

**HOUSING_UCC_UPDATED_HANDLER**

fun()

Event triggers when the players housing ucc updates.

**HPW_ZONE_STATE_CHANGE_HANDLER**

fun(zoneId: `0`|`100`|`101`|`102`|`103`...(+151))

Event triggers when the state of a zone changes.

**HPW_ZONE_STATE_WAR_END_HANDLER**

fun(zoneId: `0`|`100`|`101`|`102`|`103`...(+151), points: number)

Event triggers when a zones war state ends.

**IME_STATUS_CHANGED_HANDLER**

fun()

Event triggers when the players ime status changes.

**INDUN_INITAL_ROUND_INFO_HANDLER**

fun()

Event triggers when a instance initial round starts. (e.g. Noryette Challenge)

**INDUN_ROUND_END_HANDLER**

fun(success: boolean, round: number, isBossRound: boolean, lastRound: boolean)

Event triggers when a instance round ends. (e.g. Noryette Challenge)

**INDUN_ROUND_START_HANDLER**

fun(round: number, isBossRound: boolean)

Event triggers when a instance round begins. (e.g. Noryette Challenge)

**INDUN_UPDATE_ROUND_INFO_HANDLER**

fun()

Event triggers when a instance round begins. (e.g. Noryette Challenge)

**INGAME_SHOP_BUY_RESULT_HANDLER**

fun()

Event triggers when the player attempts to purchase an item from the marketplace.

**INIT_CHRONICLE_INFO_HANDLER**

fun()

Event triggers when the player loads into the world to initalize the chronicle quest window.

**INSERT_CRAFT_ORDER_HANDLER**

fun()

Event triggers when a crafting order is listed.

**INSTANCE_ENTERABLE_MSG_HANDLER**

fun(info: InstanceEnterableInfo)

Event triggers when an instance is now enterable.

**INSTANT_GAME_BEST_RATING_REWARD_HANDLER**

fun()



**INSTANT_GAME_END_HANDLER**

fun()

Event triggers when the instance game ends.

**INSTANT_GAME_JOIN_APPLY_HANDLER**

fun()



**INSTANT_GAME_JOIN_CANCEL_HANDLER**

fun()

Event triggers when an instance queue has been canceled.

**INSTANT_GAME_KILL_HANDLER**

fun(msgInfo: InstanceGameKillInfo)

Event triggers when a player kills another player in an instance.

**INSTANT_GAME_PICK_BUFFS_HANDLER**

fun()

Event triggers when the instance game pickable buffs is available.

**INSTANT_GAME_READY_HANDLER**

fun()

Event triggers when an instance game is ready.

**INSTANT_GAME_RETIRE_HANDLER**

fun()



**INSTANT_GAME_ROUND_RESULT_HANDLER**

fun(resultState: any, resultRound: any)



**INSTANT_GAME_START_HANDLER**

fun()

Event triggers when an instance game starts.

**INSTANT_GAME_START_POINT_RETURN_MSG_HANDLER**

fun(remainSec: number)



**INSTANT_GAME_UNEARNED_WIN_REMAIN_TIME_HANDLER**

fun(remainTime: any)



**INSTANT_GAME_WAIT_HANDLER**

fun()

Event triggers when the instance game is waiting.

**INTERACTION_END_HANDLER**

fun()

Event triggers when the player stops interacting with something.

**INTERACTION_START_HANDLER**

fun()



**INVALID_NAME_POLICY_HANDLER**

fun(namePolicyType: any)



**INVEN_SLOT_SPLIT_HANDLER**

fun(invenType: string, slot: number, amount: number)

Event triggers when the player starts to split items in their inventory.

**ITEM_ACQUISITION_BY_LOOT_HANDLER**

fun(charName: string, itemLinkText: string, itemCount: number)

Event triggers when a player acquires loot.

**ITEM_CHANGE_MAPPING_RESULT_HANDLER**

fun(result: `ICMR_FAIL_DISABLE_ENCHANT`|`ICMR_FAIL`|`ICMR_SUCCESS`, oldGrade: `0`|`10`|`11`|`12`|`1`...(+8), oldGearScore: number, itemLink: string, bonusRate: number)

Event triggers when the player attempts to awaken a item.

**ITEM_ENCHANT_MAGICAL_RESULT_HANDLER**

fun(resultCode: number|`1`, itemLink: string, gemItemType: number)

Event triggers when the player enchants an item with a lunastone.

**ITEM_EQUIP_RESULT_HANDLER**

fun(ItemEquipResult: `ITEM_MATE_NOT_EQUIP`|`ITEM_MATE_UNSUMMON`|`ITEM_SLAVE_NOT_EQUIP`|`ITEM_SLAVE_UNSUMMON`)

Event triggers when the player attempt to equip an item to a mate/slave and it fails.

**ITEM_LOOK_CONVERTED_EFFECT_HANDLER**

fun(itemInfo: ItemInfo)

Event triggers when the player changes the image of an item.

**ITEM_LOOK_CONVERTED_HANDLER**

fun(itemLinkText: string)

Event triggers when the player changes the image of an item.

**ITEM_REFURBISHMENT_RESULT_HANDLER**

fun(resultCode: `IGER_BREAK`|`IGER_DISABLE`|`IGER_DOWNGRADE`|`IGER_FAIL`|`IGER_GREAT_SUCCESS`...(+2), itemLink: string, beforeScale: string, afterScale: string)

Event triggers when the player attempts to temper an item.

**ITEM_SMELTING_RESULT_HANDLER**

fun(resultCode: any, itemLink: any, smeltingItemType: any)



**ITEM_SOCKETING_RESULT_HANDLER**

fun(resultCode: `1`, itemLink: string, socketItemType: number, install: boolean)

Event triggers when the player sockets a lunagem into an item.

**ITEM_SOCKET_UPGRADE_HANDLER**

fun(socketItemType: number)

Event triggers when the player upgrades a socketed lunagem in an item.

**JURY_OK_COUNT_HANDLER**

fun(count: number, total: number)

Event triggers when the jury count changes.

**JURY_WAITING_NUMBER_HANDLER**

fun(num: number)

Event triggers when the player is checking their current jury waiting number.

**LABORPOWER_CHANGED_HANDLER**

fun(diff: number, laborPower: number)

Event triggers when the players labor changes.

**LEAVED_INSTANT_GAME_ZONE_HANDLER**

fun()

Event triggers when the player leaves the instance.

**LEAVE_ENCHANT_ITEM_MODE_HANDLER**

fun()

Event triggers when the player leaves enchanting mode.

**LEAVE_GACHA_LOOT_MODE_HANDLER**

fun()

Event triggers when the player closes the open chest (gold/silver/copper crate) window.

**LEAVE_ITEM_LOOK_CONVERT_MODE_HANDLER**

fun()

Event triggers when the player closes the item infusion window.

**LEAVING_WORLD_CANCELED_HANDLER**

fun()

Event triggers if the player cancels leaving the world.

**LEAVING_WORLD_STARTED_HANDLER**

fun(waitTime: number, exitTarget: `EXIT_CLIENT_NONE_ACTION`|`EXIT_CLIENT`|`EXIT_TO_CHARACTER_LIST`|`EXIT_TO_WORLD_LIST`, idleKick: boolean)

Event triggers if the player is leaving the world.

**LEFT_LOADING_HANDLER**

fun()

Event triggers when the player is finished loading.

**LEFT_SCREEN_SHOT_CAMERA_MODE_HANDLER**

fun()

Event triggers when the player leaves screenshot mode

**LEFT_SUBZONE_HANDLER**

fun(zoneId: `1000`|`1001`|`1002`|`1003`|`1004`...(+1351), zoneName: ""|"3rd Corps Camp"|"Abandoned Claimstake"|"Abandoned Drill Camp"|"Abandoned Guardpost"...(+1163))

Event triggers when the player leaves a subzone.

**LEFT_WORLD_HANDLER**

fun()

Event triggers when the player leaves the world.

**LEVEL_CHANGED_HANDLER**

fun(name: string, stringId: string)

Event triggers when a players level changes.

**LOOTING_RULE_BOP_CHANGED_HANDLER**

fun(rollForBop: number)

Event triggers when the raid leader sets the loot bind on pick up rule.

**LOOTING_RULE_GRADE_CHANGED_HANDLER**

fun(grade: number)

Event triggers when the raid leader sets the loot grade rule.

**LOOTING_RULE_MASTER_CHANGED_HANDLER**

fun(charName: string)

Event triggers when the raid leader sets the loot master rule.

**LOOTING_RULE_METHOD_CHANGED_HANDLER**

fun(lootMethod: number)

Event triggers when the raid leader sets the loot method rule.

**LOOT_BAG_CHANGED_HANDLER**

fun(setTime: boolean)

Event triggers when the player opens the loot bag of a mob.

**LOOT_BAG_CLOSE_HANDLER**

fun()

Event triggers when the player closes the loot bag of a mob.

**LOOT_DICE_HANDLER**

fun(charName: string, itemLinkText: string, diceValue: number)

Event triggers when a player rolls for an item.

**LOOT_PACK_ITEM_BROADCAST_HANDLER**

fun(characterName: string, sourceName: string, useItemLink: string, resultItemLink: string)

Event triggers when a player loots an item that broadcasts to the server.

**LP_MANAGE_CHARACTER_CHANGED_HANDLER**

fun()



**MAIL_INBOX_ATTACHMENT_TAKEN_ALL_HANDLER**

fun(mailId: number)

Event triggers when the player takes all from a mail.

**MAIL_INBOX_ITEM_TAKEN_HANDLER**

fun(index: number)

Event triggers when the player takes an item from the mail.

**MAIL_INBOX_MONEY_TAKEN_HANDLER**

fun()

Event triggers when the player takes money from the mail.

**MAIL_INBOX_TAX_PAID_HANDLER**

fun()

Event triggers when the player pays their taxes through the mail.

**MAIL_INBOX_UPDATE_HANDLER**

fun(read: boolean, mailListKind: number)

Event triggers when the players mailbox has an update.

**MAIL_RETURNED_HANDLER**

fun()



**MAIL_SENTBOX_UPDATE_HANDLER**

fun(read: any, mailListKind: any)

Event triggers when the player checks their sent mail.

**MAIL_SENT_SUCCESS_HANDLER**

fun()

Event triggers when the player successfully sends a mail.

**MAIL_WRITE_ITEM_UPDATE_HANDLER**

fun(index: number)

Event triggers when the player starts to create a new mail.

**MAP_EVENT_CHANGED_HANDLER**

fun()

Event triggers when the player opens the map.

**MATE_SKILL_LEARNED_HANDLER**

fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`, text: string)

Event triggers when the players mount or battlepet learns a new skill.

**MATE_STATE_UPDATE_HANDLER**

fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`, stateIndex: `1`|`2`|`3`|`4`)

Event triggers when the players mount of battlepet state changes without the
player changing it.

**MEGAPHONE_MESSAGE_HANDLER**

fun(show: any, channel: any, name: any, message: any, isMyMessage: any)



**MIA_MAIL_INBOX_ITEM_TAKEN_HANDLER**

fun()



**MIA_MAIL_INBOX_MONEY_TAKEN_HANDLER**

fun()



**MIA_MAIL_INBOX_TAX_PAID_HANDLER**

fun()



**MIA_MAIL_INBOX_UPDATE_HANDLER**

fun()



**MIA_MAIL_RETURNED_HANDLER**

fun()



**MIA_MAIL_SENTBOX_UPDATE_HANDLER**

fun()



**MIA_MAIL_SENT_SUCCESS_HANDLER**

fun()



**MIA_MAIL_WRITE_ITEM_UPDATE_HANDLER**

fun()



**MINE_AMOUNT_HANDLER**

fun()



**MINI_SCOREBOARD_CHANGED_HANDLER**

fun(status: "inactive"|"remove"|"update", info: MiniScoreBoardInfo[]|nil)

Event triggers when the mini scoreboard changes.

**MODE_ACTIONS_UPDATE_HANDLER**

fun()

Event triggers when the players dynamic shortcut is updated.

**MONEY_ACQUISITION_BY_LOOT_HANDLER**

fun(charName: any, moneyStr: any)



**MOUNT_BAG_UPDATE_HANDLER**

fun()



**MOUNT_PET_HANDLER**

fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`, isMyPet: boolean)

Event triggers when the player mounts a pet.

**MOUNT_SLOT_CHANGED_HANDLER**

fun()



**MOUSE_CLICK_HANDLER**

fun()



**MOUSE_DOWN_HANDLER**

fun(widgetId: string)

Event triggers when the player clicks on a widget.

**MOUSE_UP_HANDLER**

fun()



**MOVE_SPEED_CHANGE_HANDLER**

fun()

Event triggers when the players move speed changes.

**MOVIE_ABORT_HANDLER**

fun()



**MOVIE_LOAD_HANDLER**

fun()



**MOVIE_STOP_HANDLER**

fun()



**MULTI_QUEST_CONTEXT_SELECT_HANDLER**

fun(targetNpc: boolean, qtype: number, useDirectingMode: boolean, targetId: string, interactionValue: string)

Event triggers when the player interacts with a npc that has multiple quests.

**MULTI_QUEST_CONTEXT_SELECT_LIST_HANDLER**

fun(questList: QuestSelectList)

Event triggers when the player interacts with a npc that has multiple quests.

**NAME_TAG_MODE_CHANGED_MSG_HANDLER**

fun(changedNameTagMode: `1`|`2`|`3`|`4`)

Event triggers when the player changes the name tag mode.

**NATION_DOMINION_HANDLER**

fun(zoneGroupType: `0`|`100`|`101`|`102`|`103`...(+151), force: boolean)

Event triggers when the player is selecting a territory from the Faction > Auroria Territories window.

**NAVI_MARK_POS_TO_MAP_HANDLER**

fun()



**NAVI_MARK_REMOVE_HANDLER**

fun()



**NEW_DAY_STARTED_HANDLER**

fun()

Event triggers when a new day (daily reset) starts.

**NEW_SKILL_POINT_HANDLER**

fun(point: number)

Event triggers when the player gains a new skill point.

**NEXT_SIEGE_INFO_HANDLER**

fun(siegeInfo: NextSiegeInfo)

Event triggers when the next siege information is required.

**NOTICE_MESSAGE_HANDLER**

fun(noticeType: number, color: string, visibleTime: number, message: string, name: string)

Event triggers when a gm notice message occurs.

**NOTIFY_AUTH_ADVERTISING_MESSAGE_HANDLER**

fun(msg: any, remainTime: any)



**NOTIFY_AUTH_BILLING_MESSAGE_HANDLER**

fun(msg: any, remainTime: any)



**NOTIFY_AUTH_DISCONNECTION_MESSAGE_HANDLER**

fun(msg: any, remainTime: any)



**NOTIFY_AUTH_FATIGUE_MESSAGE_HANDLER**

fun(msg: any, remainTime: any)



**NOTIFY_AUTH_NOTICE_MESSAGE_HANDLER**

fun(message: any, visibleTime: any, needCountdown: any)



**NOTIFY_AUTH_TC_FATIGUE_MESSAGE_HANDLER**

fun(msg: any, remainTime: any)



**NPC_CRAFT_ERROR_HANDLER**

fun()



**NPC_CRAFT_UPDATE_HANDLER**

fun()



**NPC_INTERACTION_END_HANDLER**

fun()

Event triggers when the player ends a interaction with a npc.

**NPC_INTERACTION_START_HANDLER**

fun(value: "quest", addedValue: "complete"|"start"|"talk", npcId: string)

Event triggers when the player starts a interaction with a npc.

**NPC_UNIT_EQUIPMENT_CHANGED_HANDLER**

fun()



**NUONS_ARROW_SHOW_HANDLER**

fun(visible: any)



**NUONS_ARROW_UI_MSG_HANDLER**

fun(nuonsMsgInfo: any)



**NUONS_ARROW_UPDATE_HANDLER**

fun(data: NuonsArrowUpdate[])

Event triggers when a continent has regional community center development update.

**ONE_AND_ONE_CHAT_ADD_MESSAGE_HANDLER**

fun(channelId: any, speakerName: any, message: any, isSpeakerGm: any)



**ONE_AND_ONE_CHAT_END_HANDLER**

fun(channelId: any)



**ONE_AND_ONE_CHAT_START_HANDLER**

fun(channelId: any, targetName: any)



**OPEN_CHAT_HANDLER**

fun()

Event triggers when the player opens their chat.

**OPEN_COMMON_FARM_INFO_HANDLER**

fun(commonFarmType: `1`|`2`|`3`|`4`)

Event triggers when the player opens information board at a public farm to check which items can be placed.

**OPEN_CONFIG_HANDLER**

fun()

Event triggers when the player opens the escape menu with the escape key.

**OPEN_CRAFT_ORDER_BOARD_HANDLER**

fun(tabName: string)

Event triggers when the player opens the crafting request window by right clicking on a crafting request.

**OPEN_EMBLEM_IMPRINT_UI_HANDLER**

fun()



**OPEN_EMBLEM_UPLOAD_UI_HANDLER**

fun(doodad: number)

Event triggers when the player opens the crest printer window.

**OPEN_EXPEDITION_PORTAL_LIST_HANDLER**

fun(addPortal: boolean, interactionDoodad: boolean, expeditionOwner: boolean)

Event triggers when the player interacts with their guild portal.

**OPEN_MUSIC_SHEET_HANDLER**

fun(isShow: boolean, itemIdString: string, isWide: number)

Event triggers when the player opens a music sheet to begin composing music.

**OPEN_NAVI_DOODAD_NAMING_DIALOG_HANDLER**

fun()



**OPEN_PAPER_HANDLER**

fun(type: "book"|"page", idx: number)

Event triggers when the player opens a letter/book in their inventory.

**OPEN_PROMOTION_EVENT_URL_HANDLER**

fun(url: any)



**OPTIMIZATION_RESULT_MESSAGE_HANDLER**

fun(activated: boolean)

Event triggers when the player enables/disables optimization.

**OPTION_RESET_HANDLER**

fun()

Event triggers when the player resets a Game Settings option.

**PASSENGER_MOUNT_PET_HANDLER**

fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)

Event triggers when a passenger mounts the players pet.

**PASSENGER_UNMOUNT_PET_HANDLER**

fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)

Event triggers when a passenger unmounts the players pet.

**PETMATE_BOUND_HANDLER**

fun()

Event triggers when the player mounts another players pet.

**PETMATE_UNBOUND_HANDLER**

fun()

Event triggers when the player unmounts another players pet.

**PET_AUTO_SKILL_CHANGED_HANDLER**

fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)

Event triggers when the players pet auto skill changes

**PET_FOLLOWING_MASTER_HANDLER**

fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)

Event triggers when the players mount state t is following.

**PET_STOP_BY_MASTER_HANDLER**

fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)

Event triggers when the players mount state is not following.

**PLAYER_AA_POINT_HANDLER**

fun(change: any, changeStr: any, itemTaskType: any, info: any)



**PLAYER_ABILITY_LEVEL_CHANGED_HANDLER**

fun()

Event triggers when the players ability level changes.

**PLAYER_BANK_AA_POINT_HANDLER**

fun()



**PLAYER_BANK_MONEY_HANDLER**

fun(amount: number, amountStr: string)

Event triggers when the player deposits or withdraws from their bank.

**PLAYER_BM_POINT_HANDLER**

fun(oldBmPoint: string)

Event triggers when the players loyalty tokens change.

**PLAYER_GEAR_POINT_HANDLER**

fun()



**PLAYER_HONOR_POINT_CHANGED_IN_HPW_HANDLER**

fun(amount: number)

Event triggers when the players honor points change in a zone.

**PLAYER_HONOR_POINT_HANDLER**

fun(amount: number, amountStr: string, isCombatInHonorPointWar?: boolean)

Event triggers when the players honor points change.

**PLAYER_JURY_POINT_HANDLER**

fun()

Event triggers when the player completes a trial.

**PLAYER_LEADERSHIP_POINT_HANDLER**

fun(amount: number, amountStr: string)

Event triggers when the player receives leadership points.

**PLAYER_LIVING_POINT_HANDLER**

fun(amount: number, amountStr: string)

Event triggers when the players vocation changes.

**PLAYER_MONEY_HANDLER**

fun(change: number, changeStr: string, itemTaskType: number, info?: any)

Event triggers when the players money changes

**PLAYER_RESURRECTED_HANDLER**

fun()

Event triggers when the player accepts a resurrection.

**PLAYER_RESURRECTION_HANDLER**

fun(name: string)

Event triggers when the player has been resurrected.

**PLAYER_VISUAL_RACE_HANDLER**

fun()

Event triggers when the player changes race.

**POST_CRAFT_ORDER_HANDLER**

fun(result: boolean)

Event triggers when the player attempts to list a craftring request.

**PRELIMINARY_EQUIP_UPDATE_HANDLER**

fun()

Event triggers when the player changes equipment.

**PREMIUM_GRADE_CHANGE_HANDLER**

fun(prevPremiumGrade: any, presentPremiumGrade: any)



**PREMIUM_LABORPOWER_CHANGED_HANDLER**

fun(onlineDiff: any, offlineDiff: any)



**PREMIUM_POINT_CHANGE_HANDLER**

fun()



**PREMIUM_SERVICE_BUY_RESULT_HANDLER**

fun(err: any)



**PREMIUM_SERVICE_LIST_UPDATED_HANDLER**

fun()

Event triggers when the player opens the patron window.

**PROCESS_CRAFT_ORDER_HANDLER**

fun(result: boolean, processType: `COPT_INSTANT`|`COPT_INVALID`|`COPT_PC`)

Event triggers when the player processes a crafting order.

**PROGRESS_TALK_QUEST_CONTEXT_HANDLER**

fun(qtype: number, useDirectingMode: boolean, npcId: string, doodadId?: string)

Event triggers when the player talks to a npc that is required to progress a quest.

**QUEST_CHAT_LET_IT_DONE_HANDLER**

fun()



**QUEST_CHAT_RESTART_HANDLER**

fun()



**QUEST_CONTEXT_CONDITION_EVENT_HANDLER**

fun(objText: string, condition: "dropped"|"started"|"updated")

Event triggers when the players quest condition occurs.

**QUEST_CONTEXT_OBJECTIVE_EVENT_HANDLER**

fun(objText: string)

Event triggers when the players quest updates.

**QUEST_CONTEXT_UPDATED_HANDLER**

fun(qType: number, status: "dropped"|"started"|"updated")

Event triggers when the players quest updates.

**QUEST_DIRECTING_MODE_END_HANDLER**

fun()



**QUEST_DIRECTING_MODE_HOT_KEY_HANDLER**

fun(key: `1`|`2`|`3`)

Event triggers when the player uses a hot key to advance the quest dialog.

**QUEST_ERROR_INFO_HANDLER**

fun(errNum: `10`|`11`|`12`|`13`|`14`...(+35), qtype: number, questDetail?: string, isCommon?: boolean)

Event triggers when the players quest has an error.

**QUEST_HIDDEN_COMPLETE_HANDLER**

fun(qtype: number)

Event triggers when the player completes a hidden quest.

**QUEST_HIDDEN_READY_HANDLER**

fun(qtype: number)

Event triggers when the player activates a hidden quest.

**QUEST_LEFT_TIME_UPDATED_HANDLER**

fun(qtype: number, leftTime: number)

Event triggers when the players quest updates.

**QUEST_MSG_HANDLER**

fun(arg1: string, arg2: string)



**QUEST_NOTIFIER_START_HANDLER**

fun()

Event triggers when the player loads into the world and the quest notifier needs to be initialized or refreshed.

**QUEST_QUICK_CLOSE_EVENT_HANDLER**

fun(qtype: number)

Event triggers when a quests window is closed to show a video.

**RAID_APPLICANT_LIST_HANDLER**

fun(data: RaidApplicantData)

Event triggers when the player checks their raid applicant list.

**RAID_FRAME_SIMPLE_VIEW_HANDLER**

fun(simple: boolean)

Event triggers when the player checks the status display of the raid and
changing raid window zoom setting.

**RAID_RECRUIT_DETAIL_HANDLER**

fun(data: RaidRecruitDetailInfo)

Event triggers when the player views the details of a raid recruit.

**RAID_RECRUIT_HUD_HANDLER**

fun(infos: RaidRecruitInfo[])

Event triggers when the raid hud changes.

**RAID_RECRUIT_LIST_HANDLER**

fun(data: RaidRecruitListInfo)

Event triggers when the player views the raid recruit window.

**RANDOM_SHOP_INFO_HANDLER**

fun(isHide: boolean, isdailyReset: boolean)

Event triggers when the manastorm shop updates.

**RANDOM_SHOP_UPDATE_HANDLER**

fun()

Event triggers when the manastorm shop updates.

**RANK_ALARM_MSG_HANDLER**

fun(rankType: `RK_CHARACTER_GEAR_SCORE`|`RK_EXPEDITION_BATTLE_RECORD`|`RK_EXPEDITION_GEAR_SCORE`|`RK_EXPEDITION_INSTANCE_RATING`|`RK_FISHING_SUM`...(+7), msg: string)

Event triggers when a ranking information alarm occurs.

**RANK_DATA_RECEIVED_HANDLER**

fun()



**RANK_LOCK_HANDLER**

fun()



**RANK_PERSONAL_DATA_HANDLER**

fun()

Event triggers when the player views a tab of the ranking information window
that requires the players personal data.

**RANK_RANKER_APPEARANCE_HANDLER**

fun(charID: number)

Event triggers when the player views the gear of a player on the ranking
information window.

**RANK_REWARD_SNAPSHOTS_HANDLER**

fun(rankType: number, divisionId: number)

Event triggers when the player views a pervious ranking snapshot.

**RANK_SEASON_RESULT_RECEIVED_HANDLER**

fun()



**RANK_SNAPSHOTS_HANDLER**

fun(rankType: number, divisionId: number)

Event triggers when the player checks ranking info.

**RANK_UNLOCK_HANDLER**

fun()



**RECOVERABLE_EXP_HANDLER**

fun(stringId: string, restorableExp: number, expLoss: number)

Event triggers when the player dies and has recoverable exp.

**RECOVERED_EXP_HANDLER**

fun(stringId: string, recoveredExp: number)

Event triggers when the player recovers lost exp.

**REENTRY_NOTIFY_DISABLE_HANDLER**

fun()

Event triggers when the player is no longer able to reenter a instance.

**REENTRY_NOTIFY_ENABLE_HANDLER**

fun(param: ReentryParam)

Event triggers when the player can still reenter a instance.

**REFRESH_COMBAT_RESOURCE_HANDLER**

fun(resetBar: boolean, groupType: number, resourceType: number, point?: number)

Event triggers when the players combat resource has been refreshed.

**REFRESH_COMBAT_RESOURCE_UPDATE_TIME_HANDLER**

fun(updateReesourceType: number, nowTime: number, show: boolean)

Event triggers when the players combat resource has been updated.

**REFRESH_SQUAD_LIST_HANDLER**

fun(arg?: boolean)

Event triggers when the players squad list has refreshed.

**REFRESH_STORE_MERCHANT_GOOD_LIMIT_PURCHASE_HANDLER**

fun()

Event triggers when the stores purchase count for a limited item changes.

**RELOAD_CASH_HANDLER**

fun(money: any)



**REMOVED_ITEM_HANDLER**

fun(itemLinkText: string, itemCount: number, removeState: "consume"|"conversion"|"destroy", itemTaskType: number, tradeOtherName: string)

Event triggers when an item has been deleted/removed from the players inventory.

**REMOVE_BOSS_TELESCOPE_INFO_HANDLER**

fun(arg: any)



**REMOVE_CARRYING_BACKPACK_SLAVE_INFO_HANDLER**

fun(arg: any)



**REMOVE_FISH_SCHOOL_INFO_HANDLER**

fun(index: number)

Event triggers when a fish is no longer on fish telescope.

**REMOVE_GIVEN_QUEST_INFO_HANDLER**

fun(arg1: number, qType: number)

Event triggers when the new quest is not within range of the player.

**REMOVE_NOTIFY_QUEST_INFO_HANDLER**

fun(qType: number)

Event triggers when a quest notifcation is removed.

**REMOVE_PING_HANDLER**

fun()

Event triggers when the player enters/exits an instance and the map needs to remove all pings.

**REMOVE_SHIP_TELESCOPE_INFO_HANDLER**

fun(arg: number)

Event triggers when a ship is no longer on the telescope.

**REMOVE_TRANSFER_TELESCOPE_INFO_HANDLER**

fun(index: number)

Event triggers when a transfer vehicle is no longer on the telescope.

**RENAME_PORTAL_HANDLER**

fun()

Event triggers when the player renames a portal.

**RENEW_ITEM_SUCCEEDED_HANDLER**

fun()



**REPORT_BAD_USER_UPDATE_HANDLER**

fun()



**REPORT_CRIME_HANDLER**

fun(doodadName: string, locationName: string)

Event triggers when the player begins to report a crime.

**REPUTATION_GIVEN_HANDLER**

fun()

Event triggers when the player thumbs a player.

**REQUIRE_DELAY_TO_CHAT_HANDLER**

fun(channel: any, delay: any, remain: any)



**REQUIRE_ITEM_TO_CHAT_HANDLER**

fun(channel: any)



**RESET_INGAME_SHOP_MODELVIEW_HANDLER**

fun()



**RESIDENT_BOARD_TYPE_HANDLER**

fun(boardType: `1`|`2`|`3`|`4`|`5`...(+2))

Event triggers when the player views the residents board type.

**RESIDENT_HOUSING_TRADE_LIST_HANDLER**

fun(infos: ResidentHousing, rownum: number, filter: number, searchword: string, refresh: number)

Event triggers when the player views the housing sales tab of a zone.

**RESIDENT_MEMBER_LIST_HANDLER**

fun(total: number, start: number, refresh: number, members: ResidentMember[])

Event triggers when the player views the housing residents tab of a zone.

**RESIDENT_SERVICE_POINT_CHANGED_HANDLER**

fun(zoneGroupName: "Abyssal Library"|"Aegis Island"|"Ahnimar Event Arena"|"Ahnimar"|"Airain Rock"...(+143), amount: number, total: number)

Event triggers when the players residental contribution points change.

**RESIDENT_TOWNHALL_HANDLER**

fun(info: ResidentInfo)

Event triggers when the player accesses the task board at resident townhall
of the zone.

**RESIDENT_ZONE_STATE_CHANGE_HANDLER**

fun()

Event triggers when the player is viewing the location of land for sale in
sales tab of the resident townhall for the zone.

**ROLLBACK_FAVORITE_CRAFTS_HANDLER**

fun(datas: Craft[])

Event triggers when the players  favorite crafts are rolledback.

**RULING_CLOSED_HANDLER**

fun()

Event triggers when a jury ruling is has come to an end.

**RULING_STATUS_HANDLER**

fun(count: number, total: number, sentenceType: `SENTENCE_GUILTY_1`|`SENTENCE_GUILTY_2`|`SENTENCE_GUILTY_3`|`SENTENCE_GUILTY_4`|`SENTENCE_GUILTY_5`...(+1), sentenceTime: number)

Event triggers when a member of the jury votes.

**SAVE_PORTAL_HANDLER**

fun()

Event triggers when the player saves a portal.

**SAVE_SCREEN_SHOT_HANDLER**

fun(path: string)

Event triggers when the player saves a screenshot.

**SCALE_ENCHANT_BROADCAST_HANDLER**

fun(characterName: string, resultCode: `IEBCT_ENCHANT_GREATE_SUCCESS`|`IEBCT_ENCHANT_SUCCESS`|`IEBCT_EVOVING`, itemLink: string, oldScale: string, newScale: string)

Event triggers when a player increases the temper of their equipment and it is broadcasted to the server.

**SCHEDULE_ITEM_SENT_HANDLER**

fun()

Event triggers when the player clicks on an scheduled item (loyalty token) to
collect it.

**SCHEDULE_ITEM_UPDATED_HANDLER**

fun()

Event triggers every minute to update the schedule.

**SELECTED_INSTANCE_DIFFICULT_HANDLER**

fun(difficult: any)



**SELECT_SQUAD_LIST_HANDLER**

fun(data: SelectSquadList)

Event triggers when the player view the Recruit/Search page for instances.

**SELL_SPECIALTY_CONTENT_INFO_HANDLER**

fun(list: SpecialtyInfo)

Event triggers when the player checks the specialty price information at a
trade outlet.

**SELL_SPECIALTY_HANDLER**

fun(text: string)

Event triggers when the player sells specialty cargo.

**SET_DEFAULT_EXPAND_RATIO_HANDLER**

fun(isSameZone: boolean)

Event triggers when the player is changing zones in the map.

**SET_EFFECT_ICON_VISIBLE_HANDLER**

fun(isShow: boolean, arg: Widget)

Event triggers when a effect icon should be visible on the map.

**SET_OVERHEAD_MARK_HANDLER**

fun(unitId: string, index: number, visible: boolean)

Event triggers when a player has a mark set or remove on them.

**SET_PING_MODE_HANDLER**

fun(pick: boolean)

Event triggers when the player enables/disables ping mode.

**SET_REBUILD_HOUSE_CAMERA_MODE_HANDLER**

fun()

Event triggers when the player enters house preview mode for remodeling a
building.

**SET_ROADMAP_PICKABLE_HANDLER**

fun(pick: boolean)

Event triggers when the player enables/disables ping mode.

**SHOW_ACCUMULATE_HONOR_POINT_DURING_HPW_HANDLER**

fun(zoneName: string, accumulatePoint: number, state?: any)

Event triggers when the players honor points change during war due to combat.

**SHOW_ADDED_ITEM_HANDLER**

fun(item: ItemInfo, count: number, taskType: number)

Event triggers when the player receives an item.

**SHOW_ADD_TAB_WINDOW_HANDLER**

fun()



**SHOW_BANNER_HANDLER**

fun(show: boolean, instanceType: number, remainPreNoticeTime?: any)

Event triggers when a banner should appear for content.

**SHOW_CHAT_TAB_CONTEXT_HANDLER**

fun(arg1: Widget, arg2: number)

Event triggers when the player right clicks on a tab for the context menu.

**SHOW_CRIME_RECORDS_HANDLER**

fun(trialState: `TRIAL_FINAL_STATEMENT`|`TRIAL_FREE`|`TRIAL_GUILTY_BY_SYSTEM`|`TRIAL_GUILTY_BY_USER`|`TRIAL_POST_SENTENCE`...(+4))

Event triggers when the player joins a trial and triggers at each trial state.

**SHOW_DEFENDANT_WAIT_JURY_HANDLER**

fun()



**SHOW_DEFENDANT_WAIT_TRIAL_HANDLER**

fun()



**SHOW_RAID_FRAME_SETTINGS_HANDLER**

fun()

Event triggers when the player views the raid frame settings.

**SHOW_RENAME_EXPEIDITON_HANDLER**

fun(byItem: any, triedName: any, ownerWnd: any)



**SHOW_ROADMAP_TOOLTIP_HANDLER**

fun(tooltipInfo: TooltipInfo[], tooltipCount: number)

Event triggers when a tooltip is shown on the roadmap.

**SHOW_SEXTANT_POS_HANDLER**

fun(sextantPos: SEXTANT)

Event triggers when the player uses a sextant.

**SHOW_SLAVE_INFO_HANDLER**

fun()

Event triggers when the player checks the summon information of the vehicle.

**SHOW_VERDICTS_HANDLER**

fun(p1: number, p2: number, p3: number, p4: number, p5: number)

Event triggers when the player has to make a verdict in a trial.

**SHOW_WORLDMAP_LOCATION_HANDLER**

fun(zoneId: `0`|`100`|`101`|`102`|`104`...(+315), x: number, y: number, z: number)

Event triggers when the world map has a location to be shown.

**SHOW_WORLDMAP_TOOLTIP_HANDLER**

fun(tooltipInfo: TooltipInfo[], tooltipCount: number)

Event triggers when a tooltip is shown on the worldmap.

**SIEGEWEAPON_BOUND_HANDLER**

fun(arg: number)

Event triggers when the player mounts a siege weapon.

**SIEGEWEAPON_UNBOUND_HANDLER**

fun()

Event triggers when the player unmounts a siege weapon.

**SIEGE_APPOINT_RESULT_HANDLER**

fun(isDefender: any, faction: any)



**SIEGE_RAID_REGISTER_LIST_HANDLER**

fun(zoneGroupType?: any, bRegistState?: any, bListUpdate?: any)

Event triggers when a siege raid is created.

**SIEGE_RAID_TEAM_INFO_HANDLER**

fun(info: SiegeRaidInfo)



**SIEGE_WAR_ENDED_HANDLER**

fun()



**SIM_DOODAD_MSG_HANDLER**

fun(code?: any)



**SKILLS_RESET_HANDLER**

fun(ability: "adamant"|"assassin"|"death"|"fight"|"hatred"...(+9))

Event triggers when the player resets a skill tree.

**SKILL_ALERT_ADD_HANDLER**

fun(statusBuffType: `10`|`11`|`12`|`13`|`14`...(+16), buffId: number, remainTime: number, name: "Bleed (All)"|"Bubble Trap"|"Charmed"|"Deep Freeze"|"Enervate"...(+16))

Event triggers when the player receives a status debuff.

**SKILL_ALERT_REMOVE_HANDLER**

fun(statusBuffType: `10`|`11`|`12`|`13`|`14`...(+16))

Event triggers when the players status debuff is gone.

**SKILL_CHANGED_HANDLER**

fun(text: string, level: number, ability: "adamant"|"assassin"|"death"|"fight"|"hatred"...(+9))

Event triggers when the players skill level changes.

**SKILL_LEARNED_HANDLER**

fun(text: string, skillType: "buff"|"skill")

Event triggers when the player learns a skill.

**SKILL_MAP_EFFECT_HANDLER**

fun(info: SkillMapEffectInfo)

Event triggers when the worldmap has an effect that that needs to be shown.

**SKILL_MSG_HANDLER**

fun(resultCode: "ALERT_OPTION"|"ALERT_OPTION_POPUP_DESC"|"ALERT_OPTION_POSITION_1_TEXT"|"ALERT_OPTION_POSITION_2_TEXT"|"ALERT_OPTION_POSITION_BASIC_TEXT"...(+202), param: string, skillType: number)

Event triggers when the player uses as skill has a message.

**SKILL_SELECTIVE_ITEM_HANDLER**

fun(list: SkillSelectiveItemList, usingSlotIndex: number)

Event triggers when the player is trying tos select an item from a supply
kit.

**SKILL_SELECTIVE_ITEM_NOT_AVAILABLE_HANDLER**

fun()



**SKILL_SELECTIVE_ITEM_READY_STATUS_HANDLER**

fun(status: boolean)

Event triggers when the player attempts to open an item that has a selection.

**SKILL_UPGRADED_HANDLER**

fun(skillType: number, level: number, arg: number)

Event triggers when the players skill upgrades.

**SLAVE_SHIP_BOARDING_HANDLER**

fun()



**SLAVE_SHIP_UNBOARDING_HANDLER**

fun()



**SLAVE_SPAWN_HANDLER**

fun()

Event triggers when the player spawns a vehicle.

**SPAWN_PET_HANDLER**

fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`)

Event triggers when the player spawns a pet.

**SPECIALTY_CONTENT_RECIPE_INFO_HANDLER**

fun(list: any)



**SPECIALTY_RATIO_BETWEEN_INFO_HANDLER**

fun(specialtyRatioTable: SpecialtyRatioInfo[])

Event triggers when the player checks the specialty ratio between two zones.

**SPECIAL_ABILITY_LEARNED_HANDLER**

fun(recvAbility: number)

Event triggers when the player learns to transform.

**SPELLCAST_START_HANDLER**

fun(spellName: string, castingTime: number, caster: "player"|"target"|"targettarget"|"watchtarget", castingUseable: boolean)

Event triggers when a local unit starts casting a spell.

**SPELLCAST_STOP_HANDLER**

fun(caster: "player"|"target"|"targettarget"|"watchtarget")

Event triggers when a local unit stops casting a spell.

**SPELLCAST_SUCCEEDED_HANDLER**

fun(caster: "player"|"target"|"targettarget"|"watchtarget")

Event triggers when a local unit successfully casts a spell.

**STARTED_DUEL_HANDLER**

fun()



**START_CHAT_BUBBLE_HANDLER**

fun(arg: string)

Event triggers when the player interacts with a npc that starts a chat bubble.

**START_HERO_ELECTION_PERIOD_HANDLER**

fun()



**START_QUEST_CONTEXT_DOODAD_HANDLER**

fun(qtype: number, useDirectingMode: boolean, doodadId: number)

Event triggers when the player starts a quest with a context doodad.

**START_QUEST_CONTEXT_HANDLER**

fun(qtype: any, useDirectingMode: any, npcId: any)



**START_QUEST_CONTEXT_NPC_HANDLER**

fun(qtype: number, useDirectingMode: boolean, npcId: string)

Event triggers when the player interacts with a npc that gives a quest with context,

**START_QUEST_CONTEXT_SPHERE_HANDLER**

fun(qtype: number, stype: number)

Event triggers when the player enters a quest sphere and a quest starts.

**START_SENSITIVE_OPERATION_HANDLER**

fun(remainTime: any)



**START_TALK_QUEST_CONTEXT_HANDLER**

fun(doodadId: any)



**START_TODAY_ASSIGNMENT_HANDLER**

fun(stepName: any)

Event triggers when the player opens a daily assignment.

**STICKED_MSG_HANDLER**

fun()



**STILL_LOADING_HANDLER**

fun(loadingProgress: any)



**STORE_ADD_BUY_ITEM_HANDLER**

fun()



**STORE_ADD_SELL_ITEM_HANDLER**

fun(slotNumber: number)

Event triggers when the player attempts to sell an item a merchant.

**STORE_BUY_HANDLER**

fun(itemLinkText: string, stackCount: number)

Event triggers when the player buys an item from merchant.

**STORE_FULL_HANDLER**

fun()

Event triggers when the player attempts to purchase an item from a store and their bag is full.

**STORE_SELL_HANDLER**

fun(itemLinkText: string, stackCount: number)

Event triggers when the player has sold an item to a merchant.

**STORE_SOLD_LIST_HANDLER**

fun(soldItems: ItemInfo[])

Event triggers when the player accesses a merchant or when the merchants sold
list updates.

**STORE_TRADE_FAILED_HANDLER**

fun()

Event triggers when the player attempts to purchase an item from a store and their bag is full.

**SURVEY_FORM_UPDATE_HANDLER**

fun()



**SWITCH_ENCHANT_ITEM_MODE_HANDLER**

fun(mode: "awaken"|"element"|"evolving"|"evolving_re_roll"|"gem"...(+7))

Event triggers when the player changes their enchanting mode.

**SYNC_PORTAL_HANDLER**

fun()



**SYSMSG_HANDLER**

fun(msg: string)

Event triggers when there is a system message.

**SYS_INDUN_STAT_UPDATED_HANDLER**

fun()

Event triggers when the player views the system status of a dungeon instance.

**TARGET_CHANGED_HANDLER**

fun(stringId: string|nil, targetType: "housing"|"npc"|nil)

Event triggers when the player targets a new unit.

**TARGET_NPC_HEALTH_CHANGED_FOR_DEFENCE_INFO_HANDLER**

fun(curHp: any, maxHp: any)



**TARGET_OVER_HANDLER**

fun(targetType: "doodad"|"nothing"|"ui"|"unit", unitId: string|number)

Event triggers when the players mouse is over a target.

**TARGET_TO_TARGET_CHANGED_HANDLER**

fun(stringId: string|nil, targetType: "doodad"|"nothing"|"ui"|"unit"|nil)

Event triggers when the players target changes their target.

**TEAM_JOINTED_HANDLER**

fun()

Event triggers when a raid joins another raid join.

**TEAM_JOINT_BREAK_HANDLER**

fun(requester: any, enable: any)



**TEAM_JOINT_BROKEN_HANDLER**

fun()

Event triggers when a co raid splits.

**TEAM_JOINT_CHAT_HANDLER**

fun()



**TEAM_JOINT_RESPONSE_HANDLER**

fun()



**TEAM_JOINT_TARGET_HANDLER**

fun(isJointable: any)



**TEAM_MEMBERS_CHANGED_HANDLER**

fun(reason: "joined"|"leaved"|"refreshed", value: TeamMember)

Event triggers when the players team changes.

**TEAM_MEMBER_DISCONNECTED_HANDLER**

fun(isParty: boolean, jointOrder: number, stringId: string, memberIndex: number)

Event triggers when a player in the team is disconnected.

**TEAM_MEMBER_UNIT_ID_CHANGED_HANDLER**

fun(oldStringId: string, stringId: string)

Event triggers when a team members unit id changes.

**TEAM_ROLE_CHANGED_HANDLER**

fun(jointOrder: number, memberIndex: number, role: `TMROLE_DEALER`|`TMROLE_HEALER`|`TMROLE_NONE`|`TMROLE_RANGED_DEALER`|`TMROLE_TANKER`)

Event triggers when a player changes their team role.

**TEAM_SUMMON_SUGGEST_HANDLER**

fun()



**TIME_MESSAGE_HANDLER**

fun(key: any, timeTable: any)



**TOGGLE_CHANGE_VISUAL_RACE_HANDLER**

fun(data: ChangeVisualRace)

Event triggers when the player attempts to use a race change elixir.

**TOGGLE_COMMUNITY_HANDLER**

fun()



**TOGGLE_CRAFT_HANDLER**

fun()



**TOGGLE_FACTION_HANDLER**

fun()



**TOGGLE_FOLLOW_HANDLER**

fun(on: boolean)

Event triggers when the player toggles follow on another player.

**TOGGLE_IN_GAME_NOTICE_HANDLER**

fun(url: any)



**TOGGLE_PARTY_FRAME_HANDLER**

fun(show: boolean)

Event triggers when the players party is shown or hidden.

**TOGGLE_PET_MANAGE_HANDLER**

fun()



**TOGGLE_PORTAL_DIALOG_HANDLER**

fun(addPortal: boolean, skillTypeNumber: number, itemTypeNumber: number)

Event triggers when the player uses a teleport book.

**TOGGLE_RAID_FRAME2_HANDLER**

fun()

Event triggers when the second raid frame is shown or hidden.

**TOGGLE_RAID_FRAME_HANDLER**

fun(show: boolean)

Event triggers when the first raid frame is shown or hidden.

**TOGGLE_RAID_FRAME_PARTY_HANDLER**

fun(party: number, visible: boolean)

Event triggers when a party in the raid is shown or hidden.

**TOGGLE_ROADMAP_HANDLER**

fun()

Event triggers when the roadmap size is changed.

**TOGGLE_WALK_HANDLER**

fun(speed: number)

Event triggers when the player toggles walk.

**TOWER_DEF_INFO_UPDATE_HANDLER**

fun()

Event triggers when a tower defense information updates.

**TOWER_DEF_MSG_HANDLER**

fun(towerDefInfo: TowerDefInfo)

Event triggers when a tower defense message occurs.

**TRADE_CANCELED_HANDLER**

fun()



**TRADE_CAN_START_HANDLER**

fun(unitIdStr: any)



**TRADE_ITEM_PUTUP_HANDLER**

fun(inventoryIdx: number, amount: number)

Event triggers when the player puts an item up for trade.

**TRADE_ITEM_TOOKDOWN_HANDLER**

fun(inventoryIdx: any)



**TRADE_ITEM_UPDATED_HANDLER**

fun()



**TRADE_LOCKED_HANDLER**

fun()

Event triggers when the player locks their trade.

**TRADE_MADE_HANDLER**

fun()

Event triggers when a trade has been made.

**TRADE_MONEY_PUTUP_HANDLER**

fun(money: string)

Event triggers when the player puts up money on their trade.

**TRADE_OK_HANDLER**

fun()

Event triggers when the player confirms the trade.

**TRADE_OTHER_ITEM_PUTUP_HANDLER**

fun(otherIdx: any, type: any, stackCount: any, tooltip: any)



**TRADE_OTHER_ITEM_TOOKDOWN_HANDLER**

fun(otherIdx: any)



**TRADE_OTHER_LOCKED_HANDLER**

fun()

Event triggers when the other player being traded with locks their trade.

**TRADE_OTHER_MONEY_PUTUP_HANDLER**

fun(money: any)



**TRADE_OTHER_OK_HANDLER**

fun()

Event triggers when the other player being traded with confirms their trade.

**TRADE_STARTED_HANDLER**

fun(targetName: string)

Event triggers when the player starts trading with another player.

**TRADE_UI_TOGGLE_HANDLER**

fun()



**TRADE_UNLOCKED_HANDLER**

fun()



**TRANSFORM_COMBAT_RESOURCE_HANDLER**

fun(groupType: `10`|`11`|`12`|`14`|`1`...(+10))

Event triggers when a combat resource has been transformed. (e.g. When Vitalism Prayer reaches max stacks it converts into Divine Response.)

**TRIAL_CANCELED_HANDLER**

fun()



**TRIAL_CLOSED_HANDLER**

fun()

Event triggers when a trial is over.

**TRIAL_MESSAGE_HANDLER**

fun(text: string)

Event triggers when the player attempts to join a trial that has already begun.

**TRIAL_STATUS_HANDLER**

fun(state: `TRIAL_FINAL_STATEMENT`|`TRIAL_FREE`|`TRIAL_GUILTY_BY_SYSTEM`|`TRIAL_GUILTY_BY_USER`|`TRIAL_POST_SENTENCE`...(+4), juryCount: number, remainTime: number, arg: number)

Event triggers when the trial changes state,

**TRIAL_TIMER_HANDLER**

fun(state: `TRIAL_FINAL_STATEMENT`|`TRIAL_FREE`|`TRIAL_GUILTY_BY_SYSTEM`|`TRIAL_GUILTY_BY_USER`|`TRIAL_POST_SENTENCE`...(+4), remainTable: Time)

Event triggers every second a player is in a trial.

**TRY_LOOT_DICE_HANDLER**

fun(key: number, timeStamp: number, itemLink: string)

Event triggers when an item that needs to be rolled on drops.

**TUTORIAL_EVENT_HANDLER**

fun(id: number, info: TutorialInfo[])

Event triggers when an tutorial event occurs.

**TUTORIAL_HIDE_FROM_OPTION_HANDLER**

fun()

Event triggers when the player disables pop-up tutorial windows from their
options window.

**UCC_IMPRINT_SUCCEEDED_HANDLER**

fun()



**UI_ADDON_HANDLER**

fun()

Event triggers when `ADDON:FireAddon` has been called.

**UI_PERMISSION_UPDATE_HANDLER**

fun()

Event triggers when a ui permission update has occured.

**UI_RELOADED_HANDLER**

fun()

Event triggers when the players UI reloads. (Toggling Vertical Sync will cause a UI reload)

**UNFINISHED_BUILD_HOUSE_HANDLER**

fun(message: string)

Event triggers when the player attempts to place land while they already have land that is unbuilt.

**UNITFRAME_ABILITY_UPDATE_HANDLER**

fun(unitId: string)

Event triggers when a player changes their class.

**UNIT_COMBAT_STATE_CHANGED_HANDLER**

fun(combat: boolean, unitId: string)

Event triggers when the combat state of a unit changes.

**UNIT_DEAD_HANDLER**

fun(stringId: string, lossExp: number, lossDurabilityRatio: number)

Event triggers when a player dies.

**UNIT_DEAD_NOTICE_HANDLER**

fun(name: string)

Event triggers when a player dies.

**UNIT_ENTERED_SIGHT_HANDLER**

fun(unitId: number, unitType: "housing"|"npc", curHp: string, maxHp: string)

Event triggers when a unit enters the players sight.

**UNIT_EQUIPMENT_CHANGED_HANDLER**

fun(equipSlot: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27))

Event triggers when the player changes their gear.

**UNIT_KILL_STREAK_HANDLER**

fun(killStreakInfo: KillStreakInfo)

Event triggers when a player is on a kill streak.

**UNIT_LEAVED_SIGHT_HANDLER**

fun(unitId: number, unitType: "housing"|"npc")

Event triggers when a unit leaves the players sight.

**UNIT_NAME_CHANGED_HANDLER**

fun(unitId: string)

Event triggers when a units name changes.

**UNIT_NPC_EQUIPMENT_CHANGED_HANDLER**

fun(arg: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27))

Event triggers when the players pet equipment changes.

**UNMOUNT_PET_HANDLER**

fun(mateType: `MATE_TYPE_BATTLE`|`MATE_TYPE_NONE`|`MATE_TYPE_RIDE`, isMyPet: boolean)

Event triggers when the player unmounts a pet.

**UPDATE_BINDINGS_HANDLER**

fun()

Event triggers when the player applies updates to their hotkey bindings.

**UPDATE_BOSS_TELESCOPE_AREA_HANDLER**

fun()

Event triggers when the player starts and stops using a boss telescope.

**UPDATE_BOSS_TELESCOPE_INFO_HANDLER**

fun()

Event triggers every 500ms while the player is using a boss telescope.

**UPDATE_BOT_CHECK_INFO_HANDLER**

fun(totalTime: number, remainTime: number, count: number, question: string)

Event triggers when the bot check window info for the player updates.

**UPDATE_BUBBLE_HANDLER**

fun()



**UPDATE_CARRYING_BACKPACK_SLAVE_INFO_HANDLER**

fun()



**UPDATE_CHANGE_VISUAL_RACE_WND_HANDLER**

fun(fired: boolean)

Event triggers when the player starts/cancels the race transformation.

**UPDATE_CHRONICLE_INFO_HANDLER**

fun(info: ChronicleInfo)

Event triggers when the player purchases a chronicle quest.

**UPDATE_CHRONICLE_NOTIFIER_HANDLER**

fun(init: boolean, mainKey: number)

Event triggers when the players chronicle quest notification tab updates.

**UPDATE_CLIENT_DRIVEN_INFO_HANDLER**

fun(sceneInfo: any)



**UPDATE_COMPLETED_QUEST_INFO_HANDLER**

fun()

Event triggers when the map needs to update the completed quest information.

**UPDATE_CONTENT_ROSTER_WINDOW_HANDLER**

fun(updateInfo: any)



**UPDATE_CORPSE_INFO_HANDLER**

fun()

Event triggers when the player dies and when the player respawns.

**UPDATE_CRAFT_ORDER_ITEM_FEE_HANDLER**

fun(info: CraftOrderItemFee)

Event triggers when the player is attempting to list a requested item.

**UPDATE_CRAFT_ORDER_ITEM_SLOT_HANDLER**

fun(info?: CraftOrderItemSlot)

Event triggers when the request slot updates.

**UPDATE_CRAFT_ORDER_SKILL_HANDLER**

fun(key: string, fired: boolean)

Event triggers when the player starts to make, or cancels, a request for a
craft order.

**UPDATE_DEFENCE_INFO_HANDLER**

fun(info: any)



**UPDATE_DOMINION_INFO_HANDLER**

fun()

Event triggers whenever there is a siege information update.

**UPDATE_DOODAD_INFO_HANDLER**

fun()

Event triggers when the player opens the map.

**UPDATE_DURABILITY_STATUS_HANDLER**

fun(added: boolean, removed: boolean)

Event triggers when the players durability on their gear changes.

**UPDATE_DYEING_EXCUTABLE_HANDLER**

fun(executeable: boolean)

Event triggers when the player attempts to dye an item and the dye preview window opens.

**UPDATE_ENCHANT_ITEM_MODE_HANDLER**

fun(isExcutable: boolean, isLock: boolean)

Event triggers when an item is about to be enchanted and when at the start of the item being enchanted.

**UPDATE_EXPEDITION_PORTAL_HANDLER**

fun()

Event triggers when the players guild house portal list changes.

**UPDATE_EXPEDITION_TODAY_ASSIGNMENT_RESET_COUNT_HANDLER**

fun(count: number)

Event triggers when the players guild assignments reset.

**UPDATE_FACTION_REZ_DISTRICT_HANDLER**

fun()

Event triggers when a hero activates a hero respawn spot.

**UPDATE_FISH_SCHOOL_AREA_HANDLER**

fun()

Event triggers when the player starts and stops using a ship fish telescope.

**UPDATE_FISH_SCHOOL_INFO_HANDLER**

fun()

Event triggers every 500ms while the player is using a ship fish telescope.

**UPDATE_GACHA_LOOT_MODE_HANDLER**

fun(isExcutable: boolean, isLock: boolean)

Event triggers when the open chest (gold/silver/copper crate) window receives
a update when the player selects a crate or a key and when each crate is
opened.

**UPDATE_GIVEN_QUEST_STATIC_INFO_HANDLER**

fun()

Event triggers when the players given quest information updates.

**UPDATE_HERO_ELECTION_CONDITION_HANDLER**

fun()

Event triggers when the hero election condition has updated.

**UPDATE_HOUSING_INFO_HANDLER**

fun()

Event triggers when the housing information for the map updates.

**UPDATE_HOUSING_TOOLTIP_HANDLER**

fun(unitId: string)

Event triggers when a housing tooltip updates.

**UPDATE_INGAME_BEAUTYSHOP_STATUS_HANDLER**

fun()

Event triggers when the players ability to use the beautyshop changes.

**UPDATE_INGAME_SHOP_HANDLER**

fun(updateType: "cart"|"checkTime"|"exchange_ratio"|"goods"|"maintab"...(+2), page?: number, totalItems?: number, arg4?: any)

Event triggers when the in game shop receives an event.

**UPDATE_INGAME_SHOP_VIEW_HANDLER**

fun(viewType: "enter_mode"|"leave_mode"|"leave_sort", mode: `1`|`MODE_SEARCH`)

Event triggers when the in game shops view changes.

**UPDATE_INSTANT_GAME_INVITATION_COUNT_HANDLER**

fun(accept: number, totalSize: number)

Event triggers when a instance invitation goes out and each time a player joins.

**UPDATE_INSTANT_GAME_KILLSTREAK_COUNT_HANDLER**

fun(count: number)

Event triggers when the player kills another player in a instance.

**UPDATE_INSTANT_GAME_KILLSTREAK_HANDLER**

fun(count: any)



**UPDATE_INSTANT_GAME_SCORES_HANDLER**

fun()

Event triggers when an instance score updates.

**UPDATE_INSTANT_GAME_STATE_HANDLER**

fun()

Event triggers when the player queues an instance.

**UPDATE_INSTANT_GAME_TIME_HANDLER**

fun()

Event triggers every 500ms while the player is inside an instance.

**UPDATE_ITEM_LOOK_CONVERT_MODE_HANDLER**

fun()

Event triggers when the player opens/closes the item infusion window.

**UPDATE_MONITOR_NPC_HANDLER**

fun()

Event triggers when a montiored npc updates for the map.

**UPDATE_MY_SLAVE_POS_INFO_HANDLER**

fun()

Event triggers every 5 seconds to update the players slave (vehicle) position information.

**UPDATE_NPC_INFO_BROADCASTING_HANDLER**

fun(info: NpcBroadcastingInfo[])

Event triggers every second while the npc info is broadcasting for the player. (e.g. Hereafter Rebellion Win Condition/Progress)

**UPDATE_NPC_INFO_HANDLER**

fun()

Event triggers when npc information for the map has changed.

**UPDATE_OPTION_BINDINGS_HANDLER**

fun(overrided?: boolean, oldAction?: string, newAction?: string)

Event triggers when the player opens the settings window and triggers when
the player updates a setting.

**UPDATE_PING_INFO_HANDLER**

fun()

Event triggers when the map has a ping update.

**UPDATE_RESTORE_CRAFT_ORDER_ITEM_MATERIAL_HANDLER**

fun(infos: ItemInfo)

Event triggers when the player is attemping to revert a crafting order.

**UPDATE_RESTORE_CRAFT_ORDER_ITEM_SLOT_HANDLER**

fun(info: CraftOrderInfo|nil)

Event triggers when the player is attempting to revert a crafting order.

**UPDATE_RETURN_ACCOUNT_STATUS_HANDLER**

fun(status: `1`|`2`|`3`)

Event triggers when the player returns to the game after a month. https://na.archerage.to/forums/threads/returning-player-pack.10482/

**UPDATE_ROADMAP_ANCHOR_HANDLER**

fun(file: string)

Event triggers when the player changes zones.

**UPDATE_ROSTER_MEMBER_INFO_HANDLER**

fun(rosterId: any)



**UPDATE_ROUTE_MAP_HANDLER**

fun()



**UPDATE_SHIP_TELESCOPE_INFO_HANDLER**

fun()

Event triggers every 500ms while the player is using a ship telescope.

**UPDATE_SHORTCUT_SKILLS_HANDLER**

fun()



**UPDATE_SIEGE_SCORE_HANDLER**

fun(offensePoint: number, outlawPoint: number)

Event triggers when the siege score changes.

**UPDATE_SKILL_ACTIVE_TYPE_HANDLER**

fun()

Event triggers when the player learns a new emote.

**UPDATE_SLAVE_EQUIPMENT_SLOT_HANDLER**

fun(reload: boolean)

Event triggers when the players slave equipment slot updates.

**UPDATE_SPECIALTY_RATIO_HANDLER**

fun(sellItem: SellSpecialtyInfo)

Event triggers when the player opens the sell cargo window. Event triggers when `X2Store:GetZoneSpecialtyRatio` is used.

**UPDATE_SQUAD_HANDLER**

fun()

Event triggers when the players squad updates.

**UPDATE_TELESCOPE_AREA_HANDLER**

fun()

Event triggers when the player starts and stops using a ship telescope.

**UPDATE_TODAY_ASSIGNMENT_HANDLER**

fun(todayInfo?: TodayAssignmentInfo)

Event triggers when the players daily assignment updates.

**UPDATE_TODAY_ASSIGNMENT_RESET_COUNT_HANDLER**

fun(count: number)

Event triggers when the players daily assignments reset.

**UPDATE_TRANSFER_TELESCOPE_AREA_HANDLER**

fun()

Event triggers when the player starts and stops using a telescope.

**UPDATE_TRANSFER_TELESCOPE_INFO_HANDLER**

fun()

Event triggers every 500ms while the player is using a telescope.

**UPDATE_ZONE_INFO_HANDLER**

fun()

Event triggers when the player enters a new zone.

**UPDATE_ZONE_LEVEL_INFO_HANDLER**

fun(level: `0`|`1`|`2`|`3`, id: `0`|`100`|`101`|`102`|`103`...(+151))

Event triggers when the world map zone zoom level changes.

**UPDATE_ZONE_PERMISSION_HANDLER**

fun()

Event triggers when the player enters a zone with permissions. (Ipyna Ridge Akasch Invasion)

**VIEW_CASH_BUY_WINDOW_HANDLER**

fun(sellType: any)



**WAIT_FRIENDLIST_UPDATE_HANDLER**

fun(updateType: string)

Event triggers when the player receieves a friend request.

**WAIT_FRIEND_ADD_ALARM_HANDLER**

fun()

Event triggers when the player receieves a friend request.

**WAIT_REPLY_FROM_SERVER_HANDLER**

fun(waiting: boolean)

Event triggers when the player is waiting on a reply from the server.

**WATCH_TARGET_CHANGED_HANDLER**

fun(stringId: any)

Event triggers when the player starts tracking a new target.

**WEB_BROWSER_ESC_EVENT_HANDLER**

fun(browser: any)



**WORLD_MESSAGE_HANDLER**

fun(msg: string, iconKey: string, info: WorldMessageInfo)

Event triggers when a world message occurs.

**ZONE_SCORE_CONTENT_STATE_HANDLER**

fun(states?: any)

Event triggers when the zones content score changes.

**ZONE_SCORE_UPDATED_HANDLER**

fun(kind: any, info: any)



