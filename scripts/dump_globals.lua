local API             = {
  [2]  = "X2Console",
  [3]  = "X2Ability",
  [4]  = "X2Action",
  [5]  = "X2Bag",
  [6]  = "X2BattleField",
  [7]  = "X2Camera",
  [8]  = "X2Chat",
  [9]  = "X2Craft",
  [10] = "X2Cursor",
  [11] = "X2Debug",
  [12] = "X2Decal",
  [13] = "X2Equipment",
  [14] = "X2Faction",
  [15] = "X2Friend",
  [16] = "X2Dominion",
  [17] = "X2Family",
  [18] = "X2Trial",
  [19] = "X2Hotkey",
  [20] = "X2House",
  [21] = "X2Input",
  [22] = "X2Interaction",
  [23] = "X2Item",
  [24] = "X2Locale",
  [25] = "X2LoginCharacter",
  [26] = "X2CustomizingUnit",
  [27] = "X2Loot",
  [28] = "X2Mail",
  [29] = "X2GoodsMail",
  [30] = "X2NameTag",
  [31] = "X2Option",
  [32] = "X2Player",
  [33] = "X2Quest",
  [34] = "X2SiegeWeapon",
  [35] = "X2Skill",
  [36] = "X2Sound",
  [37] = "X2Store",
  [38] = "X2Team",
  [39] = "X2Time",
  [40] = "X2Trade",
  [41] = "X2Tutorial",
  [42] = "X2Unit",
  [43] = "X2Util",
  [44] = "X2Warp",
  [45] = "X2World",
  [46] = "X2Ucc",
  [47] = "X2Bank",
  [48] = "X2Coffer",
  [49] = "X2GuildBank",
  [50] = "X2RenewItem",
  [51] = "X2Auction",
  [52] = "X2Mate",
  [53] = "X2BuffSkill",
  [54] = "X2Map",
  [55] = "X2DialogManager",
  [56] = "X2InGameShop",
  [57] = "X2UserMusic",
  [58] = "X2Book",
  [59] = "X2Nation",
  [60] = "X2Customizer",
  [61] = "X2Security",
  [62] = "X2ItemLookConverter",
  [63] = "X2Rank",
  [64] = "X2Helper",
  [65] = "X2PremiumService",
  [66] = "X2ItemEnchant",
  [67] = "X2Achievement",
  [68] = "X2Hero",
  [69] = "X2EventCenter",
  [70] = "X2ItemGacha",
  [71] = "X2ItemGuide",
  [72] = "X2BlessUthstin",
  [73] = "X2Resident",
  [74] = "X2HeirSkill",
  [75] = "X2EquipSlotReinforce",
  [76] = "X2OneAndOneChat",
  [77] = "X2Squad",
  [78] = "X2Dyeing",
  [79] = "X2SkillAlert",
  [80] = "X2Indun",
  [81] = "X2ArchePass",
  [82] = "X2Butler",
  [83] = "X2CombatResource",
  [84] = "X2Roster",
  [85] = "X2MiniScoreboard",
  [86] = "X2SurveyForm",
}

local OBJECT          = {
  Window                  = 0,
  Label                   = 1,
  Button                  = 2,
  Editbox                 = 3,
  EditboxMultiline        = 4,
  Listbox                 = 5,
  Drawable                = 6,
  ColorDrawable           = 7,
  NinePartDrawable        = 8,
  ThreePartDrawable       = 9,
  ImageDrawable           = 10,
  IconDrawable            = 11,
  TextDrawable            = 12,
  TextStyle               = 13,
  ThreeColorDrawable      = 14,
  EffectDrawable          = 15,
  Message                 = 16,
  StatusBar               = 17,
  GameTooltip             = 18,
  UnitframeTooltip        = 19,
  CooldownButton          = 20,
  CooldownInventoryButton = 21,
  CooldownConstantButton  = 22,
  CheckButton             = 23,
  Slider                  = 24,
  Pageable                = 25,
  WorldMap                = 26,
  RoadMap                 = 27,
  Grid                    = 28,
  ModelView               = 29,
  Webbrowser              = 30,
  CircleDiagram           = 31,
  ColorPicker             = 32,
  PaintColorPicker        = 33,
  Folder                  = 34,
  DamageDisplay           = 35,
  Tab                     = 36,
  SliderTab               = 37,
  ChatWindow              = 38,
  Textbox                 = 39,
  Combobox                = 40,
  ComboListButton         = 41,
  ChatMessage             = 42,
  ChatEdit                = 43,
  MegaphoneChatEdit       = 44,
  ListCtrl                = 45,
  EmptyWidget             = 46,
  Slot                    = 47,
  Line                    = 48,
  Root                    = 49,
  TextureDrawable         = 50,
  Webview                 = 51,
  Avi                     = 52,
  X2Editbox               = 53,
  DynamicList             = 54,
  RadioGroup              = 55,
}

local RESERVED_GLOBAL = {
  _aitick        = true,
  _frametime     = true,
  _G             = true,
  _time          = true,
  _VERSION       = true,
  arg            = true,
  arshift        = true,
  assert         = true,
  band           = true,
  bnot           = true,
  bor            = true,
  bxor           = true,
  collectgarbage = true,
  coroutine      = true,
  debug          = true,
  dofile         = true,
  error          = true,
  gcinfo         = true,
  getfenv        = true,
  getmetatable   = true,
  imod           = true,
  invalid        = true,
  io             = true,
  ipairs         = true,
  load           = true,
  loadfile       = true,
  loadstring     = true,
  lshift         = true,
  math           = true,
  module         = true,
  newproxy       = true,
  next           = true,
  os             = true,
  package        = true,
  pairs          = true,
  pcall          = true,
  print          = true,
  rawequal       = true,
  rawget         = true,
  rawset         = true,
  require        = true,
  rshift         = true,
  select         = true,
  setfenv        = true,
  setmetatable   = true,
  string         = true,
  table          = true,
  tonumber       = true,
  tostring       = true,
  type           = true,
  unpack         = true,
  xpcall         = true,

  dump           = true,
}

local ADDON           = ADDON
local UIParent        = UIParent

local function filter(tbl)
  local result = {}

  for k, v in pairs(tbl) do
    if RESERVED_GLOBAL[k] == nil then
      result[k] = v
    end
  end

  return result
end

local function clearGlobals()
  for key in pairs(_G) do
    if not RESERVED_GLOBAL[key] then _G[key] = nil end
  end
end

local function dumpGlobals(name)
  local addonGlobalVars = filter(_G)
  local output = dump(addonGlobalVars)
  local outputSize = #output

  local filePath = "../Documents/Addon/aaad/" .. name .. ".txt"
  local file = io.open(filePath, "rb")
  local currentFileSize = 0

  if file then
    currentFileSize = file:seek("end")
    file:close()
  end

  -- Check if this output is different in size indicating a change has happened.
  if outputSize > 0 and outputSize ~= currentFileSize then
    file = assert(io.open(filePath, "wb"))
    file:write(output)
    file:close()
    ADDON:ChatLog("Dumped " .. name)
  end

  clearGlobals()
end

dumpGlobals("dump/api/Addon")

for api_id, api_name in pairs(API) do
  ADDON:ImportAPI(api_id)
  dumpGlobals("dump/api/" .. api_name)
end

-- Once an object is imported it cant be imported again and even if all its
-- globals are erased any other object that relies on it will still have their
-- fields populated. If a object relies on another object that hasn't been
-- imported then its fields will be empty. For instance
-- Combobox.dropdown.downBtn relies on the Button object and if it has not been
-- imported the downBtn field will be empty. Because of this we need to import
-- objects in a very specific order to properly populate their fields.

-- Optional for widgets that can have their text styled.
-- TextStyle is unique, as it doesn't produce a widget but gives some widgets a
-- style field, so it'll need to be dumped separately.
ADDON:ImportObject(OBJECT.TextStyle)
local textStyleGlobalVars = filter(_G)
local filePath            = "../Documents/Addon/aaad/dump/objects/TextStyle.txt"
local file                = assert(io.open(filePath, "w"))
local output              = dump(textStyleGlobalVars)
clearGlobals()

-- Required by Window, PaintColorPicker, DynamicList
ADDON:ImportObject(OBJECT.EmptyWidget)
emptywidget = UIParent:CreateWidget("emptywidget", "emptywidget", "UIParent")
dumpGlobals("dump/objects/EmptyWidget")

-- Required by Tab, ListCtrl
ADDON:ImportObject(OBJECT.Window)
window = UIParent:CreateWidget("window", "window", "UIParent")
local widget = window

-- Dump TextStyle
local textstyle = widget.titleStyle
file:write(output, "\n", dump({ textstyle = textstyle }))
file:close()

-- Window has to be dumped after TextStyle
dumpGlobals("dump/objects/Window")

-- Required by Slot
ADDON:ImportObject(OBJECT.IconDrawable)
icondrawable = widget:CreateIconDrawable("background")
dumpGlobals("dump/objects/IconDrawable")

-- Required by Tab, ListCtrl, Combobox
ADDON:ImportObject(OBJECT.Button)
button = UIParent:CreateWidget("button", "button", "UIParent")
dumpGlobals("dump/objects/Button")

-- Required by ListCtrl
ADDON:ImportObject(OBJECT.Textbox)
textbox = UIParent:CreateWidget("textbox", "textbox", "UIParent")
dumpGlobals("dump/objects/Textbox")

-- Required by Combobox
ADDON:ImportObject(OBJECT.X2Editbox)
x2editbox = UIParent:CreateWidget("x2editbox", "x2editbox", "UIParent")
dumpGlobals("dump/objects/X2Editbox")

-- Required by RadioGroup
ADDON:ImportObject(OBJECT.CheckButton)
checkbutton = UIParent:CreateWidget("checkbutton", "checkbutton", "UIParent")
dumpGlobals("dump/objects/CheckButton")

--------------------------------------------------------------------------------

ADDON:ImportObject(OBJECT.Avi)
avi = UIParent:CreateWidget("avi", "avi", "UIParent")
dumpGlobals("dump/objects/Avi")

ADDON:ImportObject(OBJECT.ColorDrawable)
colordrawable = widget:CreateColorDrawable(0, 0, 0, 0, "background")
dumpGlobals("dump/objects/ColorDrawable")

ADDON:ImportObject(OBJECT.Drawable)
-- drawable = widget:CreateDrawable(0, 0, 0, 0, "background") -- This returns different types.
dumpGlobals("dump/objects/Drawable")

ADDON:ImportObject(OBJECT.EffectDrawable)
effectdrawable = widget:CreateEffectDrawable("ui/font/image_text.dds", "background")
dumpGlobals("dump/objects/EffectDrawable")

ADDON:ImportObject(OBJECT.ImageDrawable)
imagedrawable = widget:CreateImageDrawable("ui/font/image_text.dds", "background")
dumpGlobals("dump/objects/ImageDrawable")

ADDON:ImportObject(OBJECT.NinePartDrawable)
ninepartdrawable = widget:CreateNinePartDrawable("ui/common/hud.dds", "background")
dumpGlobals("dump/objects/NinePartDrawable")

ADDON:ImportObject(OBJECT.TextDrawable)
textdrawable = widget:CreateTextDrawable("font_main", 13, "background")
dumpGlobals("dump/objects/TextDrawable")

ADDON:ImportObject(OBJECT.TextureDrawable)
-- texturedrawable = widget:CreateTextureDrawable() -- This doesn't exist.
dumpGlobals("dump/objects/TextureDrawable")

ADDON:ImportObject(OBJECT.ThreeColorDrawable)
threecolordrawable = widget:CreateThreeColorDrawable(500, 500, "background")
dumpGlobals("dump/objects/ThreeColorDrawable")

ADDON:ImportObject(OBJECT.ThreePartDrawable)
threepartdrawable = widget:CreateThreePartDrawable("", "background")
dumpGlobals("dump/objects/ThreePartDrawable")

ADDON:ImportObject(OBJECT.ChatEdit)
chatedit = UIParent:CreateWidget("chatedit", "chatedit", "UIParent")
dumpGlobals("dump/objects/ChatEdit")

ADDON:ImportObject(OBJECT.ChatMessage)
chatmessage = UIParent:CreateWidget("chatmessage", "chatmessage", "UIParent")
dumpGlobals("dump/objects/ChatMessage")

ADDON:ImportObject(OBJECT.ChatWindow)
chatwindow = UIParent:CreateWidget("chatwindow", "chatwindow", "UIParent")
dumpGlobals("dump/objects/ChatWindow")

ADDON:ImportObject(OBJECT.CircleDiagram)
circlediagram = UIParent:CreateWidget("circlediagram", "circlediagram", "UIParent")
dumpGlobals("dump/objects/CircleDiagram")

ADDON:ImportObject(OBJECT.ColorPicker)
colorpicker = UIParent:CreateWidget("colorpicker", "colorpicker", "UIParent")
dumpGlobals("dump/objects/ColorPicker")

ADDON:ImportObject(OBJECT.ComboListButton)
combolistbutton = UIParent:CreateWidget("combolistbutton", "combolistbutton", "UIParent")
dumpGlobals("dump/objects/ComboListButton")

ADDON:ImportObject(OBJECT.Combobox)
combobox = UIParent:CreateWidget("combobox", "combobox", "UIParent")
dumpGlobals("dump/objects/Combobox")

ADDON:ImportObject(OBJECT.CooldownButton)
cooldownbutton = UIParent:CreateWidget("cooldownbutton", "cooldownbutton", "UIParent")
dumpGlobals("dump/objects/CooldownButton")

ADDON:ImportObject(OBJECT.CooldownConstantButton)
cooldownconstantbutton = UIParent:CreateWidget("cooldownconstantbutton", "cooldownconstantbutton", "UIParent")
dumpGlobals("dump/objects/CooldownConstantButton")

ADDON:ImportObject(OBJECT.CooldownInventoryButton)
cooldowninventorybutton = UIParent:CreateWidget("cooldowninventorybutton", "cooldowninventorybutton", "UIParent")
dumpGlobals("dump/objects/CooldownInventoryButton")

ADDON:ImportObject(OBJECT.DamageDisplay)
damagedisplay = UIParent:CreateWidget("damagedisplay", "damagedisplay", "UIParent")
dumpGlobals("dump/objects/DamageDisplay")

ADDON:ImportObject(OBJECT.DynamicList)
dynamiclist = UIParent:CreateWidget("dynamiclist", "dynamiclist", "UIParent")
dumpGlobals("dump/objects/DynamicList")

ADDON:ImportObject(OBJECT.Editbox)
editbox = UIParent:CreateWidget("editbox", "editbox", "UIParent")
dumpGlobals("dump/objects/Editbox")

ADDON:ImportObject(OBJECT.EditboxMultiline)
editboxmultiline = UIParent:CreateWidget("editboxmultiline", "editboxmultiline", "UIParent")
dumpGlobals("dump/objects/EditboxMultiline")

ADDON:ImportObject(OBJECT.Folder)
folder = UIParent:CreateWidget("folder", "folder", "UIParent")
dumpGlobals("dump/objects/Folder")

ADDON:ImportObject(OBJECT.GameTooltip)
gametooltip = UIParent:CreateWidget("gametooltip", "gametooltip", "UIParent")
dumpGlobals("dump/objects/GameTooltip")

ADDON:ImportObject(OBJECT.Grid)
grid = UIParent:CreateWidget("grid", "grid", "UIParent")
dumpGlobals("dump/objects/Grid")

ADDON:ImportObject(OBJECT.Label)
label = UIParent:CreateWidget("label", "label", "UIParent")
dumpGlobals("dump/objects/Label")

ADDON:ImportObject(OBJECT.Line)
line = UIParent:CreateWidget("line", "line", "UIParent")
dumpGlobals("dump/objects/Line")

ADDON:ImportObject(OBJECT.ListCtrl)
listctrl = UIParent:CreateWidget("listctrl", "listctrl", "UIParent")
dumpGlobals("dump/objects/ListCtrl")

ADDON:ImportObject(OBJECT.Listbox)
listbox = UIParent:CreateWidget("listbox", "listbox", "UIParent")
dumpGlobals("dump/objects/Listbox")

ADDON:ImportObject(OBJECT.MegaphoneChatEdit)
megaphonechatedit = UIParent:CreateWidget("megaphonechatedit", "megaphonechatedit", "UIParent")
dumpGlobals("dump/objects/MegaphoneChatEdit")

ADDON:ImportObject(OBJECT.Message)
message = UIParent:CreateWidget("message", "message", "UIParent")
dumpGlobals("dump/objects/Message")

ADDON:ImportObject(OBJECT.ModelView)
modelview = UIParent:CreateWidget("modelview", "modelview", "UIParent")
dumpGlobals("dump/objects/ModelView")

ADDON:ImportObject(OBJECT.Pageable)
pageable = UIParent:CreateWidget("pageable", "pageable", "UIParent")
dumpGlobals("dump/objects/Pageable")

ADDON:ImportObject(OBJECT.PaintColorPicker)
paintcolorpicker = UIParent:CreateWidget("paintcolorpicker", "paintcolorpicker", "UIParent")
dumpGlobals("dump/objects/PaintColorPicker")

ADDON:ImportObject(OBJECT.RadioGroup)
radiogroup = UIParent:CreateWidget("radiogroup", "radiogroup", "UIParent")
dumpGlobals("dump/objects/RadioGroup")

ADDON:ImportObject(OBJECT.RoadMap)
roadmap = UIParent:CreateWidget("roadmap", "roadmap", "UIParent")
dumpGlobals("dump/objects/RoadMap")

ADDON:ImportObject(OBJECT.Root)
root = UIParent:CreateWidget("root", "root", "UIParent")
dumpGlobals("dump/objects/Root")

ADDON:ImportObject(OBJECT.Slider)
slider = UIParent:CreateWidget("slider", "slider", "UIParent")
dumpGlobals("dump/objects/Slider")

ADDON:ImportObject(OBJECT.SliderTab)
slidertab = UIParent:CreateWidget("slidertab", "slidertab", "UIParent")
dumpGlobals("dump/objects/SliderTab")

ADDON:ImportObject(OBJECT.Slot)
slot = UIParent:CreateWidget("slot", "slot", "UIParent")
dumpGlobals("dump/objects/Slot")

ADDON:ImportObject(OBJECT.StatusBar)
statusbar = UIParent:CreateWidget("statusbar", "statusbar", "UIParent")
dumpGlobals("dump/objects/StatusBar")

ADDON:ImportObject(OBJECT.Tab)
tab = UIParent:CreateWidget("tab", "tab", "UIParent")
dumpGlobals("dump/objects/Tab")

ADDON:ImportObject(OBJECT.UnitframeTooltip)
unitframetooltip = UIParent:CreateWidget("unitframetooltip", "unitframetooltip", "UIParent")
dumpGlobals("dump/objects/UnitframeTooltip")

ADDON:ImportObject(OBJECT.Webbrowser)
webbrowser = UIParent:CreateWidget("webbrowser", "webbrowser", "UIParent")
dumpGlobals("dump/objects/Webbrowser")

ADDON:ImportObject(OBJECT.Webview)
webview = UIParent:CreateWidget("webview", "webview", "UIParent")
dumpGlobals("dump/objects/Webview")

ADDON:ImportObject(OBJECT.WorldMap)
worldmap = UIParent:CreateWidget("worldmap", "worldmap", "UIParent")
dumpGlobals("dump/objects/WorldMap")

ADDON:ChatLog("Dumped globals.")
