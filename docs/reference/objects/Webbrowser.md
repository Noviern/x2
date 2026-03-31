# Webbrowser
## Classes
### Class: Webbrowser
Extends [Widget](../types/Widget.md#class-widget)

> [Webbrowser](../types/Webbrowser.md#class-webbrowser)
> 
> **Warning:** Most methods for this class are broken.
> 
> A `Webbrowser` widget embeds a web page viewer within the UI. It allows
> loading and navigating URLs, simulating mouse events, scrolling, setting
> zoom levels, and managing focus and drawables for loading or default states.
> Many predefined requests exist for game-specific pages, although some are
> broken or not fully functional.
> 
> **Dependencies**:
>  - [Drawablebase](../types/Drawablebase.md#class-drawablebase)
> 
#### Method: ClearFocus
```lua
(method) Webbrowser:ClearFocus()
```
> Clears focus from the Webbrowser.

#### Method: RequestWiki
```lua
(method) Webbrowser:RequestWiki()
```
> Requests the wiki page in the Webbrowser.

#### Method: SetDefaultDrawable
```lua
(method) Webbrowser:SetDefaultDrawable(drawable: Drawablebase)
```
> Sets the default drawable for the Webbrowser.
> 
> @*param* `drawable` — The default drawable to set.

#### Method: RequestTGOS
```lua
(method) Webbrowser:RequestTGOS(arg: number)
```
> Requests a TGOS operation in the Webbrowser.
> 
> @*param* `arg` — The argument for the TGOS request.

#### Method: RequestPlayDiaryOnTarget
```lua
(method) Webbrowser:RequestPlayDiaryOnTarget()
```
> Requests the play diary page based on the current target in the Webbrowser.

#### Method: RequestSensitiveOperationVerify
```lua
(method) Webbrowser:RequestSensitiveOperationVerify(url: string)
```
> Requests verification for a sensitive operation with the specified URL.
> 
> @*param* `url` — The URL for the sensitive operation.

#### Method: RequestPlayDiaryInstant
```lua
(method) Webbrowser:RequestPlayDiaryInstant(fileName: string)
```
> Requests an instant play diary page by file name in the Webbrowser.
> 
> @*param* `fileName` — The file name for the play diary.

#### Method: SetEscEvent
```lua
(method) Webbrowser:SetEscEvent(has: boolean)
```
> Enables or disables the `WEB_BROWSER_ESC_EVENT` event registration for the
> Webbrowser.
> 
> @*param* `has` — `true` to enable the escape event, `false` to disable. (default: `false`)

#### Method: SetLoadingDrawable
```lua
(method) Webbrowser:SetLoadingDrawable(drawable: Drawablebase)
```
> Sets the loading drawable for the Webbrowser.
> 
> @*param* `drawable` — The drawable to display during loading.

#### Method: SetZoomLevel
```lua
(method) Webbrowser:SetZoomLevel(level: number)
```
> Sets the zoom level for the Webbrowser.
> 
> @*param* `level` — The zoom level to set. (default: `1`)

#### Method: SetFocus
```lua
(method) Webbrowser:SetFocus()
```
> Sets focus to the Webbrowser.

#### Method: SetUiLayer
```lua
(method) Webbrowser:SetUiLayer(layer: "background")
```
> Sets the UI layer for the Webbrowser.
> 
> @*param* `layer` — The UI layer to set (only "background" confirmed working).
> 
> ```lua
> layer:
>     | "background"
> ```

#### Method: SetMsgToParent
```lua
(method) Webbrowser:SetMsgToParent(toParent: boolean)
```
> Sets whether messages are sent to the parent of the Webbrowser.
> 
> @*param* `toParent` — `true` to send messages to parent, `false` otherwise.

#### Method: SetURL
```lua
(method) Webbrowser:SetURL(url: string)
```
> Sets the URL for the Webbrowser.
> 
> @*param* `url` — The URL to load.

#### Method: WheelDown
```lua
(method) Webbrowser:WheelDown()
```
> Scrolls down the page in the Webbrowser.
> ```lua
> widget:SetHandler("OnWheelDown", function(self)
>   self:WheelDown()
> end)
> ```

#### Method: RequestPlayDiaryByPcName
```lua
(method) Webbrowser:RequestPlayDiaryByPcName(pcName: string)
```
> Requests the play diary page for a specific PC name in the Webbrowser.
> 
> @*param* `pcName` — The PC name for the play diary request.

#### Method: RequestMessengerOnTarget
```lua
(method) Webbrowser:RequestMessengerOnTarget()
```
> Requests the messenger page based on the current target in the Webbrowser.

#### Method: MouseMove
```lua
(method) Webbrowser:MouseMove()
```
> Simulates a mouse move event on the Webbrowser  and triggers the
> `"OnMouseMove"` event.

#### Method: MouseUp
```lua
(method) Webbrowser:MouseUp(button: "LeftButton"|"RightButton")
```
> Simulates a mouse up event on the Webbrowser.
> 
> @*param* `button` — The mouse button to simulate.
> 
> ```lua
> button:
>     | "LeftButton"
>     | "RightButton"
> ```

#### Method: MouseDown
```lua
(method) Webbrowser:MouseDown(button: "LeftButton"|"RightButton")
```
> Simulates a mouse down event on the Webbrowser.
> 
> @*param* `button` — The mouse button to simulate.
> 
> ```lua
> button:
>     | "LeftButton"
>     | "RightButton"
> ```

#### Method: GetURL
```lua
(method) Webbrowser:GetURL()
  -> url: string
```
> Retrieves the current URL of the Webbrowser.
> 
> @*return* `url` — The current URL. (default: `""`)

#### Method: LoadBlankPage
```lua
(method) Webbrowser:LoadBlankPage()
```
> Loads a blank page in the Webbrowser.

#### Method: RequestPlayDiary
```lua
(method) Webbrowser:RequestPlayDiary()
```
> Requests the play diary page in the Webbrowser.

#### Method: RequestExpeditionBBS
```lua
(method) Webbrowser:RequestExpeditionBBS()
```
> Requests the expedition BBS page in the Webbrowser.'

#### Method: RequestExternalPage
```lua
(method) Webbrowser:RequestExternalPage(url: string)
```
> Requests an external page in the Webbrowser.
> 
> @*param* `url` — The URL of the external page.

#### Method: RequestMessengerByPcName
```lua
(method) Webbrowser:RequestMessengerByPcName(pcName: string)
```
> Requests the messenger page for a specific PC name in the Webbrowser.
> 
> @*param* `pcName` — The PC name for the messenger request.

#### Method: RequestExpeditionHome
```lua
(method) Webbrowser:RequestExpeditionHome()
```
> Requests the expedition home page in the Webbrowser.

#### Method: RequestMessenger
```lua
(method) Webbrowser:RequestMessenger()
```
> Requests the messenger page in the Webbrowser.

#### Method: RequestHelp
```lua
(method) Webbrowser:RequestHelp()
```
> Requests the help page in the Webbrowser.

#### Method: WheelUp
```lua
(method) Webbrowser:WheelUp()
```
> Scrolls up the page in the Webbrowser.
> ```lua
> widget:SetHandler("OnWheelUp", function(self)
>   self:WheelUp()
> end)
> ```

