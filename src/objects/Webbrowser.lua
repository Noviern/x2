---@meta _

---objects/Webbrowser
---@class Webbrowser: Widget
local Webbrowser = {}
---@class webbrowser: Webbrowser

---Clears focus from the Webbrowser.
function Webbrowser:ClearFocus() end

---Retrieves the current URL of the Webbrowser.
---@return string url The current URL. (default: `""`)
---@nodiscard
function Webbrowser:GetURL() end

---@FIXME: Broken?
---Loads a blank page in the Webbrowser.
function Webbrowser:LoadBlankPage() end

---@FIXME: RightButton doesnt appear to work.
---Simulates a mouse down event on the Webbrowser.
---@param button MOUSE_BUTTON The mouse button to simulate.
---@see MOUSE_BUTTON
function Webbrowser:MouseDown(button) end

---Simulates a mouse move event on the Webbrowser  and triggers the
---`"OnMouseMove"` event.
function Webbrowser:MouseMove() end

---@FIXME: RightButton doesnt appear to work.
---Simulates a mouse up event on the Webbrowser.
---@param button MOUSE_BUTTON The mouse button to simulate.
---@see MOUSE_BUTTON
function Webbrowser:MouseUp(button) end

---@FIXME: Broken?
---Requests the expedition BBS page in the Webbrowser.'
function Webbrowser:RequestExpeditionBBS() end

---@FIXME: Broken?
---Requests the expedition home page in the Webbrowser.
function Webbrowser:RequestExpeditionHome() end

---@TODO: Not sure why this exists when SetURL works the same.
---Requests an external page in the Webbrowser.
---@param url string The URL of the external page.
function Webbrowser:RequestExternalPage(url) end

---@FIXME: Broken?
---Requests the help page in the Webbrowser.
function Webbrowser:RequestHelp() end

---@FIXME: Broken?
---Requests the messenger page in the Webbrowser.
function Webbrowser:RequestMessenger() end

---@FIXME: Broken?
---Requests the messenger page for a specific PC name in the Webbrowser.
---@param pcName string The PC name for the messenger request.
function Webbrowser:RequestMessengerByPcName(pcName) end

---@FIXME: Broken?
---Requests the messenger page based on the current target in the Webbrowser.
function Webbrowser:RequestMessengerOnTarget() end

---@FIXME: Broken?
---Requests the play diary page in the Webbrowser.
function Webbrowser:RequestPlayDiary() end

---@FIXME: Broken?
---Requests the play diary page for a specific PC name in the Webbrowser.
---@param pcName string The PC name for the play diary request.
function Webbrowser:RequestPlayDiaryByPcName(pcName) end

---@FIXME: Broken?
---Requests an instant play diary page by file name in the Webbrowser.
---@param fileName string The file name for the play diary.
function Webbrowser:RequestPlayDiaryInstant(fileName) end

---@FIXME: Broken?
---Requests the play diary page based on the current target in the Webbrowser.
function Webbrowser:RequestPlayDiaryOnTarget() end

---@FIXME: Broken?
---Requests verification for a sensitive operation with the specified URL.
---@param url string The URL for the sensitive operation.
function Webbrowser:RequestSensitiveOperationVerify(url) end

---@FIXME: Broken?
---Requests a TGOS operation in the Webbrowser.
---@param arg number The argument for the TGOS request.
function Webbrowser:RequestTGOS(arg) end

---@FIXME: Broken?
---Requests the wiki page in the Webbrowser.
function Webbrowser:RequestWiki() end

---Sets the default drawable for the Webbrowser.
---@param drawable Drawablebase The default drawable to set.
---@usage
---```lua
---local defaultDrawable = widget:CreateColorDrawable(0, 0, 1, 1, "background")
---defaultDrawable:AddAnchor("TOPLEFT", widget, 0, 0)
---defaultDrawable:AddAnchor("BOTTOMRIGHT", widget, 0, 0)
---defaultDrawable:SetVisible(false)
---widget:SetDefaultDrawable(defaultDrawable)
---```
function Webbrowser:SetDefaultDrawable(drawable) end

---Enables or disables the `WEB_BROWSER_ESC_EVENT` event registration for the
---Webbrowser.
---@param has boolean `true` to enable the escape event, `false` to disable. (default: `false`)
function Webbrowser:SetEscEvent(has) end

---Sets focus to the Webbrowser.
function Webbrowser:SetFocus() end

---Sets the loading drawable for the Webbrowser.
---@param drawable Drawablebase The drawable to display during loading.
---@usage
---```lua
---local loadingDrawable = widget:CreateColorDrawable(1, 0, 0, 1, "background")
---loadingDrawable:AddAnchor("TOPLEFT", widget, 0, 0)
---loadingDrawable:AddAnchor("BOTTOMRIGHT", widget, 0, 0)
---loadingDrawable:SetVisible(false)
---widget:SetLoadingDrawable(loadingDrawable)
---```
function Webbrowser:SetLoadingDrawable(drawable) end

---@TODO: Clarify toParent behavior and purpose.
---Sets whether messages are sent to the parent of the Webbrowser.
---@param toParent boolean `true` to send messages to parent, `false` otherwise.
function Webbrowser:SetMsgToParent(toParent) end

---@FIXME: Right now this isnt necessary to call as only "background" confirmed working.
---Sets the UI layer for the Webbrowser.
---@param layer "background" The UI layer to set (only "background" confirmed working).
function Webbrowser:SetUiLayer(layer) end

---Sets the URL for the Webbrowser.
---@param url string The URL to load.
function Webbrowser:SetURL(url) end

---Sets the zoom level for the Webbrowser.
---@param level number The zoom level to set. (default: `1`)
function Webbrowser:SetZoomLevel(level) end

---Scrolls down the page in the Webbrowser.
---@usage
---```lua
---widget:SetHandler("OnWheelDown", function(self)
---  self:WheelDown()
---end)
---```
function Webbrowser:WheelDown() end

---Scrolls up the page in the Webbrowser.
---@usage
---```lua
---widget:SetHandler("OnWheelUp", function(self)
---  self:WheelUp()
---end)
---```
function Webbrowser:WheelUp() end
