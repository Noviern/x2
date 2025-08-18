local API = {
  X2Console = 2, X2Ability = 3, X2Action = 4, X2Bag = 5, X2BattleField = 6,
  X2Camera = 7, X2Chat = 8, X2Craft = 9, X2Cursor = 10, X2Debug = 11,
  X2Decal = 12, X2Equipment = 13, X2Faction = 14, X2Friend = 15,
  X2Dominion = 16, X2Family = 17, X2Trial = 18, X2Hotkey = 19, X2House = 20,
  X2Input = 21, X2Interaction = 22, X2Item = 23, X2Locale = 24,
  X2LoginCharacter = 25, X2CustomizingUnit = 26, X2Loot = 27, X2Mail = 28,
  X2GoodsMail = 29, X2NameTag = 30, X2Option = 31, X2Player = 32, X2Quest = 33,
  X2SiegeWeapon = 34, X2Skill = 35, X2Sound = 36, X2Store = 37, X2Team = 38,
  X2Time = 39, X2Trade = 40, X2Tutorial = 41, X2Unit = 42, X2Util = 43,
  X2Warp = 44, X2World = 45, X2Ucc = 46, X2Bank = 47, X2Coffer = 48,
  X2GuildBank = 49, X2RenewItem = 50, X2Auction = 51, X2Mate = 52,
  X2BuffSkill = 53, X2Map = 54, X2DialogManager = 55, X2InGameShop = 56,
  X2UserMusic = 57, X2Book = 58, X2Nation = 59, X2Customizer = 60,
  X2Security = 61, X2ItemLookConverter = 62, X2Rank = 63, X2Helper = 64,
  X2PremiumService = 65, X2ItemEnchant = 66, X2Achievement = 67, X2Hero = 68,
  X2EventCenter = 69, X2ItemGacha = 70, X2ItemGuide = 71, X2BlessUthstin = 72,
  X2Resident = 73, X2HeirSkill = 74, X2EquipSlotReinforce = 75,
  X2OneAndOneChat = 76, X2Squad = 77, X2Dyeing = 78, X2SkillAlert = 79,
  X2Indun = 80, X2ArchePass = 81, X2Butler = 82, X2CombatResource = 83,
  X2Roster = 84, X2MiniScoreboard = 85, X2SurveyForm = 86,
}

local OBJECT = {
  Window = 0, Label = 1, Button = 2, Editbox = 3, EditboxMultiline = 4,
  Listbox = 5, Drawable = 6, ColorDrawable = 7, NinePartDrawable = 8,
  ThreePartDrawable = 9, ImageDrawable = 10, IconDrawable = 11,
  TextDrawable = 12, TextStyle = 13, ThreeColorDrawable = 14,
  EffectDrawable = 15, Message = 16, StatusBar = 17, GameTooltip = 18,
  UnitframeTooltip = 19, CooldownButton = 20, CooldownInventoryButton = 21,
  CooldownConstantButton = 22, CheckButton = 23, Slider = 24, Pageable = 25,
  WorldMap = 26, RoadMap = 27, Grid = 28, ModelView = 29, Webbrowser = 30,
  CircleDiagram = 31, ColorPicker = 32, PaintColorPicker = 33, Folder = 34,
  DamageDisplay = 35, Tab = 36, SliderTab = 37, ChatTab = 38, Textbox = 39,
  Combobox = 40, ComboListButton = 41, ChatMessage = 42, ChatEdit = 43,
  MegaphoneChatEdit = 44, ListCtrl = 45, EmptyWidget = 46, Slot = 47, Line = 48,
  Root = 49, TextureDrawable = 50, Webview = 51, Avi = 52, X2Editbox = 53,
  DynamicList = 54, RadioGroup = 55,
}

local RESERVED_GLOBAL = {
  _aitick = true, _frametime = true, _G = true, _time = true, _VERSION = true,
  arg = true, arshift = true, assert = true, band = true, bnot = true,
  bor = true, bxor = true, collectgarbage = true, coroutine = true,
  debug = true, dofile = true, error = true, gcinfo = true, getfenv = true,
  getmetatable = true, imod = true, invalid = true, io = true, ipairs = true,
  load = true, loadfile = true, loadstring = true, lshift = true, math = true,
  module = true, newproxy = true, next = true, os = true, package = true,
  pairs = true, pcall = true, print = true, rawequal = true, rawget = true,
  rawset = true, require = true, rshift = true, select = true, setfenv = true,
  setmetatable = true, string = true, table = true, tonumber = true,
  tostring = true, type = true, unpack = true, xpcall = true, dump = true,
}

local ADDON = ADDON
local UIParent = UIParent

local function filter(tbl)
  local result = {}

  for k, v in pairs(tbl) do
    if RESERVED_GLOBAL[k] == nil then
      result[k] = v
    end
  end

  return result
end

local function clear_globals()
  for key in pairs(_G) do
    if not RESERVED_GLOBAL[key] then _G[key] = nil end
  end
end

local function snapshot_globals(name)
  local var_lines, func_lines = dump(filter(_G))
  local require_comment = " -- " .. name

  var_lines = string.gsub(var_lines, "\n", require_comment .. "\n")

  if var_lines ~= "" then
    var_lines = var_lines .. require_comment
  end

  local filePath = "../Documents/Addon/aad/" .. name .. ".txt"
  local file = assert(io.open(filePath, "w"))

  if name == "object/Textbox" then
    file:write(os.time(), "\n")
  end

  file:write(var_lines)

  if func_lines ~= "" then
    file:write("\n\n" .. func_lines)
  end

  file:close()

  clear_globals()
end

snapshot_globals("api/Addon")

for api_name, api_id in pairs(API) do
  ADDON:ImportAPI(api_id)
  snapshot_globals("api/" .. api_name)
end

---@TODO: I still need to dump the Drawables.

ADDON:ImportObject(OBJECT.Avi)
ADDON:ImportObject(OBJECT.TextStyle)
Avi = UIParent:CreateWidget("avi", "avi", "UIParent")
snapshot_globals("object/Avi")

ADDON:ImportObject(OBJECT.Button)
ADDON:ImportObject(OBJECT.TextStyle)
Button = UIParent:CreateWidget("button", "button", "UIParent")
snapshot_globals("object/Button")

ADDON:ImportObject(OBJECT.ChatTab)
ADDON:ImportObject(OBJECT.TextStyle)
ChatWindow = UIParent:CreateWidget("chatwindow", "chatwindow", "UIParent")
snapshot_globals("object/ChatTab")

ADDON:ImportObject(OBJECT.CheckButton)
ADDON:ImportObject(OBJECT.TextStyle)
CheckButton = UIParent:CreateWidget("checkbutton", "checkbutton", "UIParent")
snapshot_globals("object/CheckButton")

ADDON:ImportObject(OBJECT.CircleDiagram)
ADDON:ImportObject(OBJECT.TextStyle)
CircleDiagram = UIParent:CreateWidget("circlediagram", "circlediagram", "UIParent")
snapshot_globals("object/CircleDiagram")

ADDON:ImportObject(OBJECT.ColorPicker)
ADDON:ImportObject(OBJECT.TextStyle)
ColorPicker = UIParent:CreateWidget("colorpicker", "colorpicker", "UIParent")
snapshot_globals("object/ColorPicker")

ADDON:ImportObject(OBJECT.Combobox)
ADDON:ImportObject(OBJECT.TextStyle)
Combobox = UIParent:CreateWidget("combobox", "combobox", "UIParent")
snapshot_globals("object/Combobox")

ADDON:ImportObject(OBJECT.CooldownButton)
ADDON:ImportObject(OBJECT.TextStyle)
CooldownButton = UIParent:CreateWidget("cooldownbutton", "cooldownbutton", "UIParent")
snapshot_globals("object/CooldownButton")

ADDON:ImportObject(OBJECT.CooldownConstantButton)
ADDON:ImportObject(OBJECT.TextStyle)
CooldownConstantButton = UIParent:CreateWidget("cooldownconstantbutton", "cooldownconstantbutton", "UIParent")
snapshot_globals("object/CooldownConstantButton")

ADDON:ImportObject(OBJECT.CooldownInventoryButton)
ADDON:ImportObject(OBJECT.TextStyle)
CooldownInventoryButton = UIParent:CreateWidget("cooldowninventorybutton", "cooldowninventorybutton", "UIParent")
snapshot_globals("object/CooldownInventoryButton")

ADDON:ImportObject(OBJECT.DamageDisplay)
ADDON:ImportObject(OBJECT.TextStyle)
DamageDisplay = UIParent:CreateWidget("damagedisplay", "damagedisplay", "UIParent")
snapshot_globals("object/DamageDisplay")

ADDON:ImportObject(OBJECT.DynamicList)
ADDON:ImportObject(OBJECT.TextStyle)
DynamicList = UIParent:CreateWidget("dynamiclist", "dynamiclist", "UIParent")
snapshot_globals("object/DynamicList")

ADDON:ImportObject(OBJECT.Editbox)
ADDON:ImportObject(OBJECT.TextStyle)
Editbox = UIParent:CreateWidget("editbox", "editbox", "UIParent")
snapshot_globals("object/Editbox")

ADDON:ImportObject(OBJECT.EditboxMultiline)
ADDON:ImportObject(OBJECT.TextStyle)
EditboxMultiline = UIParent:CreateWidget("editboxmultiline", "editboxmultiline", "UIParent")
snapshot_globals("object/EditboxMultiline")

ADDON:ImportObject(OBJECT.EmptyWidget)
ADDON:ImportObject(OBJECT.TextStyle)
EmptyWidget = UIParent:CreateWidget("emptywidget", "emptywidget", "UIParent")
snapshot_globals("object/EmptyWidget")

ADDON:ImportObject(OBJECT.Folder)
ADDON:ImportObject(OBJECT.TextStyle)
Folder = UIParent:CreateWidget("folder", "folder", "UIParent")
snapshot_globals("object/Folder")

ADDON:ImportObject(OBJECT.GameTooltip)
ADDON:ImportObject(OBJECT.TextStyle)
GameTooltip = UIParent:CreateWidget("gametooltip", "gametooltip", "UIParent")
snapshot_globals("object/GameTooltip")

ADDON:ImportObject(OBJECT.Grid)
ADDON:ImportObject(OBJECT.TextStyle)
Grid = UIParent:CreateWidget("grid", "grid", "UIParent")
snapshot_globals("object/Grid")

ADDON:ImportObject(OBJECT.Label)
ADDON:ImportObject(OBJECT.TextStyle)
Label = UIParent:CreateWidget("label", "label", "UIParent")
snapshot_globals("object/Label")

ADDON:ImportObject(OBJECT.Line)
ADDON:ImportObject(OBJECT.TextStyle)
Line = UIParent:CreateWidget("line", "line", "UIParent")
snapshot_globals("object/Line")

ADDON:ImportObject(OBJECT.ListCtrl)
ADDON:ImportObject(OBJECT.TextStyle)
ListCtrl = UIParent:CreateWidget("listctrl", "listctrl", "UIParent")
snapshot_globals("object/ListCtrl")

ADDON:ImportObject(OBJECT.Listbox)
ADDON:ImportObject(OBJECT.TextStyle)
Listbox = UIParent:CreateWidget("listbox", "listbox", "UIParent")
snapshot_globals("object/Listbox")

ADDON:ImportObject(OBJECT.MegaphoneChatEdit)
ADDON:ImportObject(OBJECT.TextStyle)
MegaphoneChatEdit = UIParent:CreateWidget("megaphonechatedit", "megaphonechatedit", "UIParent")
snapshot_globals("object/MegaphoneChatEdit")

ADDON:ImportObject(OBJECT.Message)
ADDON:ImportObject(OBJECT.TextStyle)
Message = UIParent:CreateWidget("message", "message", "UIParent")
snapshot_globals("object/Message")

ADDON:ImportObject(OBJECT.ModelView)
ADDON:ImportObject(OBJECT.TextStyle)
ModelView = UIParent:CreateWidget("modelview", "modelview", "UIParent")
snapshot_globals("object/ModelView")

ADDON:ImportObject(OBJECT.Pageable)
ADDON:ImportObject(OBJECT.TextStyle)
Pageable = UIParent:CreateWidget("pageable", "pageable", "UIParent")
snapshot_globals("object/Pageable")

ADDON:ImportObject(OBJECT.PaintColorPicker)
ADDON:ImportObject(OBJECT.TextStyle)
PaintColorPicker = UIParent:CreateWidget("paintcolorpicker", "paintcolorpicker", "UIParent")
snapshot_globals("object/PaintColorPicker")

ADDON:ImportObject(OBJECT.RadioGroup)
ADDON:ImportObject(OBJECT.TextStyle)
RadioGroup = UIParent:CreateWidget("radiogroup", "radiogroup", "UIParent")
snapshot_globals("object/RadioGroup")

ADDON:ImportObject(OBJECT.RoadMap)
ADDON:ImportObject(OBJECT.TextStyle)
RoadMap = UIParent:CreateWidget("roadmap", "roadmap", "UIParent")
snapshot_globals("object/RoadMap")

ADDON:ImportObject(OBJECT.Slider)
ADDON:ImportObject(OBJECT.TextStyle)
Slider = UIParent:CreateWidget("slider", "slider", "UIParent")
snapshot_globals("object/Slider")

ADDON:ImportObject(OBJECT.Slot)
ADDON:ImportObject(OBJECT.TextStyle)
Slot = UIParent:CreateWidget("slot", "slot", "UIParent")
snapshot_globals("object/Slot")

ADDON:ImportObject(OBJECT.StatusBar)
ADDON:ImportObject(OBJECT.TextStyle)
StatusBar = UIParent:CreateWidget("statusbar", "statusbar", "UIParent")
snapshot_globals("object/StatusBar")

ADDON:ImportObject(OBJECT.Tab)
ADDON:ImportObject(OBJECT.TextStyle)
Tab = UIParent:CreateWidget("tab", "tab", "UIParent")
snapshot_globals("object/Tab")

ADDON:ImportObject(OBJECT.Textbox)
ADDON:ImportObject(OBJECT.TextStyle)
Textbox = UIParent:CreateWidget("textbox", "textbox", "UIParent")
snapshot_globals("object/Textbox")

ADDON:ImportObject(OBJECT.UnitframeTooltip)
ADDON:ImportObject(OBJECT.TextStyle)
UnitframeTooltip = UIParent:CreateWidget("unitframetooltip", "unitframetooltip", "UIParent")
snapshot_globals("object/UnitframeTooltip")

ADDON:ImportObject(OBJECT.Webbrowser)
ADDON:ImportObject(OBJECT.TextStyle)
Webbrowser = UIParent:CreateWidget("webbrowser", "webbrowser", "UIParent")
snapshot_globals("object/Webbrowser")

ADDON:ImportObject(OBJECT.Window)
ADDON:ImportObject(OBJECT.TextStyle)
Window = UIParent:CreateWidget("window", "window", "UIParent")
snapshot_globals("object/Window")

ADDON:ImportObject(OBJECT.WorldMap)
ADDON:ImportObject(OBJECT.TextStyle)
WorldMap = UIParent:CreateWidget("worldmap", "worldmap", "UIParent")
snapshot_globals("object/WorldMap")

ADDON:ImportObject(OBJECT.X2Editbox)
ADDON:ImportObject(OBJECT.TextStyle)
X2Editbox = UIParent:CreateWidget("x2editbox", "x2editbox", "UIParent")
snapshot_globals("object/X2Editbox")

ADDON:ChatLog("Dumped globals.")
