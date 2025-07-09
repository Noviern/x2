---@meta _

AP_BOTTOM = 8 -- object/Webbrowser
AP_BOTTOMLEFT = 2 -- object/Webbrowser
AP_BOTTOMRIGHT = 3 -- object/Webbrowser
AP_CENTER = 4 -- object/Webbrowser
AP_LEFT = 6 -- object/Webbrowser
AP_RIGHT = 7 -- object/Webbrowser
AP_TOP = 5 -- object/Webbrowser
AP_TOPLEFT = 0 -- object/Webbrowser
AP_TOPRIGHT = 1 -- object/Webbrowser
CT_ABILITY = 2 -- object/Webbrowser
CT_EXPEDITION_NAME = 3 -- object/Webbrowser
CT_NAME = 1 -- object/Webbrowser
DC_ALWAYS = 0 -- object/Webbrowser
DC_SHIFT_KEY_DOWN = 1 -- object/Webbrowser

---object/Webbrowser
---@class Webbrowser: Widget
---@field ClearFocus fun(self: self)
---@field GetURL fun(self: self): string
---@field LoadBlankPage fun(self: self)
---@field MouseDown fun(self: self, button: string)
---@field MouseMove fun(self: self)
---@field MouseUp fun(self: self, button: string)
---@field RequestExpeditionBBS fun(self: self)
---@field RequestExpeditionHome fun(self: self)
---@field RequestExternalPage fun(self: self, url: string)
---@field RequestHelp fun(self: self)
---@field RequestMessenger fun(self: self)
---@field RequestMessengerByPcName fun(self: self, pcName: string)
---@field RequestMessengerOnTarget fun(self: self)
---@field RequestPlayDiary fun(self: self)
---@field RequestPlayDiaryByPcName fun(self: self, pcName: string)
---@field RequestPlayDiaryInstant fun(self: self, fileName: string)
---@field RequestPlayDiaryOnTarget fun(self: self)
---@field RequestSensitiveOperationVerify fun(self: self, url: string)
---@field RequestTest fun(self: self, testUrl) -- Does not exist.
---@field RequestTGOS fun(self: self, arg: number)
---@field RequestWiki fun(self: self)
---@field SetDefaultDrawable fun(self: self, drawable: table)
---@field SetEscEvent fun(self: self, has: boolean)
---@field SetExtent fun(self: self, width: number, height: number)
---@field SetFocus fun(self: self)
---@field SetLoadingDrawable fun(self: self, drawable, table)
---@field SetMsgToParent fun(self: self, toParent: boolean)
---@field SetUiLayer fun(self: self, layer: string)
---@field SetURL fun(self: self, url: string)
---@field SetZoomLevel fun(self: self, level: number)
---@field WheelDown fun(self: self)
---@field WheelUp fun(self: self)