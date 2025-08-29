---@meta _

AP_BOTTOM = 8          -- objects/Webbrowser
AP_BOTTOMLEFT = 2      -- objects/Webbrowser
AP_BOTTOMRIGHT = 3     -- objects/Webbrowser
AP_CENTER = 4          -- objects/Webbrowser
AP_LEFT = 6            -- objects/Webbrowser
AP_RIGHT = 7           -- objects/Webbrowser
AP_TOP = 5             -- objects/Webbrowser
AP_TOPLEFT = 0         -- objects/Webbrowser
AP_TOPRIGHT = 1        -- objects/Webbrowser
CT_ABILITY = 2         -- objects/Webbrowser
CT_EXPEDITION_NAME = 3 -- objects/Webbrowser
CT_NAME = 1            -- objects/Webbrowser
DC_ALWAYS = 0          -- objects/Webbrowser
DC_SHIFT_KEY_DOWN = 1  -- objects/Webbrowser

---objects/Webbrowser
---@class Webbrowser: Widget
---@class webbrowser: Webbrowser
local Webbrowser = {}

---Clears focus from the Webbrowser.
---@usage
---```
---widget:ClearFocus()
---```
function Webbrowser:ClearFocus() end

---Retrieves the current URL of the Webbrowser.
---@return string url The current URL. (default: `""`)
---@nodiscard
---@usage
---```
---local url = widget:GetURL()
---```
function Webbrowser:GetURL() end

---@TODO: Broken?
---Loads a blank page in the Webbrowser.
---@usage
---```
---widget:LoadBlankPage()
---```
function Webbrowser:LoadBlankPage() end

---@TODO: RightButton doesnt appear to work.
---Simulates a mouse down event on the Webbrowser.
---@param button MOUSE_BUTTON The mouse button to simulate.
---@usage
---```
---widget:MouseDown("LeftButton")
---```
---@see MOUSE_BUTTON
function Webbrowser:MouseDown(button) end

---Simulates a mouse move event on the Webbrowser  and triggers the
---`"OnMouseMove"` event.
---@usage
---```
---widget:MouseMove()
---```
function Webbrowser:MouseMove() end

---@TODO: RightButton doesnt appear to work.
---Simulates a mouse up event on the Webbrowser.
---@param button MOUSE_BUTTON The mouse button to simulate.
---@usage
---```
---widget:MouseUp("LeftButton")
---```
---@see MOUSE_BUTTON
function Webbrowser:MouseUp(button) end

---@TODO: Broken?
---Requests the expedition BBS page in the Webbrowser.'
---@usage
---```
---widget:RequestExpeditionBBS()
---```
function Webbrowser:RequestExpeditionBBS() end

---@TODO: Broken?
---Requests the expedition home page in the Webbrowser.
---@usage
---```
---widget:RequestExpeditionHome()
---```
function Webbrowser:RequestExpeditionHome() end

---@TODO: Not sure why this exists when SetURL works the same.
---Requests an external page in the Webbrowser.
---@param url string The URL of the external page.
---@usage
---```
---widget:RequestExternalPage("https://wiki.archerage.to/")
---```
function Webbrowser:RequestExternalPage(url) end

---@TODO: Broken?
---Requests the help page in the Webbrowser.
---@usage
---```
---widget:RequestHelp()
---```
function Webbrowser:RequestHelp() end

---@TODO: Broken?
---Requests the messenger page in the Webbrowser.
---@usage
---```
---widget:RequestMessenger()
---```
function Webbrowser:RequestMessenger() end

---@TODO: Broken?
---Requests the messenger page for a specific PC name in the Webbrowser.
---@param pcName string The PC name for the messenger request.
---@usage
---```
---widget:RequestMessengerByPcName("")
---```
function Webbrowser:RequestMessengerByPcName(pcName) end

---@TODO: Broken?
---Requests the messenger page based on the current target in the Webbrowser.
---@usage
---```
---widget:RequestMessengerOnTarget()
---```
function Webbrowser:RequestMessengerOnTarget() end

---@TODO: Broken?
---Requests the play diary page in the Webbrowser.
---@usage
---```
---widget:RequestPlayDiary()
---```
function Webbrowser:RequestPlayDiary() end

---@TODO: Broken?
---Requests the play diary page for a specific PC name in the Webbrowser.
---@param pcName string The PC name for the play diary request.
---@usage
---```
---widget:RequestPlayDiaryByPcName("")
---```
function Webbrowser:RequestPlayDiaryByPcName(pcName) end

---@TODO: Broken?
---Requests an instant play diary page by file name in the Webbrowser.
---@param fileName string The file name for the play diary.
---@usage
---```
---widget:RequestPlayDiaryInstant("")
---```
function Webbrowser:RequestPlayDiaryInstant(fileName) end

---@TODO: Broken?
---Requests the play diary page based on the current target in the Webbrowser.
---@usage
---```
---widget:RequestPlayDiaryOnTarget()
---```
function Webbrowser:RequestPlayDiaryOnTarget() end

---@TODO: Broken?
---Requests verification for a sensitive operation with the specified URL.
---@param url string The URL for the sensitive operation.
---@usage
---```
---widget:RequestSensitiveOperationVerify("https://wiki.archerage.to/")
---```
function Webbrowser:RequestSensitiveOperationVerify(url) end

---@TODO: Broken?
---Requests a TGOS operation in the Webbrowser.
---@param arg number The argument for the TGOS request.
---@usage
---```
---widget:RequestTGOS(1)
---```
function Webbrowser:RequestTGOS(arg) end

---@TODO: Broken?
---Requests the wiki page in the Webbrowser.
---@usage
---```
---widget:RequestWiki()
---```
function Webbrowser:RequestWiki() end

---Sets the default drawable for the Webbrowser.
---@param drawable Drawablebase The default drawable to set.
---@usage
---```
---local defaultDrawable = widget:CreateColorDrawable(0, 0, 1, 1, "background")
---defaultDrawable:AddAnchor("TOPLEFT", widget, 0, 0)
---defaultDrawable:AddAnchor("BOTTOMRIGHT", widget, 0, 0)
---defaultDrawable:SetVisible(false)
---widget:SetDefaultDrawable(defaultDrawable)
---```
function Webbrowser:SetDefaultDrawable(drawable) end

---Enables or disables the `WEB_BROWSER_ESC_EVENT` event registration for the Webbrowser.
---@param has boolean `true` to enable the escape event, `false` to disable. (default: `false`)
---@usage
---```
---widget:SetEscEvent(true)
---```
function Webbrowser:SetEscEvent(has) end

---Sets focus to the Webbrowser.
---@usage
---```
---widget:SetFocus()
---```
function Webbrowser:SetFocus() end

---Sets the loading drawable for the Webbrowser.
---@param drawable Drawablebase The drawable to display during loading.
---@usage
---```
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
---@usage
---```
---widget:SetMsgToParent(true)
---```
function Webbrowser:SetMsgToParent(toParent) end

---@TODO: Right now this isnt necessary to call.
---Sets the UI layer for the Webbrowser.
---@param layer "background" The UI layer to set (only "background" confirmed working).
---@usage
---```
---widget:SetUiLayer("background")
---```
function Webbrowser:SetUiLayer(layer) end

---Sets the URL for the Webbrowser.
---@param url string The URL to load.
---@usage
---```
---widget:SetURL("https://wiki.archerage.to/")
---```
function Webbrowser:SetURL(url) end

---@TODO: Broken?
---Sets the zoom level for the Webbrowser.
---@param level number The zoom level to set.
---@usage
---```
---widget:SetZoomLevel(1)
---```
function Webbrowser:SetZoomLevel(level) end

---Scrolls down the page in the Webbrowser.
---@usage
---```
---widget:SetHandler("OnWheelDown", function(self)
---  self:WheelDown()
---end)
---```
function Webbrowser:WheelDown() end

---Scrolls up the page in the Webbrowser.
---@usage
---```
---widget:SetHandler("OnWheelUp", function(self)
---  self:WheelUp()
---end)
---```
function Webbrowser:WheelUp() end
