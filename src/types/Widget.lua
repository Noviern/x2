---@meta _

CT_ABILITY = 2         -- types/Widget
CT_EXPEDITION_NAME = 3 -- types/Widget
CT_NAME = 1            -- types/Widget
DC_ALWAYS = 0          -- types/Widget DRAG_CONDITION
DC_SHIFT_KEY_DOWN = 1  -- types/Widget DRAG_CONDITION

---@alias DRAG_CONDITION `DC_ALWAYS` | `DC_SHIFT_KEY_DOWN`

---@class Widget: Uibounds, Uiobject
---@field [string] any
local Widget = {}

---Applies or removes UI scaling for the Widget.
---@param apply boolean `true` to apply UI scale, `false` to remove. (default: `true`)
---@usage
---```lua
---widget:ApplyUIScale(false)
---```
function Widget:ApplyUIScale(apply) end

---Attaches a widget to the current Widget.
---@param widget Widget The widget to attach.
function Widget:AttachWidget(widget) end

---@TODO: Clarify functionality.
---Cancels the request for character cache data.
function Widget:CancelRequestCharacterCacheData() end

---@TODO: Clarify behavior and purpose.
---Changes the child anchor based on scroll value for the specified direction.
---@param typeStr "horz"|"vert" The scroll direction (horizontal or vertical).
---@param value number The scroll value.
function Widget:ChangeChildAnchorByScrollValue(typeStr, value) end

---Enables or disables clickability for the Widget. (default: `true`)
---@param clickable boolean `true` to enable clicking, `false` to disable.
---@usage
---```lua
---widget:Clickable(false)
---```
function Widget:Clickable(clickable) end

---Creates and returns a child widget, attaching it as a property to the Widget.
---@generic T
---@param objectTypeStr `T` The type of widget to create.
---@param name string The name of the widget.
---@param index number The index of the widget, `0` sets `widget.name` whereas any number above `0` sets `widget.name[index]`.
---@param reflectToScriptTable boolean Whether to attach the widget to the script table under its `name`.
---@return T|EmptyTable|nil widget The created child widget, or `nil` if creation fails.
---@nodiscard
---@usage
---```lua
---local button = widget:CreateChildWidget("button", "exampleButton", 0, true)
------widget.exampleButton This is automatically set by this method.
---```
---@see OBJECT_NAME
---@see Widget
---@overload fun(self: self, objectTypeStr: OBJECT_NAME, name: string, index: number, reflectToScriptTable: boolean)
function Widget:CreateChildWidget(objectTypeStr, name, index, reflectToScriptTable) end

---@TODO: Needs UOT enum clarification.
---Creates and returns a child widget by type.
---@param objectType OBJECT The type of widget to create (UOT enum).
---@param name string The name of the widget.
---@param index number The index of the widget.
---@param reflectToScriptTable boolean Whether to attach the widget to the script table.
---@return Widget|EmptyTable|nil widget The created child widget, or `nil` if creation fails.
---@nodiscard
---@usage
---```lua
---local button = widget:CreateChildWidgetByType(OBJECT.Button, "exampleButton", 0, true)
------widget.exampleButton This is automatically set by this method.
---```
---@see OBJECT
---@see Widget
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
function Widget:CreateChildWidgetByType(objectType, name, index, reflectToScriptTable) end

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
---```lua
---local drawable = widget:CreateColorDrawable(0, 1, 0, 1, "background")
---```
---@see DRAWABLE_NAME_LAYER
---@see ColorDrawable
function Widget:CreateColorDrawable(r, g, b, a, nameLayer) end

---Creates a color drawable using a color key for the specified layer.
---@param colorKey DRAWABLE_COLOR_KEY The color key to use.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return ColorDrawable|EmptyTable|nil drawable The created color drawable.
---@nodiscard
---@usage
---```lua
---local drawable = widget:CreateColorDrawableByKey("common_white_bg", "background")
---```
---@see DRAWABLE_COLOR_KEY
---@see DRAWABLE_NAME_LAYER
---@see ColorDrawable
function Widget:CreateColorDrawableByKey(colorKey, nameLayer) end

---Creates a drawable from the specified texture path and key.
---@param texturePath TEXTURE_PATH|string The texture path.
---@param textureKey string The texture key taken from the `path` `*.g` file.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return DrawableDDS|EmptyTable|nil drawable The created drawable.
---@nodiscard
---@usage
---```lua
---local drawable = widget:CreateDrawable(TEXTURE_PATH.DEFAULT, "btn_normal", "background")
------@cast drawable NinePartDrawable
---drawable:SetOutlineInvisiblePart()
---```
function Widget:CreateDrawable(texturePath, textureKey, nameLayer) end

---@TODO: Not sure if this is a good usage as it never rendered.
---Creates an effect drawable for the specified texture and layer.
---@param texturePath TEXTURE_PATH The texture name.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return EffectDrawable|EmptyTable|nil drawable The created effect drawable.
---@nodiscard
---@usage
---```lua
---local drawable = widget:CreateEffectDrawable(TEXTURE_PATH.ACHIEVEMENT, "background")
---```
---@see TEXTURE_PATH
---@see DRAWABLE_NAME_LAYER
---@see EffectDrawable
function Widget:CreateEffectDrawable(texturePath, nameLayer) end

---@TODO: Not sure if this is a good usage as it never rendered.
---Creates an effect drawable using a key for the specified texture and layer.
---@param texturePath TEXTURE_PATH The texture name.
---@param textureKey string The texture key.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return EffectDrawable|EmptyTable|nil drawable The created effect drawable.
---@nodiscard
---@usage
---```lua
---local drawable = widget:CreateEffectDrawableByKey(TEXTURE_PATH.ACHIEVEMENT, "icon_plus", "background")
---```
---@see TEXTURE_PATH
---@see DRAWABLE_NAME_LAYER
---@see EffectDrawable
function Widget:CreateEffectDrawableByKey(texturePath, textureKey, nameLayer) end

---@TODO: Clarify functionality.
---Creates an icon drawable for the specified layer.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return IconDrawable|EmptyTable|nil drawable The created icon drawable.
---@nodiscard
---@usage
---```lua
---local drawable = widget:CreateIconDrawable("background")
---```
---@see DRAWABLE_NAME_LAYER
---@see IconDrawable
function Widget:CreateIconDrawable(nameLayer) end

---@TODO: can this use addon images?
---Creates an image drawable for the specified texture and layer.
---@param texturePath TEXTURE_PATH|string The texture path.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return ImageDrawable|EmptyTable|nil drawable The created image drawable.
---@nodiscard
---@usage
---```lua
---local drawable = widget:CreateImageDrawable(TEXTURE_PATH.RANKING_GRADE, "artwork")
---```
---@see TEXTURE_PATH
---@see DRAWABLE_NAME_LAYER
---@see ImageDrawable
function Widget:CreateImageDrawable(texturePath, nameLayer) end

---Creates a nine-part drawable for the specified texture and layer.
---@param texturePath TEXTURE_PATH The texture path.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return NinePartDrawable|EmptyTable|nil drawable The created nine-part drawable.
---@nodiscard
---@usage
---```lua
---local drawable = widget:CreateNinePartDrawable(TEXTURE_PATH.HUD, "background")
---```
---@see TEXTURE_PATH
---@see DRAWABLE_NAME_LAYER
---@see NinePartDrawable
function Widget:CreateNinePartDrawable(texturePath, nameLayer) end

---Creates a text drawable for the specified font and size.
---@param fontPath FONT_PATH The font path.
---@param fontSize FONT_SIZE The font size.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return TextDrawable|EmptyTable|nil drawable The created text drawable.
---@nodiscard
---@usage
---```lua
---local drawable = widget:CreateTextDrawable(FONT_PATH.DEFAULT, FONT_SIZE.DEFAULT, "overlay")
---```
---@see FONT_PATH
---@see FONT_SIZE
---@see DRAWABLE_NAME_LAYER
---@see TextDrawable
function Widget:CreateTextDrawable(fontPath, fontSize, nameLayer) end

---Creates a three-color drawable for the specified dimensions and layer.
---@param width number The width of the drawable.
---@param height number The height of the drawable.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return ThreeColorDrawable|EmptyTable|nil drawable The created three-color drawable.
---@nodiscard
---@usage
---```lua
---local drawable = widget:CreateThreeColorDrawable(1024, 1024, "background")
---```
---@see ThreeColorDrawable
function Widget:CreateThreeColorDrawable(width, height, nameLayer) end

---Creates a three-part drawable for the specified texture and layer.
---@param texturePath TEXTURE_PATH The texture path.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return ThreePartDrawable|EmptyTable|nil drawable The created three-part drawable.
---@nodiscard
---@usage
---```lua
---local drawable = widget:CreateThreePartDrawable(TEXTURE_PATH.HUD, "background")
---```
---@see TEXTURE_PATH
---@see DRAWABLE_NAME_LAYER
---@see ThreePartDrawable
function Widget:CreateThreePartDrawable(texturePath, nameLayer) end

---@TODO: Unsure what exactly this does.
---Detaches the Widget from its parent.
function Widget:DetachWidget() end

---@TODO: How does this work?
---Disables drawables for the specified layer.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to disable.
---@usage
---```lua
---widget:DisableDrawables("background")
---```
---@see DRAWABLE_NAME_LAYER
function Widget:DisableDrawables(nameLayer) end

---Disables drawables for the specified layer and its children.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to disable.
---@usage
---```lua
---widget:DisableDrawablesWithChildren("background")
---```
---@see DRAWABLE_NAME_LAYER
function Widget:DisableDrawablesWithChildren(nameLayer) end

---@TODO: Make a list of events that can be activated/deactivated by this. This also sets the state to disabled (actually highlighted because state is bugged atm)
---Enables or disables interactivity for the Widget.
---@param enable boolean `true` to enable, `false` to disable. (default: `true`)
---@usage
---```lua
---widget:Enable(false)
---```
function Widget:Enable(enable) end

---@TODO: Make a list of events that can be activated/deactivated by this.
---Enables or disables dragging for the Widget.
---@param enable boolean `true` to enable dragging, `false` to disable. (default: `false`)
---@usage
---```lua
---widget:EnableDrag(true)
---```
function Widget:EnableDrag(enable) end

---Enables drawables for the specified layer.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to enable.
---@usage
---```lua
---widget:EnableDrawables("background")
---```
---@see DRAWABLE_NAME_LAYER
function Widget:EnableDrawables(nameLayer) end

---Enables drawables for the specified layer and its children.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to enable.
---@usage
---```lua
---widget:EnableDrawablesWithChildren("background")
---```
---@see DRAWABLE_NAME_LAYER
function Widget:EnableDrawablesWithChildren(nameLayer) end

---@TODO: Make a list of events that can be activated/deactivated by this. default value.
---Enables or disables focus for the Widget.
---@param enable boolean `true` to enable focus, `false` to disable.
---@usage
---```lua
---widget:EnableFocus(true)
---```
function Widget:EnableFocus(enable) end

---@TODO: Clarify behavior. default value.
---Enables or disables removing the Widget when hidden.
---@param enable boolean `true` to enable removal on hide, `false` to disable.
---@usage
---```lua
---widget:EnableHidingIsRemove(true)
---```
function Widget:EnableHidingIsRemove(enable) end

---@TODO: Make a list of events that can be activated/deactivated by this.
---Enables or disables keyboard input capture for the Widget.
---@param enable boolean `true` to enable keyboard input, `false` to disable. (default: `false`)
---@usage
---```lua
---widget:EnableKeyboard(true)
---```
function Widget:EnableKeyboard(enable) end

---@TODO: Verify if additional parameter exists. Make a list of events that can be activated/deactivated by this. OnMouseDown/Up wheelup/down
---Enables or disables picking for the Widget.
---@param enable boolean `true` to enable picking, `false` to disable. (default: `true`)
---@usage
---```lua
---widget:EnablePick(false)
---```
function Widget:EnablePick(enable) end

---@TODO: Make a list of events that can be activated/deactivated by this.
---Enables or disables scrolling for the Widget.
---@param enable boolean `true` to enable scrolling, `false` to disable.
---@usage
---```lua
---widget:EnableScroll(true)
---```
function Widget:EnableScroll(enable) end

---Retrieves the alpha value of the Widget.
---@return number alpha The alpha value (min: `0`, max: `1`).
---@nodiscard
---@usage
---```lua
---local alpha = widget:GetAlpha()
---```
function Widget:GetAlpha() end

---@TODO: This will need to be @cast
---Retrieves the last attached widget of the Widget.
---@return Widget|nil attachedWidget The attached widget, or `nil` if none.
---@nodiscard
---@usage
---```lua
---widget:GetAttachedWidget()
---```
---@see Widget
function Widget:GetAttachedWidget() end

---@TODO: I believe this returns the current widget if no parent exists.
---Retrieves the parent widget of the Widget.
---@return Widget parentWidget The parent widget.
---@nodiscard
---@usage
---```lua
---local parentWidget = widget:GetParent()
---```
function Widget:GetParent() end

---@TODO: Returns nil and "NONE", possibly broken? If its not broken I need to define a ROTATION enum for the return.
---Retrieves the rotation of the widget.
---@return string|nil rotation
---@nodiscard
function Widget:GetRotation() end

---@TODO: can this return nil?
---Retrieves the text of the Widget.
---@return string text The text content.
---@nodiscard
---@usage
---```lua
---local text = widget:GetText()
---```
function Widget:GetText() end

---@TODO: Returns "normal", are there other layer types?
---Retrieves the UI layer of the Widget.
---@return string uiLayer The UI layer.
---@nodiscard
---@usage
---```lua
---local uiLayer = widget:GetUILayer()
---```
function Widget:GetUILayer() end

---@TODO: Clarify typeStr purpose.
---Retrieves the value for the specified type.
---@param typeStr string The type to query.
---@return number value The value associated with the type.
---@nodiscard
---```lua
---local value = widget:GetValue("state")
---```
function Widget:GetValue(typeStr) end

---Checks if the Widget has a handler for the specified action.
---@param actionName WIDGET_EVENT_TYPE The action name to check.
---@return boolean handlerExists `true` if a handler exists, `false` otherwise.
---@nodiscard
---@usage
---```lua
---local handlerExists = widget:HasHandler("OnClick")
---```
---@see WIDGET_EVENT_TYPE
function Widget:HasHandler(actionName) end

---@TODO: Usage.
---Inherits animation data from the specified widget.
---@param widget Widget The widget to inherit animation data from.
function Widget:InheritAnimationData(widget) end

---Checks if the specified ID is a descendant of the Widget.
---@param id string The ID to check.
---@return boolean descendantWidget `true` if the ID is a descendant, `false` otherwise.
---@nodiscard
---@usage
---```lua
---local button = widget:CreateChildWidget("button", "exampleButton", 0, true)
---local descendantWidget = widget:IsDescendantWidget(button:GetId())
---```
function Widget:IsDescendantWidget(id) end

---Checks if the Widget is enabled.
---@return boolean enabled `true` if enabled, `false` otherwise.
---@nodiscard
---@usage
---```lua
---local enabled = widget:IsEnabled()
---```
function Widget:IsEnabled() end

---Checks if the mouse is over the Widget.
---@return boolean mouseOver `true` if the mouse is over, `false` otherwise.
---@nodiscard
---@usage
---```lua
---local mouseOver = widget:IsMouseOver()
---```
function Widget:IsMouseOver() end

---Checks if the Widget is currently animating.
---@return boolean nowAnimation `true` if animating, `false` otherwise.
---@nodiscard
---@usage
---```lua
---local nowAnimation = widget:IsNowAnimation()
---```
function Widget:IsNowAnimation() end

---Checks if the Widget is visible.
---@return boolean visible `true` if visible, `false` otherwise.
---@nodiscard
---@usage
---```lua
---local visible = widget:IsVisible()
---```
function Widget:IsVisible() end

---Lowers the Widget in the UI hierarchy.
---@usage
---```lua
---widget:Lower()
---```
function Widget:Lower() end

---Moves the Widget to the specified coordinates from the TOPLEFT corner.
---@param x number The x-coordinate.
---@param y number The y-coordinate.
---@usage
---```lua
---widget:MoveTo(0, 0)
---```
function Widget:MoveTo(x, y) end

---Raises the Widget in the UI hierarchy.
---@usage
---```lua
---widget:Raise()
---```
function Widget:Raise() end

---Registers an event for the Widget to be accessible by the OnEvent handler
---action.
---@param eventName UIEVENT_TYPE The event to register.
---@see UIEVENT_TYPE
---@usage
---```lua
---widget:RegisterEvent("CHAT_MESSAGE")
---```
function Widget:RegisterEvent(eventName) end

---Releases the deleted handler for the Widget.
function Widget:ReleaseDeletedHandler() end

---Releases a handler for the specified action.
---@param actionName WIDGET_EVENT_TYPE The action name to release.
---@usage
---```lua
---widget:ReleaseHandler("OnClick")
---```
---@see WIDGET_EVENT_TYPE
function Widget:ReleaseHandler(actionName) end

---Removes all drawables for the specified layer.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to clear.
---@usage
---```lua
---widget:RemoveAllDrawables("background")
---```
---@see DRAWABLE_NAME_LAYER
function Widget:RemoveAllDrawables(nameLayer) end

---Removes a specific drawable table from the widget.
---@param drawableTable Drawablebase The drawable table to remove.
---@usage
---```lua
---widget:RemoveDrawable(bg)
---```
---@see Drawablebase
function Widget:RemoveDrawable(drawableTable) end

---@TODO: Clarify cacheQueryId usage.
---Requests character cache data.
---@param cacheQueryId string The cache query ID.
function Widget:RequestCharacterCacheData(cacheQueryId) end

---Sets the alpha value of the Widget.
---@param alpha number The alpha value (min: `0`, max: `1`).
---@usage
---```lua
---widget:SetAlpha(.5)
---```
function Widget:SetAlpha(alpha) end

---Sets an alpha animation for the Widget.
---@param initialAlpha number The starting alpha (min: `0`, max: `1`).
---@param finalAlpha number The ending alpha (min: `0`, max: `1`).
---@param velocityTime number Duration in seconds for velocity.
---@param accelerationTime number Duration in seconds for acceleration.
---@usage
---```lua
---widget:SetAlphaAnimation(0, 1, 0.3, 0.3)
---```
function Widget:SetAlphaAnimation(initialAlpha, finalAlpha, velocityTime, accelerationTime) end

---@TODO: Clarify category purpose.
---Sets the category for the Widget.
---@param category string The category to set.
function Widget:SetCategory(category) end

---@TODO: Clarify handler usage.
---Sets a handler for character cache data.
---@param handler function The handler function.
function Widget:SetCharacterCacheDataHandler(handler) end

---@TODO: Not sure if this works correctly.
---Sets a handler for a specific action on a delegator widget.
---@param action WIDGET_EVENT_TYPE The action name.
---@param delegator Widget The delegator widget.
---@param handler function The handler function.
function Widget:SetDelegator(action, delegator, handler) end

---Sets a handler for the Widget deletion event.
---@param handler function The handler function.
---@usage
---```lua
---widget:SetDeletedHandler(function() end)
---```
function Widget:SetDeletedHandler(handler) end

---Sets the drag condition for the Widget. This restricts when the events
---`OnDragReceive`, `OnDragStart`, and `OnDragStop` are fired.
---@param dragCondition DRAG_CONDITION The drag condition. (default: `DC_ALWAYS`)
---@usage
---```lua
---widget:SetDragCondition(DC_SHIFT_KEY_DOWN)
---```
---@see DRAG_CONDITION
function Widget:SetDragCondition(dragCondition) end

---@TODO: Clarify functionality.
---Sets the alpha for a specific drawable layer.
---@param alpha number Alpha value (min: `0`, max: `1`).
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the alpha to.
---@usage
---```lua
---widget:SetDrawableLayerAlpha(.5, "background")
---```
---@see DRAWABLE_NAME_LAYER
function Widget:SetDrawableLayerAlpha(alpha, nameLayer) end

---@TODO: Clarify drawPriority usage.
---Sets the draw priority for the Widget.
---@param drawPriority number The draw priority value.
---@usage
---```lua
---widget:SetDrawPriority(1)
---```
function Widget:SetDrawPriority(drawPriority) end

---Sets a handler for the specified action.
---@param actionName string The action name.
---@param handler function The handler function.
---@usage
---```lua
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
function Widget:SetHandler(actionName, handler) end

---@TODO: Verify if this sets localized text.
---Sets localized text for the Widget (details TBD).
function Widget:SetLText() end

---Sets the color for the specified layer.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the color to.
---@usage
---```lua
---widget:SetLayerColor(1, 0, 0, .5, "background")
---```
---@see DRAWABLE_NAME_LAYER
function Widget:SetLayerColor(r, g, b, a, nameLayer) end

---Sets the maximum resizing extent for the Widget.
---@param width number The maximum width.
---@param height number The maximum height.
---@usage
---```lua
---widget:SetMaxResizingExtent(1000, 1000)
---```
function Widget:SetMaxResizingExtent(width, height) end

---Sets the minimum resizing extent for the Widget.
---@param width number The minimum width.
---@param height number The minimum height.
---@usage
---```lua
---widget:SetMaxResizingExtent(100, 100)
---```
function Widget:SetMinResizingExtent(width, height) end

---@TODO: usage
---Sets a move animation for the Widget.
---@param direction string The direction of the animation.
---@param delta number The movement distance.
---@param time number The duration in seconds.
---@param repeatAnimation number The number of animation repetitions.
function Widget:SetMoveAnimation(direction, delta, time, repeatAnimation) end

---Sets the resizing border size for the Widget. `SetMinResizingExtent` and
---`SetMaxResizingExtent` must be called or this can cause a crash!
---@param left number The left border size.
---@param top number The top border size.
---@param right number The right border size.
---@param bottom number The bottom border size.
---@usage
---```lua
---widget:SetResizingBorderSize(10, 10, 10, 10)
---widget:SetMinResizingExtent(345, 160)
---widget:SetMaxResizingExtent(1050, 1020)
---```
function Widget:SetResizingBorderSize(left, top, right, bottom) end

---@TODO: Takes a string, usage unclear.
---Sets the rotation of the widget.
---@param rs string The rotation value.
function Widget:SetRotation(rs) end

---Sets the scale of the Widget.
---@param scale number The scale value.
---@usage
---```lua
---widget:SetScale(.5)
---```
function Widget:SetScale(scale) end

---Sets a scale animation for the Widget.
---@param initialScale number The starting scale (must be greater than 0).
---@param finalScale number The ending scale.
---@param velocityTime number Duration in seconds for velocity.
---@param accelerationTime number Duration in seconds for acceleration.
---@param scaleAnchor ANCHOR_POINT The anchor point for scaling.
---@usage
---```lua
---widget:SetScaleAnimation(5, 1, 2, 2, "CENTER")
---```
---@see ANCHOR_POINT
function Widget:SetScaleAnimation(initialScale, finalScale, velocityTime, accelerationTime, scaleAnchor) end

---@TODO: Make a list of widgets and their interactions that invoke sound.
---@TODO: Make a enum of sounds
---Sets the sound to play for the Widget, this plays differently for each
---type of widget, for instance a button will play its sound when clicked, and
---a window will play its sound when shown/hidden.
---@param name string The sound name.
function Widget:SetSounds(name) end

---Enables or disables start animations for alpha and scale.
---@param alpha boolean `true` to enable **alpha** animation, `false` to disable. (default: `false`)
---@param scale boolean `true` to enable **scale** animation, `false` to disable. (default: `false`)
---@usage
---```lua
---widget:SetStartAnimation(true, true)
---```
function Widget:SetStartAnimation(alpha, scale) end

---Sets the text for the Widget.
---@param text string The text to set.
---@usage
---```lua
---widget:SetText("Archerage.to - the first ArcheAge Private Server")
---```
function Widget:SetText(text) end

---@TODO: param time? wnd:Show(false, 500)
---Shows or hides the Widget.
---@param show boolean `true` to show, `false` to hide. (default: `false`)
---@usage
---```lua
---widget:Show(true)
---```
function Widget:Show(show) end

---Starts moving the Widget.
---@usage
---```lua
---widget:SetHandler("OnDragStart", function(self)
---  self:StartMoving()
---end)
---```
function Widget:StartMoving() end

---Starts resizing the Widget from the specified anchor point.
---@param anchorPoint ANCHOR_POINT The anchor point for resizing.
---@usage
---```lua
---widget:StartSizing("CENTER")
---```
---@see ANCHOR_POINT
function Widget:StartSizing(anchorPoint) end

---Stops moving or resizing the Widget.
---@usage
---```lua
---widget:SetHandler("OnDragStop", function(self)
---  self:StopMovingOrSizing()
---end)
---```
function Widget:StopMovingOrSizing() end

---@TODO: Broken?
---Triggers or stops the move animation of the Widget.
---@param on boolean `true` to start the animation, `false` to stop.
---@usage
---```lua
---widget:TriggerMoveAnimation(true)
---```
function Widget:TriggerMoveAnimation(on) end

---@TODO:
---Enables or disables dynamic content state for the widget.
---@param use boolean `true` to enable, `false` to disable.
---@usage
---```lua
---widget:UseDynamicContentState(true)
---```
function Widget:UseDynamicContentState(use) end

---Enables or disables dynamic drawable state for the specified layer.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to modify.
---@param use boolean `true` to enable, `false` to disable.
---@usage
---```lua
---widget:UseDynamicDrawableState("background", true)
---```
---@see DRAWABLE_NAME_LAYER
function Widget:UseDynamicDrawableState(nameLayer, use) end

---@TODO: Never got this to work.
---Enables or disables resizing for the Widget.
---@param use boolean `true` to enable resizing, `false` to disable.
---@usage
---```lua
---widget:UseResizing(true)
---```
function Widget:UseResizing(use) end
