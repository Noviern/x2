---@meta _

AP_BOTTOM = 8          -- object/Webbrowser
AP_BOTTOMLEFT = 2      -- object/Webbrowser
AP_BOTTOMRIGHT = 3     -- object/Webbrowser
AP_CENTER = 4          -- object/Webbrowser
AP_LEFT = 6            -- object/Webbrowser
AP_RIGHT = 7           -- object/Webbrowser
AP_TOP = 5             -- object/Webbrowser
AP_TOPLEFT = 0         -- object/Webbrowser
AP_TOPRIGHT = 1        -- object/Webbrowser
CT_ABILITY = 2         -- object/Webbrowser
CT_EXPEDITION_NAME = 3 -- object/Webbrowser
CT_NAME = 1            -- object/Webbrowser
DC_ALWAYS = 0          -- object/Webbrowser
DC_SHIFT_KEY_DOWN = 1  -- object/Webbrowser

---object/Webbrowser
---@class Webbrowser: Widget
local Webbrowser = {}

---Clears the focus for the Webbrowser.
function Webbrowser:ClearFocus() end

---Returns `url` for the Webbrowser.
---@return string url
---@nodiscard
function Webbrowser:GetURL() end

---TODO: Broken?
function Webbrowser:LoadBlankPage() end

---TODO:
---@param button string
function Webbrowser:MouseDown(button) end

---TODO:
function Webbrowser:MouseMove() end

---TODO:
---@param button string
function Webbrowser:MouseUp(button) end

---TODO: Broken?
function Webbrowser:RequestExpeditionBBS() end

---TODO: Broken?
function Webbrowser:RequestExpeditionHome() end

---TODO:
---@param url string
function Webbrowser:RequestExternalPage(url) end

---TODO: Broken?
function Webbrowser:RequestHelp() end

---TODO:
function Webbrowser:RequestMessenger() end

---TODO:
---@param pcName string
function Webbrowser:RequestMessengerByPcName(pcName) end

---TODO:
function Webbrowser:RequestMessengerOnTarget() end

---TODO:
function Webbrowser:RequestPlayDiary() end

---TODO:
---@param pcName string
function Webbrowser:RequestPlayDiaryByPcName(pcName) end

---TODO:
---@param fileName string
function Webbrowser:RequestPlayDiaryInstant(fileName) end

---TODO:
function Webbrowser:RequestPlayDiaryOnTarget() end

---TODO:
---@param url string
function Webbrowser:RequestSensitiveOperationVerify(url) end

---TODO: Does not exist.
------@param testUrl any
---function Webbrowser:RequestTest(testUrl) end

---TODO:
---@param arg number
function Webbrowser:RequestTGOS(arg) end

---TODO: Broken?
function Webbrowser:RequestWiki() end

---Sets the default `drawable` for the Webbrowser.
---@param drawable Drawablebase
function Webbrowser:SetDefaultDrawable(drawable) end

---Enables/Disables `Widgetbase:RegisterEvent` to register the event
---`WEB_BROWSER_ESC_EVENT` to the Webbrowser.
---@param has boolean
function Webbrowser:SetEscEvent(has) end

---Sets the focus to the Webbrowser.
function Webbrowser:SetFocus() end

---Seths the loading `drawable` for the Webbrowser.
---@param drawable Drawablebase
function Webbrowser:SetLoadingDrawable(drawable) end

---TODO:
---@param toParent boolean
function Webbrowser:SetMsgToParent(toParent) end

---TODO: Only background worked from system|game|tooltip|hud|dialog|background|questdirecting|normal
---Sets the ui `layer` for the Webbrowser.
---@param layer "background"
function Webbrowser:SetUiLayer(layer) end

---Sets the url for the Webbrowser.
---@param url string
function Webbrowser:SetURL(url) end

---TODO:
---@param level number
function Webbrowser:SetZoomLevel(level) end

---Srolls down the page for the Webbrowser.
function Webbrowser:WheelDown() end

---Scrolls up the page for the Webbrowser.
function Webbrowser:WheelUp() end
