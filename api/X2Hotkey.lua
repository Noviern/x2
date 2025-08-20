---@meta _

X2Hotkey = {} -- api/X2Hotkey

---@TODO: This is not complete!
---api/X2Hotkey
---@enum HOTKEY_ACTION
local HOTKEY_ACTION = {
  MOVEFORWARD                           = "moveforward",
  MOVEBACK                              = "moveback",
  MOVELEFT                              = "moveleft",
  MOVERIGHT                             = "moveright",
  TURNLEFT                              = "turnleft",
  TURNRIGHT                             = "turnright",
  AUTORUN                               = "autorun",
  JUMP                                  = "jump",
  DOWN                                  = "down",
  TOGGLE_WALK                           = "toggle_walk",
  OPEN_CHAT                             = "open_chat",
  TOGGLE_BAG                            = "toggle_bag",
  TOGGLE_SPELLBOOK                      = "toggle_spellbook",
  TOGGLE_CHARACTER                      = "toggle_character",
  TOGGLE_QUEST                          = "toggle_quest",
  TOGGLE_CRAFT_BOOK                     = "toggle_craft_book",
  CYCLE_HOSTILE_FORWARD                 = "cycle_hostile_forward",
  CYCLE_HOSTILE_BACKWARD                = "cycle_hostile_backward",
  CYCLE_FRIENDLY_FORWARD                = "cycle_friendly_forward",
  CYCLE_FRIENDLY_BACKWARD               = "cycle_friendly_backward",
  SCREENSHOTMODE                        = "screenshotmode",
  TOGGLE_COMMUNITY                      = "toggle_community",
  TOGGLE_WEB_MESSENGER                  = "toggle_web_messenger",
  TOGGLE_WEB_PLAY_DIARY                 = "toggle_web_play_diary",
  ACTIVATE_WEAPON                       = "activate_weapon",
  SELF_TARGET                           = "self_target",
  PET_TARGET                            = "pet_target",
  TOGGLE_FORCE_ATTACK                   = "toggle_force_attack",
  FRONT_CAMERA                          = "front_camera",
  LEFT_CAMERA                           = "left_camera",
  RIGHT_CAMERA                          = "right_camera",
  BACK_CAMERA                           = "back_camera",
  CYCLE_CAMERA_COUNTER_CLOCKWISE        = "cycle_camera_counter_clockwise",
  CYCLE_CAMERA_CLOCKWISE                = "cycle_camera_clockwise",
  TOGGLE_RAID_TEAM_MANAGER              = "toggle_raid_team_manager",
  OPEN_CONFIG                           = "open_config",
  DO_INTERACTION_1                      = "do_interaction_1",
  DO_INTERACTION_2                      = "do_interaction_2",
  DO_INTERACTION_3                      = "do_interaction_3",
  DO_INTERACTION_4                      = "do_interaction_4",
  TOGGLE_NAMETAG                        = "toggle_nametag",
  TOGGLE_RAID_FRAME                     = "toggle_raid_frame",
  OVER_HEAD_MARKER                      = "over_head_marker",
  DOF_TOGGLE                            = "dof_toggle",
  DOF_AUTO_FOCUS                        = "dof_auto_focus",
  DOF_ADD_DIST                          = "dof_add_dist",
  DOF_SUB_DIST                          = "dof_sub_dist",
  DOF_ADD_RANGE                         = "dof_add_range",
  DOF_SUB_RANGE                         = "dof_sub_range",
  TOGGLE_COMMERCIAL_MAIL                = "toggle_commercial_mail",
  TOGGLE_COMMON_FARM_INFO               = "toggle_common_farm_info",
  ACTION_BAR_PAGE_PREV                  = "action_bar_page_prev",
  ACTION_BAR_PAGE_NEXT                  = "action_bar_page_next",
  REPLY_LAST_WHISPERED                  = "reply_last_whispered",
  REPLY_LAST_WHISPER                    = "reply_last_whisper",
  SET_WATCH_TARGET                      = "set_watch_target",
  TOGGLE_RANKING                        = "toggle_ranking",
  TOGGLE_INGAMESHOP                     = "toggle_ingameshop",
  TOGGLE_ACHIEVEMENT                    = "toggle_achievement",
  QUEST_DIRECTING_INTERACTION           = "quest_directing_interaction",
  OPEN_TARGET_EQUIPMENT                 = "open_target_equipment",
  TOGGLE_AUCTION                        = "toggle_auction",
  TOGGLE_MAIL                           = "toggle_mail",
  TOGGLE_BATTLE_FIELD                   = "toggle_battle_field",
  TOGGLE_HERO                           = "toggle_hero",
  SWAP_PRELIMINARY_EQUIPMENT            = "swap_preliminary_equipment",
  TARGETS_TARGET_TO_TARGET              = "targets_target_to_target",
  WATCH_TARGETS_TARGET_TO_TARGET        = "watch_targets_target_to_target",
  OVER_HEAD_MARKER_TO_TARGET            = "over_head_marker_to_target",
  CYCLE_HOSTILE_HEAD_MARKER_FORWARD     = "cycle_hostile_head_marker_forward",
  CYCLE_HOSTILE_HEAD_MARKER_BACKWARD    = "cycle_hostile_head_marker_backward",
  CYCLE_FRIENDLY_HEAD_MARKER_FORWARD    = "cycle_friendly_head_marker_forward",
  CYCLE_FRIENDLY_HEAD_MARKER_BACKWARD   = "cycle_friendly_head_marker_backward",
  TOGGLE_CHRONICLE_BOOK                 = "toggle_chronicle_book",
  TOGGLE_BUTLER_INFO                    = "toggle_butler_info",
  TOGGLE_RANDOM_SHOP                    = "toggle_random_shop",
  TOGGLE_COMMUNITY_EXPEDITION_TAB       = "toggle_community_expedition_tab",
  TOGGLE_COMMUNITY_FACTION_TAB          = "toggle_community_faction_tab",
  TOGGLE_COMMUNITY_FAMILY_TAB           = "toggle_community_family_tab",
  ACTION_BAR_BUTTON                     = "action_bar_button",
  ACTION_BAR_PAGE                       = "action_bar_page",
  BATTLE_PET_ACTION_BAR_BUTTON          = "battle_pet_action_bar_button",
  CHANGE_ROADMAP_SIZE                   = "change_roadmap_size",
  INSTANT_KILL_STREAK_ACTION_BAR_BUTTON = "instant_kill_streak_action_bar_button",
  MODE_ACTION_BAR_BUTTON                = "mode_action_bar_button",
  RIDE_PET_ACTION_BAR_BUTTON            = "ride_pet_action_bar_button",
  ROUND_TARGET                          = "round_target",
  TEAM_TARGET                           = "team_target",
  TOGGLE_SHOW_GUIDE_DECAL               = "toggle_show_guide_decal",
  TOGGLE_SPECIALTY_INFO                 = "toggle_specialty_info",
  TOGGLE_WEB_PLAY_DIARY_INSTANT         = "toggle_web_play_diary_instant",
  TOGGLE_WEB_WIKI                       = "toggle_web_wiki",
  TOGGLE_WORLDMAP                       = "toggle_worldmap",
  ZOOM_IN                               = "zoom_in",
}

---api/X2Hotkey
---@enum HOTKEY_MANAGER
local HOTKEY_MANAGER = {
  PRIMARY   = 1,
  SECONDARY = 2,
}

---Enables or disables the hotkey system.
---@param enable boolean `true` to enable the hotkey system, `false` to disable it. (default: `true`)
---@usage
---```
---X2Hotkey:EnableHotkey(false)
---```
function X2Hotkey:EnableHotkey(enable) end

---Retrieves the option binding for a specified hotkey action.
---@param action HOTKEY_ACTION The hotkey action to query.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@param option boolean `true` to include additional options, `false` otherwise.
---@param arg number Additional argument for the binding.
---@return string optionBinding The option binding string.
---@nodiscard
---@usage
---```
---X2Hotkey:GetOptionBinding("quest_directing_interaction", 1, false, 2)
---```
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:GetOptionBinding(action, index, option, arg) end

---Retrieves the button binding for a specified hotkey action.
---@param action HOTKEY_ACTION The hotkey action to query.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@return string optionBindingButton The button binding string.
---@usage
---```
---X2Hotkey:GetOptionBindingButton("toggle_worldmap", 1)
---```
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:GetOptionBindingButton(action, index) end

---Checks if a hotkey action is overridable.
---@param action HOTKEY_ACTION The hotkey action to check.
---@return boolean overridableAction `true` if the action is overridable, `false` otherwise.
---@nodiscard
---@usage
---```
---local overridableAction = X2Hotkey:IsOverridableAction("quest_directing_interaction")
---```
---@see HOTKEY_ACTION
function X2Hotkey:IsOverridableAction(action) end

---Checks if a hotkey action name is valid.
---@param action HOTKEY_ACTION The hotkey action to validate.
---@return boolean validActionName `true` if the action name is valid, `false` otherwise.
---@nodiscard
---@usage
---```
---local validActionName = X2Hotkey:IsValidActionName("quest_directing_interaction")
---```
---@see HOTKEY_ACTION
function X2Hotkey:IsValidActionName(action) end

---@TODO: this never saved but sets the key into the key slot in the options
---Sets the button binding for a hotkey action with a specific key type.
---@param action HOTKEY_ACTION The hotkey action to bind.
---@param key string The key to bind.
---@param keyType HOTKEY_MANAGER The key type for the binding.
---@usage
---```
---X2Hotkey:SetOptionBindingButtonWithIndex("front_camera", "`", 1)
---```
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:SetOptionBindingButtonWithIndex(action, key, keyType) end

---@TODO: this never saved but sets the key into the key slot in the options
---Sets the option binding for a hotkey action with additional arguments.
---@param action HOTKEY_ACTION The hotkey action to bind.
---@param key string The key to bind.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@param arg number The additional argument for the binding. (min: `0`)
---@usage
---```
---X2Hotkey:SetOptionBindingWithIndex("front_camera", "`", 1, 0)
---```
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:SetOptionBindingWithIndex(action, key, index, arg) end
