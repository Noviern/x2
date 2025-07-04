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
  X2Roster = 84, X2MiniScoreboard = 85, X2SurveyForm =  86,
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
  DynamicList = 54, Radio = 55,
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
  tostring = true, type = true, unpack = true, xpcall = true,
}

local ADDON = ADDON
local UIParent = UIParent

local function dump_globals(tbl, depth, seen, path)
  depth = depth or 0
  seen = seen or {}
  path = path or ""

  local global_vars = {}
  local global_funcs = {}
  local indent = string.rep("  ", depth)
  local tblref = tostring(tbl)

  seen[tblref] = true

  for k, v in pairs(tbl) do
    if not RESERVED_GLOBAL[k] then
      local vt = type(v)
      local line

      if vt == "function" then
        if path == "" then
          line = string.format("function %s() end", k)
        else
          line = string.format("function %s:%s() end", path, k)
        end

        table.insert(global_funcs, line)
      else
        local val = "{}"

        if vt == "table" then
          if next(v) ~= nil then
            local vref = tostring(v)
            if seen[vref] then
              val = string.format('"<circular: %s>"', path)
            else
              local new_depth = depth + 1
              local new_path = path == "" and k or path .. "." .. k
              local sub_global_vars, sub_global_funcs = dump_globals(v, new_depth, seen, new_path)

              if #sub_global_vars > 0 then
                val = string.format("{\n%s,\n%s}", table.concat(sub_global_vars, ",\n"), indent)
              end

              for _, func in ipairs(sub_global_funcs) do
                table.insert(global_funcs, func)
              end
            end
          end
        elseif vt == "boolean" or vt == "number" then
          val = tostring(v)
        elseif vt == "userdata" then
          val = string.format('"<%s>"', tostring(v))
        else
          val = string.format("%q", tostring(v))
        end

        line = string.format("%s%s = %s", indent, k, val)

        table.insert(global_vars, line)
      end
    end
  end

  seen[tblref] = nil

  table.sort(global_vars)
  table.sort(global_funcs)

  return global_vars, global_funcs
end

local function clear_globals()
  for key in pairs(_G) do
    if not RESERVED_GLOBAL[key] then _G[key] = nil end
  end
end

local function snapshot_globals(name)
  local global_vars, global_funcs = dump_globals(_G)
  local require_comment = " -- " .. name
  local var_lines = table.concat(global_vars, require_comment .. "\n") .. require_comment
  local func_lines = table.concat(global_funcs, "\n\n")

  local filePath = "../Documents/Addon/aad/" .. name .. ".txt"
  local file = assert(io.open(filePath, "w"))

  file:write(var_lines)

  if #func_lines > 0 then
    file:write("\n\n" .. func_lines)
  end

  file:close()

  clear_globals()
end

snapshot_globals("api/Addon")

for api_name, api_id in pairs(API) do
  ADDON:ImportAPI(api_id)
  snapshot_globals("api/".. api_name)
end

for object_name, object_id in pairs(OBJECT) do
  ADDON:ImportObject(object_id)
  snapshot_globals("object/".. object_name)
end