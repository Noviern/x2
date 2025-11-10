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

local function clear_globals()
  for key in pairs(_G) do
    if not RESERVED_GLOBAL[key] then _G[key] = nil end
  end
end

local function dump_globals(name)
  local addon_global_vars = filter(_G)
  local output = dump(addon_global_vars)
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

  clear_globals()
end

dump_globals("dump/api/Addon")

for api_id, api_name in pairs(API) do
  ADDON:ImportAPI(api_id)
  dump_globals("dump/api/" .. api_name)
end

ADDON:ImportObject(OBJECT.Avi)
ADDON:ImportObject(OBJECT.TextStyle)
Avi = UIParent:CreateWidget("avi", "avi", "UIParent")
local widget = UIParent:CreateWidget("avi", "widget", "UIParent")
dump_globals("dump/objects/Avi")

ADDON:ImportObject(OBJECT.ColorDrawable)
ColorDrawable = widget:CreateColorDrawable(0, 0, 0, 0, "background")
dump_globals("dump/objects/ColorDrawable")

ADDON:ImportObject(OBJECT.Drawable)
-- Drawable = widget:CreateDrawable(0, 0, 0, 0, "background") -- This returns different types.
dump_globals("dump/objects/Drawable")

ADDON:ImportObject(OBJECT.EffectDrawable)
EffectDrawable = widget:CreateEffectDrawable("ui/font/image_text.dds", "background")
dump_globals("dump/objects/EffectDrawable")

ADDON:ImportObject(OBJECT.IconDrawable)
IconDrawable = widget:CreateIconDrawable("background")
dump_globals("dump/objects/IconDrawable")

ADDON:ImportObject(OBJECT.ImageDrawable)
ImageDrawable = widget:CreateImageDrawable("ui/font/image_text.dds", "background")
dump_globals("dump/objects/ImageDrawable")

ADDON:ImportObject(OBJECT.NinePartDrawable)
NinePartDrawable = widget:CreateNinePartDrawable("ui/common/hud.dds", "background")
dump_globals("dump/objects/NinePartDrawable")

ADDON:ImportObject(OBJECT.TextDrawable)
TextDrawable = widget:CreateTextDrawable("font_main", 13, "background")
dump_globals("dump/objects/TextDrawable")

ADDON:ImportObject(OBJECT.TextureDrawable)
-- TextureDrawable = widget:CreateTextureDrawable() -- This doesn't exist.
dump_globals("dump/objects/TextureDrawable")

ADDON:ImportObject(OBJECT.ThreeColorDrawable)
ThreeColorDrawable = widget:CreateThreeColorDrawable(500, 500, "background")
dump_globals("dump/objects/ThreeColorDrawable")

ADDON:ImportObject(OBJECT.ThreePartDrawable)
ThreePartDrawable = widget:CreateThreePartDrawable("", "background")
dump_globals("dump/objects/ThreePartDrawable")


ADDON:ImportObject(OBJECT.Button)
ADDON:ImportObject(OBJECT.TextStyle)
Button = UIParent:CreateWidget("button", "button", "UIParent")
dump_globals("dump/objects/Button")

ADDON:ImportObject(OBJECT.ChatWindow)
ADDON:ImportObject(OBJECT.TextStyle)
ChatWindow = UIParent:CreateWidget("chatwindow", "chatwindow", "UIParent")
dump_globals("dump/objects/ChatWindow")

ADDON:ImportObject(OBJECT.CheckButton)
ADDON:ImportObject(OBJECT.TextStyle)
CheckButton = UIParent:CreateWidget("checkbutton", "checkbutton", "UIParent")
dump_globals("dump/objects/CheckButton")

ADDON:ImportObject(OBJECT.CircleDiagram)
ADDON:ImportObject(OBJECT.TextStyle)
CircleDiagram = UIParent:CreateWidget("circlediagram", "circlediagram", "UIParent")
dump_globals("dump/objects/CircleDiagram")

ADDON:ImportObject(OBJECT.ColorPicker)
ADDON:ImportObject(OBJECT.TextStyle)
ColorPicker = UIParent:CreateWidget("colorpicker", "colorpicker", "UIParent")
dump_globals("dump/objects/ColorPicker")

ADDON:ImportObject(OBJECT.Combobox)
ADDON:ImportObject(OBJECT.TextStyle)
Combobox = UIParent:CreateWidget("combobox", "combobox", "UIParent")
dump_globals("dump/objects/Combobox")

ADDON:ImportObject(OBJECT.CooldownButton)
ADDON:ImportObject(OBJECT.TextStyle)
CooldownButton = UIParent:CreateWidget("cooldownbutton", "cooldownbutton", "UIParent")
dump_globals("dump/objects/CooldownButton")

ADDON:ImportObject(OBJECT.CooldownConstantButton)
ADDON:ImportObject(OBJECT.TextStyle)
CooldownConstantButton = UIParent:CreateWidget("cooldownconstantbutton", "cooldownconstantbutton", "UIParent")
dump_globals("dump/objects/CooldownConstantButton")

ADDON:ImportObject(OBJECT.CooldownInventoryButton)
ADDON:ImportObject(OBJECT.TextStyle)
CooldownInventoryButton = UIParent:CreateWidget("cooldowninventorybutton", "cooldowninventorybutton", "UIParent")
dump_globals("dump/objects/CooldownInventoryButton")

ADDON:ImportObject(OBJECT.DamageDisplay)
ADDON:ImportObject(OBJECT.TextStyle)
DamageDisplay = UIParent:CreateWidget("damagedisplay", "damagedisplay", "UIParent")
dump_globals("dump/objects/DamageDisplay")

ADDON:ImportObject(OBJECT.DynamicList)
ADDON:ImportObject(OBJECT.TextStyle)
DynamicList = UIParent:CreateWidget("dynamiclist", "dynamiclist", "UIParent")
dump_globals("dump/objects/DynamicList")

ADDON:ImportObject(OBJECT.Editbox)
ADDON:ImportObject(OBJECT.TextStyle)
Editbox = UIParent:CreateWidget("editbox", "editbox", "UIParent")
dump_globals("dump/objects/Editbox")

ADDON:ImportObject(OBJECT.EditboxMultiline)
ADDON:ImportObject(OBJECT.TextStyle)
EditboxMultiline = UIParent:CreateWidget("editboxmultiline", "editboxmultiline", "UIParent")
dump_globals("dump/objects/EditboxMultiline")

ADDON:ImportObject(OBJECT.EmptyWidget)
ADDON:ImportObject(OBJECT.TextStyle)
EmptyWidget = UIParent:CreateWidget("emptywidget", "emptywidget", "UIParent")
dump_globals("dump/objects/EmptyWidget")

ADDON:ImportObject(OBJECT.Folder)
ADDON:ImportObject(OBJECT.TextStyle)
Folder = UIParent:CreateWidget("folder", "folder", "UIParent")
dump_globals("dump/objects/Folder")

ADDON:ImportObject(OBJECT.GameTooltip)
ADDON:ImportObject(OBJECT.TextStyle)
GameTooltip = UIParent:CreateWidget("gametooltip", "gametooltip", "UIParent")
dump_globals("dump/objects/GameTooltip")

ADDON:ImportObject(OBJECT.Grid)
ADDON:ImportObject(OBJECT.TextStyle)
Grid = UIParent:CreateWidget("grid", "grid", "UIParent")
dump_globals("dump/objects/Grid")

ADDON:ImportObject(OBJECT.Label)
ADDON:ImportObject(OBJECT.TextStyle)
Label = UIParent:CreateWidget("label", "label", "UIParent")
dump_globals("dump/objects/Label")

ADDON:ImportObject(OBJECT.Line)
ADDON:ImportObject(OBJECT.TextStyle)
Line = UIParent:CreateWidget("line", "line", "UIParent")
dump_globals("dump/objects/Line")

ADDON:ImportObject(OBJECT.ListCtrl)
ADDON:ImportObject(OBJECT.TextStyle)
ListCtrl = UIParent:CreateWidget("listctrl", "listctrl", "UIParent")
dump_globals("dump/objects/ListCtrl")

ADDON:ImportObject(OBJECT.Listbox)
ADDON:ImportObject(OBJECT.TextStyle)
Listbox = UIParent:CreateWidget("listbox", "listbox", "UIParent")
dump_globals("dump/objects/Listbox")

ADDON:ImportObject(OBJECT.MegaphoneChatEdit)
ADDON:ImportObject(OBJECT.TextStyle)
MegaphoneChatEdit = UIParent:CreateWidget("megaphonechatedit", "megaphonechatedit", "UIParent")
dump_globals("dump/objects/MegaphoneChatEdit")

ADDON:ImportObject(OBJECT.Message)
ADDON:ImportObject(OBJECT.TextStyle)
Message = UIParent:CreateWidget("message", "message", "UIParent")
dump_globals("dump/objects/Message")

ADDON:ImportObject(OBJECT.ModelView)
ADDON:ImportObject(OBJECT.TextStyle)
ModelView = UIParent:CreateWidget("modelview", "modelview", "UIParent")
dump_globals("dump/objects/ModelView")

ADDON:ImportObject(OBJECT.Pageable)
ADDON:ImportObject(OBJECT.TextStyle)
Pageable = UIParent:CreateWidget("pageable", "pageable", "UIParent")
dump_globals("dump/objects/Pageable")

ADDON:ImportObject(OBJECT.PaintColorPicker)
ADDON:ImportObject(OBJECT.TextStyle)
PaintColorPicker = UIParent:CreateWidget("paintcolorpicker", "paintcolorpicker", "UIParent")
dump_globals("dump/objects/PaintColorPicker")

ADDON:ImportObject(OBJECT.RadioGroup)
ADDON:ImportObject(OBJECT.TextStyle)
RadioGroup = UIParent:CreateWidget("radiogroup", "radiogroup", "UIParent")
dump_globals("dump/objects/RadioGroup")

ADDON:ImportObject(OBJECT.RoadMap)
ADDON:ImportObject(OBJECT.TextStyle)
RoadMap = UIParent:CreateWidget("roadmap", "roadmap", "UIParent")
dump_globals("dump/objects/RoadMap")

ADDON:ImportObject(OBJECT.Slider)
ADDON:ImportObject(OBJECT.TextStyle)
Slider = UIParent:CreateWidget("slider", "slider", "UIParent")
dump_globals("dump/objects/Slider")

ADDON:ImportObject(OBJECT.Slot)
ADDON:ImportObject(OBJECT.TextStyle)
Slot = UIParent:CreateWidget("slot", "slot", "UIParent")
dump_globals("dump/objects/Slot")

ADDON:ImportObject(OBJECT.StatusBar)
ADDON:ImportObject(OBJECT.TextStyle)
StatusBar = UIParent:CreateWidget("statusbar", "statusbar", "UIParent")
dump_globals("dump/objects/StatusBar")

ADDON:ImportObject(OBJECT.Tab)
ADDON:ImportObject(OBJECT.TextStyle)
Tab = UIParent:CreateWidget("tab", "tab", "UIParent")
dump_globals("dump/objects/Tab")

ADDON:ImportObject(OBJECT.Textbox)
ADDON:ImportObject(OBJECT.TextStyle)
Textbox = UIParent:CreateWidget("textbox", "textbox", "UIParent")
dump_globals("dump/objects/Textbox")

ADDON:ImportObject(OBJECT.UnitframeTooltip)
ADDON:ImportObject(OBJECT.TextStyle)
UnitframeTooltip = UIParent:CreateWidget("unitframetooltip", "unitframetooltip", "UIParent")
dump_globals("dump/objects/UnitframeTooltip")

ADDON:ImportObject(OBJECT.Webbrowser)
ADDON:ImportObject(OBJECT.TextStyle)
Webbrowser = UIParent:CreateWidget("webbrowser", "webbrowser", "UIParent")
dump_globals("dump/objects/Webbrowser")

ADDON:ImportObject(OBJECT.Window)
ADDON:ImportObject(OBJECT.TextStyle)
Window = UIParent:CreateWidget("window", "window", "UIParent")
dump_globals("dump/objects/Window")

ADDON:ImportObject(OBJECT.WorldMap)
ADDON:ImportObject(OBJECT.TextStyle)
WorldMap = UIParent:CreateWidget("worldmap", "worldmap", "UIParent")
dump_globals("dump/objects/WorldMap")

ADDON:ImportObject(OBJECT.X2Editbox)
ADDON:ImportObject(OBJECT.TextStyle)
X2Editbox = UIParent:CreateWidget("x2editbox", "x2editbox", "UIParent")
dump_globals("dump/objects/X2Editbox")

ADDON:ChatLog("Dumped globals.")
