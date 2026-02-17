---@meta _

CT_ABILITY = 2         -- types/Widget CT
CT_EXPEDITION_NAME = 3 -- types/Widget CT
CT_NAME = 1            -- types/Widget CT
DC_ALWAYS = 0          -- types/Widget DRAG_CONDITION
DC_SHIFT_KEY_DOWN = 1  -- types/Widget DRAG_CONDITION

---types/Widget
---Cache Type
---@alias CT
---| `CT_ABILITY`
---| `CT_EXPEDITION_NAME`
---| `CT_NAME`

---types/Widget
---@alias DRAG_CONDITION
---| `DC_ALWAYS`
---| `DC_SHIFT_KEY_DOWN`

---@alias CharacterCacheDataHandler fun(self: self, data: CacheData)

---@alias DelegatorHandler fun(delegator: Widget, callbacker: Widget, mbt: MOUSE_BUTTON)

---@class Widget: Uibounds, Uiobject
local Widget = {}

---Applies or removes UI scaling for the Widget.
---@param apply boolean `true` to apply UI scale, `false` to remove. (default: `true`)
function Widget:ApplyUIScale(apply) end

---Attaches a widget to the current Widget.
---@param widget Widget The widget to attach.
function Widget:AttachWidget(widget) end

---Cancels the request for character cache data.
function Widget:CancelRequestCharacterCacheData() end

---Changes the child anchor based on scroll value for the specified direction.
---@param typeStr "horz"|"vert" The scroll direction (horizontal or vertical).
---@param value number The scroll value.
function Widget:ChangeChildAnchorByScrollValue(typeStr, value) end

---Enables or disables clickability for the Widget. (default: `true`)
---@param clickable boolean `true` to enable clicking, `false` to disable.
function Widget:Clickable(clickable) end

---Creates and returns a child widget, attaching it as a property to the Widget,
---and gives the widget a draw priority z-index.
---@param objectTypeStr OBJECT_NAME The type of widget to create.
---@param name string The name of the widget.
---@param index number The index of the widget, `0` sets `widget.name` whereas any number above `0` sets `widget.name[index]`.
---@param reflectToScriptTable boolean Whether to attach the widget to the script table under its `name`.
---@return Widget widget The created child widget, empty table if the widget hasn't been imported, or `nil` if creation fails.
---@usage
---```lua
---local button = widget:CreateChildWidget("button", "exampleButton", 0, true)
----- widget.exampleButton This is automatically set by this method.
---```
---@see Widget
---@overload fun(self: self, objectTypeStr: "avi", name: string, index: number, reflectToScriptTable: boolean): Avi
---@overload fun(self: self, objectTypeStr: "button", name: string, index: number, reflectToScriptTable: boolean): Button
---@overload fun(self: self, objectTypeStr: "chatwindow", name: string, index: number, reflectToScriptTable: boolean): ChatWindow
---@overload fun(self: self, objectTypeStr: "checkbutton", name: string, index: number, reflectToScriptTable: boolean): CheckButton
---@overload fun(self: self, objectTypeStr: "circlediagram", name: string, index: number, reflectToScriptTable: boolean): CircleDiagram
---@overload fun(self: self, objectTypeStr: "colorpicker", name: string, index: number, reflectToScriptTable: boolean): ColorPicker
---@overload fun(self: self, objectTypeStr: "combobox", name: string, index: number, reflectToScriptTable: boolean): Combobox
---@overload fun(self: self, objectTypeStr: "cooldownbutton", name: string, index: number, reflectToScriptTable: boolean): CooldownButton
---@overload fun(self: self, objectTypeStr: "cooldownconstantbutton", name: string, index: number, reflectToScriptTable: boolean): CooldownConstantButton
---@overload fun(self: self, objectTypeStr: "cooldowninventorybutton", name: string, index: number, reflectToScriptTable: boolean): CooldownInventoryButton
---@overload fun(self: self, objectTypeStr: "damagedisplay", name: string, index: number, reflectToScriptTable: boolean): DamageDisplay
---@overload fun(self: self, objectTypeStr: "dynamiclist", name: string, index: number, reflectToScriptTable: boolean): DynamicList
---@overload fun(self: self, objectTypeStr: "editbox", name: string, index: number, reflectToScriptTable: boolean): Editbox
---@overload fun(self: self, objectTypeStr: "editboxmultiline", name: string, index: number, reflectToScriptTable: boolean): EditboxMultiline
---@overload fun(self: self, objectTypeStr: "emptywidget", name: string, index: number, reflectToScriptTable: boolean): EmptyWidget
---@overload fun(self: self, objectTypeStr: "folder", name: string, index: number, reflectToScriptTable: boolean): Folder
---@overload fun(self: self, objectTypeStr: "gametooltip", name: string, index: number, reflectToScriptTable: boolean): GameTooltip
---@overload fun(self: self, objectTypeStr: "grid", name: string, index: number, reflectToScriptTable: boolean): Grid
---@overload fun(self: self, objectTypeStr: "label", name: string, index: number, reflectToScriptTable: boolean): Label
---@overload fun(self: self, objectTypeStr: "line", name: string, index: number, reflectToScriptTable: boolean): Line
---@overload fun(self: self, objectTypeStr: "listbox", name: string, index: number, reflectToScriptTable: boolean): Listbox
---@overload fun(self: self, objectTypeStr: "listctrl", name: string, index: number, reflectToScriptTable: boolean): ListCtrl
---@overload fun(self: self, objectTypeStr: "megaphonechatedit", name: string, index: number, reflectToScriptTable: boolean): MegaphoneChatEdit
---@overload fun(self: self, objectTypeStr: "message", name: string, index: number, reflectToScriptTable: boolean): Message
---@overload fun(self: self, objectTypeStr: "modelview", name: string, index: number, reflectToScriptTable: boolean): ModelView
---@overload fun(self: self, objectTypeStr: "pageable", name: string, index: number, reflectToScriptTable: boolean): Pageable
---@overload fun(self: self, objectTypeStr: "paintcolorpicker", name: string, index: number, reflectToScriptTable: boolean): PaintColorPicker
---@overload fun(self: self, objectTypeStr: "radiogroup", name: string, index: number, reflectToScriptTable: boolean): RadioGroup
---@overload fun(self: self, objectTypeStr: "roadmap", name: string, index: number, reflectToScriptTable: boolean): RoadMap
---@overload fun(self: self, objectTypeStr: "slider", name: string, index: number, reflectToScriptTable: boolean): Slider
---@overload fun(self: self, objectTypeStr: "slot", name: string, index: number, reflectToScriptTable: boolean): Slot
---@overload fun(self: self, objectTypeStr: "statusbar", name: string, index: number, reflectToScriptTable: boolean): StatusBar
---@overload fun(self: self, objectTypeStr: "tab", name: string, index: number, reflectToScriptTable: boolean): Tab
---@overload fun(self: self, objectTypeStr: "textbox", name: string, index: number, reflectToScriptTable: boolean): Textbox
---@overload fun(self: self, objectTypeStr: "unitframetooltip", name: string, index: number, reflectToScriptTable: boolean): UnitframeTooltip
---@overload fun(self: self, objectTypeStr: "webbrowser", name: string, index: number, reflectToScriptTable: boolean): Webbrowser
---@overload fun(self: self, objectTypeStr: "window", name: string, index: number, reflectToScriptTable: boolean): Window
---@overload fun(self: self, objectTypeStr: "worldmap", name: string, index: number, reflectToScriptTable: boolean): WorldMap
---@overload fun(self: self, objectTypeStr: "x2editbox", name: string, index: number, reflectToScriptTable: boolean): X2Editbox
function Widget:CreateChildWidget(objectTypeStr, name, index, reflectToScriptTable) end

---@FIXME: objectType should be UOT_WIDGET if we had all UOTs
---Creates and returns a child widget by type and gives the widget a draw priority z-index.
---@param objectType OBJECT The type of widget to create.
---@param name string The name of the widget.
---@param index number The index of the widget, `0` sets `widget.name` whereas any number above `0` sets `widget.name[index]`.
---@param reflectToScriptTable boolean Whether to attach the widget to the script table.
---@return Widget widget The created child widget, empty table if the widget hasn't been imported, or `nil` if creation fails.
---@usage
---```lua
---local button = widget:CreateChildWidgetByType(OBJECT.Button, "exampleButton", 0, true)
----- widget.exampleButton This is automatically set by this method.
---```
---@see Widget
---@overload fun(self: self, objectType: UOT_AVI, name: string, index: number, reflectToScriptTable: boolean): Avi
---@overload fun(self: self, objectType: UOT_BUTTON, name: string, index: number, reflectToScriptTable: boolean): Button
---@overload fun(self: self, objectType: UOT_CHAT_WINDOW, name: string, index: number, reflectToScriptTable: boolean): ChatWindow
---@overload fun(self: self, objectType: UOT_CHECK_BUTTON, name: string, index: number, reflectToScriptTable: boolean): CheckButton
---@overload fun(self: self, objectType: UOT_CIRCLE_DIAGRAM, name: string, index: number, reflectToScriptTable: boolean): CircleDiagram
---@overload fun(self: self, objectType: UOT_COLOR_PICKER, name: string, index: number, reflectToScriptTable: boolean): ColorPicker
---@overload fun(self: self, objectType: UOT_COMBO_BOX, name: string, index: number, reflectToScriptTable: boolean): Combobox
---@overload fun(self: self, objectType: UOT_COOLDOWN_BUTTON, name: string, index: number, reflectToScriptTable: boolean): CooldownButton
---@overload fun(self: self, objectType: UOT_COOLDOWN_CONSTANT_BUTTON, name: string, index: number, reflectToScriptTable: boolean): CooldownConstantButton
---@overload fun(self: self, objectType: UOT_COOLDOWN_INVENTORY_BUTTON, name: string, index: number, reflectToScriptTable: boolean): CooldownInventoryButton
---@overload fun(self: self, objectType: UOT_DAMAGE_DISPLAY, name: string, index: number, reflectToScriptTable: boolean): DamageDisplay
---@overload fun(self: self, objectType: UOT_DYNAMIC_LIST, name: string, index: number, reflectToScriptTable: boolean): DynamicList
---@overload fun(self: self, objectType: UOT_EDITBOX, name: string, index: number, reflectToScriptTable: boolean): Editbox
---@overload fun(self: self, objectType: UOT_EDITBOX_MULTILINE, name: string, index: number, reflectToScriptTable: boolean): EditboxMultiline
---@overload fun(self: self, objectType: UOT_EMPTY_WIDGET, name: string, index: number, reflectToScriptTable: boolean): EmptyWidget
---@overload fun(self: self, objectType: UOT_FOLDER, name: string, index: number, reflectToScriptTable: boolean): Folder
---@overload fun(self: self, objectType: UOT_GAME_TOOLTIP, name: string, index: number, reflectToScriptTable: boolean): GameTooltip
---@overload fun(self: self, objectType: UOT_GRID, name: string, index: number, reflectToScriptTable: boolean): Grid
---@overload fun(self: self, objectType: UOT_LABEL, name: string, index: number, reflectToScriptTable: boolean): Label
---@overload fun(self: self, objectType: UOT_LINE, name: string, index: number, reflectToScriptTable: boolean): Line
---@overload fun(self: self, objectType: UOT_LISTBOX, name: string, index: number, reflectToScriptTable: boolean): Listbox
---@overload fun(self: self, objectType: UOT_LIST_CTRL, name: string, index: number, reflectToScriptTable: boolean): ListCtrl
---@overload fun(self: self, objectType: UOT_MEGAPHONE_CHATEDIT, name: string, index: number, reflectToScriptTable: boolean): MegaphoneChatEdit
---@overload fun(self: self, objectType: UOT_MESSAGE, name: string, index: number, reflectToScriptTable: boolean): Message
---@overload fun(self: self, objectType: UOT_MODELVIEW, name: string, index: number, reflectToScriptTable: boolean): ModelView
---@overload fun(self: self, objectType: UOT_PAGEABLE, name: string, index: number, reflectToScriptTable: boolean): Pageable
---@overload fun(self: self, objectType: UOT_PAINT_COLOR_PICKER, name: string, index: number, reflectToScriptTable: boolean): PaintColorPicker
---@overload fun(self: self, objectType: UOT_RADIO_GROUP, name: string, index: number, reflectToScriptTable: boolean): RadioGroup
---@overload fun(self: self, objectType: UOT_ROADMAP, name: string, index: number, reflectToScriptTable: boolean): RoadMap
---@overload fun(self: self, objectType: UOT_SLIDER, name: string, index: number, reflectToScriptTable: boolean): Slider
---@overload fun(self: self, objectType: UOT_SLOT, name: string, index: number, reflectToScriptTable: boolean): Slot
---@overload fun(self: self, objectType: UOT_STATUSBAR, name: string, index: number, reflectToScriptTable: boolean): StatusBar
---@overload fun(self: self, objectType: UOT_TAB, name: string, index: number, reflectToScriptTable: boolean): Tab
---@overload fun(self: self, objectType: UOT_TEXTBOX, name: string, index: number, reflectToScriptTable: boolean): Textbox
---@overload fun(self: self, objectType: UOT_UNITFRAME_TOOLTIP, name: string, index: number, reflectToScriptTable: boolean): UnitframeTooltip
---@overload fun(self: self, objectType: UOT_WEBBROWSER, name: string, index: number, reflectToScriptTable: boolean): Webbrowser
---@overload fun(self: self, objectType: UOT_WINDOW, name: string, index: number, reflectToScriptTable: boolean): Window
---@overload fun(self: self, objectType: UOT_WORLDMAP, name: string, index: number, reflectToScriptTable: boolean): WorldMap
---@overload fun(self: self, objectType: UOT_X2_EDITBOX, name: string, index: number, reflectToScriptTable: boolean): X2Editbox
function Widget:CreateChildWidgetByType(objectType, name, index, reflectToScriptTable) end

---**Requires importing the `ColorDrawable` Object.**
---
---Creates a color drawable for the specified layer.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return ColorDrawable drawable The created color drawable, or an empty table if the object `ColorDrawable` hasn't been imported.
---@nodiscard
---@see ColorDrawable
function Widget:CreateColorDrawable(r, g, b, a, nameLayer) end

---**Requires importing the `ColorDrawable` Object.**
---
---Creates a color drawable using a color key for the specified layer.
---@param colorKey DRAWABLE_COLOR_KEY The color key to use.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return ColorDrawable drawable The created color drawable, or an empty table if the object `ColorDrawable` hasn't been imported.
---@nodiscard
---@see ColorDrawable
function Widget:CreateColorDrawableByKey(colorKey, nameLayer) end

---**Requires importing the correct `Drawable` Object type for the `textureKey`.**
---
---Creates a drawable from the specified texture path and key. The key's `type`
---will define what `drawableType` object needs to be imported. Casting the
---return to the appropriate type may be neccessary.
---@param texturePath string The texture path.
---@param textureKey string The texture key taken from the `path` `*.g` file.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return DrawableDDS drawable The created drawable, or an empty table if the object `DrawableDDS` hasn't been imported.
---@nodiscard
function Widget:CreateDrawable(texturePath, textureKey, nameLayer) end

---**Requires importing the `EffectDrawable` Object.**
---
---Creates an effect drawable for the specified texture and layer.
---@param texturePath string The texture name.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return EffectDrawable|nil drawable The created effect drawable, an empty table if the object `EffectDrawable` hasn't been imported, or `nil` if the texture doesn't exist.
---@nodiscard
---@see EffectDrawable
function Widget:CreateEffectDrawable(texturePath, nameLayer) end

---**Requires importing the `EffectDrawable` Object.**
---
---Creates an effect drawable using a key for the specified texture and layer.
---@param texturePath string The texture name.
---@param textureKey string The texture key.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return EffectDrawable drawable The created effect drawable, or an empty table if the object `EffectDrawable` hasn't been imported.
---@nodiscard
---@see EffectDrawable
function Widget:CreateEffectDrawableByKey(texturePath, textureKey, nameLayer) end

---**Requires importing the `IconDrawable` Object.**
---
---Creates an icon drawable for the specified layer.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return IconDrawable drawable The created icon drawable, or an empty table if the object `IconDrawable` hasn't been imported.
---@nodiscard
---@see IconDrawable
function Widget:CreateIconDrawable(nameLayer) end

---**Requires importing the `ImageDrawable` Object.**
---
---Creates an image drawable for the specified texture and layer. Addon images
---can be used `Addon/{addonname}/example.dds`
---@param texturePath string The texture path.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return ImageDrawable|nil drawable The created image drawable, an empty table if the object `ImageDrawable` hasn't been imported, or `nil` if the texture doesn't exist.
---@nodiscard
---@see ImageDrawable
function Widget:CreateImageDrawable(texturePath, nameLayer) end

---**Requires importing the `NinePartDrawable` Object.**
---
---Creates a nine-part drawable for the specified texture and layer.
---@param texturePath string The texture path.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return NinePartDrawable drawable The created nine-part drawable, or an empty table if the object `NinePartDrawable` hasn't been imported.
---@nodiscard
---@see NinePartDrawable
function Widget:CreateNinePartDrawable(texturePath, nameLayer) end

---**Requires importing the `TextDrawable` Object.**
---
---Creates a text drawable for the specified font and size.
---@param fontPath FONT_PATH The font path.
---@param fontSize number The font size.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return TextDrawable drawable The created text drawable, or an empty table if the object `TextDrawable` hasn't been imported.
---@nodiscard
---@see TextDrawable
function Widget:CreateTextDrawable(fontPath, fontSize, nameLayer) end

---**Requires importing the `ThreeColorDrawable` Object.**
---
---Creates a three-color drawable for the specified dimensions and layer.
---@param width number The width of the drawable.
---@param height number The height of the drawable.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return ThreeColorDrawable drawable The created three-color drawable, or an empty table if the object `ThreeColorDrawable` hasn't been imported.
---@nodiscard
---@see ThreeColorDrawable
function Widget:CreateThreeColorDrawable(width, height, nameLayer) end

---**Requires importing the `ThreePartDrawable` Object.**
---
---Creates a three-part drawable for the specified texture and layer.
---@param texturePath string The texture path.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the drawable to.
---@return ThreePartDrawable drawable The created three-part drawable, or an empty table if the object `ThreePartDrawable` hasn't been imported.
---@nodiscard
---@see ThreePartDrawable
function Widget:CreateThreePartDrawable(texturePath, nameLayer) end

---Detaches the Widget from its parent.
function Widget:DetachWidget() end

---@FIXME: Broken?
---Disables drawables for the specified layer.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to disable.
function Widget:DisableDrawables(nameLayer) end

---@FIXME: Broken?
---Disables drawables for the specified layer and its children.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to disable.
function Widget:DisableDrawablesWithChildren(nameLayer) end

---@TODO: Make a list of events that can be activated/deactivated by this. This also sets the state to disabled (actually highlighted because state is bugged atm) This may haver another param. can change the state of a widget if the widget has state
---Enables or disables the Widget and its handler actions `"OnClick"`.
---@param enable boolean `true` to enable, `false` to disable. (default: `true`)
function Widget:Enable(enable) end

---Enables or disables the Widget handler actions `"OnDragStart"` and `"OnDragStop"`.
---@param enable boolean `true` to enable dragging, `false` to disable. (default: `false`)
function Widget:EnableDrag(enable) end

---Enables drawables for the specified layer.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to enable.
function Widget:EnableDrawables(nameLayer) end

---Enables drawables for the specified layer and its children.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to enable.
function Widget:EnableDrawablesWithChildren(nameLayer) end

---@TODO: Make a list of events that can be activated/deactivated by this. default value.
---Enables or disables focus for the Widget.
---@param enable boolean `true` to enable focus, `false` to disable.
function Widget:EnableFocus(enable) end

---Enables or disables `Widget:SetDeletedHandler` and when the widget is hidden
---fires that event and then removes the Widget from the Object Pool but doesn't remove all references.
---@param enable boolean `true` to enable removal on hide, `false` to disable. (default: `false`)
function Widget:EnableHidingIsRemove(enable) end

---Enables or disables the Widget handler actions `"OnKeyUp"` and `"OnKeyDown"`.
---@param enable boolean `true` to enable keyboard input, `false` to disable.
function Widget:EnableKeyboard(enable) end

---@TODO: Verify if additional parameter exists. Make a list of events that can be activated/deactivated by this.
---Enables or disables the Widget handler action `"OnClick"`.
---@param enable boolean `true` to enable picking, `false` to disable. (default: `true`)
function Widget:EnablePick(enable) end

---@TODO: Make a list of events that can be activated/deactivated by this.
---Enables or disables scrolling for the Widget. Children widgets outside of the
---parent widget will not render.
---@param enable boolean `true` to enable scrolling, `false` to disable.
function Widget:EnableScroll(enable) end

---Retrieves the alpha value of the Widget.
---@return number alpha The alpha value (min: `0`, max: `1`).
---@nodiscard
function Widget:GetAlpha() end

---Retrieves the last attached widget of the Widget. Casting the return to the
---appropriate type may be neccessary.
---@return Widget|nil attachedWidget The attached widget, or `nil` if none.
---@nodiscard
---@see Widget
function Widget:GetAttachedWidget() end

---Retrieves the parent widget of the Widget. Returns the current widget if no
---parent exists. Casting the return to the appropriate type may be neccessary.
---@return Widget parentWidget The parent widget.
---@nodiscard
function Widget:GetParent() end

---@TODO: Returns nil and "NONE", possibly broken? If its not broken I need to define a ROTATION enum for the return.
---Retrieves the rotation of the widget.
---@return string|nil rotation
---@nodiscard
function Widget:GetRotation() end

---Retrieves the text of the Widget.
---@return string text The text content.
---@nodiscard
function Widget:GetText() end

---Retrieves the UI layer of the Widget.
---@return UI_LAYER uiLayer The UI layer. (default: `"normal"`)
---@nodiscard
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
function Widget:HasHandler(actionName) end

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
function Widget:IsEnabled() end

---Checks if the mouse is over the Widget.
---@return boolean mouseOver `true` if the mouse is over, `false` otherwise.
---@nodiscard
function Widget:IsMouseOver() end

---Checks if the Widget is currently animating.
---@return boolean nowAnimation `true` if animating, `false` otherwise.
---@nodiscard
function Widget:IsNowAnimation() end

---Checks if the Widget is visible.
---@return boolean visible `true` if visible, `false` otherwise.
---@nodiscard
function Widget:IsVisible() end

---Lowers the Widget in the UI hierarchy.
function Widget:Lower() end

---Moves the Widget to the specified coordinates from the TOPLEFT corner.
---@param x number The x-coordinate.
---@param y number The y-coordinate.
function Widget:MoveTo(x, y) end

---Raises the Widget in the UI hierarchy.
function Widget:Raise() end

---Registers an event for the Widget to be accessible by the OnEvent handler
---action.
---@param eventName UIEVENT_TYPE The event to register.
function Widget:RegisterEvent(eventName) end

---Releases the deleted handler for the Widget.
function Widget:ReleaseDeletedHandler() end

---Releases a handler for the specified action.
---@param actionName WIDGET_EVENT_TYPE The action name to release.
function Widget:ReleaseHandler(actionName) end

---Removes all drawables for the specified layer.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to clear.
function Widget:RemoveAllDrawables(nameLayer) end

---Removes a specific drawable table from the widget.
---@param drawableTable Drawablebase The drawable table to remove.
---@see Drawablebase
function Widget:RemoveDrawable(drawableTable) end

---@TODO: Clarify cacheQueryId usage.
---Requests character cache data.
---@param cacheQueryId string The cache query ID.
function Widget:RequestCharacterCacheData(cacheQueryId) end

---Sets the alpha value of the Widget.
---@param alpha number The alpha value (min: `0`, max: `1`).
function Widget:SetAlpha(alpha) end

---Sets an alpha animation for the Widget.
---@param initialAlpha number The starting alpha (min: `0`, max: `1`).
---@param finalAlpha number The ending alpha (min: `0`, max: `1`).
---@param velocityTime number Duration in seconds for velocity.
---@param accelerationTime number Duration in seconds for acceleration.
function Widget:SetAlphaAnimation(initialAlpha, finalAlpha, velocityTime, accelerationTime) end

---@TODO: Clarify category purpose.
---Sets the category for the Widget.
---@param category string The category to set.
function Widget:SetCategory(category) end

---@TODO: Clarify handler usage.
---Sets a handler for character cache data.
---@param handler CharacterCacheDataHandler The handler function.
---@see CharacterCacheDataHandler
function Widget:SetCharacterCacheDataHandler(handler) end

---@TODO: Not sure if this works correctly.
---Sets a handler for a specific action on a delegator widget.
---@param action WIDGET_EVENT_TYPE The action name.
---@param delegator Widget The delegator widget.
---@param handler DelegatorHandler The handler function.
---@see DelegatorHandler
function Widget:SetDelegator(action, delegator, handler) end

---Sets a handler for the Widget deletion event. This executes right before the
---widget is deleted from the Object pool and should be used to set any variable
---that referenced the widget as `nil`, otherwise the widget will become an
---invalid object.
---@param handler function The handler function.
function Widget:SetDeletedHandler(handler) end

---Sets the drag condition for the Widget. This restricts when the events
---`OnDragReceive`, `OnDragStart`, and `OnDragStop` are fired.
---@param dragCondition DRAG_CONDITION The drag condition. (default: `DC_ALWAYS`)
function Widget:SetDragCondition(dragCondition) end

---Sets the alpha for a specific drawable layer.
---@param alpha number Alpha value (min: `0`, max: `1`). (default: `1`)
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the alpha to.
function Widget:SetDrawableLayerAlpha(alpha, nameLayer) end

---Sets the draw priority for the Widget relative to its sibling Widgets.
---@param drawPriority number The draw priority (z-index) value.
function Widget:SetDrawPriority(drawPriority) end

---@TODO: not all widgets may have all actionName, maybe give each widget its own SetHandler?
---Sets a handler for the specified action.
---@param actionName string The action name.
---@param handler function The handler function.
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

---Sets localized text for the Widget with multiple optional parameters.
---@param key string The key from the database ui_texts table under the `COMMON_TEXT` category.
---@param ... string Arguments to replace placeholders (must match number of $).
function Widget:SetLText(key, ...) end

---Sets localized text for the Widget with multiple optional parameters.
---@param category UI_TEXT_CATEGORY_ID The UI text category. (default: `COMMON_TEXT`)
---@param key string The key from the database ui_texts table.
---@param ... string Arguments to replace placeholders (must match number of $).
function Widget:SetLText(category, key, ...) end

---Sets the color for the specified layer.
---@param r number Red value (min: `0`, max: `1`).
---@param g number Green value (min: `0`, max: `1`).
---@param b number Blue value (min: `0`, max: `1`).
---@param a number Alpha value (min: `0`, max: `1`).
---@param nameLayer DRAWABLE_NAME_LAYER The layer to apply the color to.
function Widget:SetLayerColor(r, g, b, a, nameLayer) end

---Sets the maximum resizing extent for the Widget.
---@param width number The maximum width.
---@param height number The maximum height.
function Widget:SetMaxResizingExtent(width, height) end

---Sets the minimum resizing extent for the Widget.
---@param width number The minimum width.
---@param height number The minimum height.
function Widget:SetMinResizingExtent(width, height) end

---@TODO: Broken? direction enum
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
function Widget:SetScale(scale) end

---Sets a scale animation for the Widget.
---@param initialScale number The starting scale (must be greater than 0).
---@param finalScale number The ending scale.
---@param velocityTime number Duration in seconds for velocity.
---@param accelerationTime number Duration in seconds for acceleration.
---@param scaleAnchor ANCHOR_POINT The anchor point for scaling.
function Widget:SetScaleAnimation(initialScale, finalScale, velocityTime, accelerationTime, scaleAnchor) end

---@TODO: Make a list of widgets and their interactions that invoke sound.
---Sets the sounds to play for the Widget, this plays differently for each
---type of widget, for instance a button will play its sound when clicked, and
---a window will play its sound when shown/hidden.
---@param name WIDGET_SOUND The sound name.
function Widget:SetSounds(name) end

---Enables or disables start animations for alpha and scale.
---@param alpha boolean `true` to enable **alpha** animation, `false` to disable. (default: `false`)
---@param scale boolean `true` to enable **scale** animation, `false` to disable. (default: `false`)
function Widget:SetStartAnimation(alpha, scale) end

---Sets the text for the Widget.
---@param text string The text to set.
function Widget:SetText(text) end

---@TODO: this may disable all actions
---Shows or hides the widget and enables/disables its `"OnUpdate"` handler. Showing before the extents and anchors are set can cause issues.
---@param show boolean `true` to show, `false` to hide. (default: `false`)
---@param fadeTime? number The optional fade duration in milliseconds.
function Widget:Show(show, fadeTime) end

---Starts moving the Widget. Should be used in conjunction with
---`Widget:StopMovingOrSizing`.
---@usage
---```lua
---widget:SetHandler("OnDragStart", function(self)
---  self:StartMoving()
---end)
---
---widget:SetHandler("OnDragStop", function(self)
---  self:StopMovingOrSizing()
---end)
---```
function Widget:StartMoving() end

---Starts resizing the Widget from the specified anchor point.
---@param anchorPoint ANCHOR_POINT The anchor point for resizing.
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
function Widget:TriggerMoveAnimation(on) end

---@TODO: What is this?
---Enables or disables dynamic content state for the widget.
---@param use boolean `true` to enable, `false` to disable.
function Widget:UseDynamicContentState(use) end

---Enables or disables dynamic drawable state for the specified layer.
---@param nameLayer DRAWABLE_NAME_LAYER The layer to modify.
---@param use boolean `true` to enable, `false` to disable.
function Widget:UseDynamicDrawableState(nameLayer, use) end

---Enables or disables resizing for the Widget.
---@param use boolean `true` to enable resizing, `false` to disable. (default: `false`)
function Widget:UseResizing(use) end
