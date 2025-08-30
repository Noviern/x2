---@meta _

AP_BOTTOM = 8      -- objects/ColorDrawable
AP_BOTTOMLEFT = 2  -- objects/ColorDrawable
AP_BOTTOMRIGHT = 3 -- objects/ColorDrawable
AP_CENTER = 4      -- objects/ColorDrawable
AP_LEFT = 6        -- objects/ColorDrawable
AP_RIGHT = 7       -- objects/ColorDrawable
AP_TOP = 5         -- objects/ColorDrawable
AP_TOPLEFT = 0     -- objects/ColorDrawable
AP_TOPRIGHT = 1    -- objects/ColorDrawable

---@TODO: This is also used by Editboxbase:SetCursorColorByColorKey and Line:SetLineColorByKey so this needs to be renamed and moved.
---objects/ColorDrawable
---
---ui/setting/etc_color.g
---@enum ETC_COLOR
local ETC_COLOR = {
  ACTION_SLOT_STATE_IMG_ABLE              = "action_slot_state_img_able",
  ACTION_SLOT_STATE_IMG_CAN_LEARN         = "action_slot_state_img_can_learn",
  ACTION_SLOT_STATE_IMG_CANT_OR_NOT_LEARN =
  "action_slot_state_img_cant_or_not_learn",
  ACTION_SLOT_STATE_IMG_DISABLE           = "action_slot_state_img_disable",
  COMMON_BLACK_BG                         = "common_black_bg",
  COMMON_WHITE_BG                         = "common_white_bg",
  CRAFT_STEP_DISABLE                      = "craft_step_disable",
  CRAFT_STEP_ENABLE                       = "craft_step_enable",
  EDITBOX_CURSOR_DEFAULT                  = "editbox_cursor_default",
  EDITBOX_CURSOR_LIGHT                    = "editbox_cursor_light",
  ICON_BUTTON_OVERLAY_BLACK               = "icon_button_overlay_black",
  ICON_BUTTON_OVERLAY_NONE                = "icon_button_overlay_none",
  ICON_BUTTON_OVERLAY_RED                 = "icon_button_overlay_red",
  ICON_BUTTON_OVERLAY_YELLOW              = "icon_button_overlay_yellow",
  LOGIN_STAGE_BLACK_BG                    = "login_stage_black_bg",
  MAP_HP_BAR                              = "map_hp_bar",
  MAP_HP_BAR_BG                           = "map_hp_bar_bg",
  MARKET_PRICE_COLUMN_OVER                = "market_price_column_over",
  MARKET_PRICE_LAST_COLUMN                = "market_price_last_column",
  MARKET_PRICE_LINE_DAILY                 = "market_price_line_daily",
  MARKET_PRICE_LINE_WEEKLY                = "market_price_line_weekly",
  MARKET_PRICE_VOLUME                     = "market_price_volume",
  MARKET_PRICT_CELL                       = "market_prict_cell",
  QUEST_CONTENT_DIRECTING_FADE_IN         = "quest_content_directing_fade_in",
  QUEST_CONTENT_DIRECTING_FADE_OUT        = "quest_content_directing_fade_out",
  QUEST_CONTENT_DIRECTING_UNDER_PANEL     = "quest_content_directing_under_panel",
  QUICK_SLOT_BG                           = "quick_slot_bg",
  TEXTURE_CHECK_WINDOW_BG                 = "texture_check_window_bg",
  TEXTURE_CHECK_WINDOW_DATA_LABEL         = "texture_check_window_data_label",
  TEXTURE_CHECK_WINDOW_RECT               = "texture_check_window_rect",
  TEXTURE_CHECK_WINDOW_TOOLTIP_BG         = "texture_check_window_tooltip_bg",
  WEB_BROWSER_BACKGROUND                  = "web_browser_background",
}

---objects/ColorDrawable
---@class ColorDrawable: Drawablebase
local ColorDrawable = {}

---Returns `color` for the ColorDrawable.
---@return RGBA color
---@nodiscard
---@usage
---```lua
---local color = drawable:GetColor()
---```
---@see RGBA
function ColorDrawable:GetColor() end

---Sets the texture color by `colorKey` for the ColorDrawable.
---@param colorKey ETC_COLOR
---@usage
---```lua
---drawable:SetTextureColor("icon_button_overlay_yellow")
---```
---@see ETC_COLOR
function ColorDrawable:SetTextureColor(colorKey) end
