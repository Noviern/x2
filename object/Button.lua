---@meta _

---@TODO: Drawablebase may not be correct, it may be DrawableDDS.

AP_BOTTOM = 8             -- object/Button
AP_BOTTOMLEFT = 2         -- object/Button
AP_BOTTOMRIGHT = 3        -- object/Button
AP_CENTER = 4             -- object/Button
AP_LEFT = 6               -- object/Button
AP_RIGHT = 7              -- object/Button
AP_TOP = 5                -- object/Button
AP_TOPLEFT = 0            -- object/Button
AP_TOPRIGHT = 1           -- object/Button
CT_ABILITY = 2            -- object/Button
CT_EXPEDITION_NAME = 3    -- object/Button
CT_NAME = 1               -- object/Button
DC_ALWAYS = 0             -- object/Button
DC_SHIFT_KEY_DOWN = 1     -- object/Button
UI_BUTTON_DISABLED = 3    -- object/Button
UI_BUTTON_HIGHLIGHTED = 1 -- object/Button
UI_BUTTON_MAX = 4         -- object/Button The count of UI_BUTTON states.
UI_BUTTON_NORMAL = 0      -- object/Button
UI_BUTTON_PUSHED = 2      -- object/Button

---object/Button
---@alias UI_BUTTON_STATE
---| `UI_BUTTON_NORMAL`
---| `UI_BUTTON_HIGHLIGHTED`
---| `UI_BUTTON_PUSHED`
---| `UI_BUTTON_DISABLED`

---object/Button
---@enum UI_BUTTON_STATE_TEXT
local UI_BUTTON_STATE_TEXT = {
  NORMAL      = "NORMAL",
  HIGHLIGHTED = "HIGHLIGHTED",
  PUSHED      = "PUSHED",
  DISABLED    = "DISABLED",
}

---@TODO: Should RGBA be in Addon.lua?

---object/Button
---@class RGBA
---@field r number
---@field g number
---@field b number
---@field a number

---@TODO: Move to Addon?
---@enum MOUSE_BUTTON
local MOUSE_BUTTON = {
  LEFT  = "LeftButton",
  RIGHT = "RightButton",
}

---@TODO: Not all of these may exist.
---ui/setting/button_style.g
---@enum BUTTON_STYLE
local BUTTON_STYLE = {
  ACCEPT_V                            = "accept_v",
  ACTIONBAR_LOCK                      = "actionbar_lock",
  ACTIONBAR_ROTATE                    = "actionbar_rotate",
  ACTIONBAR_UNLOCK                    = "actionbar_unlock",
  ALL_ABILITY                         = "all_ability",
  ALL_REPAIR                          = "all_repair",
  ASSASSIN                            = "assassin",
  ASSASSIN_SELECTED                   = "assassin_selected",
  AUCTION_POST_BIND                   = "auction_post_bind",
  AUCTION_SUCCESSOR                   = "auction_successor",
  AUCTION_SUCCESSOR_GREY              = "auction_successor_grey",
  BANNER_CLOSE                        = "banner_close",
  BTN_CLOSE_DEFAULT                   = "btn_close_default",
  BTN_CLOSE_MINI                      = "btn_close_mini",
  BTN_RAID_RECRUIT                    = "btn_raid_recruit",
  BUTLER_CHANGE_LOOK                  = "butler_change_look",
  BUTTON_COMMON_BOOK                  = "button_common_book",
  BUTTON_COMMON_OPTION                = "button_common_option",
  BUTTON_COMPLETE                     = "button_complete",
  BUTTON_DARU                         = "button_daru",
  BUTTON_REQUEST                      = "button_request",
  BUTTON_SEARCH                       = "button_search",
  CANCEL_FIX_ITEM                     = "cancel_fix_item",
  CANCEL_MINI                         = "cancel_mini",
  CANCEL_SEARCH_IN_INVENTORY          = "cancel_search_in_inventory",
  CHAR_SELECT_PAGE_REPRESENT_CHAR     = "char_select_page_represent_char",
  CHARACTER                           = "character",
  CHARACTER_EQUIP_CLOSE               = "character_equip_close",
  CHARACTER_EQUIP_OPEN                = "character_equip_open",
  CHARACTER_INFO_BLESS_UTHSTIN        = "character_info_bless_uthstin",
  CHARACTER_INFO_BTN_SHOP             = "character_info_btn_shop",
  CHARACTER_INFO_CHANGE               = "character_info_change",
  CHARACTER_INFO_DETAIL_BTN           = "character_info_detail_btn",
  CHARACTER_LOCK_OFF                  = "character_lock_off",
  CHARACTER_LOCK_ON                   = "character_lock_on",
  CHARACTER_SEARCH                    = "character_search",
  CHARACTER_SLOT_CREATED              = "character_slot_created",
  CHARACTER_SLOT_CREATED_RED          = "character_slot_created_red",
  CHARACTER_SLOT_CREATED_RED_SELECTED = "character_slot_created_red_selected",
  CHARACTER_SLOT_CREATED_SELECTED     = "character_slot_created_selected",
  CHARACTER_SLOT_ENCHANT              = "character_slot_enchant",
  CHARACTER_SLOT_EQUIPMENT            = "character_slot_equipment",
  CHARACTER_SLOT_IMPOSSIBLE           = "character_slot_impossible",
  CHARACTER_SLOT_POSSIBLE             = "character_slot_possible",
  CHARACTER_SWAP                      = "character_swap",
  CHARACTER_SWAP_ON                   = "character_swap_on",
  CHAT_TAB_SELECTED                   = "chat_tab_selected",
  CHAT_TAB_UNSELECTED                 = "chat_tab_unselected",
  COMBAT_RESOURCE_CLOSE               = "combat_resource_close",
  COMBAT_RESOURCE_OPEN                = "combat_resource_open",
  COMMON_BACK                         = "common_back",
  COMMON_HUD                          = "common_hud",
  COMMON_NEW_CLOSE                    = "common_new_close",
  CONFIG                              = "config",
  CUSTOMIZING_FREEZE                  = "customizing_freeze",
  CUSTOMIZING_LOAD                    = "customizing_load",
  CUSTOMIZING_RESET                   = "customizing_reset",
  CUSTOMIZING_SAVE                    = "customizing_save",
  CUSTOMIZING_SCROLL                  = "customizing_scroll",
  CUSTOMIZING_SCROLL_DOWN             = "customizing_scroll_down",
  CUSTOMIZING_SCROLL_UP               = "customizing_scroll_up",
  CUSTOMIZING_SLIDER                  = "customizing_slider",
  CUSTOMIZING_TAB_SELECTED            = "customizing_tab_selected",
  CUSTOMIZING_TAB_UNSELECTED          = "customizing_tab_unselected",
  DEPOSIT_WITHDRAWAL                  = "deposit_withdrawal",
  DOWN_ARROW                          = "down_arrow",
  DWARF                               = "dwarf",
  DWARF_SELECTED                      = "dwarf_selected",
  ELF                                 = "elf",
  ELF_SELECTED                        = "elf_selected",
  EQUIP_SCROLL_BUTTON_DOWN            = "equip_scroll_button_down",
  EQUIP_SCROLL_BUTTON_UP              = "equip_scroll_button_up",
  EQUIPMENT_MAP                       = "equipment_map",
  ESC                                 = "esc",
  EXIT                                = "exit",
  EXPANSION                           = "expansion",
  EXPANSION_SMALL                     = "expansion_small",
  EXPEDITION_WAR_ALARM                = "expedition_war_alarm",
  FAIRY                               = "fairy",
  FAIRY_SELECTED                      = "fairy_selected",
  FIGHT                               = "fight",
  FIGHT_SELECTED                      = "fight_selected",
  FIRRAN                              = "firran",
  FIRRAN_SELECTED                     = "firran_selected",
  FIRST_PAGE                          = "first_page",
  FIX                                 = "fix",
  FIX_ITEM                            = "fix_item",
  GRID_FOLDER_DOWN_ARROW              = "grid_folder_down_arrow",
  GRID_FOLDER_RIGHT_ARROW             = "grid_folder_right_arrow",
  GRID_FOLDER_UP_ARROW                = "grid_folder_up_arrow",
  HARANI                              = "harani",
  HARANI_SELECTED                     = "harani_selected",
  HATRED                              = "hatred",
  HATRED_SELECTED                     = "hatred_selected",
  HOUSING_DEMOLISH                    = "housing_demolish",
  HOUSING_REMOVE                      = "housing_remove",
  HOUSING_ROTATION                    = "housing_rotation",
  HOUSING_SALE                        = "housing_sale",
  HOUSING_UCC                         = "housing_ucc",
  HUD_BTN_ARCHELIFE_OFF               = "hud_btn_archelife_off",
  HUD_BTN_CHAT_ADD_TAB                = "hud_btn_chat_add_tab",
  HUD_BTN_CHAT_SCROLL_DOWN_BOTTOM     = "hud_btn_chat_scroll_down_bottom",
  HUD_BTN_EVENTCENTER                 = "hud_btn_eventcenter",
  HUD_BTN_HERO_REPUTATION             = "hud_btn_hero_reputation",
  HUD_BTN_IME_ENGLISH                 = "hud_btn_ime_english",
  HUD_BTN_IME_KOREA                   = "hud_btn_ime_korea",
  HUD_BTN_INGAMESHOP                  = "hud_btn_ingameshop",
  HUD_BTN_INSTANCE                    = "hud_btn_instance",
  HUD_BTN_MERCHANT                    = "hud_btn_merchant",
  HUD_BTN_URL_LINK                    = "hud_btn_url_link",
  HUD_INSTANCE                        = "hud_instance",
  INGAMESHOP_BEAUTYSHOP               = "ingameshop_beautyshop",
  INGAMESHOP_BUY                      = "ingameshop_buy",
  INGAMESHOP_CART                     = "ingameshop_cart",
  INGAMESHOP_CHARGE_CASH              = "ingameshop_charge_cash",
  INGAMESHOP_GENDER_TRANSFER          = "ingameshop_gender_transfer",
  INGAMESHOP_PRESENT                  = "ingameshop_present",
  INSTANCE_OUT                        = "instance_out",
  INSTANCE_REENTRY                    = "instance_reentry",
  INVENTORY_SORT                      = "inventory_sort",
  ITEM_ENCHANT                        = "item_enchant",
  ITEM_GUIDE                          = "item_guide",
  ITEM_LOCK_IN_BAG                    = "item_lock_in_bag",
  LAST_PAGE                           = "last_page",
  LEFT_ARROW                          = "left_arrow",
  LIST                                = "list",
  LOCATION                            = "location",
  LOCK_EQUIP_ITEM                     = "lock_equip_item",
  LOCK_ITEM                           = "lock_item",
  LOGIN_STAGE_CHARACTER_CREATE        = "login_stage_character_create",
  LOGIN_STAGE_ENTER_WORLD             = "login_stage_enter_world",
  LOGIN_STAGE_EXIT_GAME               = "login_stage_exit_game",
  LOGIN_STAGE_GAME_START              = "login_stage_game_start",
  LOGIN_STAGE_MODEL_CHANGE            = "login_stage_model_change",
  LOGIN_STAGE_OPTION_GAME             = "login_stage_option_game",
  LOGIN_STAGE_STAFF                   = "login_stage_staff",
  LOGIN_STAGE_TEXT_DEFAULT            = "login_stage_text_default",
  LOGIN_STAGE_TEXT_SMALL              = "login_stage_text_small",
  LOGIN_STAGE_USER_UI                 = "login_stage_user_ui",
  LOOK_CONVERT                        = "look_convert",
  LOOT_GACHA                          = "loot_gacha",
  LOVE                                = "love",
  LOVE_SELECTED                       = "love_selected",
  MADNESS                             = "madness",
  MADNESS_SELECTED                    = "madness_selected",
  MAGIC                               = "magic",
  MAGIC_SELECTED                      = "magic_selected",
  MAIL_ALL_MAIL_DELETE                = "mail_all_mail_delete",
  MAIL_READ_MAIL_DELETE               = "mail_read_mail_delete",
  MAIL_RECEIVE_ALL_ITEM               = "mail_receive_all_item",
  MAIL_RECEIVE_MONEY                  = "mail_receive_money",
  MAIL_SELECTED_DELETE                = "mail_selected_delete",
  MAIL_TAKE                           = "mail_take",
  MAN                                 = "man",
  MAN_SELECTED                        = "man_selected",
  MAP_ALPHA                           = "map_alpha",
  MAP_ALPHA_SELECT                    = "map_alpha_select",
  MAP_ERASER                          = "map_eraser",
  MAP_POSITION                        = "map_position",
  MENU                                = "menu",
  MINIMAP_OFF                         = "minimap_off",
  MINIMAP_ON                          = "minimap_on",
  MINIMAP_PING                        = "minimap_ping",
  MINIMAP_PLAYERCENTER                = "minimap_playercenter",
  MINIMAP_RESIZE                      = "minimap_resize",
  MINIMAP_SUBOPTION                   = "minimap_suboption",
  MINIMAP_ZOOMIN                      = "minimap_zoomin",
  MINIMAP_ZOOMOUT                     = "minimap_zoomout",
  MINUS                               = "minus",
  MODELVIEW_ROTATE_LEFT               = "modelview_rotate_left",
  MODELVIEW_ROTATE_RIGHT              = "modelview_rotate_right",
  MY_ABILITY                          = "my_ability",
  NEXT_PAGE                           = "next_page",
  NEXT_PAGE_ACTION_BAR                = "next_page_action_bar",
  NEXT_PAGE_TUTORIAL                  = "next_page_tutorial",
  NUIAN                               = "nuian",
  NUIAN_SELECTED                      = "nuian_selected",
  OPEN_BATTLEFIELD                    = "open_battlefield",
  PART_REPAIR                         = "part_repair",
  PLAY                                = "play",
  PLEASURE                            = "pleasure",
  PLEASURE_SELECTED                   = "pleasure_selected",
  PLUS                                = "plus",
  PORTAL_RENAME                       = "portal_rename",
  PORTAL_SPAWN                        = "portal_spawn",
  PREMIUM_BUY_IN_CHAR_SEL_PAGE        = "premium_buy_in_char_sel_page",
  PREV_PAGE                           = "prev_page",
  PREV_PAGE_ACTION_BAR                = "prev_page_action_bar",
  PREV_PAGE_BACK                      = "prev_page_back",
  PREV_PAGE_TUTORIAL                  = "prev_page_tutorial",
  PRICE                               = "price",
  QUEST_CLOSE                         = "quest_close",
  QUEST_CUTSCENE_CLOSE                = "quest_cutscene_close",
  QUEST_OPEN                          = "quest_open",
  QUESTION_MARK                       = "question_mark",
  RAID_RECALL                         = "raid_recall",
  RAID_RECRUIT_ALARM                  = "raid_recruit_alarm",
  RANDOMBOX                           = "randombox",
  READY_TO_SIEGE_ALARM                = "ready_to_siege_alarm",
  RECEIVE_ITEM                        = "receive_item",
  REJECT_X                            = "reject_x",
  REPAIR                              = "repair",
  REPORT                              = "report",
  RIGHT_ARROW                         = "right_arrow",
  ROSTER_SETTING                      = "roster_setting",
  SAVE                                = "save",
  SEARCH_MINI                         = "search_mini",
  SEARCH_MINI_GREEN                   = "search_mini_green",
  SIEGE_WAR_ALARM                     = "siege_war_alarm",
  SLIDER_SCROLL_BUTTON_DOWN           = "slider_scroll_button_down",
  SLIDER_SCROLL_BUTTON_UP             = "slider_scroll_button_up",
  SQUAD_MINI_VIEW_CLOSE               = "squad_mini_view_close",
  SQUAD_MINI_VIEW_OPEN                = "squad_mini_view_open",
  SURVEY_FORM_ALARM                   = "survey_form_alarm",
  TEXT_DEFAULT                        = "text_default",
  TEXT_DEFAULT_SMALL                  = "text_default_small",
  TRADE_CHECK_GREEN                   = "trade_check_green",
  TRADE_CHECK_YELLOW                  = "trade_check_yellow",
  UNLOCK_EQUIP_ITEM                   = "unlock_equip_item",
  UNLOCK_ITEM                         = "unlock_item",
  UP_ARROW                            = "up_arrow",
  UTHSTIN_STAT_MAX_EXPAND             = "uthstin_stat_max_expand",
  WARBORN                             = "warborn",
  WARBORN_SELECTED                    = "warborn_selected",
  WASTEBASKET_SHAPE                   = "wastebasket_shape",
  WASTEBASKET_SHAPE_SMALL             = "wastebasket_shape_small",
  WILD                                = "wild",
  WILD_SELECTED                       = "wild_selected",
  WOMAN                               = "woman",
  WOMAN_SELECTED                      = "woman_selected",
  WRITE                               = "write",
  ZONE_PERMISSION_OUT                 = "zone_permission_out",
  ZONE_PERMISSION_WAIT                = "zone_permission_wait",
}

---object/Button
---@class Button: Widget
---@field style TextStyle
---@class button: Button
local Button = {}

---@TODO: What is the default layer?
---Creates a drawable for the specified button state and type.
---@param state UI_BUTTON_STATE The button state (e.g., normal, pushed, disabled).
---@param drawableType UOT_DRAWABLE The type of drawable to create.
---@param path string The path to the drawable resource.
---@param layer? DRAWABLE_NAME_LAYER The layer to apply the drawable to (optional).
---@return DrawableDDS|EmptyTable|nil stateDrawable The created drawable, an empty table, or `nil` if creation fails.
---@nodiscard
---@usage
---```
---local normalDrawable = widget:CreateStateDrawable(UI_BUTTON_NORMAL, UOT_NINE_PART_DRAWABLE, TEXTURE_PATH.HUD)
---```
---@see UI_BUTTON_STATE
---@see UOT_DRAWABLE
---@see DrawableDDS
function Button:CreateStateDrawable(state, drawableType, path, layer) end

---Disables clicking for the specified mouse button.
---@param mouseButton MOUSE_BUTTON The mouse button to disable.
---@usage
---```
---widget:DeregisterForClicks("LeftButton")
---```
---@see MOUSE_BUTTON
function Button:DeregisterForClicks(mouseButton) end

---Retrieves the current state of the button.
---@return UI_BUTTON_STATE_TEXT state The current button state. (default: `DISABLED`)
---@nodiscard
---@usage
---```
---local state = widget:GetButtonState()
---```
---@see UI_BUTTON_STATE_TEXT
function Button:GetButtonState() end

---@TODO: @cast
---Retrieves the drawable for the disabled state of the button, if it exists.
---@return Drawablebase|nil disabledTable The disabled state drawable, or `nil` if not set.
---@nodiscard
---@usage
---```
---local disabledTable = widget:GetDisabledBackground()
---```
---@see Drawablebase
function Button:GetDisabledBackground() end

---Retrieves the color of the disabled state for the button.
---@return RGBA disabledColor The disabled state color. (default: `{ r = 0, g = 0, b = 0, a = 1 }`)
---@nodiscard
---@usage
---```
---local disabledColor = widget:GetDisabledColor()
---```
---@see RGBA
function Button:GetDisabledColor() end

---Retrieves the drawable for the highlighted state of the button, if it exists.
---@return Drawablebase|nil highlightTable The highlighted state drawable, or `nil` if not set.
---@nodiscard
---@usage
---```
---local highlightTable = widget:GetHighlightBackground()
---```
---@see Drawablebase
function Button:GetHighlightBackground() end

---Retrieves the color of the highlighted state for the button.
---@return RGBA highlightColor The highlighted state color. (default: `{ r = 0, g = 0, b = 0, a = 1 }`)
---@nodiscard
---@usage
---```
---local highlightColor = widget:GetHighlightColor()
---```
---@see RGBA
function Button:GetHighlightColor() end

---Retrieves the drawable for the normal state of the button, if it exists.
---@return Drawablebase|nil normalTable The normal state drawable, or `nil` if not set.
---@nodiscard
---@usage
---```
---local normalTable = widget:GetNormalBackground()
---```
---@see Drawablebase
function Button:GetNormalBackground() end

---Retrieves the color of the normal state for the button.
---@return RGBA normalColor The normal state color. (default: `{ r = 0, g = 0, b = 0, a = 1 }`)
---@nodiscard
---@usage
---```
---local normalColor = widget:GetNormalColor()
---```
---@see RGBA
function Button:GetNormalColor() end

---Retrieves the drawable for the pushed state of the button, if it exists.
---@return Drawablebase|nil pushedTable The pushed state drawable, or `nil` if not set.
---@nodiscard
---@usage
---```
---local pushedTable = widget:GetPushedBackground()
---```
---@see Drawablebase
function Button:GetPushedBackground() end

---Retrieves the color of the pushed state for the button.
---@return RGBA pushedColor The pushed state color. (default: `{ r = 0, g = 0, b = 0, a = 1 }`)
---@nodiscard
---@usage
---```
---local pushedColor = widget:GetPushedColor
---```
---@see RGBA
function Button:GetPushedColor() end

---Enables or disables clicking for the specified mouse button.
---@param mouseButton MOUSE_BUTTON The mouse button to enable/disable. (default: `"LeftButton"`)
---@param enable? boolean `true` to enable clicking, `false` to disable. (default: `true`)
---@usage
---```
---widget:RegisterForClicks("RightButton")
---```
---@see MOUSE_BUTTON
function Button:RegisterForClicks(mouseButton, enable) end

---Enables or disables automatic character clipping for the button. This resets
---`Button:SetText`.
---@param resize boolean `true` to enable auto clipping, `false` to disable. (default: `false`)
---@usage
---```
---widget:SetAutoClipChar(true)
---```
function Button:SetAutoClipChar(resize) end

---Enables or disables automatic resizing for the button.
---@param resize boolean `true` to enable auto resizing, `false` to disable. (default: `false`)
---@usage
---```
---widget:SetAutoResize(true)
---```
function Button:SetAutoResize(resize) end

---@TODO: There is something very wrong with this. Almost none of the states match their actual state.
---@TODO: FAKE STATE > REAL STATE
---@TODO: NORMAL = HIGHLIGHTED
---@TODO: HIGHLIGHTED = DISABLED
---@TODO: PUSHED = PUSHED
---@TODO: DISABLED = NORMAL
---Sets the state of the button.
---@param state UI_BUTTON_STATE_TEXT The state to set. (default: `DISABLED`)
---@usage
---```
---widget:SetButtonState("NORMAL")
---```
---@see UI_BUTTON_STATE_TEXT
function Button:SetButtonState(state) end

---Sets the drawable for the disabled state of the button.
---@param disabledTable Drawablebase The drawable for the disabled state.
---@usage
---```
---widget:SetDisabledBackground(drawable)
---```
function Button:SetDisabledBackground(disabledTable) end

---Sets the color for the disabled state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@usage
---```
---widget:SetDisabledColor(0, 0, 0, 1)
---```
function Button:SetDisabledColor(r, g, b, a) end

---Sets the text color for the disabled state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@usage
---```
---widget:SetDisabledTextColor(0, 0, 0, 1)
---```
function Button:SetDisabledTextColor(r, g, b, a) end

---Sets focus on the button.
---@usage
---```
---widget:SetFocus()
---```
function Button:SetFocus() end

---Sets the drawable for the highlighted state of the button.
---@param highlightTable Drawablebase The drawable for the highlighted state.
---@usage
---```
---widget:SetHighlightBackground(drawable)
---```
function Button:SetHighlightBackground(highlightTable) end

---Sets the color for the highlighted state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@usage
---```
---widget:SetHighlightColor(1, 0, 0, 1)
---```
function Button:SetHighlightColor(r, g, b, a) end

---Sets the text color for the highlighted state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@usage
---```
---widget:SetHighlightTextColor(1, 0, 0, 1)
---```
function Button:SetHighlightTextColor(r, g, b, a) end

---Sets the inset for the button.
---@param left number The left inset.
---@param top number The top inset.
---@param right number The right inset.
---@param bottom number The bottom inset.
---@usage
---```
---widget::SetInset(10, 10, 10, 10)
---```
function Button:SetInset(left, top, right, bottom) end

---Sets the drawable for the normal state of the button.
---@param normalTable Drawablebase The drawable for the normal state.
---@usage
---```
---widget:SetNormalBackground(drawable)
---```
function Button:SetNormalBackground(normalTable) end

---Sets the color for the normal state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@usage
---```
---widget:SetNormalColor(1, 1, 1, 1)
---```
function Button:SetNormalColor(r, g, b, a) end

---Sets the drawable for the pushed state of the button.
---@param pushedTable Drawablebase The drawable for the pushed state.
---@usage
---```
---widget:SetPushedBackground(drawable)
---```
function Button:SetPushedBackground(pushedTable) end

---Sets the color for the pushed state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@usage
---```
---widget:SetPushedColor(0, 1, 0, 1)
---```
function Button:SetPushedColor(r, g, b, a) end

---Sets the text color for the pushed state of the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@usage
---```
---widget:SetPushedTextColor(0, 1, 0, 1)
---```
function Button:SetPushedTextColor(r, g, b, a) end

---Sets the style for the button. Should be applied before setting the extent.
---@param style BUTTON_STYLE The style to apply.
---@usage
---```
---widget:SetStyle("text_default")
---```
---@see BUTTON_STYLE
function Button:SetStyle(style) end

---Sets the text color for the button.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@usage
---```
---widget:SetTextColor(0, 0, 0, 1)
---```
function Button:SetTextColor(r, g, b, a) end
