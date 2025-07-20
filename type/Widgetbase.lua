---@meta _

---@alias DRAG_CONDITION `DC_ALWAYS` | `DC_SHIFT_KEY_DOWN`

---@class Widgetbase
local Widgetbase = {}

---Applies/Removes UIScale for the Widgetbase. (Default: true)
---@param apply boolean
function Widgetbase:ApplyUIScale(apply) end

---Attaches a `widget` to the current Widgetbase.
---@param widget Widget
function Widgetbase:AttachWidget(widget) end

---TODO:
function Widgetbase:CancelRequestCharacterCacheData() end

---TODO:
---@param typeStr "horz"|"vert"
---@param value number
function Widgetbase:ChangeChildAnchorByScrollValue(typeStr, value) end

---Enables/Disables the current Widgetbase to be clicked.
---@param clickable boolean
function Widgetbase:Clickable(clickable) end

---Returns a child widget and attaches it as a property to the Widgetbase as `Widgetbase[name]`.
---@overload fun(self: self, objectTypeStr: "avi", name: string, index: number, reflectToScriptTable: boolean): Avi|nil
---@overload fun(self: self, objectTypeStr: "button", name: string, index: number, reflectToScriptTable: boolean): Button|nil
---@overload fun(self: self, objectTypeStr: "chatwindow", name: string, index: number, reflectToScriptTable: boolean): ChatWindow|nil
---@overload fun(self: self, objectTypeStr: "checkbutton", name: string, index: number, reflectToScriptTable: boolean): Checkbutton|nil
---@overload fun(self: self, objectTypeStr: "circlediagram", name: string, index: number, reflectToScriptTable: boolean): CircleDiagram|nil
---@overload fun(self: self, objectTypeStr: "colorpicker", name: string, index: number, reflectToScriptTable: boolean): ColorPicker|nil
---@overload fun(self: self, objectTypeStr: "combobox", name: string, index: number, reflectToScriptTable: boolean): Combobox|nil
---@overload fun(self: self, objectTypeStr: "cooldownbutton", name: string, index: number, reflectToScriptTable: boolean): CooldownButton|nil
---@overload fun(self: self, objectTypeStr: "cooldownconstantbutton", name: string, index: number, reflectToScriptTable: boolean): CooldownConstantButton|nil
---@overload fun(self: self, objectTypeStr: "cooldowninventorybutton", name: string, index: number, reflectToScriptTable: boolean): CooldownInventoryButton|nil
---@overload fun(self: self, objectTypeStr: "damagedisplay", name: string, index: number, reflectToScriptTable: boolean): DamageDisplay|nil
---@overload fun(self: self, objectTypeStr: "dynamiclist", name: string, index: number, reflectToScriptTable: boolean): DynamicList|nil
---@overload fun(self: self, objectTypeStr: "editbox", name: string, index: number, reflectToScriptTable: boolean): Editbox|nil
---@overload fun(self: self, objectTypeStr: "editboxmultiline", name: string, index: number, reflectToScriptTable: boolean): EditboxMultiline|nil
---@overload fun(self: self, objectTypeStr: "emptywidget", name: string, index: number, reflectToScriptTable: boolean): EmptyWidget|nil
---@overload fun(self: self, objectTypeStr: "folder", name: string, index: number, reflectToScriptTable: boolean): Folder|nil
---@overload fun(self: self, objectTypeStr: "gametooltip", name: string, index: number, reflectToScriptTable: boolean): GameTooltip|nil
---@overload fun(self: self, objectTypeStr: "grid", name: string, index: number, reflectToScriptTable: boolean): Grid|nil
---@overload fun(self: self, objectTypeStr: "label", name: string, index: number, reflectToScriptTable: boolean): Label|nil
---@overload fun(self: self, objectTypeStr: "line", name: string, index: number, reflectToScriptTable: boolean): Line|nil
---@overload fun(self: self, objectTypeStr: "listbox", name: string, index: number, reflectToScriptTable: boolean): Listbox|nil
---@overload fun(self: self, objectTypeStr: "listctrl", name: string, index: number, reflectToScriptTable: boolean): ListCtrl|nil
---@overload fun(self: self, objectTypeStr: "megaphonechatedit", name: string, index: number, reflectToScriptTable: boolean): MegaphoneChatEdit|nil
---@overload fun(self: self, objectTypeStr: "message", name: string, index: number, reflectToScriptTable: boolean): Message|nil
---@overload fun(self: self, objectTypeStr: "modelview", name: string, index: number, reflectToScriptTable: boolean): ModelView|nil
---@overload fun(self: self, objectTypeStr: "pageable", name: string, index: number, reflectToScriptTable: boolean): Pageable|nil
---@overload fun(self: self, objectTypeStr: "paintcolorpicker", name: string, index: number, reflectToScriptTable: boolean): PaintColorPicker|nil
---@overload fun(self: self, objectTypeStr: "radiogroup", name: string, index: number, reflectToScriptTable: boolean): RadioGroup|nil
---@overload fun(self: self, objectTypeStr: "roadmap", name: string, index: number, reflectToScriptTable: boolean): RoadMap|nil
---@overload fun(self: self, objectTypeStr: "slider", name: string, index: number, reflectToScriptTable: boolean): Slider|nil
---@overload fun(self: self, objectTypeStr: "slot", name: string, index: number, reflectToScriptTable: boolean): Slot|nil
---@overload fun(self: self, objectTypeStr: "statusbar", name: string, index: number, reflectToScriptTable: boolean): StatusBar|nil
---@overload fun(self: self, objectTypeStr: "tab", name: string, index: number, reflectToScriptTable: boolean): Tab|nil
---@overload fun(self: self, objectTypeStr: "textbox", name: string, index: number, reflectToScriptTable: boolean): Textbox|nil
---@overload fun(self: self, objectTypeStr: "unitframetooltip", name: string, index: number, reflectToScriptTable: boolean): UnitframeTooltip|nil
---@overload fun(self: self, objectTypeStr: "webbrowser", name: string, index: number, reflectToScriptTable: boolean): Webbrowser|nil
---@overload fun(self: self, objectTypeStr: "window", name: string, index: number, reflectToScriptTable: boolean): Window|nil
---@overload fun(self: self, objectTypeStr: "worldmap", name: string, index: number, reflectToScriptTable: boolean): WorldMap|nil
---@overload fun(self: self, objectTypeStr: "x2editbox", name: string, index: number, reflectToScriptTable: boolean): X2EditBox|nil
---@param objectTypeStr string
---@param name string
---@param index number
---@param reflectToScriptTable boolean
---@return Widget
---@nodiscard
function Widgetbase:CreateChildWidget(objectTypeStr, name, index,
                                      reflectToScriptTable)
end

---TODO: UOT
---
---Returns a child widget.
---@overload fun(self: self, objectType: `OBJECT.AVI`, name: string, index: number, reflectToScriptTable: boolean): Avi|nil
---@overload fun(self: self, objectType: `OBJECT.Button`, name: string, index: number, reflectToScriptTable: boolean): Button|nil
---@overload fun(self: self, objectType: `OBJECT.ChatTab`, name: string, index: number, reflectToScriptTable: boolean): ChatWindow|nil
---@overload fun(self: self, objectType: `OBJECT.CheckButton`, name: string, index: number, reflectToScriptTable: boolean): Checkbutton|nil
---@overload fun(self: self, objectType: `OBJECT.CircleDiagram`, name: string, index: number, reflectToScriptTable: boolean): CircleDiagram|nil
---@overload fun(self: self, objectType: `OBJECT.ColorPicker`, name: string, index: number, reflectToScriptTable: boolean): ColorPicker|nil
---@overload fun(self: self, objectType: `OBJECT.Combobox`, name: string, index: number, reflectToScriptTable: boolean): Combobox|nil
---@overload fun(self: self, objectType: `OBJECT.CooldownButton`, name: string, index: number, reflectToScriptTable: boolean): CooldownButton|nil
---@overload fun(self: self, objectType: `OBJECT.CooldownConstantButton`, name: string, index: number, reflectToScriptTable: boolean): CooldownConstantButton|nil
---@overload fun(self: self, objectType: `OBJECT.CooldownInventoryButton`, name: string, index: number, reflectToScriptTable: boolean): CooldownInventoryButton|nil
---@overload fun(self: self, objectType: `OBJECT.DamageDisplay`, name: string, index: number, reflectToScriptTable: boolean): DamageDisplay|nil
---@overload fun(self: self, objectType: `OBJECT.DynamicList`, name: string, index: number, reflectToScriptTable: boolean): DynamicList|nil
---@overload fun(self: self, objectType: `OBJECT.Editbox`, name: string, index: number, reflectToScriptTable: boolean): Editbox|nil
---@overload fun(self: self, objectType: `OBJECT.EditboxMultiline`, name: string, index: number, reflectToScriptTable: boolean): EditboxMultiline|nil
---@overload fun(self: self, objectType: `OBJECT.EmptyWidget`, name: string, index: number, reflectToScriptTable: boolean): EmptyWidget|nil
---@overload fun(self: self, objectType: `OBJECT.Folder`, name: string, index: number, reflectToScriptTable: boolean): Folder|nil
---@overload fun(self: self, objectType: `OBJECT.GameTooltip`, name: string, index: number, reflectToScriptTable: boolean): GameTooltip|nil
---@overload fun(self: self, objectType: `OBJECT.Grid`, name: string, index: number, reflectToScriptTable: boolean): Grid|nil
---@overload fun(self: self, objectType: `OBJECT.Label`, name: string, index: number, reflectToScriptTable: boolean): Label|nil
---@overload fun(self: self, objectType: `OBJECT.Line`, name: string, index: number, reflectToScriptTable: boolean): Line|nil
---@overload fun(self: self, objectType: `OBJECT.Listbox`, name: string, index: number, reflectToScriptTable: boolean): Listbox|nil
---@overload fun(self: self, objectType: `OBJECT.ListCtrl`, name: string, index: number, reflectToScriptTable: boolean): ListCtrl|nil
---@overload fun(self: self, objectType: `OBJECT.MegaphoneChatEdit`, name: string, index: number, reflectToScriptTable: boolean): MegaphoneChatEdit|nil
---@overload fun(self: self, objectType: `OBJECT.Message`, name: string, index: number, reflectToScriptTable: boolean): Message|nil
---@overload fun(self: self, objectType: `OBJECT.ModelView`, name: string, index: number, reflectToScriptTable: boolean): ModelView|nil
---@overload fun(self: self, objectType: `OBJECT.Pageable`, name: string, index: number, reflectToScriptTable: boolean): Pageable|nil
---@overload fun(self: self, objectType: `OBJECT.PaintColorPicker`, name: string, index: number, reflectToScriptTable: boolean): PaintColorPicker|nil
---@overload fun(self: self, objectType: `OBJECT.RadioGroup`, name: string, index: number, reflectToScriptTable: boolean): RadioGroup|nil
---@overload fun(self: self, objectType: `OBJECT.RoadMap`, name: string, index: number, reflectToScriptTable: boolean): RoadMap|nil
---@overload fun(self: self, objectType: `OBJECT.Slider`, name: string, index: number, reflectToScriptTable: boolean): Slider|nil
---@overload fun(self: self, objectType: `OBJECT.Slot`, name: string, index: number, reflectToScriptTable: boolean): Slot|nil
---@overload fun(self: self, objectType: `OBJECT.StatusBar`, name: string, index: number, reflectToScriptTable: boolean): StatusBar|nil
---@overload fun(self: self, objectType: `OBJECT.Tab`, name: string, index: number, reflectToScriptTable: boolean): Tab|nil
---@overload fun(self: self, objectType: `OBJECT.Textbox`, name: string, index: number, reflectToScriptTable: boolean): Textbox|nil
---@overload fun(self: self, objectType: `OBJECT.UnitframeTooltip`, name: string, index: number, reflectToScriptTable: boolean): UnitframeTooltip|nil
---@overload fun(self: self, objectType: `OBJECT.Webbrowser`, name: string, index: number, reflectToScriptTable: boolean): Webbrowser|nil
---@overload fun(self: self, objectType: `OBJECT.Window`, name: string, index: number, reflectToScriptTable: boolean): Window|nil
---@overload fun(self: self, objectType: `OBJECT.WorldMap`, name: string, index: number, reflectToScriptTable: boolean): WorldMap|nil
---@overload fun(self: self, objectType: `OBJECT.X2Editbox`, name: string, index: number, reflectToScriptTable: boolean): X2EditBox|nil
---@param objectType number
---@param name string
---@param index number
---@param reflectToScriptTable boolean
---@nodiscard
function Widgetbase:CreateChildWidgetByType(objectType, name, index,
                                            reflectToScriptTable)
end

---TODO: Can these createxdrawable return nil if the drawable type isnt imported?
---@param r number 0 to 1
---@param g number 0 to 1
---@param b number 0 to 1
---@param a number 0 to 1
---@param nameLayer string
---@return ColorDrawable
---@nodiscard
function Widgetbase:CreateColorDrawable(r, g, b, a, nameLayer) end

---TODO:
---@param colorKey string
---@param nameLayer string
---@return ColorDrawable
---@nodiscard
function Widgetbase:CreateColorDrawableByKey(colorKey, nameLayer) end

---TODO:
---@usage
---```
---local emptyWidget = assert(UIParent:CreateWidget("emptywidget", "exampleEmptyWidget", "UIParent"))
---local drawable    = emptyWidget:CreateDrawable(TEXTURE_PATH.DEFAULT, "btn_normal", "background")
---
----- Checks to make sure drawable isnt a empty table, this can happen if you don't import the correct drawable object.
---if next(drawable) == nil then
---  return
---end
---
------@cast drawable NinePartDrawable
---drawable:SetOutlineInvisiblePart()
---```
---@param path TEXTURE_PATH
---@param key string
---@param nameLayer string
---@return DrawableDDS
---@nodiscard
function Widgetbase:CreateDrawable(path, key, nameLayer) end

---TODO:
---@param nameTex string
---@param nameLayer string
---@return EffectDrawable
---@nodiscard
function Widgetbase:CreateEffectDrawable(nameTex, nameLayer) end

---TODO:
---@param nameTex string
---@param key string
---@param nameLayer string
---@return EffectDrawable
---@nodiscard
function Widgetbase:CreateEffectDrawableByKey(nameTex, key, nameLayer) end

---TODO:
---@param nameLayer string
---@return IconDrawable
---@nodiscard
function Widgetbase:CreateIconDrawable(nameLayer) end

---TODO:
---@param nameTex TEXTURE_PATH
---@param nameLayer string
---@return ImageDrawable
---@nodiscard
function Widgetbase:CreateImageDrawable(nameTex, nameLayer) end

---TODO:
---@param nameTex TEXTURE_PATH
---@param nameLayer string
---@return NinePartDrawable
---@nodiscard
function Widgetbase:CreateNinePartDrawable(nameTex, nameLayer) end

---TODO:
---@param path FONT_PATH
---@param size FONT_SIZE
---@param nameLayer string
---@return TextDrawable
---@nodiscard
function Widgetbase:CreateTextDrawable(path, size, nameLayer) end

---TODO:
---@param width number
---@param height number
---@param layer string
---@return ThreeColorDrawable
---@nodiscard
function Widgetbase:CreateThreeColorDrawable(width, height, layer) end

---TODO:
---@param nameTex TEXTURE_PATH
---@param nameLayer string
---@return ThreePartDrawable
---@nodiscard
function Widgetbase:CreateThreePartDrawable(nameTex, nameLayer) end

---Detaches this Widgetbase from any Widgetbase it is attached too.
function Widgetbase:DetachWidget() end

---Enables/Disables interactivity of Widgetbase.
---@param enable boolean
function Widgetbase:Enable(enable) end

---Enables/Disables dragging of the Widgetbase.
---@param enable boolean
function Widgetbase:EnableDrag(enable) end

---Enables/Disables focus of the Widgetbase.
---@param enable boolean
function Widgetbase:EnableFocus(enable) end

---TODO:
---Enables/Disables removing the Widgetbase on hide.
---@param enable boolean
function Widgetbase:EnableHidingIsRemove(enable) end

---Enables/Disables capturing keyboard input for the Widgetbase.
---@param enable boolean
function Widgetbase:EnableKeyboard(enable) end

---TODO: This may have two params
---@param enable boolean
function Widgetbase:EnablePick(enable) end

---Enables/Disables scrolling the Widgetbase.
---@param enable boolean
function Widgetbase:EnableScroll(enable) end

---Returns the `alpha` of the Widgetbase.
---@return number alpha
---@nodiscard
function Widgetbase:GetAlpha() end

---Returns the last `attachedWidget` of the Widgetbase.
---@return Widget|nil attachedWidget
---@nodiscard
function Widgetbase:GetAttachedWidget() end

---Returns `parentWidget` for the Widgetbase.
---@return Widget parentWidget
---@nodiscard
function Widgetbase:GetParent() end

---Returns `text` for the Widgetbase.
---@return string text
---@nodiscard
function Widgetbase:GetText() end

---Returns `uiLayer` for the Widgetbase.
---@return string uiLayer
---@nodiscard
function Widgetbase:GetUILayer() end

---TODO:
---@param typeStr string
---@return number
---@nodiscard
function Widgetbase:GetValue(typeStr) end

---Returns a boolean indicating if the Widgetbase has a `actionName` set.
---@param actionName string
---@return boolean
---@nodiscard
function Widgetbase:HasHandler(actionName) end

---Inherits currently playing animation data from a `widget` to Widgetbase.
---@param widget Widget
function Widgetbase:InheritAnimationData(widget) end

---Returns a boolean indicating if the `id` is a descendant of the Widgetbase.
---@param id string
---@return boolean
---@nodiscard
function Widgetbase:IsDescendantWidget(id) end

---Returns a boolean indicating if the Widgetbase is enabled.
---@return boolean
---@nodiscard
function Widgetbase:IsEnabled() end

---Returns a boolean indicating if the mouse is over the Widgetbase.
---@return boolean
---@nodiscard
function Widgetbase:IsMouseOver() end

---Returns a boolean indicating if the Widgetbase is now in animation.
---@return boolean
---@nodiscard
function Widgetbase:IsNowAnimation() end

---Returns a boolean indicating if the Widgetbase is visible.
---@return boolean
---@nodiscard
function Widgetbase:IsVisible() end

---Lowers the Widgetbase.
function Widgetbase:Lower() end

---Moves the Widgetbase to `x` `y`.
---@param x number
---@param y number
function Widgetbase:MoveTo(x, y) end

---Raises the Widgetbase.
function Widgetbase:Raise() end

---Registers a `eventName` for the Widgetbase so that it can be acccessed by the
---OnEvent action.
---@param eventName UIEVENT_TYPE
function Widgetbase:RegisterEvent(eventName) end

---Releases the Deleted handler for the Widgetbase.
function Widgetbase:ReleaseDeletedHandler() end

---Releases a `actionName` handler for the Widgetbase.
---@param actionName string
function Widgetbase:ReleaseHandler(actionName) end

---TODO:
---@param cacheQueryId string
function Widgetbase:RequestCharacterCacheData(cacheQueryId) end

---Sets the `alpha` of the Widgetbase.
---@param alpha number
function Widgetbase:SetAlpha(alpha) end

---Sets the Alpha Animation of the Widgetbase.
---@param initialAlpha number 0 to 1
---@param finalAlpha number 0 to 1
---@param velocityTime number in seconds.
---@param accelerationTime number in seconds.
function Widgetbase:SetAlphaAnimation(initialAlpha, finalAlpha, velocityTime,
                                      accelerationTime)
end

---TODO:
---@param category string
function Widgetbase:SetCategory(category) end

---TODO:
---@param handler function
function Widgetbase:SetCharacterCacheDataHandler(handler) end

---Sets a `handler` for `action` on the `delegator` Widgetbase.
---@param action string
---@param delegator Widget
---@param handler function
function Widgetbase:SetDelegator(action, delegator, handler) end

---Sets a Widgetbase Deleted `handler`.
---@param handler function
function Widgetbase:SetDeletedHandler(handler) end

---Sets the `dragCondition` for the Widgetbase.
---@param dragCondition DRAG_CONDITION
function Widgetbase:SetDragCondition(dragCondition) end

---TODO:
---@param alpha number 0 to 1
---@param nameLayer string
function Widgetbase:SetDrawableLayerAlpha(alpha, nameLayer) end

---TODO:
---@param drawPriority number
function Widgetbase:SetDrawPriority(drawPriority) end

---TODO: This can only have one instance.
---@overload fun(self: self, actionName: "OnAcceptFocus", handler: function)
---@overload fun(self: self, actionName: "OnAlphaAnimeEnd", handler: function)
---@overload fun(self: self, actionName: "OnBoundChanged", handler: function)
---@overload fun(self: self, actionName: "OnChangedAnchor", handler: function)
---@overload fun(self: self, actionName: "OnCheckChanged", handler: function)
---@overload fun(self: self, actionName: "OnClick", handler: function)
---@overload fun(self: self, actionName: "OnCloseByEsc", handler: function)
---@overload fun(self: self, actionName: "OnContentUpdated", handler: function)
---@overload fun(self: self, actionName: "OnCursorMoved", handler: function)
---@overload fun(self: self, actionName: "OnDragReceive", handler: function)
---@overload fun(self: self, actionName: "OnDragStart", handler: function)
---@overload fun(self: self, actionName: "OnDragStop", handler: function)
---@overload fun(self: self, actionName: "OnDynamicListUpdatedView", handler: function)
---@overload fun(self: self, actionName: "OnEffect", handler: function)
---@overload fun(self: self, actionName: "OnEnableChanged", handler: function)
---@overload fun(self: self, actionName: "OnEndFadeIn", handler: function)
---@overload fun(self: self, actionName: "OnEndFadeOut", handler: function)
---@overload fun(self: self, actionName: "OnEnter", handler: function)
---@overload fun(self: self, actionName: "OnEnterPressed", handler: function)
---@overload fun(self: self, actionName: "OnEscapePressed", handler: function)
---@overload fun(self: self, actionName: "OnEvent", handler: function)
---@overload fun(self: self, actionName: "OnHide", handler: function)
---@overload fun(self: self, actionName: "OnKeyDown", handler: function)
---@overload fun(self: self, actionName: "OnKeyUp", handler: function)
---@overload fun(self: self, actionName: "OnLeave", handler: function)
---@overload fun(self: self, actionName: "OnListboxToggled", handler: function)
---@overload fun(self: self, actionName: "OnModelChanged", handler: function)
---@overload fun(self: self, actionName: "OnMouseDown", handler: function)
---@overload fun(self: self, actionName: "OnMouseMove", handler: function)
---@overload fun(self: self, actionName: "OnMouseUp", handler: function)
---@overload fun(self: self, actionName: "OnMovedPosition", handler: function)
---@overload fun(self: self, actionName: "OnPageChanged", handler: function)
---@overload fun(self: self, actionName: "OnPermissionChanged", handler: function)
---@overload fun(self: self, actionName: "OnRadioChanged", handler: function)
---@overload fun(self: self, actionName: "OnRestricted", handler: function)
---@overload fun(self: self, actionName: "OnScale", handler: function)
---@overload fun(self: self, actionName: "OnScaleAnimeEnd", handler: function)
---@overload fun(self: self, actionName: "OnSelChanged", handler: function)
---@overload fun(self: self, actionName: "OnShow", handler: function)
---@overload fun(self: self, actionName: "OnSliderChanged", handler: function)
---@overload fun(self: self, actionName: "OnTabChanged", handler: function)
---@overload fun(self: self, actionName: "OnTextChanged", handler: function)
---@overload fun(self: self, actionName: "OnTooltip", handler: function)
---@overload fun(self: self, actionName: "OnUpdate", handler: function)
---@overload fun(self: self, actionName: "OnVisibleChanged", handler: function)
---@overload fun(self: self, actionName: "OnWheelDown", handler: function)
---@overload fun(self: self, actionName: "OnWheelUp", handler: function)
---@overload fun(self: self, actionName: "PreClick", handler: function)
---@overload fun(self: self, actionName: "PreUse", handler: function)
---@param actionName string
---@param handler function
function Widgetbase:SetHandler(actionName, handler) end

---TODO: Set Localized text?
function Widgetbase:SetLText() end

---Sets the maximum `width` and `height` resizing extent of the Widgetbase.
---@param width number
---@param height number
function Widgetbase:SetMaxResizingExtent(width, height) end

---Sets the minimum `width` and `height` resizing extent of the Widgetbase.
---@param width number
---@param height number
function Widgetbase:SetMinResizingExtent(width, height) end

---Sets the Move Animation for the Widgetbase.
---@param direction string
---@param delta number
---@param time number
---@param repeatAnimation number
function Widgetbase:SetMoveAnimation(direction, delta, time, repeatAnimation) end

---Sets the resizing border size of the Widgetbase.
---@param left number
---@param top number
---@param right number
---@param bottom number
function Widgetbase:SetResizingBorderSize(left, top, right, bottom) end

---Sets the `scale` of the Widgetbase.
---@param scale number
function Widgetbase:SetScale(scale) end

---Sets the Scale Animation of the Widgetbase.
---@param initialScale number must be greater than 0.
---@param finalScale number
---@param velocityTime number in seconds.
---@param accelerationTime number in seconds.
---@param scaleAnchor ANCHOR_POINT
function Widgetbase:SetScaleAnimation(initialScale, finalScale, velocityTime,
                                      accelerationTime, scaleAnchor)
end

---Sets the sound `name` for when the Widgetbase is shown.
---@param name string
function Widgetbase:SetSounds(name) end

---Enables/Disables start animations of `alpha` and `scale` for the Widgetbase.
---@param alpha boolean  0 to 1
---@param scale boolean
function Widgetbase:SetStartAnimation(alpha, scale) end

---Sets the `text` for the Widgetbase.
---@param text string
function Widgetbase:SetText(text) end

---Shows/Hides the Widgetbase.
---@param show boolean
function Widgetbase:Show(show) end

---Starts moving the Widgetbase.
function Widgetbase:StartMoving() end

---Starts sizing the Widgetbase.
---@param anchorPoint ANCHOR_POINT
function Widgetbase:StartSizing(anchorPoint) end

---Stops moving sizing of the Widgetbase.
function Widgetbase:StopMovingOrSizing() end

---Triggers the move animation of the Widgetbase.
---@param on boolean
function Widgetbase:TriggerMoveAnimation(on) end

---Enables/Disables resizing for the Widgetbase
---@param use boolean
function Widgetbase:UseResizing(use) end
