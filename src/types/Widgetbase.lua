---@meta _

---@alias WIDGET_TYPES
---| Avi
---| Button
---| ChatWindow
---| Checkbutton
---| CircleDiagram
---| ColorPicker
---| Combobox
---| CooldownButton
---| CooldownConstantButton
---| CooldownInventoryButton
---| DamageDisplay
---| DynamicList
---| Editbox
---| EditboxMultiline
---| EmptyWidget
---| Folder
---| GameTooltip
---| Grid
---| Label
---| Line
---| Listbox
---| ListCtrl
---| MegaphoneChatEdit
---| Message
---| ModelView
---| Pageable
---| PaintColorPicker
---| RadioGroup
---| RoadMap
---| Slider
---| Slot
---| StatusBar
---| Tab
---| Textbox
---| UnitframeTooltip
---| Webbrowser
---| Window
---| WorldMap
---| X2EditBox

---Taken from `ui\setting\etc_color.g`
---@enum DRAWABLE_COLOR_KEY
local DRAWABLE_COLOR_KEY = {
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

---@enum WIDGET_EVENT_TYPE
local WIDGET_EVENT_TYPE = {
  ONACCEPTFOCUS            = "OnAcceptFocus",
  ONALPHAANIMEEND          = "OnAlphaAnimeEnd",
  ONBOUNDCHANGED           = "OnBoundChanged",
  ONCHANGEDANCHOR          = "OnChangedAnchor",
  ONCHECKCHANGED           = "OnCheckChanged",
  ONCLICK                  = "OnClick",
  ONCLOSEBYESC             = "OnCloseByEsc",
  ONCONTENTUPDATED         = "OnContentUpdated",
  ONCURSORMOVED            = "OnCursorMoved",
  ONDRAGRECEIVE            = "OnDragReceive",
  ONDRAGSTART              = "OnDragStart",
  ONDRAGSTOP               = "OnDragStop",
  ONDYNAMICLISTUPDATEDVIEW = "OnDynamicListUpdatedView",
  ONEFFECT                 = "OnEffect",
  ONENABLECHANGED          = "OnEnableChanged",
  ONENDFADEIN              = "OnEndFadeIn",
  ONENDFADEOUT             = "OnEndFadeOut",
  ONENTER                  = "OnEnter",
  ONENTERPRESSED           = "OnEnterPressed",
  ONESCAPEPRESSED          = "OnEscapePressed",
  ONEVENT                  = "OnEvent",
  ONHIDE                   = "OnHide",
  ONKEYDOWN                = "OnKeyDown",
  ONKEYUP                  = "OnKeyUp",
  ONLEAVE                  = "OnLeave",
  ONLISTBOXTOGGLED         = "OnListboxToggled",
  ONMODELCHANGED           = "OnModelChanged",
  ONMOUSEDOWN              = "OnMouseDown",
  ONMOUSEMOVE              = "OnMouseMove",
  ONMOUSEUP                = "OnMouseUp",
  ONMOVEDPOSITION          = "OnMovedPosition",
  ONPAGECHANGED            = "OnPageChanged",
  ONPERMISSIONCHANGED      = "OnPermissionChanged",
  ONRADIOCHANGED           = "OnRadioChanged",
  ONRESTRICTED             = "OnRestricted",
  ONSCALE                  = "OnScale",
  ONSCALEANIMEEND          = "OnScaleAnimeEnd",
  ONSELCHANGED             = "OnSelChanged",
  ONSHOW                   = "OnShow",
  ONSLIDERCHANGED          = "OnSliderChanged",
  ONTABCHANGED             = "OnTabChanged",
  ONTEXTCHANGED            = "OnTextChanged",
  ONTOOLTIP                = "OnTooltip",
  ONUPDATE                 = "OnUpdate",
  ONVISIBLECHANGED         = "OnVisibleChanged",
  ONWHEELDOWN              = "OnWheelDown",
  ONWHEELUP                = "OnWheelUp",
  PRECLICK                 = "PreClick",
  PREUSE                   = "PreUse",
}



---@alias DRAG_CONDITION `DC_ALWAYS` | `DC_SHIFT_KEY_DOWN`

---@TODO: Some events can only be used by certain widget types. Need to finish defining these

---@enum KEY_MODIFIER
local KEY_MODIFIER = {
  NONE  = 0,
  SHIFT = 34,
  CTRL  = 17,
  ALT   = 68,
}

---@alias OnAcceptFocus fun(self: Widget)
---@alias OnAlphaAnimeEnd fun(self: Widget)
---@alias OnBoundChanged fun()
---@alias OnChangedAnchor fun(self: Widget)
---@alias OnCheckChanged fun()
---@alias OnClick fun(self: Widget, mouseButton: MOUSE_BUTTON, doubleClick: boolean, keyModifier: KEY_MODIFIER)
---@alias OnCloseByEsc fun(self: Widget)
---@alias OnContentUpdated fun(self: Widget, action: string, arg2, arg3)
---@alias OnCursorMoved fun(self: Widget)
---@alias OnDragReceive fun(self: Widget)
---@alias OnDragStart fun(self: Widget)
---@alias OnDragStop fun(self: Widget)
---@alias OnDynamicListUpdatedView fun()
---@alias OnEffect fun()
---@alias OnEnableChanged fun()
---@alias OnEndFadeIn fun(self: Widget)
---@alias OnEndFadeOut fun(self: Widget)
---@alias OnEnter fun(self: Widget)
---@alias OnEnterPressed fun(self: Widget)
---@alias OnEscapePressed fun(self: Widgetbase)
---@alias OnEvent fun(self: Widget, event: UIEVENT_TYPE, ...: any)
---@alias OnHide fun(self: Widget)
---@alias OnKeyDown fun(self: Widget, key: string)
---@alias OnKeyUp fun(self: Widget, key: string)
---@alias OnLeave fun(self: Widget)
---@alias OnListboxToggled fun(self: Widget)
---@alias OnModelChanged fun(self: Widget)
---@alias OnMouseDown fun(self: Widget, mouseButton: MOUSE_BUTTON)
---@alias OnMouseMove fun(self: Widget)
---@alias OnMouseUp fun(self: Widget, mouseButton: MOUSE_BUTTON)
---@alias OnMovedPosition fun(self: Widget)
---@alias OnPageChanged fun(self: Widget)
---@alias OnPermissionChanged fun()
---@alias OnRadioChanged fun(index, data)
---@alias OnRestricted fun()
---@alias OnScale fun(self: Widget)
---@alias OnScaleAnimeEnd fun(self: Widget)
---@alias OnSelChanged fun(self: Widget, selectedIndex: number, doubleClick?: boolean)
---@alias OnShow fun(self: Widget)
---@alias OnSliderChanged fun(self: Widget, value: number)
---@alias OnTabChanged fun(self: Widget, selected: number, viewSelected: number)
---@alias OnTextChanged fun(self: Widget)
---@alias OnTooltip fun(self: Widget) ---@TODO: , text, posX, posY, off)
---@alias OnUpdate fun(frameTime: number)
---@alias OnVisibleChanged fun(self: Widget, visible: boolean)
---@alias OnWheelDown fun(self: Widget, delta: number)
---@alias OnWheelUp fun(self: Widget, delta: number)
---@alias PreClick fun(self: Widget)
---@alias PreUse fun(self: Widget)

---@class Widgetbase
---@field [string] any
local Widgetbase = {}

---Applies or removes UI scaling for the Widgetbase.
---@param apply boolean `true` to apply UI scale, `false` to remove. (default: `true`)
---@usage
---```
---widget:ApplyUIScale(false)
---```
function Widgetbase:ApplyUIScale(apply) end

---Attaches a widget to the current Widgetbase.
---@param widget Widget The widget to attach.
function Widgetbase:AttachWidget(widget) end

---@TODO: Clarify functionality.
---Cancels the request for character cache data.
function Widgetbase:CancelRequestCharacterCacheData() end

---@TODO: Clarify behavior and purpose.
---Changes the child anchor based on scroll value for the specified direction.
---@param typeStr "horz"|"vert" The scroll direction (horizontal or vertical).
---@param value number The scroll value.
function Widgetbase:ChangeChildAnchorByScrollValue(typeStr, value) end

---Enables or disables clickability for the Widgetbase. (default: `true`)
---@param clickable boolean `true` to enable clicking, `false` to disable.
---@usage
---```
---widget:Clickable(false)
---```
function Widgetbase:Clickable(clickable) end

---@TODO: Can return an empty table not nil.
---Creates and returns a child widget, attaching it as a property to the Widgetbase.
---@param objectTypeStr OBJECT_NAME The type of widget to create.
---@param name string The name of the widget.
---@param index number The index of the widget, `0` sets `widget.name` whereas any number above `0` sets `widget.name[index]`.
---@param reflectToScriptTable boolean Whether to attach the widget to the script table under its `name`.
---@return Widget|nil widget The created child widget, or `nil` if creation fails.
---@nodiscard
---@usage
---```
---local button = widget:CreateChildWidget("button", "exampleButton", 0, true)
------widget.exampleButton This is automatically set by this method.
---```
---@see OBJECT_NAME
---@see Widget
---@see WIDGET_TYPES
---@overload fun(self: self, objectTypeStr: "avi", name: string, index: number, reflectToScriptTable: boolean): Avi|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "button", name: string, index: number, reflectToScriptTable: boolean): Button|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "chatwindow", name: string, index: number, reflectToScriptTable: boolean): ChatWindow|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "checkbutton", name: string, index: number, reflectToScriptTable: boolean): Checkbutton|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "circlediagram", name: string, index: number, reflectToScriptTable: boolean): CircleDiagram|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "colorpicker", name: string, index: number, reflectToScriptTable: boolean): ColorPicker|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "combobox", name: string, index: number, reflectToScriptTable: boolean): Combobox|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "cooldownbutton", name: string, index: number, reflectToScriptTable: boolean): CooldownButton|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "cooldownconstantbutton", name: string, index: number, reflectToScriptTable: boolean): CooldownConstantButton|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "cooldowninventorybutton", name: string, index: number, reflectToScriptTable: boolean): CooldownInventoryButton|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "damagedisplay", name: string, index: number, reflectToScriptTable: boolean): DamageDisplay|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "dynamiclist", name: string, index: number, reflectToScriptTable: boolean): DynamicList|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "editbox", name: string, index: number, reflectToScriptTable: boolean): Editbox|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "editboxmultiline", name: string, index: number, reflectToScriptTable: boolean): EditboxMultiline|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "emptywidget", name: string, index: number, reflectToScriptTable: boolean): EmptyWidget|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "folder", name: string, index: number, reflectToScriptTable: boolean): Folder|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "gametooltip", name: string, index: number, reflectToScriptTable: boolean): GameTooltip|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "grid", name: string, index: number, reflectToScriptTable: boolean): Grid|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "label", name: string, index: number, reflectToScriptTable: boolean): Label|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "line", name: string, index: number, reflectToScriptTable: boolean): Line|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "listbox", name: string, index: number, reflectToScriptTable: boolean): Listbox|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "listctrl", name: string, index: number, reflectToScriptTable: boolean): ListCtrl|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "megaphonechatedit", name: string, index: number, reflectToScriptTable: boolean): MegaphoneChatEdit|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "message", name: string, index: number, reflectToScriptTable: boolean): Message|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "modelview", name: string, index: number, reflectToScriptTable: boolean): ModelView|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "pageable", name: string, index: number, reflectToScriptTable: boolean): Pageable|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "paintcolorpicker", name: string, index: number, reflectToScriptTable: boolean): PaintColorPicker|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "radiogroup", name: string, index: number, reflectToScriptTable: boolean): RadioGroup|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "roadmap", name: string, index: number, reflectToScriptTable: boolean): RoadMap|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "slider", name: string, index: number, reflectToScriptTable: boolean): Slider|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "slot", name: string, index: number, reflectToScriptTable: boolean): Slot|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "statusbar", name: string, index: number, reflectToScriptTable: boolean): StatusBar|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "tab", name: string, index: number, reflectToScriptTable: boolean): Tab|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "textbox", name: string, index: number, reflectToScriptTable: boolean): Textbox|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "unitframetooltip", name: string, index: number, reflectToScriptTable: boolean): UnitframeTooltip|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "webbrowser", name: string, index: number, reflectToScriptTable: boolean): Webbrowser|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "window", name: string, index: number, reflectToScriptTable: boolean): Window|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "worldmap", name: string, index: number, reflectToScriptTable: boolean): WorldMap|EmptyTable|nil
---@overload fun(self: self, objectTypeStr: "x2editbox", name: string, index: number, reflectToScriptTable: boolean): X2EditBox|EmptyTable|nil
function Widgetbase:CreateChildWidget(objectTypeStr, name, index,
                                      reflectToScriptTable)
end

---@TODO: Can return an empty table not nil.
---@TODO: Needs UOT enum clarification.
---Creates and returns a child widget by type.
---@param objectType OBJECT The type of widget to create (UOT enum).
---@param name string The name of the widget.
---@param index number The index of the widget.
---@param reflectToScriptTable boolean Whether to attach the widget to the script table.
---@return Widget|nil widget The created child widget, or `nil` if creation fails.
---@nodiscard
---@usage
---```
---local button = widget:CreateChildWidgetByType(OBJECT.Button, "exampleButton", 0, true)
------widget.exampleButton This is automatically set by this method.
---```
---@see OBJECT
---@see Widget
---@see WIDGET_TYPES
---@overload fun(self: self, objectType: 52, name: string, index: number, reflectToScriptTable: boolean): Avi|EmptyTable|nil
---@overload fun(self: self, objectType: 2, name: string, index: number, reflectToScriptTable: boolean): Button|EmptyTable|nil
---@overload fun(self: self, objectType: 38, name: string, index: number, reflectToScriptTable: boolean): ChatWindow|EmptyTable|nil
---@overload fun(self: self, objectType: 23, name: string, index: number, reflectToScriptTable: boolean): Checkbutton|EmptyTable|nil
---@overload fun(self: self, objectType: 31, name: string, index: number, reflectToScriptTable: boolean): CircleDiagram|EmptyTable|nil
---@overload fun(self: self, objectType: 32, name: string, index: number, reflectToScriptTable: boolean): ColorPicker|EmptyTable|nil
---@overload fun(self: self, objectType: 40, name: string, index: number, reflectToScriptTable: boolean): Combobox|EmptyTable|nil
---@overload fun(self: self, objectType: 20, name: string, index: number, reflectToScriptTable: boolean): CooldownButton|EmptyTable|nil
---@overload fun(self: self, objectType: 22, name: string, index: number, reflectToScriptTable: boolean): CooldownConstantButton|EmptyTable|nil
---@overload fun(self: self, objectType: 21, name: string, index: number, reflectToScriptTable: boolean): CooldownInventoryButton|EmptyTable|nil
---@overload fun(self: self, objectType: 35, name: string, index: number, reflectToScriptTable: boolean): DamageDisplay|EmptyTable|nil
---@overload fun(self: self, objectType: 54, name: string, index: number, reflectToScriptTable: boolean): DynamicList|EmptyTable|nil
---@overload fun(self: self, objectType: 3, name: string, index: number, reflectToScriptTable: boolean): Editbox|EmptyTable|nil
---@overload fun(self: self, objectType: 4, name: string, index: number, reflectToScriptTable: boolean): EditboxMultiline|EmptyTable|nil
---@overload fun(self: self, objectType: 46, name: string, index: number, reflectToScriptTable: boolean): EmptyWidget|EmptyTable|nil
---@overload fun(self: self, objectType: 34, name: string, index: number, reflectToScriptTable: boolean): Folder|EmptyTable|nil
---@overload fun(self: self, objectType: 18, name: string, index: number, reflectToScriptTable: boolean): GameTooltip|EmptyTable|nil
---@overload fun(self: self, objectType: 28, name: string, index: number, reflectToScriptTable: boolean): Grid|EmptyTable|nil
---@overload fun(self: self, objectType: 1, name: string, index: number, reflectToScriptTable: boolean): Label|EmptyTable|nil
---@overload fun(self: self, objectType: 48, name: string, index: number, reflectToScriptTable: boolean): Line|EmptyTable|nil
---@overload fun(self: self, objectType: 5, name: string, index: number, reflectToScriptTable: boolean): Listbox|EmptyTable|nil
---@overload fun(self: self, objectType: 45, name: string, index: number, reflectToScriptTable: boolean): ListCtrl|EmptyTable|nil
---@overload fun(self: self, objectType: 44, name: string, index: number, reflectToScriptTable: boolean): MegaphoneChatEdit|EmptyTable|nil
---@overload fun(self: self, objectType: 16, name: string, index: number, reflectToScriptTable: boolean): Message|EmptyTable|nil
---@overload fun(self: self, objectType: 29, name: string, index: number, reflectToScriptTable: boolean): ModelView|EmptyTable|nil
---@overload fun(self: self, objectType: 25, name: string, index: number, reflectToScriptTable: boolean): Pageable|EmptyTable|nil
---@overload fun(self: self, objectType: 33, name: string, index: number, reflectToScriptTable: boolean): PaintColorPicker|EmptyTable|nil
---@overload fun(self: self, objectType: 55, name: string, index: number, reflectToScriptTable: boolean): RadioGroup|EmptyTable|nil
---@overload fun(self: self, objectType: 27, name: string, index: number, reflectToScriptTable: boolean): RoadMap|EmptyTable|nil
---@overload fun(self: self, objectType: 24, name: string, index: number, reflectToScriptTable: boolean): Slider|EmptyTable|nil
---@overload fun(self: self, objectType: 47, name: string, index: number, reflectToScriptTable: boolean): Slot|EmptyTable|nil
---@overload fun(self: self, objectType: 17, name: string, index: number, reflectToScriptTable: boolean): StatusBar|EmptyTable|nil
---@overload fun(self: self, objectType: 36, name: string, index: number, reflectToScriptTable: boolean): Tab|EmptyTable|nil
---@overload fun(self: self, objectType: 39, name: string, index: number, reflectToScriptTable: boolean): Textbox|EmptyTable|nil
---@overload fun(self: self, objectType: 19, name: string, index: number, reflectToScriptTable: boolean): UnitframeTooltip|EmptyTable|nil
---@overload fun(self: self, objectType: 30, name: string, index: number, reflectToScriptTable: boolean): Webbrowser|EmptyTable|nil
---@overload fun(self: self, objectType: 0, name: string, index: number, reflectToScriptTable: boolean): Window|EmptyTable|nil
---@overload fun(self: self, objectType: 26, name: string, index: number, reflectToScriptTable: boolean): WorldMap|EmptyTable|nil
---@overload fun(self: self, objectType: 53, name: string, index: number, reflectToScriptTable: boolean): X2EditBox|EmptyTable|nil
function Widgetbase:CreateChildWidgetByType(objectType, name, index,
                                            reflectToScriptTable)
end

---@TODO: Verify if drawable returns nil if type not imported.
---Creates a color drawable for the specified layer.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return ColorDrawable|EmptyTable|nil drawable The created color drawable.
---@nodiscard
---@usage
---```
---local drawable = widget:CreateColorDrawable(0, 1, 0, 1, "background")
---```
---@see DRAWABLE_NAME_LAYER
---@see ColorDrawable
function Widgetbase:CreateColorDrawable(r, g, b, a, nameLayer) end

---Creates a color drawable using a color key for the specified layer.
---@param colorKey DRAWABLE_COLOR_KEY The color key to use.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return ColorDrawable|EmptyTable|nil drawable The created color drawable.
---@nodiscard
---@usage
---```
---local drawable = widget:CreateColorDrawableByKey("common_white_bg", "background")
---```
---@see DRAWABLE_COLOR_KEY
---@see DRAWABLE_NAME_LAYER
---@see ColorDrawable
function Widgetbase:CreateColorDrawableByKey(colorKey, nameLayer) end

---Creates a drawable from the specified texture path and key.
---@param texturePath TEXTURE_PATH|string The texture path.
---@param textureKey string The texture key taken from the `path` `*.g` file.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return DrawableDDS|EmptyTable|nil drawable The created drawable.
---@nodiscard
---@usage
---```
---local drawable = widget:CreateDrawable(TEXTURE_PATH.DEFAULT, "btn_normal", "background")
------@cast drawable NinePartDrawable
---drawable:SetOutlineInvisiblePart()
---```
function Widgetbase:CreateDrawable(texturePath, textureKey, nameLayer) end

---@TODO: Not sure if this is a good usage as it never rendered.
---Creates an effect drawable for the specified texture and layer.
---@param texturePath TEXTURE_PATH The texture name.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return EffectDrawable|EmptyTable|nil drawable The created effect drawable.
---@nodiscard
---@usage
---```
---local drawable = widget:CreateEffectDrawable(TEXTURE_PATH.ACHIEVEMENT, "background")
---```
---@see TEXTURE_PATH
---@see DRAWABLE_NAME_LAYER
---@see EffectDrawable
function Widgetbase:CreateEffectDrawable(texturePath, nameLayer) end

---@TODO: Not sure if this is a good usage as it never rendered.
---Creates an effect drawable using a key for the specified texture and layer.
---@param texturePath TEXTURE_PATH The texture name.
---@param textureKey string The texture key.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return EffectDrawable|EmptyTable|nil drawable The created effect drawable.
---@nodiscard
---@usage
---```
---local drawable = widget:CreateEffectDrawableByKey(TEXTURE_PATH.ACHIEVEMENT, "icon_plus", "background")
---```
---@see TEXTURE_PATH
---@see DRAWABLE_NAME_LAYER
---@see EffectDrawable
function Widgetbase:CreateEffectDrawableByKey(texturePath, textureKey, nameLayer) end

---@TODO: Clarify functionality.
---Creates an icon drawable for the specified layer.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return IconDrawable|EmptyTable|nil drawable The created icon drawable.
---@nodiscard
---@usage
---```
---local drawable = widget:CreateIconDrawable("background")
---```
---@see DRAWABLE_NAME_LAYER
---@see IconDrawable
function Widgetbase:CreateIconDrawable(nameLayer) end

---Creates an image drawable for the specified texture and layer.
---@param texturePath TEXTURE_PATH The texture path.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return ImageDrawable|EmptyTable|nil drawable The created image drawable.
---@nodiscard
---@usage
---```
---local drawable = widget:CreateImageDrawable(TEXTURE_PATH.RANKING_GRADE, "artwork")
---```
---@see TEXTURE_PATH
---@see DRAWABLE_NAME_LAYER
---@see ImageDrawable
function Widgetbase:CreateImageDrawable(texturePath, nameLayer) end

---Creates a nine-part drawable for the specified texture and layer.
---@param texturePath TEXTURE_PATH The texture path.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return NinePartDrawable|EmptyTable|nil drawable The created nine-part drawable.
---@nodiscard
---@usage
---```
---local drawable = widget:CreateNinePartDrawable(TEXTURE_PATH.HUD, "background")
---```
---@see TEXTURE_PATH
---@see DRAWABLE_NAME_LAYER
---@see NinePartDrawable
function Widgetbase:CreateNinePartDrawable(texturePath, nameLayer) end

---Creates a text drawable for the specified font and size.
---@param fontPath FONT_PATH The font path.
---@param fontSize FONT_SIZE The font size.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return TextDrawable|EmptyTable|nil drawable The created text drawable.
---@nodiscard
---@usage
---```
---local drawable = widget:CreateTextDrawable(FONT_PATH.DEFAULT, FONT_SIZE.DEFAULT, "overlay")
---```
---@see FONT_PATH
---@see FONT_SIZE
---@see DRAWABLE_NAME_LAYER
---@see TextDrawable
function Widgetbase:CreateTextDrawable(fontPath, fontSize, nameLayer) end

---Creates a three-color drawable for the specified dimensions and layer.
---@param width number The width of the drawable.
---@param height number The height of the drawable.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return ThreeColorDrawable|EmptyTable|nil drawable The created three-color drawable.
---@nodiscard
---@usage
---```
---local drawable = widget:CreateThreeColorDrawable(1024, 1024, "background")
---```
---@see ThreeColorDrawable
function Widgetbase:CreateThreeColorDrawable(width, height, nameLayer) end

---Creates a three-part drawable for the specified texture and layer.
---@param texturePath TEXTURE_PATH The texture path.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return ThreePartDrawable|EmptyTable|nil drawable The created three-part drawable.
---@nodiscard
---@usage
---```
---local drawable = widget:CreateThreePartDrawable(TEXTURE_PATH.HUD, "background")
---```
---@see TEXTURE_PATH
---@see DRAWABLE_NAME_LAYER
---@see ThreePartDrawable
function Widgetbase:CreateThreePartDrawable(texturePath, nameLayer) end

---@TODO: Unsure what exactly this does.
---Detaches the Widgetbase from its parent.
function Widgetbase:DetachWidget() end

---@TODO: Make a list of events that can be activated/deactivated by this. This also sets the state to disabled (actually highlighted because state is bugged atm)
---Enables or disables interactivity for the Widgetbase.
---@param enable boolean `true` to enable, `false` to disable. (default: `true`)
---@usage
---```
---widget:Enable(false)
---```
function Widgetbase:Enable(enable) end

---@TODO: Make a list of events that can be activated/deactivated by this.
---Enables or disables dragging for the Widgetbase.
---@param enable boolean `true` to enable dragging, `false` to disable. (default: `false`)
---@usage
---```
---widget:EnableDrag(true)
---```
function Widgetbase:EnableDrag(enable) end

---@TODO: Make a list of events that can be activated/deactivated by this. default value.
---Enables or disables focus for the Widgetbase.
---@param enable boolean `true` to enable focus, `false` to disable.
---@usage
---```
---widget:EnableFocus(true)
---```
function Widgetbase:EnableFocus(enable) end

---@TODO: Clarify behavior. default value.
---Enables or disables removing the Widgetbase when hidden.
---@param enable boolean `true` to enable removal on hide, `false` to disable.
---@usage
---```
---widget:EnableHidingIsRemove(true)
---```
function Widgetbase:EnableHidingIsRemove(enable) end

---@TODO: Make a list of events that can be activated/deactivated by this.
---Enables or disables keyboard input capture for the Widgetbase.
---@param enable boolean `true` to enable keyboard input, `false` to disable. (default: `false`)
---@usage
---```
---widget:EnableKeyboard(true)
---```
function Widgetbase:EnableKeyboard(enable) end

---@TODO: Verify if additional parameter exists. Make a list of events that can be activated/deactivated by this. OnMouseDown/Up wheelup/down
---Enables or disables picking for the Widgetbase.
---@param enable boolean `true` to enable picking, `false` to disable. (default: `true`)
---@usage
---```
---widget:EnablePick(false)
---```
function Widgetbase:EnablePick(enable) end

---@TODO: Make a list of events that can be activated/deactivated by this.
---Enables or disables scrolling for the Widgetbase.
---@param enable boolean `true` to enable scrolling, `false` to disable.
---@usage
---```
---widget:EnableScroll(true)
---```
function Widgetbase:EnableScroll(enable) end

---Retrieves the alpha value of the Widgetbase.
---@return number alpha The alpha value (min: `0`, max: `1`).
---@nodiscard
---@usage
---```
---local alpha = widget:GetAlpha()
---```
function Widgetbase:GetAlpha() end

---@TODO: This will need to be @cast
---Retrieves the last attached widget of the Widgetbase.
---@return Widget|nil attachedWidget The attached widget, or `nil` if none.
---@nodiscard
---@usage
---```
---widget:GetAttachedWidget()
---```
---@see Widget
function Widgetbase:GetAttachedWidget() end

---@TODO: I believe this returns the current widget if no parent exists.
---Retrieves the parent widget of the Widgetbase.
---@return Widget parentWidget The parent widget.
---@nodiscard
---@usage
---```
---local parentWidget = widget:GetParent()
---```
function Widgetbase:GetParent() end

---Retrieves the text of the Widgetbase.
---@return string text The text content.
---@nodiscard
---@usage
---```
---local text = widget:GetText()
---```
function Widgetbase:GetText() end

---@TODO: Returns "normal", are there other layer types?
---Retrieves the UI layer of the Widgetbase.
---@return string uiLayer The UI layer.
---@nodiscard
---@usage
---```
---local uiLayer = widget:GetUILayer()
---```
function Widgetbase:GetUILayer() end

---@TODO: Clarify typeStr purpose.
---Retrieves the value for the specified type.
---@param typeStr string The type to query.
---@return number value The value associated with the type.
---@nodiscard
---```
---local value = widget:GetValue("state")
---```
function Widgetbase:GetValue(typeStr) end

---Checks if the Widgetbase has a handler for the specified action.
---@param actionName WIDGET_EVENT_TYPE The action name to check.
---@return boolean handlerExists `true` if a handler exists, `false` otherwise.
---@nodiscard
---@usage
---```
---local handlerExists = widget:HasHandler("OnClick")
---```
---@see WIDGET_EVENT_TYPE
function Widgetbase:HasHandler(actionName) end

---@TODO: Usage.
---Inherits animation data from the specified widget.
---@param widget Widget The widget to inherit animation data from.
function Widgetbase:InheritAnimationData(widget) end

---Checks if the specified ID is a descendant of the Widgetbase.
---@param id string The ID to check.
---@return boolean descendantWidget `true` if the ID is a descendant, `false` otherwise.
---@nodiscard
---@usage
---```
---local button = widget:CreateChildWidget("button", "exampleButton", 0, true)
---local descendantWidget = widget:IsDescendantWidget(button:GetId())
---```
function Widgetbase:IsDescendantWidget(id) end

---Checks if the Widgetbase is enabled.
---@return boolean enabled `true` if enabled, `false` otherwise.
---@nodiscard
---@usage
---```
---local enabled = widget:IsEnabled()
---```
function Widgetbase:IsEnabled() end

---Checks if the mouse is over the Widgetbase.
---@return boolean mouseOver `true` if the mouse is over, `false` otherwise.
---@nodiscard
---@usage
---```
---local mouseOver = widget:IsMouseOver()
---```
function Widgetbase:IsMouseOver() end

---Checks if the Widgetbase is currently animating.
---@return boolean nowAnimation `true` if animating, `false` otherwise.
---@nodiscard
---@usage
---```
---local nowAnimation = widget:IsNowAnimation()
---```
function Widgetbase:IsNowAnimation() end

---Checks if the Widgetbase is visible.
---@return boolean visible `true` if visible, `false` otherwise.
---@nodiscard
---@usage
---```
---local visible = widget:IsVisible()
---```
function Widgetbase:IsVisible() end

---Lowers the Widgetbase in the UI hierarchy.
---@usage
---```
---widget:Lower()
---```
function Widgetbase:Lower() end

---Moves the Widgetbase to the specified coordinates from the TOPLEFT corner.
---@param x number The x-coordinate.
---@param y number The y-coordinate.
---@usage
---```
---widget:MoveTo(0, 0)
---```
function Widgetbase:MoveTo(x, y) end

---Raises the Widgetbase in the UI hierarchy.
---@usage
---```
---widget:Raise()
---```
function Widgetbase:Raise() end

---Registers an event for the Widgetbase to be accessible by the OnEvent handler
---action.
---@param eventName UIEVENT_TYPE The event to register.
---@see UIEVENT_TYPE
---@usage
---```
---widget:RegisterEvent("CHAT_MESSAGE")
---```
function Widgetbase:RegisterEvent(eventName) end

---Releases the deleted handler for the Widgetbase.
function Widgetbase:ReleaseDeletedHandler() end

---Releases a handler for the specified action.
---@param actionName WIDGET_EVENT_TYPE The action name to release.
---@usage
---```
---widget:ReleaseHandler("OnClick")
---```
---@see WIDGET_EVENT_TYPE
function Widgetbase:ReleaseHandler(actionName) end

---@TODO: Clarify cacheQueryId usage.
---Requests character cache data.
---@param cacheQueryId string The cache query ID.
function Widgetbase:RequestCharacterCacheData(cacheQueryId) end

---Sets the alpha value of the Widgetbase.
---@param alpha number The alpha value (min: `0`, max: `1`).
---@usage
---```
---widget:SetAlpha(.5)
---```
function Widgetbase:SetAlpha(alpha) end

---Sets an alpha animation for the Widgetbase.
---@param initialAlpha number The starting alpha (min: `0`, max: `1`).
---@param finalAlpha number The ending alpha (min: `0`, max: `1`).
---@param velocityTime number Duration in seconds for velocity.
---@param accelerationTime number Duration in seconds for acceleration.
---@usage
---```
---widget:SetAlphaAnimation(0, 1, 0.3, 0.3)
---```
function Widgetbase:SetAlphaAnimation(initialAlpha, finalAlpha, velocityTime,
                                      accelerationTime)
end

---@TODO: Clarify category purpose.
---Sets the category for the Widgetbase.
---@param category string The category to set.
function Widgetbase:SetCategory(category) end

---@TODO: Clarify handler usage.
---Sets a handler for character cache data.
---@param handler function The handler function.
function Widgetbase:SetCharacterCacheDataHandler(handler) end

---@TODO: Not sure if this works correctly.
---Sets a handler for a specific action on a delegator widget.
---@param action WIDGET_EVENT_TYPE The action name.
---@param delegator Widget The delegator widget.
---@param handler function The handler function.
function Widgetbase:SetDelegator(action, delegator, handler) end

---Sets a handler for the Widgetbase deletion event.
---@param handler function The handler function.
---@usage
---```
---widget:SetDeletedHandler(function() end)
---```
function Widgetbase:SetDeletedHandler(handler) end

---Sets the drag condition for the Widgetbase. This restricts when the events
---`OnDragReceive`, `OnDragStart`, and `OnDragStop` are fired.
---@param dragCondition DRAG_CONDITION The drag condition. (default: `DC_ALWAYS`)
---@usage
---```
---widget:SetDragCondition(DC_SHIFT_KEY_DOWN)
---```
---@see DRAG_CONDITION
function Widgetbase:SetDragCondition(dragCondition) end

---@TODO: Clarify functionality.
---Sets the alpha for a specific drawable layer.
---@param alpha number Alpha value (min: `0`, max: `1`).
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the alpha to.
---@usage
---```
---widget:SetDrawableLayerAlpha(.5, "background")
---```
---@see DRAWABLE_NAME_LAYER
function Widgetbase:SetDrawableLayerAlpha(alpha, nameLayer) end

---@TODO: Clarify drawPriority usage.
---Sets the draw priority for the Widgetbase.
---@param drawPriority number The draw priority value.
---@usage
---```
---widget:SetDrawPriority(1)
---```
function Widgetbase:SetDrawPriority(drawPriority) end

---Sets a handler for the specified action.
---@param actionName string The action name.
---@param handler function The handler function.
---@usage
---```
---widget:SetHandler("OnClick", function() ADDON:ChatLog("OnClick") end)
---```
---@overload fun(self: self, actionName: "OnAcceptFocus", handler: OnAcceptFocus)
---@overload fun(self: self, actionName: "OnAlphaAnimeEnd", handler: OnAlphaAnimeEnd)
---@overload fun(self: self, actionName: "OnBoundChanged", handler: OnBoundChanged)
---@overload fun(self: self, actionName: "OnChangedAnchor", handler: OnChangedAnchor)
---@overload fun(self: self, actionName: "OnCheckChanged", handler: OnCheckChanged)
---@overload fun(self: self, actionName: "OnClick", handler: OnClick)
---@overload fun(self: self, actionName: "OnCloseByEsc", handler: OnCloseByEsc)
---@overload fun(self: self, actionName: "OnContentUpdated", handler: OnContentUpdated)
---@overload fun(self: self, actionName: "OnCursorMoved", handler: OnCursorMoved)
---@overload fun(self: self, actionName: "OnDragReceive", handler: OnDragReceive)
---@overload fun(self: self, actionName: "OnDragStart", handler: OnDragStart)
---@overload fun(self: self, actionName: "OnDragStop", handler: OnDragStop)
---@overload fun(self: self, actionName: "OnDynamicListUpdatedView", handler: OnDynamicListUpdatedView)
---@overload fun(self: self, actionName: "OnEffect", handler: OnEffect)
---@overload fun(self: self, actionName: "OnEnableChanged", handler: OnEnableChanged)
---@overload fun(self: self, actionName: "OnEndFadeIn", handler: OnEndFadeIn)
---@overload fun(self: self, actionName: "OnEndFadeOut", handler: OnEndFadeOut)
---@overload fun(self: self, actionName: "OnEnter", handler: OnEnter)
---@overload fun(self: self, actionName: "OnEnterPressed", handler: OnEnterPressed)
---@overload fun(self: self, actionName: "OnEscapePressed", handler: OnEscapePressed)
---@overload fun(self: self, actionName: "OnEvent", handler: OnEvent)
---@overload fun(self: self, actionName: "OnHide", handler: OnHide)
---@overload fun(self: self, actionName: "OnKeyDown", handler: OnKeyDown)
---@overload fun(self: self, actionName: "OnKeyUp", handler: OnKeyUp)
---@overload fun(self: self, actionName: "OnLeave", handler: OnLeave)
---@overload fun(self: self, actionName: "OnListboxToggled", handler: OnListboxToggled)
---@overload fun(self: self, actionName: "OnModelChanged", handler: OnModelChanged)
---@overload fun(self: self, actionName: "OnMouseDown", handler: OnMouseDown)
---@overload fun(self: self, actionName: "OnMouseMove", handler: OnMouseMove)
---@overload fun(self: self, actionName: "OnMouseUp", handler: OnMouseUp)
---@overload fun(self: self, actionName: "OnMovedPosition", handler: OnMovedPosition)
---@overload fun(self: self, actionName: "OnPageChanged", handler: OnPageChanged)
---@overload fun(self: self, actionName: "OnPermissionChanged", handler: OnPermissionChanged)
---@overload fun(self: self, actionName: "OnRadioChanged", handler: OnRadioChanged)
---@overload fun(self: self, actionName: "OnRestricted", handler: OnRestricted)
---@overload fun(self: self, actionName: "OnScale", handler: OnScale)
---@overload fun(self: self, actionName: "OnScaleAnimeEnd", handler: OnScaleAnimeEnd)
---@overload fun(self: self, actionName: "OnSelChanged", handler: OnSelChanged)
---@overload fun(self: self, actionName: "OnShow", handler: OnShow)
---@overload fun(self: self, actionName: "OnSliderChanged", handler: OnSliderChanged)
---@overload fun(self: self, actionName: "OnTabChanged", handler: OnTabChanged)
---@overload fun(self: self, actionName: "OnTextChanged", handler: OnTextChanged)
---@overload fun(self: self, actionName: "OnTooltip", handler: OnTooltip)
---@overload fun(self: self, actionName: "OnUpdate", handler: OnUpdate)
---@overload fun(self: self, actionName: "OnVisibleChanged", handler: OnVisibleChanged)
---@overload fun(self: self, actionName: "OnWheelDown", handler: OnWheelDown)
---@overload fun(self: self, actionName: "OnWheelUp", handler: OnWheelUp)
---@overload fun(self: self, actionName: "PreClick", handler: PreClick)
---@overload fun(self: self, actionName: "PreUse", handler: PreUse)
function Widgetbase:SetHandler(actionName, handler) end

---@TODO: Verify if this sets localized text.
---Sets localized text for the Widgetbase (details TBD).
function Widgetbase:SetLText() end

---Sets the maximum resizing extent for the Widgetbase.
---@param width number The maximum width.
---@param height number The maximum height.
---@usage
---```
---widget:SetMaxResizingExtent(1000, 1000)
---```
function Widgetbase:SetMaxResizingExtent(width, height) end

---Sets the minimum resizing extent for the Widgetbase.
---@param width number The minimum width.
---@param height number The minimum height.
---@usage
---```
---widget:SetMaxResizingExtent(100, 100)
---```
function Widgetbase:SetMinResizingExtent(width, height) end

---@TODO: usage
---Sets a move animation for the Widgetbase.
---@param direction string The direction of the animation.
---@param delta number The movement distance.
---@param time number The duration in seconds.
---@param repeatAnimation number The number of animation repetitions.
function Widgetbase:SetMoveAnimation(direction, delta, time, repeatAnimation) end

---Sets the resizing border size for the Widgetbase. `SetMinResizingExtent` and
---`SetMaxResizingExtent` must be called or this can cause a crash!
---@param left number The left border size.
---@param top number The top border size.
---@param right number The right border size.
---@param bottom number The bottom border size.
---@usage
---```
---widget:SetResizingBorderSize(10, 10, 10, 10)
---widget:SetMinResizingExtent(345, 160)
---widget:SetMaxResizingExtent(1050, 1020)
---```
function Widgetbase:SetResizingBorderSize(left, top, right, bottom) end

---Sets the scale of the Widgetbase.
---@param scale number The scale value.
---@usage
---```
---widget:SetScale(.5)
---```
function Widgetbase:SetScale(scale) end

---Sets a scale animation for the Widgetbase.
---@param initialScale number The starting scale (must be greater than 0).
---@param finalScale number The ending scale.
---@param velocityTime number Duration in seconds for velocity.
---@param accelerationTime number Duration in seconds for acceleration.
---@param scaleAnchor ANCHOR_POINT The anchor point for scaling.
---@usage
---```
---widget:SetScaleAnimation(5, 1, 2, 2, "CENTER")
---```
---@see ANCHOR_POINT
function Widgetbase:SetScaleAnimation(initialScale, finalScale, velocityTime,
                                      accelerationTime, scaleAnchor)
end

---@TODO: Broken?
---Sets the sound to play when the Widgetbase is shown.
---@param name string The sound name.
function Widgetbase:SetSounds(name) end

---Enables or disables start animations for alpha and scale.
---@param alpha boolean `true` to enable **alpha** animation, `false` to disable. (default: `false`)
---@param scale boolean `true` to enable **scale** animation, `false` to disable. (default: `false`)
---@usage
---```
---
---```
function Widgetbase:SetStartAnimation(alpha, scale) end

---Sets the text for the Widgetbase.
---@param text string The text to set.
---@usage
---```
---widget:SetText("Archerage.to - the first ArcheAge Private Server")
---```
function Widgetbase:SetText(text) end

---Shows or hides the Widgetbase.
---@param show boolean `true` to show, `false` to hide. (default: `false`)
---@usage
---```
---widget:Show(true)
---```
function Widgetbase:Show(show) end

---Starts moving the Widgetbase.
---@usage
---```
---widget:SetHandler("OnDragStart", function(self)
---  self:StartMoving()
---end)
---```
function Widgetbase:StartMoving() end

---Starts resizing the Widgetbase from the specified anchor point.
---@param anchorPoint ANCHOR_POINT The anchor point for resizing.
---@usage
---```
---widget:StartSizing("CENTER")
---```
---@see ANCHOR_POINT
function Widgetbase:StartSizing(anchorPoint) end

---Stops moving or resizing the Widgetbase.
---@usage
---```
---widget:SetHandler("OnDragStop", function(self)
---  self:StopMovingOrSizing()
---end)
---```
function Widgetbase:StopMovingOrSizing() end

---@TODO: Broken?
---Triggers or stops the move animation of the Widgetbase.
---@param on boolean `true` to start the animation, `false` to stop.
---@usage
---```
---widget:TriggerMoveAnimation(true)
---```
function Widgetbase:TriggerMoveAnimation(on) end

---@TODO: Never got this to work.
---Enables or disables resizing for the Widgetbase.
---@param use boolean `true` to enable resizing, `false` to disable.
---@usage
---```
---widget:UseResizing(true)
---```
function Widgetbase:UseResizing(use) end
