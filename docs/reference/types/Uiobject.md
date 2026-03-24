# Uiobject
## Classes
### Class: Uiobject
#### Method: GetId
```lua
(method) Uiobject:GetId()
  -> id: string
```
> Retrieves the ID of the UI object.
> 
> @*return* `id` — The UI object's ID.

#### Method: GetObjectType
```lua
(method) Uiobject:GetObjectType()
  -> objectType: OBJECT_NAME
```
> Retrieves the object type of the UI object.
> 
> @*return* `objectType` — The UI object's type.
> 
> ```lua
> objectType:
>     | "avi"
>     | "button"
>     | "chatwindow"
>     | "checkbutton"
>     | "circlediagram"
>     | "colorpicker"
>     | "combobox"
>     | "cooldownbutton"
>     | "cooldownconstantbutton"
>     | "cooldowninventorybutton"
>     | "damagedisplay"
>     | "dynamiclist"
>     | "editbox"
>     | "editboxmultiline"
>     | "emptywidget"
>     | "folder"
>     | "gametooltip"
>     | "grid"
>     | "label"
>     | "line"
>     | "listbox"
>     | "listctrl"
>     | "megaphonechatedit"
>     | "message"
>     | "modelview"
>     | "pageable"
>     | "paintcolorpicker"
>     | "radiogroup"
>     | "roadmap"
>     | "slider"
>     | "slot"
>     | "statusbar"
>     | "tab"
>     | "textbox"
>     | "unitframetooltip"
>     | "webbrowser"
>     | "window"
>     | "worldmap"
>     | "x2editbox"
> ```

#### Method: GetName
```lua
(method) Uiobject:GetName()
  -> name: string
```
> Retrieves the name of the UI object.

#### Method: IsValidUIObject
```lua
(method) Uiobject:IsValidUIObject()
  -> validUiobject: boolean
```
> Checks if the UI object is still valid. A UI object can become invalid if it
> has been removed from the games Object Pool.
> ```lua
> widget:EnableHidingIsRemove(true)
> widget:Show(false)
> 
> widget:IsValidUIObject() -- This will still return true as the game hasnt processed the removal of the object.
> ```
> 
> @*return* `validUiobject` — `true` if the UI object is valid, `false` otherwise.

