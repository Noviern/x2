local OBJECT = {
  Window = 0,
  Label = 1,
  Button = 2,
  Editbox = 3,
  EditboxMultiline = 4,
  Listbox = 5,
  Drawable = 6, -- No widget type. No drawable type. This should import Drawable but instead it does nothing? Drawable is imported under NinePartDrawable?
  ColorDrawable = 7, -- No widget type. ColorDrawable.
  NinePartDrawable = 8, -- No widget type. NinePartDrawable.
  ThreePartDrawable = 9, -- No widget type. ThreePartDrawable.
  ImageDrawable = 10, -- No widget type. ImageDrawable.
  IconDrawable = 11, -- No widget type. IconDrawable.
  TextDrawable = 12, -- No widget type. TextDrawable.
  TextStyle = 13,  -- No widget type but attaches to `widget.style`.
  ThreeColorDrawable = 14, -- No widget type. ThreeColorDrawable.
  EffectDrawable = 15, -- No widget type. EffectDrawable.
  Message = 16,
  StatusBar = 17,
  GameTooltip = 18,
  UnitframeTooltip = 19,
  CooldownButton = 20,
  CooldownInventoryButton = 21,
  CooldownConstantButton = 22,
  CheckButton = 23,
  Slider = 24,
  Pageable = 25,
  WorldMap = 26,
  RoadMap = 27,
  Grid = 28,
  ModelView = 29,
  Webbrowser = 30,
  CircleDiagram = 31,
  ColorPicker = 32,
  PaintColorPicker = 33,
  Folder = 34,
  DamageDisplay = 35,
  Tab = 36,
  SliderTab = 37, -- No widget type.
  ChatTab = 38, -- Should be renamed.
  Textbox = 39,
  Combobox = 40,
  ComboListButton = 41, -- No widget type.
  ChatMessage = 42, -- No widget type.
  ChatEdit = 43, -- No widget type.
  MegaphoneChatEdit = 44,
  ListCtrl = 45,
  EmptyWidget = 46,
  Slot = 47,
  Line = 48,
  Root = 49, -- No widget type.
  TextureDrawable = 50, -- No widget type.
  Webview = 51, -- No widget type.
  Avi = 52,
  X2Editbox = 53,
  DynamicList = 54,
  RadioGroup = 55,
}

for object_name, object_id in pairs(OBJECT) do
  ADDON:ImportObject(object_id)
end

local function dump_object(widget, widgetName)
  ADDON:ChatLog("Dumping: " .. widgetName)
  
  local filePath = "../Documents/Addon/aad/object_dump/" .. widgetName .. ".txt"
  local file = assert(io.open(filePath, "w"))
  local method = {}

  file:write(dump(widget) .. "\n")

  method.SetAviName = type(widget.SetAviName)
  file:write("Avi SetAviName " .. method.SetAviName .. "\n")

  method.SetAviNum = type(widget.SetAviNum)
  file:write("Avi SetAviNum " .. method.SetAviNum .. "\n")

  method.CreateStateDrawable = type(widget.CreateStateDrawable)
  file:write("Button CreateStateDrawable " .. method.CreateStateDrawable .. "\n")

  method.DeregisterForClicks = type(widget.DeregisterForClicks)
  file:write("Button DeregisterForClicks " .. method.DeregisterForClicks .. "\n")

  method.GetButtonState = type(widget.GetButtonState)
  file:write("Button GetButtonState " .. method.GetButtonState .. "\n")

  method.GetDisabledBackground = type(widget.GetDisabledBackground)
  file:write("Button GetDisabledBackground " .. method.GetDisabledBackground .. "\n")

  method.GetDisabledColor = type(widget.GetDisabledColor)
  file:write("Button GetDisabledColor " .. method.GetDisabledColor .. "\n")

  method.GetHighlightBackground = type(widget.GetHighlightBackground)
  file:write("Button GetHighlightBackground " .. method.GetHighlightBackground .. "\n")

  method.GetHighlightColor = type(widget.GetHighlightColor)
  file:write("Button GetHighlightColor " .. method.GetHighlightColor .. "\n")

  method.GetNormalBackground = type(widget.GetNormalBackground)
  file:write("Button GetNormalBackground " .. method.GetNormalBackground .. "\n")

  method.GetNormalColor = type(widget.GetNormalColor)
  file:write("Button GetNormalColor " .. method.GetNormalColor .. "\n")

  method.GetPushedBackground = type(widget.GetPushedBackground)
  file:write("Button GetPushedBackground " .. method.GetPushedBackground .. "\n")

  method.GetPushedColor = type(widget.GetPushedColor)
  file:write("Button GetPushedColor " .. method.GetPushedColor .. "\n")

  method.RegisterForClicks = type(widget.RegisterForClicks)
  file:write("Button RegisterForClicks " .. method.RegisterForClicks .. "\n")

  method.SetAutoClipChar = type(widget.SetAutoClipChar)
  file:write("Button SetAutoClipChar " .. method.SetAutoClipChar .. "\n")

  method.SetAutoResize = type(widget.SetAutoResize)
  file:write("Button SetAutoResize " .. method.SetAutoResize .. "\n")

  method.SetButtonState = type(widget.SetButtonState)
  file:write("Button SetButtonState " .. method.SetButtonState .. "\n")

  method.SetDisabledBackground = type(widget.SetDisabledBackground)
  file:write("Button SetDisabledBackground " .. method.SetDisabledBackground .. "\n")

  method.SetDisabledColor = type(widget.SetDisabledColor)
  file:write("Button SetDisabledColor " .. method.SetDisabledColor .. "\n")

  method.SetDisabledTextColor = type(widget.SetDisabledTextColor)
  file:write("Button SetDisabledTextColor " .. method.SetDisabledTextColor .. "\n")

  method.SetFocus = type(widget.SetFocus)
  file:write("Button SetFocus " .. method.SetFocus .. "\n")

  method.SetHighlightBackground = type(widget.SetHighlightBackground)
  file:write("Button SetHighlightBackground " .. method.SetHighlightBackground .. "\n")

  method.SetHighlightColor = type(widget.SetHighlightColor)
  file:write("Button SetHighlightColor " .. method.SetHighlightColor .. "\n")

  method.SetHighlightTextColor = type(widget.SetHighlightTextColor)
  file:write("Button SetHighlightTextColor " .. method.SetHighlightTextColor .. "\n")

  method.SetInset = type(widget.SetInset)
  file:write("Button SetInset " .. method.SetInset .. "\n")

  method.SetNormalBackground = type(widget.SetNormalBackground)
  file:write("Button SetNormalBackground " .. method.SetNormalBackground .. "\n")

  method.SetNormalColor = type(widget.SetNormalColor)
  file:write("Button SetNormalColor " .. method.SetNormalColor .. "\n")

  method.SetPushedBackground = type(widget.SetPushedBackground)
  file:write("Button SetPushedBackground " .. method.SetPushedBackground .. "\n")

  method.SetPushedColor = type(widget.SetPushedColor)
  file:write("Button SetPushedColor " .. method.SetPushedColor .. "\n")

  method.SetPushedTextColor = type(widget.SetPushedTextColor)
  file:write("Button SetPushedTextColor " .. method.SetPushedTextColor .. "\n")

  method.SetStyle = type(widget.SetStyle)
  file:write("Button SetStyle " .. method.SetStyle .. "\n")

  method.SetTextColor = type(widget.SetTextColor)
  file:write("Button SetTextColor " .. method.SetTextColor .. "\n")

  method.SetChannel = type(widget.SetChannel)
  file:write("ChatEdit SetChannel " .. method.SetChannel .. "\n")

  method.SetChatTypeColor = type(widget.SetChatTypeColor)
  file:write("ChatEdit SetChatTypeColor " .. method.SetChatTypeColor .. "\n")

  method.BackupString = type(widget.BackupString)
  file:write("ChatMessage BackupString " .. method.BackupString .. "\n")

  method.CleanupBackupString = type(widget.CleanupBackupString)
  file:write("ChatMessage CleanupBackupString " .. method.CleanupBackupString .. "\n")

  method.GetDownButton = type(widget.GetDownButton)
  file:write("ChatMessage GetDownButton " .. method.GetDownButton .. "\n")

  method.GetDownToBottomButton = type(widget.GetDownToBottomButton)
  file:write("ChatMessage GetDownToBottomButton " .. method.GetDownToBottomButton .. "\n")

  method.GetSlider = type(widget.GetSlider)
  file:write("ChatMessage GetSlider " .. method.GetSlider .. "\n")

  method.GetUpButton = type(widget.GetUpButton)
  file:write("ChatMessage GetUpButton " .. method.GetUpButton .. "\n")

  method.MouseWheelDown = type(widget.MouseWheelDown)
  file:write("ChatMessage MouseWheelDown " .. method.MouseWheelDown .. "\n")

  method.MouseWheelUp = type(widget.MouseWheelUp)
  file:write("ChatMessage MouseWheelUp " .. method.MouseWheelUp .. "\n")

  method.GetChatEdit = type(widget.GetChatEdit)
  file:write("ChatTabWindow GetChatEdit " .. method.GetChatEdit .. "\n")

  method.GetChatMethodSelector = type(widget.GetChatMethodSelector)
  file:write("ChatTabWindow GetChatMethodSelector " .. method.GetChatMethodSelector .. "\n")

  method.GetImeToggleButton = type(widget.GetImeToggleButton)
  file:write("ChatTabWindow GetImeToggleButton " .. method.GetImeToggleButton .. "\n")

  method.GetUrlButton = type(widget.GetUrlButton)
  file:write("ChatTabWindow GetUrlButton " .. method.GetUrlButton .. "\n")

  method.SetChatWindowId = type(widget.SetChatWindowId)
  file:write("ChatTabWindow SetChatWindowId " .. method.SetChatWindowId .. "\n")

  method.GetChecked = type(widget.GetChecked)
  file:write("Checkbutton GetChecked " .. method.GetChecked .. "\n")

  method.SetChecked = type(widget.SetChecked)
  file:write("Checkbutton SetChecked " .. method.SetChecked .. "\n")

  method.SetCheckedBackground = type(widget.SetCheckedBackground)
  file:write("Checkbutton SetCheckedBackground " .. method.SetCheckedBackground .. "\n")

  method.SetDisabledCheckedBackground = type(widget.SetDisabledCheckedBackground)
  file:write("Checkbutton SetDisabledCheckedBackground " .. method.SetDisabledCheckedBackground .. "\n")

  method.AddPoint = type(widget.AddPoint)
  file:write("Circlediagram AddPoint " .. method.AddPoint .. "\n")

  method.AddPointsByAngle = type(widget.AddPointsByAngle)
  file:write("Circlediagram AddPointsByAngle " .. method.AddPointsByAngle .. "\n")

  method.ClearPoints = type(widget.ClearPoints)
  file:write("Circlediagram ClearPoints " .. method.ClearPoints .. "\n")

  method.GetCenterOffset = type(widget.GetCenterOffset)
  file:write("Circlediagram GetCenterOffset " .. method.GetCenterOffset .. "\n")

  method.GetPointOffset = type(widget.GetPointOffset)
  file:write("Circlediagram GetPointOffset " .. method.GetPointOffset .. "\n")

  method.SetDiagramColor = type(widget.SetDiagramColor)
  file:write("Circlediagram SetDiagramColor " .. method.SetDiagramColor .. "\n")

  method.SetLineThickness = type(widget.SetLineThickness)
  file:write("Circlediagram SetLineThickness " .. method.SetLineThickness .. "\n")

  method.SetMaxValue = type(widget.SetMaxValue)
  file:write("Circlediagram SetMaxValue " .. method.SetMaxValue .. "\n")

  method.SetPointValue = type(widget.SetPointValue)
  file:write("Circlediagram SetPointValue " .. method.SetPointValue .. "\n")

  method.GetColor = type(widget.GetColor)
  file:write("Colorpicker GetColor " .. method.GetColor .. "\n")

  method.GetPoint = type(widget.GetPoint)
  file:write("Colorpicker GetPoint " .. method.GetPoint .. "\n")

  method.SetPaletteImage = type(widget.SetPaletteImage)
  file:write("Colorpicker SetPaletteImage " .. method.SetPaletteImage .. "\n")

  method.Insert = type(widget.Insert)
  file:write("Combobox Insert " .. method.Insert .. "\n")

  method.PauseAutocomplete = type(widget.PauseAutocomplete)
  file:write("Combobox PauseAutocomplete " .. method.PauseAutocomplete .. "\n")

  method.SetAutocomplete = type(widget.SetAutocomplete)
  file:write("Combobox SetAutocomplete " .. method.SetAutocomplete .. "\n")

  method.SetDropdownVisibleLimit = type(widget.SetDropdownVisibleLimit)
  file:write("Combobox SetDropdownVisibleLimit " .. method.SetDropdownVisibleLimit .. "\n")

  method.SetEditable = type(widget.SetEditable)
  file:write("Combobox SetEditable " .. method.SetEditable .. "\n")

  method.SetCoolDown = type(widget.SetCoolDown)
  file:write("Cooldown SetCoolDown " .. method.SetCoolDown .. "\n")

  method.SetCoolDownMask = type(widget.SetCoolDownMask)
  file:write("Cooldown SetCoolDownMask " .. method.SetCoolDownMask .. "\n")

  method.SetBagItemSlot = type(widget.SetBagItemSlot)
  file:write("CooldownInventory SetBagItemSlot " .. method.SetBagItemSlot .. "\n")

  method.SetBankItemSlot = type(widget.SetBankItemSlot)
  file:write("CooldownInventory SetBankItemSlot " .. method.SetBankItemSlot .. "\n")

  method.SetCofferItemSlot = type(widget.SetCofferItemSlot)
  file:write("CooldownInventory SetCofferItemSlot " .. method.SetCofferItemSlot .. "\n")

  method.SetGuildBankItemSlot = type(widget.SetGuildBankItemSlot)
  file:write("CooldownInventory SetGuildBankItemSlot " .. method.SetGuildBankItemSlot .. "\n")

  method.SetItem = type(widget.SetItem)
  file:write("CooldownConstant SetItem " .. method.SetItem .. "\n")

  method.SetItemSlot = type(widget.SetItemSlot)
  file:write("CooldownConstant SetItemSlot " .. method.SetItemSlot .. "\n")

  method.SetSkill = type(widget.SetSkill)
  file:write("CooldownConstant SetSkill " .. method.SetSkill .. "\n")

  method.Animation = type(widget.Animation)
  file:write("Damagedisplay Animation " .. method.Animation .. "\n")

  method.GetActualDrawn = type(widget.GetActualDrawn)
  file:write("Damagedisplay GetActualDrawn " .. method.GetActualDrawn .. "\n")

  method.GetInset = type(widget.GetInset)
  file:write("Damagedisplay GetInset " .. method.GetInset .. "\n")

  method.SetAnimFrameInfo = type(widget.SetAnimFrameInfo)
  file:write("Damagedisplay SetAnimFrameInfo " .. method.SetAnimFrameInfo .. "\n")

  method.SetInitPos = type(widget.SetInitPos)
  file:write("Damagedisplay SetInitPos " .. method.SetInitPos .. "\n")

  method.SetInset = type(widget.SetInset)
  file:write("Damagedisplay SetInset " .. method.SetInset .. "\n")

  method.SetPositionCalculationType = type(widget.SetPositionCalculationType)
  file:write("Damagedisplay SetPositionCalculationType " .. method.SetPositionCalculationType .. "\n")

  method.SetUnitId = type(widget.SetUnitId)
  file:write("Damagedisplay SetUnitId " .. method.SetUnitId .. "\n")

  method.AddTexture = type(widget.AddTexture)
  file:write("Drawable AddTexture " .. method.AddTexture .. "\n")

  method.AddTextureWithInfo = type(widget.AddTextureWithInfo)
  file:write("Drawable AddTextureWithInfo " .. method.AddTextureWithInfo .. "\n")

  method.Animation = type(widget.Animation)
  file:write("Drawable Animation " .. method.Animation .. "\n")

  method.ChangeColor1 = type(widget.ChangeColor1)
  file:write("Drawable ChangeColor1 " .. method.ChangeColor1 .. "\n")

  method.ChangeColor2 = type(widget.ChangeColor2)
  file:write("Drawable ChangeColor2 " .. method.ChangeColor2 .. "\n")

  method.ChangeColor3 = type(widget.ChangeColor3)
  file:write("Drawable ChangeColor3 " .. method.ChangeColor3 .. "\n")

  method.ChangeImageFile = type(widget.ChangeImageFile)
  file:write("Drawable ChangeImageFile " .. method.ChangeImageFile .. "\n")

  method.ChangeUserImageFile = type(widget.ChangeUserImageFile)
  file:write("Drawable ChangeUserImageFile " .. method.ChangeUserImageFile .. "\n")

  method.ClearAllTextures = type(widget.ClearAllTextures)
  file:write("Drawable ClearAllTextures " .. method.ClearAllTextures .. "\n")

  method.ClearEffect = type(widget.ClearEffect)
  file:write("Drawable ClearEffect " .. method.ClearEffect .. "\n")

  method.ClearMoveEffect = type(widget.ClearMoveEffect)
  file:write("Drawable ClearMoveEffect " .. method.ClearMoveEffect .. "\n")

  method.GetColor = type(widget.GetColor)
  file:write("Drawable GetColor " .. method.GetColor .. "\n")

  method.GetEffectPhaseCount = type(widget.GetEffectPhaseCount)
  file:write("Drawable GetEffectPhaseCount " .. method.GetEffectPhaseCount .. "\n")

  method.GetEffectPhaseProperties = type(widget.GetEffectPhaseProperties)
  file:write("Drawable GetEffectPhaseProperties " .. method.GetEffectPhaseProperties .. "\n")

  method.GetMoveEffectPhaseCount = type(widget.GetMoveEffectPhaseCount)
  file:write("Drawable GetMoveEffectPhaseCount " .. method.GetMoveEffectPhaseCount .. "\n")

  method.GetMoveEffectPhaseProperties = type(widget.GetMoveEffectPhaseProperties)
  file:write("Drawable GetMoveEffectPhaseProperties " .. method.GetMoveEffectPhaseProperties .. "\n")

  method.GetTextureSize = type(widget.GetTextureSize)
  file:write("Drawable GetTextureSize " .. method.GetTextureSize .. "\n")

  method.IsGrayTexture = type(widget.IsGrayTexture)
  file:write("Drawable IsGrayTexture " .. method.IsGrayTexture .. "\n")

  method.IsRunning = type(widget.IsRunning)
  file:write("Drawable IsRunning " .. method.IsRunning .. "\n")
  
  method.IsVisible = type(widget.IsVisible)
  file:write("Drawable IsVisible " .. method.IsVisible .. "\n")

  method.IsWhiteTexture = type(widget.IsWhiteTexture)
  file:write("Drawable IsWhiteTexture " .. method.IsWhiteTexture .. "\n")

  method.SetAlign = type(widget.SetAlign)
  file:write("Drawable SetAlign " .. method.SetAlign .. "\n")

  method.SetAnimFrameInfo = type(widget.SetAnimFrameInfo)
  file:write("Drawable SetAnimFrameInfo " .. method.SetAnimFrameInfo .. "\n")

  method.SetColor = type(widget.SetColor)
  file:write("Drawable SetColor " .. method.SetColor .. "\n")

  method.SetCoords = type(widget.SetCoords)
  file:write("Drawable SetCoords " .. method.SetCoords .. "\n")

  method.SetEffectClip = type(widget.SetEffectClip)
  file:write("Drawable SetEffectClip " .. method.SetEffectClip .. "\n")

  method.SetEffectFinalColor = type(widget.SetEffectFinalColor)
  file:write("Drawable SetEffectFinalColor " .. method.SetEffectFinalColor .. "\n")

  method.SetEffectInitialColor = type(widget.SetEffectInitialColor)
  file:write("Drawable SetEffectInitialColor " .. method.SetEffectInitialColor .. "\n")

  method.SetEffectInterval = type(widget.SetEffectInterval)
  file:write("Drawable SetEffectInterval " .. method.SetEffectInterval .. "\n")

  method.SetEffectPhaseProperties = type(widget.SetEffectPhaseProperties)
  file:write("Drawable SetEffectPhaseProperties " .. method.SetEffectPhaseProperties .. "\n")

  method.SetEffectPriority = type(widget.SetEffectPriority)
  file:write("Drawable SetEffectPriority " .. method.SetEffectPriority .. "\n")

  method.SetEffectRotate = type(widget.SetEffectRotate)
  file:write("Drawable SetEffectRotate " .. method.SetEffectRotate .. "\n")

  method.SetEffectScale = type(widget.SetEffectScale)
  file:write("Drawable SetEffectScale " .. method.SetEffectScale .. "\n")

  method.SetEffectScaleAxis = type(widget.SetEffectScaleAxis)
  file:write("Drawable SetEffectScaleAxis " .. method.SetEffectScaleAxis .. "\n")

  method.SetInset = type(widget.SetInset)
  file:write("Drawable SetInset " .. method.SetInset .. "\n")

  method.SetInternalDrawType = type(widget.SetInternalDrawType)
  file:write("Drawable SetInternalDrawType " .. method.SetInternalDrawType .. "\n")

  method.SetInterval = type(widget.SetInterval)
  file:write("Drawable SetInterval " .. method.SetInterval .. "\n")

  method.SetLText = type(widget.SetLText)
  file:write("Drawable SetLText " .. method.SetLText .. "\n")

  method.SetMoveEffectCircle = type(widget.SetMoveEffectCircle)
  file:write("Drawable SetMoveEffectCircle " .. method.SetMoveEffectCircle .. "\n")

  method.SetMoveEffectEdge = type(widget.SetMoveEffectEdge)
  file:write("Drawable SetMoveEffectEdge " .. method.SetMoveEffectEdge .. "\n")

  method.SetMoveEffectInterval = type(widget.SetMoveEffectInterval)
  file:write("Drawable SetMoveEffectInterval " .. method.SetMoveEffectInterval .. "\n")

  method.SetMoveEffectPhaseProperties = type(widget.SetMoveEffectPhaseProperties)
  file:write("Drawable SetMoveEffectPhaseProperties " .. method.SetMoveEffectPhaseProperties .. "\n")

  method.SetMoveEffectType = type(widget.SetMoveEffectType)
  file:write("Drawable SetMoveEffectType " .. method.SetMoveEffectType .. "\n")

  method.SetMoveInterval = type(widget.SetMoveInterval)
  file:write("Drawable SetMoveInterval " .. method.SetMoveInterval .. "\n")

  method.SetMoveRepeatCount = type(widget.SetMoveRepeatCount)
  file:write("Drawable SetMoveRepeatCount " .. method.SetMoveRepeatCount .. "\n")

  method.SetMoveRotate = type(widget.SetMoveRotate)
  file:write("Drawable SetMoveRotate " .. method.SetMoveRotate .. "\n")

  method.SetOutline = type(widget.SetOutline)
  file:write("Drawable SetOutline " .. method.SetOutline .. "\n")

  method.SetOutlineInvisiblePart = type(widget.SetOutlineInvisiblePart)
  file:write("Drawable SetOutlineInvisiblePart " .. method.SetOutlineInvisiblePart .. "\n")

  method.SetRepeatCount = type(widget.SetRepeatCount)
  file:write("Drawable SetRepeatCount " .. method.SetRepeatCount .. "\n")

  method.SetRotation = type(widget.SetRotation)
  file:write("Drawable SetRotation " .. method.SetRotation .. "\n")

  method.SetShadow = type(widget.SetShadow)
  file:write("Drawable SetShadow " .. method.SetShadow .. "\n")

  method.SetSnap = type(widget.SetSnap)
  file:write("Drawable SetSnap " .. method.SetSnap .. "\n")

  method.SetSRGB = type(widget.SetSRGB)
  file:write("Drawable SetSRGB " .. method.SetSRGB .. "\n")

  method.SetStartEffect = type(widget.SetStartEffect)
  file:write("Drawable SetStartEffect " .. method.SetStartEffect .. "\n")

  method.SetText = type(widget.SetText)
  file:write("Drawable SetText " .. method.SetText .. "\n")

  method.SetTexture = type(widget.SetTexture)
  file:write("Drawable SetTexture " .. method.SetTexture .. "\n")

  method.SetTextureColor = type(widget.SetTextureColor)
  file:write("Drawable SetTextureColor " .. method.SetTextureColor .. "\n")

  method.SetTextureInfo = type(widget.SetTextureInfo)
  file:write("Drawable SetTextureInfo " .. method.SetTextureInfo .. "\n")

  method.SetTgaTexture = type(widget.SetTgaTexture)
  file:write("Drawable SetTgaTexture " .. method.SetTgaTexture .. "\n")

  method.SetTiling = type(widget.SetTiling)
  file:write("Drawable SetTiling " .. method.SetTiling .. "\n")

  method.SetUccTextureByUccId = type(widget.SetUccTextureByUccId)
  file:write("Drawable SetUccTextureByUccId " .. method.SetUccTextureByUccId .. "\n")

  method.SetUccTextureInDoodad = type(widget.SetUccTextureInDoodad)
  file:write("Drawable SetUccTextureInDoodad " .. method.SetUccTextureInDoodad .. "\n")

  method.SetVisible = type(widget.SetVisible)
  file:write("Drawable SetVisible " .. method.SetVisible .. "\n")

  method.SetVisibleForString = type(widget.SetVisibleForString)
  file:write("Drawable SetVisibleForString " .. method.SetVisibleForString .. "\n")

  method.Show = type(widget.Show)
  file:write("Drawable Show " .. method.Show .. "\n")

  method.ClearData = type(widget.ClearData)
  file:write("DynamicList ClearData " .. method.ClearData .. "\n")

  method.CreateOveredImage = type(widget.CreateOveredImage)
  file:write("DynamicList CreateOveredImage " .. method.CreateOveredImage .. "\n")

  method.EnableChildTouch = type(widget.EnableChildTouch)
  file:write("DynamicList EnableChildTouch " .. method.EnableChildTouch .. "\n")

  method.EraseData = type(widget.EraseData)
  file:write("DynamicList EraseData " .. method.EraseData .. "\n")

  method.EraseSubItemInfo = type(widget.EraseSubItemInfo)
  file:write("DynamicList EraseSubItemInfo " .. method.EraseSubItemInfo .. "\n")

  method.GetCurrentHeight = type(widget.GetCurrentHeight)
  file:write("DynamicList GetCurrentHeight " .. method.GetCurrentHeight .. "\n")

  method.GetMainIndex = type(widget.GetMainIndex)
  file:write("DynamicList GetMainIndex " .. method.GetMainIndex .. "\n")

  method.GetMainList = type(widget.GetMainList)
  file:write("DynamicList GetMainList " .. method.GetMainList .. "\n")

  method.GetScrollMaxValue = type(widget.GetScrollMaxValue)
  file:write("DynamicList GetScrollMaxValue " .. method.GetScrollMaxValue .. "\n")

  method.GetSelectedItemInfo = type(widget.GetSelectedItemInfo)
  file:write("DynamicList GetSelectedItemInfo " .. method.GetSelectedItemInfo .. "\n")

  method.InitBgType = type(widget.InitBgType)
  file:write("DynamicList InitBgType " .. method.InitBgType .. "\n")

  method.InitCreateWidgetPool = type(widget.InitCreateWidgetPool)
  file:write("DynamicList InitCreateWidgetPool " .. method.InitCreateWidgetPool .. "\n")

  method.InitFunc = type(widget.InitFunc)
  file:write("DynamicList InitFunc " .. method.InitFunc .. "\n")

  method.InitHeight = type(widget.InitHeight)
  file:write("DynamicList InitHeight " .. method.InitHeight .. "\n")

  method.InsertData = type(widget.InsertData)
  file:write("DynamicList InsertData " .. method.InsertData .. "\n")

  method.InsertSubItemInfo = type(widget.InsertSubItemInfo)
  file:write("DynamicList InsertSubItemInfo " .. method.InsertSubItemInfo .. "\n")

  method.IsSelectedItem = type(widget.IsSelectedItem)
  file:write("DynamicList IsSelectedItem " .. method.IsSelectedItem .. "\n")

  method.LoadItemList = type(widget.LoadItemList)
  file:write("DynamicList LoadItemList " .. method.LoadItemList .. "\n")

  method.MoveHeight = type(widget.MoveHeight)
  file:write("DynamicList MoveHeight " .. method.MoveHeight .. "\n")

  method.MoveIndex = type(widget.MoveIndex)
  file:write("DynamicList MoveIndex " .. method.MoveIndex .. "\n")

  method.OpenBySubItemInfo = type(widget.OpenBySubItemInfo)
  file:write("DynamicList OpenBySubItemInfo " .. method.OpenBySubItemInfo .. "\n")

  method.PushData = type(widget.PushData)
  file:write("DynamicList PushData " .. method.PushData .. "\n")

  method.SaveItemList = type(widget.SaveItemList)
  file:write("DynamicList SaveItemList " .. method.SaveItemList .. "\n")

  method.SetGaps = type(widget.SetGaps)
  file:write("DynamicList SetGaps " .. method.SetGaps .. "\n")

  method.SetSelectedItemInfo = type(widget.SetSelectedItemInfo)
  file:write("DynamicList SetSelectedItemInfo " .. method.SetSelectedItemInfo .. "\n")

  method.Toggle = type(widget.Toggle)
  file:write("DynamicList Toggle " .. method.Toggle .. "\n")

  method.ToggleByMainKey = type(widget.ToggleByMainKey)
  file:write("DynamicList ToggleByMainKey " .. method.ToggleByMainKey .. "\n")

  method.ToggleSubItem = type(widget.ToggleSubItem)
  file:write("DynamicList ToggleSubItem " .. method.ToggleSubItem .. "\n")

  method.UpdateData = type(widget.UpdateData)
  file:write("DynamicList UpdateData " .. method.UpdateData .. "\n")

  method.UpdateView = type(widget.UpdateView)
  file:write("DynamicList UpdateView " .. method.UpdateView .. "\n")

  method.SetMaxTextLength = type(widget.SetMaxTextLength)
  file:write("Editbase SetMaxTextLength " .. method.SetMaxTextLength .. "\n")

  method.ClearTextOnEnter = type(widget.ClearTextOnEnter)
  file:write("Editbase ClearTextOnEnter " .. method.ClearTextOnEnter .. "\n")

  method.MaxTextLength = type(widget.MaxTextLength)
  file:write("Editbase MaxTextLength " .. method.MaxTextLength .. "\n")

  method.SetCursorOffset = type(widget.SetCursorOffset)
  file:write("Editbase SetCursorOffset " .. method.SetCursorOffset .. "\n")

  method.SetCursorHeight = type(widget.SetCursorHeight)
  file:write("Editbase SetCursorHeight " .. method.SetCursorHeight .. "\n")

  method.SetCursorColor = type(widget.SetCursorColor)
  file:write("Editbase SetCursorColor " .. method.SetCursorColor .. "\n")

  method.SetCursorColorByColorKey = type(widget.SetCursorColorByColorKey)
  file:write("Editbase SetCursorColorByColorKey " .. method.SetCursorColorByColorKey .. "\n")

  method.SetReadOnly = type(widget.SetReadOnly)
  file:write("Editbase SetReadOnly " .. method.SetReadOnly .. "\n")

  method.SetGuideText = type(widget.SetGuideText)
  file:write("Editbase SetGuideText " .. method.SetGuideText .. "\n")

  method.SetGuideTextInset = type(widget.SetGuideTextInset)
  file:write("Editbase SetGuideTextInset " .. method.SetGuideTextInset .. "\n")

  method.AddHistoryLine = type(widget.AddHistoryLine)
  file:write("Edit AddHistoryLine " .. method.AddHistoryLine .. "\n")

  method.CheckNamePolicy = type(widget.CheckNamePolicy)
  file:write("Edit CheckNamePolicy " .. method.CheckNamePolicy .. "\n")

  method.ClearFocus = type(widget.ClearFocus)
  file:write("Edit ClearFocus " .. method.ClearFocus .. "\n")

  method.ClearString = type(widget.ClearString)
  file:write("Edit ClearString " .. method.ClearString .. "\n")

  method.IsDigit = type(widget.IsDigit)
  file:write("Edit IsDigit " .. method.IsDigit .. "\n")

  method.IsNowComposition = type(widget.IsNowComposition)
  file:write("Edit IsNowComposition " .. method.IsNowComposition .. "\n")

  method.IsPassword = type(widget.IsPassword)
  file:write("Edit IsPassword " .. method.IsPassword .. "\n")

  method.SetDigit = type(widget.SetDigit)
  file:write("Edit SetDigit " .. method.SetDigit .. "\n")

  method.SetDigitEmpty = type(widget.SetDigitEmpty)
  file:write("Edit SetDigitEmpty " .. method.SetDigitEmpty .. "\n")

  method.SetDigitMax = type(widget.SetDigitMax)
  file:write("Edit SetDigitMax " .. method.SetDigitMax .. "\n")

  method.SetEnglish = type(widget.SetEnglish)
  file:write("Edit SetEnglish " .. method.SetEnglish .. "\n")

  method.SetFocus = type(widget.SetFocus)
  file:write("Edit SetFocus " .. method.SetFocus .. "\n")

  method.SetHistoryLines = type(widget.SetHistoryLines)
  file:write("Edit SetHistoryLines " .. method.SetHistoryLines .. "\n")

  method.SetInitVal = type(widget.SetInitVal)
  file:write("Edit SetInitVal " .. method.SetInitVal .. "\n")

  method.SetInset = type(widget.SetInset)
  file:write("Edit SetInset " .. method.SetInset .. "\n")

  method.SetPassword = type(widget.SetPassword)
  file:write("Edit SetPassword " .. method.SetPassword .. "\n")

  method.SetPossibleFirstZero = type(widget.SetPossibleFirstZero)
  file:write("Edit SetPossibleFirstZero " .. method.SetPossibleFirstZero .. "\n")

  method.SetPrefixInset = type(widget.SetPrefixInset)
  file:write("Edit SetPrefixInset " .. method.SetPrefixInset .. "\n")

  method.SetPrefixText = type(widget.SetPrefixText)
  file:write("Edit SetPrefixText " .. method.SetPrefixText .. "\n")

  method.SetReClickable = type(widget.SetReClickable)
  file:write("Edit SetReClickable " .. method.SetReClickable .. "\n")

  method.UseSelectAllWhenFocused = type(widget.UseSelectAllWhenFocused)
  file:write("Edit UseSelectAllWhenFocused " .. method.UseSelectAllWhenFocused .. "\n")

  method.Clear = type(widget.Clear)
  file:write("Editmultiline Clear " .. method.Clear .. "\n")

  method.GetCursorPosX = type(widget.GetCursorPosX)
  file:write("Editmultiline GetCursorPosX " .. method.GetCursorPosX .. "\n")

  method.GetCursorPosY = type(widget.GetCursorPosY)
  file:write("Editmultiline GetCursorPosY " .. method.GetCursorPosY .. "\n")

  method.GetLineCount = type(widget.GetLineCount)
  file:write("Editmultiline GetLineCount " .. method.GetLineCount .. "\n")

  method.GetLineHeight = type(widget.GetLineHeight)
  file:write("Editmultiline GetLineHeight " .. method.GetLineHeight .. "\n")

  method.GetTextHeight = type(widget.GetTextHeight)
  file:write("Editmultiline GetTextHeight " .. method.GetTextHeight .. "\n")

  method.GetTextLength = type(widget.GetTextLength)
  file:write("Editmultiline GetTextLength " .. method.GetTextLength .. "\n")

  method.SetInset = type(widget.SetInset)
  file:write("Editmultiline SetInset " .. method.SetInset .. "\n")

  method.SetLineSpace = type(widget.SetLineSpace)
  file:write("Editmultiline SetLineSpace " .. method.SetLineSpace .. "\n")

  method.SetDrawBorder = type(widget.SetDrawBorder)
  file:write("Emptywidget SetDrawBorder " .. method.SetDrawBorder .. "\n")

  method.CloseFolder = type(widget.CloseFolder)
  file:write("Folder CloseFolder " .. method.CloseFolder .. "\n")

  method.FixedCloseFolder = type(widget.FixedCloseFolder)
  file:write("Folder FixedCloseFolder " .. method.FixedCloseFolder .. "\n")

  method.GetExtendLength = type(widget.GetExtendLength)
  file:write("Folder GetExtendLength " .. method.GetExtendLength .. "\n")

  method.GetState = type(widget.GetState)
  file:write("Folder GetState " .. method.GetState .. "\n")

  method.GetTitleText = type(widget.GetTitleText)
  file:write("Folder GetTitleText " .. method.GetTitleText .. "\n")

  method.OpenFolder = type(widget.OpenFolder)
  file:write("Folder OpenFolder " .. method.OpenFolder .. "\n")

  method.SetAnimateStep = type(widget.SetAnimateStep)
  file:write("Folder SetAnimateStep " .. method.SetAnimateStep .. "\n")

  method.SetChildWidget = type(widget.SetChildWidget)
  file:write("Folder SetChildWidget " .. method.SetChildWidget .. "\n")

  method.SetCloseStateButton = type(widget.SetCloseStateButton)
  file:write("Folder SetCloseStateButton " .. method.SetCloseStateButton .. "\n")

  method.SetExtendLength = type(widget.SetExtendLength)
  file:write("Folder SetExtendLength " .. method.SetExtendLength .. "\n")

  method.SetInset = type(widget.SetInset)
  file:write("Folder SetInset " .. method.SetInset .. "\n")

  method.SetOpenStateButton = type(widget.SetOpenStateButton)
  file:write("Folder SetOpenStateButton " .. method.SetOpenStateButton .. "\n")

  method.SetTitleButtonWidget = type(widget.SetTitleButtonWidget)
  file:write("Folder SetTitleButtonWidget " .. method.SetTitleButtonWidget .. "\n")

  method.SetTitleHeight = type(widget.SetTitleHeight)
  file:write("Folder SetTitleHeight " .. method.SetTitleHeight .. "\n")

  method.SetTitleText = type(widget.SetTitleText)
  file:write("Folder SetTitleText " .. method.SetTitleText .. "\n")

  method.ToggleState = type(widget.ToggleState)
  file:write("Folder ToggleState " .. method.ToggleState .. "\n")

  method.UseAnimation = type(widget.UseAnimation)
  file:write("Folder UseAnimation " .. method.UseAnimation .. "\n")

  method.AddAnotherSideLine = type(widget.AddAnotherSideLine)
  file:write("Gametooltip AddAnotherSideLine " .. method.AddAnotherSideLine .. "\n")

  method.AddLine = type(widget.AddLine)
  file:write("Gametooltip AddLine " .. method.AddLine .. "\n")

  method.AttachLowerSpaceLine = type(widget.AttachLowerSpaceLine)
  file:write("Gametooltip AttachLowerSpaceLine " .. method.AttachLowerSpaceLine .. "\n")

  method.AttachUpperSpaceLine = type(widget.AttachUpperSpaceLine)
  file:write("Gametooltip AttachUpperSpaceLine " .. method.AttachUpperSpaceLine .. "\n")

  method.ClearLines = type(widget.ClearLines)
  file:write("Gametooltip ClearLines " .. method.ClearLines .. "\n")

  method.GetHeightToLastLine = type(widget.GetHeightToLastLine)
  file:write("Gametooltip GetHeightToLastLine " .. method.GetHeightToLastLine .. "\n")

  method.GetLastLine = type(widget.GetLastLine)
  file:write("Gametooltip GetLastLine " .. method.GetLastLine .. "\n")

  method.GetLineCount = type(widget.GetLineCount)
  file:write("Gametooltip GetLineCount " .. method.GetLineCount .. "\n")

  method.GetLineSpace = type(widget.GetLineSpace)
  file:write("Gametooltip GetLineSpace " .. method.GetLineSpace .. "\n")

  method.SetAutoWordwrap = type(widget.SetAutoWordwrap)
  file:write("Gametooltip SetAutoWordwrap " .. method.SetAutoWordwrap .. "\n")

  method.SetInset = type(widget.SetInset)
  file:write("Gametooltip SetInset " .. method.SetInset .. "\n")

  method.SetLineSpace = type(widget.SetLineSpace)
  file:write("Gametooltip SetLineSpace " .. method.SetLineSpace .. "\n")

  method.SetTooltipData = type(widget.SetTooltipData)
  file:write("Gametooltip SetTooltipData " .. method.SetTooltipData .. "\n")

  method.ClearItem = type(widget.ClearItem)
  file:write("Grid ClearItem " .. method.ClearItem .. "\n")

  method.GetAdjustRowHeight = type(widget.GetAdjustRowHeight)
  file:write("Grid GetAdjustRowHeight " .. method.GetAdjustRowHeight .. "\n")

  method.GetLeft = type(widget.GetLeft)
  file:write("Grid GetLeft " .. method.GetLeft .. "\n")

  method.GetMaxTop = type(widget.GetMaxTop)
  file:write("Grid GetMaxTop " .. method.GetMaxTop .. "\n")

  method.GetRowCount = type(widget.GetRowCount)
  file:write("Grid GetRowCount " .. method.GetRowCount .. "\n")

  method.GetRowHeight = type(widget.GetRowHeight)
  file:write("Grid GetRowHeight " .. method.GetRowHeight .. "\n")

  method.GetSelectedColIndex = type(widget.GetSelectedColIndex)
  file:write("Grid GetSelectedColIndex " .. method.GetSelectedColIndex .. "\n")

  method.GetSelectedRowIndex = type(widget.GetSelectedRowIndex)
  file:write("Grid GetSelectedRowIndex " .. method.GetSelectedRowIndex .. "\n")

  method.GetSelectedValue = type(widget.GetSelectedValue)
  file:write("Grid GetSelectedValue " .. method.GetSelectedValue .. "\n")

  method.GetTop = type(widget.GetTop)
  file:write("Grid GetTop " .. method.GetTop .. "\n")

  method.LineSelect = type(widget.LineSelect)
  file:write("Grid LineSelect " .. method.LineSelect .. "\n")

  method.ReleaseSelect = type(widget.ReleaseSelect)
  file:write("Grid ReleaseSelect " .. method.ReleaseSelect .. "\n")

  method.RemoveAllItems = type(widget.RemoveAllItems)
  file:write("Grid RemoveAllItems " .. method.RemoveAllItems .. "\n")

  method.RemoveItem = type(widget.RemoveItem)
  file:write("Grid RemoveItem " .. method.RemoveItem .. "\n")

  method.ScrollDown = type(widget.ScrollDown)
  file:write("Grid ScrollDown " .. method.ScrollDown .. "\n")

  method.ScrollLeft = type(widget.ScrollLeft)
  file:write("Grid ScrollLeft " .. method.ScrollLeft .. "\n")

  method.ScrollRight = type(widget.ScrollRight)
  file:write("Grid ScrollRight " .. method.ScrollRight .. "\n")

  method.ScrollUp = type(widget.ScrollUp)
  file:write("Grid ScrollUp " .. method.ScrollUp .. "\n")

  method.SetColCount = type(widget.SetColCount)
  file:write("Grid SetColCount " .. method.SetColCount .. "\n")

  method.SetColTexCoord = type(widget.SetColTexCoord)
  file:write("Grid SetColTexCoord " .. method.SetColTexCoord .. "\n")

  method.SetColTexture = type(widget.SetColTexture)
  file:write("Grid SetColTexture " .. method.SetColTexture .. "\n")

  method.SetColWidth = type(widget.SetColWidth)
  file:write("Grid SetColWidth " .. method.SetColWidth .. "\n")

  method.SetCurrentColor = type(widget.SetCurrentColor)
  file:write("Grid SetCurrentColor " .. method.SetCurrentColor .. "\n")

  method.SetCurrentLine = type(widget.SetCurrentLine)
  file:write("Grid SetCurrentLine " .. method.SetCurrentLine .. "\n")

  method.SetCurrentTexCoord = type(widget.SetCurrentTexCoord)
  file:write("Grid SetCurrentTexCoord " .. method.SetCurrentTexCoord .. "\n")

  method.SetCurrentTexture = type(widget.SetCurrentTexture)
  file:write("Grid SetCurrentTexture " .. method.SetCurrentTexture .. "\n")

  method.SetDefaultColWidth = type(widget.SetDefaultColWidth)
  file:write("Grid SetDefaultColWidth " .. method.SetDefaultColWidth .. "\n")

  method.SetDefaultRowHeight = type(widget.SetDefaultRowHeight)
  file:write("Grid SetDefaultRowHeight " .. method.SetDefaultRowHeight .. "\n")

  method.SetDrawLineType = type(widget.SetDrawLineType)
  file:write("Grid SetDrawLineType " .. method.SetDrawLineType .. "\n")

  method.SetDrawStartNumber = type(widget.SetDrawStartNumber)
  file:write("Grid SetDrawStartNumber " .. method.SetDrawStartNumber .. "\n")

  method.SetHeaderType = type(widget.SetHeaderType)
  file:write("Grid SetHeaderType " .. method.SetHeaderType .. "\n")

  method.SetInsetForCol = type(widget.SetInsetForCol)
  file:write("Grid SetInsetForCol " .. method.SetInsetForCol .. "\n")

  method.SetInsetForOutLine = type(widget.SetInsetForOutLine)
  file:write("Grid SetInsetForOutLine " .. method.SetInsetForOutLine .. "\n")

  method.SetInsetForRow = type(widget.SetInsetForRow)
  file:write("Grid SetInsetForRow " .. method.SetInsetForRow .. "\n")

  method.SetItem = type(widget.SetItem)
  file:write("Grid SetItem " .. method.SetItem .. "\n")

  method.SetItemInset = type(widget.SetItemInset)
  file:write("Grid SetItemInset " .. method.SetItemInset .. "\n")

  method.SetLeft = type(widget.SetLeft)
  file:write("Grid SetLeft " .. method.SetLeft .. "\n")

  method.SetLeftHeaderWidth = type(widget.SetLeftHeaderWidth)
  file:write("Grid SetLeftHeaderWidth " .. method.SetLeftHeaderWidth .. "\n")

  method.SetLineBackGround = type(widget.SetLineBackGround)
  file:write("Grid SetLineBackGround " .. method.SetLineBackGround .. "\n")

  method.SetLineColor = type(widget.SetLineColor)
  file:write("Grid SetLineColor " .. method.SetLineColor .. "\n")

  method.SetRowCliping = type(widget.SetRowCliping)
  file:write("Grid SetRowCliping " .. method.SetRowCliping .. "\n")

  method.SetRowCount = type(widget.SetRowCount)
  file:write("Grid SetRowCount " .. method.SetRowCount .. "\n")

  method.SetRowHeight = type(widget.SetRowHeight)
  file:write("Grid SetRowHeight " .. method.SetRowHeight .. "\n")

  method.SetRowTexCoord = type(widget.SetRowTexCoord)
  file:write("Grid SetRowTexCoord " .. method.SetRowTexCoord .. "\n")

  method.SetRowTexture = type(widget.SetRowTexture)
  file:write("Grid SetRowTexture " .. method.SetRowTexture .. "\n")

  method.SetSelectedColor = type(widget.SetSelectedColor)
  file:write("Grid SetSelectedColor " .. method.SetSelectedColor .. "\n")

  method.SetSelectedLine = type(widget.SetSelectedLine)
  file:write("Grid SetSelectedLine " .. method.SetSelectedLine .. "\n")

  method.SetSelectedTexCoord = type(widget.SetSelectedTexCoord)
  file:write("Grid SetSelectedTexCoord " .. method.SetSelectedTexCoord .. "\n")

  method.SetSelectedTexture = type(widget.SetSelectedTexture)
  file:write("Grid SetSelectedTexture " .. method.SetSelectedTexture .. "\n")

  method.SetTexInset = type(widget.SetTexInset)
  file:write("Grid SetTexInset " .. method.SetTexInset .. "\n")

  method.SetTop = type(widget.SetTop)
  file:write("Grid SetTop " .. method.SetTop .. "\n")

  method.SetTopHeaderHeight = type(widget.SetTopHeaderHeight)
  file:write("Grid SetTopHeaderHeight " .. method.SetTopHeaderHeight .. "\n")

  method.GetInset = type(widget.GetInset)
  file:write("Label GetInset " .. method.GetInset .. "\n")

  method.SetAutoResize = type(widget.SetAutoResize)
  file:write("Label SetAutoResize " .. method.SetAutoResize .. "\n")

  method.SetInset = type(widget.SetInset)
  file:write("Label SetInset " .. method.SetInset .. "\n")

  method.SetNumberOnly = type(widget.SetNumberOnly)
  file:write("Label SetNumberOnly " .. method.SetNumberOnly .. "\n")

  method.ClearPoints = type(widget.ClearPoints)
  file:write("Line ClearPoints " .. method.ClearPoints .. "\n")

  method.SetLineColor = type(widget.SetLineColor)
  file:write("Line SetLineColor " .. method.SetLineColor .. "\n")

  method.SetLineColorByKey = type(widget.SetLineColorByKey)
  file:write("Line SetLineColorByKey " .. method.SetLineColorByKey .. "\n")

  method.SetLineThickness = type(widget.SetLineThickness)
  file:write("Line SetLineThickness " .. method.SetLineThickness .. "\n")

  method.SetPoints = type(widget.SetPoints)
  file:write("Line SetPoints " .. method.SetPoints .. "\n")

  method.AppendItem = type(widget.AppendItem)
  file:write("List AppendItem " .. method.AppendItem .. "\n")

  method.AppendItemByTable = type(widget.AppendItemByTable)
  file:write("List AppendItemByTable " .. method.AppendItemByTable .. "\n")

  method.ClearAllSelected = type(widget.ClearAllSelected)
  file:write("List ClearAllSelected " .. method.ClearAllSelected .. "\n")

  method.ClearItem = type(widget.ClearItem)
  file:write("List ClearItem " .. method.ClearItem .. "\n")

  method.CreateClosedImageDrawable = type(widget.CreateClosedImageDrawable)
  file:write("List CreateClosedImageDrawable " .. method.CreateClosedImageDrawable .. "\n")

  method.CreateOpenedImageDrawable = type(widget.CreateOpenedImageDrawable)
  file:write("List CreateOpenedImageDrawable " .. method.CreateOpenedImageDrawable .. "\n")

  method.CreateSeparatorImageDrawable = type(widget.CreateSeparatorImageDrawable)
  file:write("List CreateSeparatorImageDrawable " .. method.CreateSeparatorImageDrawable .. "\n")

  method.EnableSelectionToggle = type(widget.EnableSelectionToggle)
  file:write("List EnableSelectionToggle " .. method.EnableSelectionToggle .. "\n")

  method.EnableSelectNoValue = type(widget.EnableSelectNoValue)
  file:write("List EnableSelectNoValue " .. method.EnableSelectNoValue .. "\n")

  method.EnableSelectParent = type(widget.EnableSelectParent)
  file:write("List EnableSelectParent " .. method.EnableSelectParent .. "\n")

  method.GetInset = type(widget.GetInset)
  file:write("List GetInset " .. method.GetInset .. "\n")

  method.GetMaxTop = type(widget.GetMaxTop)
  file:write("List GetMaxTop " .. method.GetMaxTop .. "\n")

  method.GetOpenedItemCount = type(widget.GetOpenedItemCount)
  file:write("List GetOpenedItemCount " .. method.GetOpenedItemCount .. "\n")

  method.GetSelectedIndex = type(widget.GetSelectedIndex)
  file:write("List GetSelectedIndex " .. method.GetSelectedIndex .. "\n")

  method.GetSelectedIndexWithDepth = type(widget.GetSelectedIndexWithDepth)
  file:write("List GetSelectedIndexWithDepth " .. method.GetSelectedIndexWithDepth .. "\n")

  method.GetSelectedText = type(widget.GetSelectedText)
  file:write("List GetSelectedText " .. method.GetSelectedText .. "\n")

  method.GetSelectedValue = type(widget.GetSelectedValue)
  file:write("List GetSelectedValue " .. method.GetSelectedValue .. "\n")

  method.GetTop = type(widget.GetTop)
  file:write("List GetTop " .. method.GetTop .. "\n")

  method.GetViewItemCount = type(widget.GetViewItemCount)
  file:write("List GetViewItemCount " .. method.GetViewItemCount .. "\n")

  method.GetViewItemsInfo = type(widget.GetViewItemsInfo)
  file:write("List GetViewItemsInfo " .. method.GetViewItemsInfo .. "\n")

  method.InitializeSelect = type(widget.InitializeSelect)
  file:write("List InitializeSelect " .. method.InitializeSelect .. "\n")

  method.IsItemOpened = type(widget.IsItemOpened)
  file:write("List IsItemOpened " .. method.IsItemOpened .. "\n")

  method.ItemCount = type(widget.ItemCount)
  file:write("List ItemCount " .. method.ItemCount .. "\n")

  method.ScrollDown = type(widget.ScrollDown)
  file:write("List ScrollDown " .. method.ScrollDown .. "\n")

  method.ScrollUp = type(widget.ScrollUp)
  file:write("List ScrollUp " .. method.ScrollUp .. "\n")

  method.Select = type(widget.Select)
  file:write("List Select " .. method.Select .. "\n")

  method.SelectWithText = type(widget.SelectWithText)
  file:write("List SelectWithText " .. method.SelectWithText .. "\n")

  method.SelectWithValue = type(widget.SelectWithValue)
  file:write("List SelectWithValue " .. method.SelectWithValue .. "\n")

  method.SetBorder = type(widget.SetBorder)
  file:write("List SetBorder " .. method.SetBorder .. "\n")

  method.SetDefaultItemColor = type(widget.SetDefaultItemColor)
  file:write("List SetDefaultItemColor " .. method.SetDefaultItemColor .. "\n")

  method.SetDefaultItemCoord = type(widget.SetDefaultItemCoord)
  file:write("List SetDefaultItemCoord " .. method.SetDefaultItemCoord .. "\n")

  method.SetDefaultItemTextColor = type(widget.SetDefaultItemTextColor)
  file:write("List SetDefaultItemTextColor " .. method.SetDefaultItemTextColor .. "\n")

  method.SetDisableItemTextColor = type(widget.SetDisableItemTextColor)
  file:write("List SetDisableItemTextColor " .. method.SetDisableItemTextColor .. "\n")

  method.SetFold = type(widget.SetFold)
  file:write("List SetFold " .. method.SetFold .. "\n")

  method.SetInset = type(widget.SetInset)
  file:write("List SetInset " .. method.SetInset .. "\n")

  method.SetItem = type(widget.SetItem)
  file:write("List SetItem " .. method.SetItem .. "\n")

  method.SetItemDefaultTextureInfo = type(widget.SetItemDefaultTextureInfo)
  file:write("List SetItemDefaultTextureInfo " .. method.SetItemDefaultTextureInfo .. "\n")

  method.SetItemOveredTextureInfo = type(widget.SetItemOveredTextureInfo)
  file:write("List SetItemOveredTextureInfo " .. method.SetItemOveredTextureInfo .. "\n")

  method.SetItemSelectedTextureInfo = type(widget.SetItemSelectedTextureInfo)
  file:write("List SetItemSelectedTextureInfo " .. method.SetItemSelectedTextureInfo .. "\n")

  method.SetItemTrees = type(widget.SetItemTrees)
  file:write("List SetItemTrees " .. method.SetItemTrees .. "\n")

  method.SetLineColor = type(widget.SetLineColor)
  file:write("List SetLineColor " .. method.SetLineColor .. "\n")

  method.SetListItemStateTexture = type(widget.SetListItemStateTexture)
  file:write("List SetListItemStateTexture " .. method.SetListItemStateTexture .. "\n")

  method.SetListItemStateTextureInset = type(widget.SetListItemStateTextureInset)
  file:write("List SetListItemStateTextureInset " .. method.SetListItemStateTextureInset .. "\n")

  method.SetOveredItemColor = type(widget.SetOveredItemColor)
  file:write("List SetOveredItemColor " .. method.SetOveredItemColor .. "\n")

  method.SetOveredItemCoord = type(widget.SetOveredItemCoord)
  file:write("List SetOveredItemCoord " .. method.SetOveredItemCoord .. "\n")

  method.SetOveredItemTextColor = type(widget.SetOveredItemTextColor)
  file:write("List SetOveredItemTextColor " .. method.SetOveredItemTextColor .. "\n")

  method.SetSelectedItemColor = type(widget.SetSelectedItemColor)
  file:write("List SetSelectedItemColor " .. method.SetSelectedItemColor .. "\n")

  method.SetSelectedItemCoord = type(widget.SetSelectedItemCoord)
  file:write("List SetSelectedItemCoord " .. method.SetSelectedItemCoord .. "\n")

  method.SetSelectedItemTextColor = type(widget.SetSelectedItemTextColor)
  file:write("List SetSelectedItemTextColor " .. method.SetSelectedItemTextColor .. "\n")

  method.SetSubTextOffset = type(widget.SetSubTextOffset)
  file:write("List SetSubTextOffset " .. method.SetSubTextOffset .. "\n")

  method.SetTextLimit = type(widget.SetTextLimit)
  file:write("List SetTextLimit " .. method.SetTextLimit .. "\n")

  method.SetTop = type(widget.SetTop)
  file:write("List SetTop " .. method.SetTop .. "\n")

  method.SetTreeTypeIndent = type(widget.SetTreeTypeIndent)
  file:write("List SetTreeTypeIndent " .. method.SetTreeTypeIndent .. "\n")

  method.ShowAutoTooltip = type(widget.ShowAutoTooltip)
  file:write("List ShowAutoTooltip " .. method.ShowAutoTooltip .. "\n")

  method.ShowTooltip = type(widget.ShowTooltip)
  file:write("List ShowTooltip " .. method.ShowTooltip .. "\n")

  method.TurnoffOverParent = type(widget.TurnoffOverParent)
  file:write("List TurnoffOverParent " .. method.TurnoffOverParent .. "\n")

  method.UpdateItem = type(widget.UpdateItem)
  file:write("List UpdateItem " .. method.UpdateItem .. "\n")

  method.UseChildStyle = type(widget.UseChildStyle)
  file:write("List UseChildStyle " .. method.UseChildStyle .. "\n")

  method.ClearSelection = type(widget.ClearSelection)
  file:write("Listctrl ClearSelection " .. method.ClearSelection .. "\n")

  method.CreateOveredImage = type(widget.CreateOveredImage)
  file:write("Listctrl CreateOveredImage " .. method.CreateOveredImage .. "\n")

  method.CreateSelectedImage = type(widget.CreateSelectedImage)
  file:write("Listctrl CreateSelectedImage " .. method.CreateSelectedImage .. "\n")

  method.DeleteAllDatas = type(widget.DeleteAllDatas)
  file:write("Listctrl DeleteAllDatas " .. method.DeleteAllDatas .. "\n")

  method.DeleteData = type(widget.DeleteData)
  file:write("Listctrl DeleteData " .. method.DeleteData .. "\n")

  method.DeleteDataByIndex = type(widget.DeleteDataByIndex)
  file:write("Listctrl DeleteDataByIndex " .. method.DeleteDataByIndex .. "\n")

  method.DeleteRows = type(widget.DeleteRows)
  file:write("Listctrl DeleteRows " .. method.DeleteRows .. "\n")

  method.GetSelectedIdx = type(widget.GetSelectedIdx)
  file:write("Listctrl GetSelectedIdx " .. method.GetSelectedIdx .. "\n")

  method.InsertColumn = type(widget.InsertColumn)
  file:write("Listctrl InsertColumn " .. method.InsertColumn .. "\n")

  method.InsertData = type(widget.InsertData)
  file:write("Listctrl InsertData " .. method.InsertData .. "\n")

  method.InsertRows = type(widget.InsertRows)
  file:write("Listctrl InsertRows " .. method.InsertRows .. "\n")

  method.Select = type(widget.Select)
  file:write("Listctrl Select " .. method.Select .. "\n")

  method.SetColumnWidth = type(widget.SetColumnWidth)
  file:write("Listctrl SetColumnWidth " .. method.SetColumnWidth .. "\n")

  method.SetHeaderColumnHeight = type(widget.SetHeaderColumnHeight)
  file:write("Listctrl SetHeaderColumnHeight " .. method.SetHeaderColumnHeight .. "\n")

  method.SetOveredImageOffset = type(widget.SetOveredImageOffset)
  file:write("Listctrl SetOveredImageOffset " .. method.SetOveredImageOffset .. "\n")

  method.SetSelectedImageOffset = type(widget.SetSelectedImageOffset)
  file:write("Listctrl SetSelectedImageOffset " .. method.SetSelectedImageOffset .. "\n")

  method.SetUseDoubleClick = type(widget.SetUseDoubleClick)
  file:write("Listctrl SetUseDoubleClick " .. method.SetUseDoubleClick .. "\n")

  method.AddGivenQuestInfo = type(widget.AddGivenQuestInfo)
  file:write("Map AddGivenQuestInfo " .. method.AddGivenQuestInfo .. "\n")

  method.AddNotifyQuestInfo = type(widget.AddNotifyQuestInfo)
  file:write("Map AddNotifyQuestInfo " .. method.AddNotifyQuestInfo .. "\n")

  method.ClearAllInfo = type(widget.ClearAllInfo)
  file:write("Map ClearAllInfo " .. method.ClearAllInfo .. "\n")

  method.ClearBossTelescopeInfo = type(widget.ClearBossTelescopeInfo)
  file:write("Map ClearBossTelescopeInfo " .. method.ClearBossTelescopeInfo .. "\n")

  method.ClearCarryingBackpackSlaveInfo = type(widget.ClearCarryingBackpackSlaveInfo)
  file:write("Map ClearCarryingBackpackSlaveInfo " .. method.ClearCarryingBackpackSlaveInfo .. "\n")

  method.ClearCompletedQuestInfo = type(widget.ClearCompletedQuestInfo)
  file:write("Map ClearCompletedQuestInfo " .. method.ClearCompletedQuestInfo .. "\n")

  method.ClearCorpseInfo = type(widget.ClearCorpseInfo)
  file:write("Map ClearCorpseInfo " .. method.ClearCorpseInfo .. "\n")

  method.ClearDoodadInfo = type(widget.ClearDoodadInfo)
  file:write("Map ClearDoodadInfo " .. method.ClearDoodadInfo .. "\n")

  method.ClearFishSchoolInfo = type(widget.ClearFishSchoolInfo)
  file:write("Map ClearFishSchoolInfo " .. method.ClearFishSchoolInfo .. "\n")

  method.ClearGivenQuestStaticInfo = type(widget.ClearGivenQuestStaticInfo)
  file:write("Map ClearGivenQuestStaticInfo " .. method.ClearGivenQuestStaticInfo .. "\n")

  method.ClearHousingInfo = type(widget.ClearHousingInfo)
  file:write("Map ClearHousingInfo " .. method.ClearHousingInfo .. "\n")

  method.ClearMySlaveInfo = type(widget.ClearMySlaveInfo)
  file:write("Map ClearMySlaveInfo " .. method.ClearMySlaveInfo .. "\n")

  method.ClearNotifyQuestInfo = type(widget.ClearNotifyQuestInfo)
  file:write("Map ClearNotifyQuestInfo " .. method.ClearNotifyQuestInfo .. "\n")

  method.ClearNpcInfo = type(widget.ClearNpcInfo)
  file:write("Map ClearNpcInfo " .. method.ClearNpcInfo .. "\n")

  method.ClearShipTelescopeInfo = type(widget.ClearShipTelescopeInfo)
  file:write("Map ClearShipTelescopeInfo " .. method.ClearShipTelescopeInfo .. "\n")

  method.ClearTransferTelescopeInfo = type(widget.ClearTransferTelescopeInfo)
  file:write("Map ClearTransferTelescopeInfo " .. method.ClearTransferTelescopeInfo .. "\n")

  method.GetPlayerSextants = type(widget.GetPlayerSextants)
  file:write("Map GetPlayerSextants " .. method.GetPlayerSextants .. "\n")

  method.GetTooltipController = type(widget.GetTooltipController)
  file:write("Map GetTooltipController " .. method.GetTooltipController .. "\n")

  method.MapWidgetShown = type(widget.MapWidgetShown)
  file:write("Map MapWidgetShown " .. method.MapWidgetShown .. "\n")

  method.ReloadAllInfo = type(widget.ReloadAllInfo)
  file:write("Map ReloadAllInfo " .. method.ReloadAllInfo .. "\n")

  method.RemoveBossTelescopeInfo = type(widget.RemoveBossTelescopeInfo)
  file:write("Map RemoveBossTelescopeInfo " .. method.RemoveBossTelescopeInfo .. "\n")

  method.RemoveCarryingBackpackSlaveInfo = type(widget.RemoveCarryingBackpackSlaveInfo)
  file:write("Map RemoveCarryingBackpackSlaveInfo " .. method.RemoveCarryingBackpackSlaveInfo .. "\n")

  method.RemoveFishSchoolInfo = type(widget.RemoveFishSchoolInfo)
  file:write("Map RemoveFishSchoolInfo " .. method.RemoveFishSchoolInfo .. "\n")

  method.RemoveGivenQuestInfo = type(widget.RemoveGivenQuestInfo)
  file:write("Map RemoveGivenQuestInfo " .. method.RemoveGivenQuestInfo .. "\n")

  method.RemoveNotifyQuestInfo = type(widget.RemoveNotifyQuestInfo)
  file:write("Map RemoveNotifyQuestInfo " .. method.RemoveNotifyQuestInfo .. "\n")

  method.RemoveShipTelescopeInfo = type(widget.RemoveShipTelescopeInfo)
  file:write("Map RemoveShipTelescopeInfo " .. method.RemoveShipTelescopeInfo .. "\n")

  method.RemoveTransferTelescopeInfo = type(widget.RemoveTransferTelescopeInfo)
  file:write("Map RemoveTransferTelescopeInfo " .. method.RemoveTransferTelescopeInfo .. "\n")

  method.SetPingWidget = type(widget.SetPingWidget)
  file:write("Map SetPingWidget " .. method.SetPingWidget .. "\n")

  method.SetPlayerDrawable = type(widget.SetPlayerDrawable)
  file:write("Map SetPlayerDrawable " .. method.SetPlayerDrawable .. "\n")

  method.SetSkillEffectWidget = type(widget.SetSkillEffectWidget)
  file:write("Map SetSkillEffectWidget " .. method.SetSkillEffectWidget .. "\n")

  method.SetTooltipColor = type(widget.SetTooltipColor)
  file:write("Map SetTooltipColor " .. method.SetTooltipColor .. "\n")

  method.ShowSkillMapEffect = type(widget.ShowSkillMapEffect)
  file:write("Map ShowSkillMapEffect " .. method.ShowSkillMapEffect .. "\n")

  method.StartNotifyQuestEffect = type(widget.StartNotifyQuestEffect)
  file:write("Map StartNotifyQuestEffect " .. method.StartNotifyQuestEffect .. "\n")

  method.UpdateAllDrawableAnchor = type(widget.UpdateAllDrawableAnchor)
  file:write("Map UpdateAllDrawableAnchor " .. method.UpdateAllDrawableAnchor .. "\n")

  method.UpdateBossTelescopeArea = type(widget.UpdateBossTelescopeArea)
  file:write("Map UpdateBossTelescopeArea " .. method.UpdateBossTelescopeArea .. "\n")

  method.UpdateBossTelescopeInfo = type(widget.UpdateBossTelescopeInfo)
  file:write("Map UpdateBossTelescopeInfo " .. method.UpdateBossTelescopeInfo .. "\n")

  method.UpdateCarryingBackpackSlaveInfo = type(widget.UpdateCarryingBackpackSlaveInfo)
  file:write("Map UpdateCarryingBackpackSlaveInfo " .. method.UpdateCarryingBackpackSlaveInfo .. "\n")

  method.UpdateCompletedQuestInfo = type(widget.UpdateCompletedQuestInfo)
  file:write("Map UpdateCompletedQuestInfo " .. method.UpdateCompletedQuestInfo .. "\n")

  method.UpdateCorpseInfo = type(widget.UpdateCorpseInfo)
  file:write("Map UpdateCorpseInfo " .. method.UpdateCorpseInfo .. "\n")

  method.UpdateCurZoneGroupNpcInfo = type(widget.UpdateCurZoneGroupNpcInfo)
  file:write("Map UpdateCurZoneGroupNpcInfo " .. method.UpdateCurZoneGroupNpcInfo .. "\n")

  method.UpdateDominionInfo = type(widget.UpdateDominionInfo)
  file:write("Map UpdateDominionInfo " .. method.UpdateDominionInfo .. "\n")

  method.UpdateDoodadInfo = type(widget.UpdateDoodadInfo)
  file:write("Map UpdateDoodadInfo " .. method.UpdateDoodadInfo .. "\n")

  method.UpdateFactionRezDistrictInfo = type(widget.UpdateFactionRezDistrictInfo)
  file:write("Map UpdateFactionRezDistrictInfo " .. method.UpdateFactionRezDistrictInfo .. "\n")

  method.UpdateFishSchoolArea = type(widget.UpdateFishSchoolArea)
  file:write("Map UpdateFishSchoolArea " .. method.UpdateFishSchoolArea .. "\n")

  method.UpdateFishSchoolInfo = type(widget.UpdateFishSchoolInfo)
  file:write("Map UpdateFishSchoolInfo " .. method.UpdateFishSchoolInfo .. "\n")

  method.UpdateGivenQuestStaticInfo = type(widget.UpdateGivenQuestStaticInfo)
  file:write("Map UpdateGivenQuestStaticInfo " .. method.UpdateGivenQuestStaticInfo .. "\n")

  method.UpdateHousingInfo = type(widget.UpdateHousingInfo)
  file:write("Map UpdateHousingInfo " .. method.UpdateHousingInfo .. "\n")

  method.UpdateMonitorNpcInfo = type(widget.UpdateMonitorNpcInfo)
  file:write("Map UpdateMonitorNpcInfo " .. method.UpdateMonitorNpcInfo .. "\n")

  method.UpdateMySlaveInfo = type(widget.UpdateMySlaveInfo)
  file:write("Map UpdateMySlaveInfo " .. method.UpdateMySlaveInfo .. "\n")

  method.UpdateNpcInfo = type(widget.UpdateNpcInfo)
  file:write("Map UpdateNpcInfo " .. method.UpdateNpcInfo .. "\n")

  method.UpdatePingInfo = type(widget.UpdatePingInfo)
  file:write("Map UpdatePingInfo " .. method.UpdatePingInfo .. "\n")

  method.UpdateShipTelescopeInfo = type(widget.UpdateShipTelescopeInfo)
  file:write("Map UpdateShipTelescopeInfo " .. method.UpdateShipTelescopeInfo .. "\n")

  method.UpdateTelescopeArea = type(widget.UpdateTelescopeArea)
  file:write("Map UpdateTelescopeArea " .. method.UpdateTelescopeArea .. "\n")

  method.UpdateTransferTelescopeArea = type(widget.UpdateTransferTelescopeArea)
  file:write("Map UpdateTransferTelescopeArea " .. method.UpdateTransferTelescopeArea .. "\n")

  method.UpdateTransferTelescopeInfo = type(widget.UpdateTransferTelescopeInfo)
  file:write("Map UpdateTransferTelescopeInfo " .. method.UpdateTransferTelescopeInfo .. "\n")

  method.UpdateZoneInfo = type(widget.UpdateZoneInfo)
  file:write("Map UpdateZoneInfo " .. method.UpdateZoneInfo .. "\n")

  method.InitMapData = type(widget.InitMapData)
  file:write("Map InitMapData " .. method.InitMapData .. "\n")

  method.SetPingBtn = type(widget.SetPingBtn)
  file:write("Map SetPingBtn " .. method.SetPingBtn .. "\n")

  method.OnLeftClick = type(widget.OnLeftClick)
  file:write("Map OnLeftClick " .. method.OnLeftClick .. "\n")

  method.ResetCursor = type(widget.ResetCursor)
  file:write("Map ResetCursor " .. method.ResetCursor .. "\n")

  method.SetExpandRatio = type(widget.SetExpandRatio)
  file:write("Map SetExpandRatio " .. method.SetExpandRatio .. "\n")

  method.GetPlayerViewPos = type(widget.GetPlayerViewPos)
  file:write("Map GetPlayerViewPos " .. method.GetPlayerViewPos .. "\n")

  method.AddMessage = type(widget.AddMessage)
  file:write("Message AddMessage " .. method.AddMessage .. "\n")

  method.AddMessageEx = type(widget.AddMessageEx)
  file:write("Message AddMessageEx " .. method.AddMessageEx .. "\n")

  method.AddMessageExRefresh = type(widget.AddMessageExRefresh)
  file:write("Message AddMessageExRefresh " .. method.AddMessageExRefresh .. "\n")

  method.AddMessageRefresh = type(widget.AddMessageRefresh)
  file:write("Message AddMessageRefresh " .. method.AddMessageRefresh .. "\n")

  method.ChangeDefaultStyle = type(widget.ChangeDefaultStyle)
  file:write("Message ChangeDefaultStyle " .. method.ChangeDefaultStyle .. "\n")

  method.ChangeTextStyle = type(widget.ChangeTextStyle)
  file:write("Message ChangeTextStyle " .. method.ChangeTextStyle .. "\n")

  method.Clear = type(widget.Clear)
  file:write("Message Clear " .. method.Clear .. "\n")

  method.CopyTextToClipboard = type(widget.CopyTextToClipboard)
  file:write("Message CopyTextToClipboard " .. method.CopyTextToClipboard .. "\n")

  method.EnableItemLink = type(widget.EnableItemLink)
  file:write("Message EnableItemLink " .. method.EnableItemLink .. "\n")

  method.GetCurrentLine = type(widget.GetCurrentLine)
  file:write("Message GetCurrentLine " .. method.GetCurrentLine .. "\n")

  method.GetCurrentScroll = type(widget.GetCurrentScroll)
  file:write("Message GetCurrentScroll " .. method.GetCurrentScroll .. "\n")

  method.GetLineSpace = type(widget.GetLineSpace)
  file:write("Message GetLineSpace " .. method.GetLineSpace .. "\n")

  method.GetLinkInfoOnCursor = type(widget.GetLinkInfoOnCursor)
  file:write("Message GetLinkInfoOnCursor " .. method.GetLinkInfoOnCursor .. "\n")

  method.GetMaxLines = type(widget.GetMaxLines)
  file:write("Message GetMaxLines " .. method.GetMaxLines .. "\n")

  method.GetMessageByTimeStamp = type(widget.GetMessageByTimeStamp)
  file:write("Message GetMessageByTimeStamp " .. method.GetMessageByTimeStamp .. "\n")

  method.GetMessageLines = type(widget.GetMessageLines)
  file:write("Message GetMessageLines " .. method.GetMessageLines .. "\n")

  method.GetPagePerMaxLines = type(widget.GetPagePerMaxLines)
  file:write("Message GetPagePerMaxLines " .. method.GetPagePerMaxLines .. "\n")

  method.PageDown = type(widget.PageDown)
  file:write("Message PageDown " .. method.PageDown .. "\n")

  method.PageUp = type(widget.PageUp)
  file:write("Message PageUp " .. method.PageUp .. "\n")

  method.RemoveLastMessage = type(widget.RemoveLastMessage)
  file:write("Message RemoveLastMessage " .. method.RemoveLastMessage .. "\n")

  method.ResetVisibleTime = type(widget.ResetVisibleTime)
  file:write("Message ResetVisibleTime " .. method.ResetVisibleTime .. "\n")

  method.ScrollDown = type(widget.ScrollDown)
  file:write("Message ScrollDown " .. method.ScrollDown .. "\n")

  method.ScrollToBottom = type(widget.ScrollToBottom)
  file:write("Message ScrollToBottom " .. method.ScrollToBottom .. "\n")

  method.ScrollToTop = type(widget.ScrollToTop)
  file:write("Message ScrollToTop " .. method.ScrollToTop .. "\n")

  method.ScrollUp = type(widget.ScrollUp)
  file:write("Message ScrollUp " .. method.ScrollUp .. "\n")

  method.SetFadeDuration = type(widget.SetFadeDuration)
  file:write("Message SetFadeDuration " .. method.SetFadeDuration .. "\n")

  method.SetInset = type(widget.SetInset)
  file:write("Message SetInset " .. method.SetInset .. "\n")

  method.SetLineSpace = type(widget.SetLineSpace)
  file:write("Message SetLineSpace " .. method.SetLineSpace .. "\n")

  method.SetMaxLines = type(widget.SetMaxLines)
  file:write("Message SetMaxLines " .. method.SetMaxLines .. "\n")

  method.SetScrollPos = type(widget.SetScrollPos)
  file:write("Message SetScrollPos " .. method.SetScrollPos .. "\n")

  method.SetTimeVisible = type(widget.SetTimeVisible)
  file:write("Message SetTimeVisible " .. method.SetTimeVisible .. "\n")

  method.AddRotation = type(widget.AddRotation)
  file:write("Modelview AddRotation " .. method.AddRotation .. "\n")

  method.AdjustCameraPos = type(widget.AdjustCameraPos)
  file:write("Modelview AdjustCameraPos " .. method.AdjustCameraPos .. "\n")

  method.AdjustCameraPosToModel = type(widget.AdjustCameraPosToModel)
  file:write("Modelview AdjustCameraPosToModel " .. method.AdjustCameraPosToModel .. "\n")

  method.ApplyCustomizerParamToUnit = type(widget.ApplyCustomizerParamToUnit)
  file:write("Modelview ApplyCustomizerParamToUnit " .. method.ApplyCustomizerParamToUnit .. "\n")

  method.ApplyModel = type(widget.ApplyModel)
  file:write("Modelview ApplyModel " .. method.ApplyModel .. "\n")

  method.ApplyPresetParam = type(widget.ApplyPresetParam)
  file:write("Modelview ApplyPresetParam " .. method.ApplyPresetParam .. "\n")

  method.ClearModel = type(widget.ClearModel)
  file:write("Modelview ClearModel " .. method.ClearModel .. "\n")

  method.EquipCostume = type(widget.EquipCostume)
  file:write("Modelview EquipCostume " .. method.EquipCostume .. "\n")

  method.EquipItem = type(widget.EquipItem)
  file:write("Modelview EquipItem " .. method.EquipItem .. "\n")

  method.GetCustomBodyNormal = type(widget.GetCustomBodyNormal)
  file:write("Modelview GetCustomBodyNormal " .. method.GetCustomBodyNormal .. "\n")

  method.GetCustomDeco = type(widget.GetCustomDeco)
  file:write("Modelview GetCustomDeco " .. method.GetCustomDeco .. "\n")

  method.GetCustomEyebrow = type(widget.GetCustomEyebrow)
  file:write("Modelview GetCustomEyebrow " .. method.GetCustomEyebrow .. "\n")

  method.GetCustomEyebrowColor = type(widget.GetCustomEyebrowColor)
  file:write("Modelview GetCustomEyebrowColor " .. method.GetCustomEyebrowColor .. "\n")

  method.GetCustomFaceDiffuse = type(widget.GetCustomFaceDiffuse)
  file:write("Modelview GetCustomFaceDiffuse " .. method.GetCustomFaceDiffuse .. "\n")

  method.GetCustomFaceNormal = type(widget.GetCustomFaceNormal)
  file:write("Modelview GetCustomFaceNormal " .. method.GetCustomFaceNormal .. "\n")

  method.GetCustomHair = type(widget.GetCustomHair)
  file:write("Modelview GetCustomHair " .. method.GetCustomHair .. "\n")

  method.GetCustomHairColor = type(widget.GetCustomHairColor)
  file:write("Modelview GetCustomHairColor " .. method.GetCustomHairColor .. "\n")

  method.GetCustomHorn = type(widget.GetCustomHorn)
  file:write("Modelview GetCustomHorn " .. method.GetCustomHorn .. "\n")

  method.GetCustomHornColor = type(widget.GetCustomHornColor)
  file:write("Modelview GetCustomHornColor " .. method.GetCustomHornColor .. "\n")

  method.GetCustomizingDecoColor = type(widget.GetCustomizingDecoColor)
  file:write("Modelview GetCustomizingDecoColor " .. method.GetCustomizingDecoColor .. "\n")

  method.GetCustomizingOddEyeUsable = type(widget.GetCustomizingOddEyeUsable)
  file:write("Modelview GetCustomizingOddEyeUsable " .. method.GetCustomizingOddEyeUsable .. "\n")

  method.GetCustomLipColor = type(widget.GetCustomLipColor)
  file:write("Modelview GetCustomLipColor " .. method.GetCustomLipColor .. "\n")

  method.GetCustomMakeUp = type(widget.GetCustomMakeUp)
  file:write("Modelview GetCustomMakeUp " .. method.GetCustomMakeUp .. "\n")

  method.GetCustomPreviewCloth = type(widget.GetCustomPreviewCloth)
  file:write("Modelview GetCustomPreviewCloth " .. method.GetCustomPreviewCloth .. "\n")

  method.GetCustomPupil = type(widget.GetCustomPupil)
  file:write("Modelview GetCustomPupil " .. method.GetCustomPupil .. "\n")

  method.GetCustomPupilColor = type(widget.GetCustomPupilColor)
  file:write("Modelview GetCustomPupilColor " .. method.GetCustomPupilColor .. "\n")

  method.GetCustomScar = type(widget.GetCustomScar)
  file:write("Modelview GetCustomScar " .. method.GetCustomScar .. "\n")

  method.GetCustomSkinColor = type(widget.GetCustomSkinColor)
  file:write("Modelview GetCustomSkinColor " .. method.GetCustomSkinColor .. "\n")

  method.GetCustomTail = type(widget.GetCustomTail)
  file:write("Modelview GetCustomTail " .. method.GetCustomTail .. "\n")

  method.GetCustomTattoo = type(widget.GetCustomTattoo)
  file:write("Modelview GetCustomTattoo " .. method.GetCustomTattoo .. "\n")

  method.GetFaceTargetCurValue = type(widget.GetFaceTargetCurValue)
  file:write("Modelview GetFaceTargetCurValue " .. method.GetFaceTargetCurValue .. "\n")

  method.GetGender = type(widget.GetGender)
  file:write("Modelview GetGender " .. method.GetGender .. "\n")

  method.GetRace = type(widget.GetRace)
  file:write("Modelview GetRace " .. method.GetRace .. "\n")

  method.GetScarStatus = type(widget.GetScarStatus)
  file:write("Modelview GetScarStatus " .. method.GetScarStatus .. "\n")

  method.GetSelectedPresetIndex = type(widget.GetSelectedPresetIndex)
  file:write("Modelview GetSelectedPresetIndex " .. method.GetSelectedPresetIndex .. "\n")

  method.GetTwoToneHairStatus = type(widget.GetTwoToneHairStatus)
  file:write("Modelview GetTwoToneHairStatus " .. method.GetTwoToneHairStatus .. "\n")

  method.HasDiffWithClientUnit = type(widget.HasDiffWithClientUnit)
  file:write("Modelview HasDiffWithClientUnit " .. method.HasDiffWithClientUnit .. "\n")

  method.Init = type(widget.Init)
  file:write("Modelview Init " .. method.Init .. "\n")

  method.InitBeautyShop = type(widget.InitBeautyShop)
  file:write("Modelview InitBeautyShop " .. method.InitBeautyShop .. "\n")

  method.InitByModelRef = type(widget.InitByModelRef)
  file:write("Modelview InitByModelRef " .. method.InitByModelRef .. "\n")

  method.InitCustomizerControl = type(widget.InitCustomizerControl)
  file:write("Modelview InitCustomizerControl " .. method.InitCustomizerControl .. "\n")

  method.IsFrozen = type(widget.IsFrozen)
  file:write("Modelview IsFrozen " .. method.IsFrozen .. "\n")

  method.ModifyFaceParamValue = type(widget.ModifyFaceParamValue)
  file:write("Modelview ModifyFaceParamValue " .. method.ModifyFaceParamValue .. "\n")

  method.PayBeautyShop = type(widget.PayBeautyShop)
  file:write("Modelview PayBeautyShop " .. method.PayBeautyShop .. "\n")

  method.PlayAnimation = type(widget.PlayAnimation)
  file:write("Modelview PlayAnimation " .. method.PlayAnimation .. "\n")

  method.RemoveEquipSlot = type(widget.RemoveEquipSlot)
  file:write("Modelview RemoveEquipSlot " .. method.RemoveEquipSlot .. "\n")

  method.ResetBeautyShop = type(widget.ResetBeautyShop)
  file:write("Modelview ResetBeautyShop " .. method.ResetBeautyShop .. "\n")

  method.ResetEquips = type(widget.ResetEquips)
  file:write("Modelview ResetEquips " .. method.ResetEquips .. "\n")

  method.SetBackColor = type(widget.SetBackColor)
  file:write("Modelview SetBackColor " .. method.SetBackColor .. "\n")

  method.SetBeautyShopMode = type(widget.SetBeautyShopMode)
  file:write("Modelview SetBeautyShopMode " .. method.SetBeautyShopMode .. "\n")

  method.SetCameraPos = type(widget.SetCameraPos)
  file:write("Modelview SetCameraPos " .. method.SetCameraPos .. "\n")

  method.SetCustomizingBodyNormal = type(widget.SetCustomizingBodyNormal)
  file:write("Modelview SetCustomizingBodyNormal " .. method.SetCustomizingBodyNormal .. "\n")

  method.SetCustomizingDeco = type(widget.SetCustomizingDeco)
  file:write("Modelview SetCustomizingDeco " .. method.SetCustomizingDeco .. "\n")

  method.SetCustomizingDecoColor = type(widget.SetCustomizingDecoColor)
  file:write("Modelview SetCustomizingDecoColor " .. method.SetCustomizingDecoColor .. "\n")

  method.SetCustomizingEyebrow = type(widget.SetCustomizingEyebrow)
  file:write("Modelview SetCustomizingEyebrow " .. method.SetCustomizingEyebrow .. "\n")

  method.SetCustomizingEyebrowColor = type(widget.SetCustomizingEyebrowColor)
  file:write("Modelview SetCustomizingEyebrowColor " .. method.SetCustomizingEyebrowColor .. "\n")

  method.SetCustomizingFaceDiffuse = type(widget.SetCustomizingFaceDiffuse)
  file:write("Modelview SetCustomizingFaceDiffuse " .. method.SetCustomizingFaceDiffuse .. "\n")

  method.SetCustomizingFaceNormal = type(widget.SetCustomizingFaceNormal)
  file:write("Modelview SetCustomizingFaceNormal " .. method.SetCustomizingFaceNormal .. "\n")

  method.SetCustomizingHair = type(widget.SetCustomizingHair)
  file:write("Modelview SetCustomizingHair " .. method.SetCustomizingHair .. "\n")

  method.SetCustomizingHairColor = type(widget.SetCustomizingHairColor)
  file:write("Modelview SetCustomizingHairColor " .. method.SetCustomizingHairColor .. "\n")

  method.SetCustomizingHairDefaultColor = type(widget.SetCustomizingHairDefaultColor)
  file:write("Modelview SetCustomizingHairDefaultColor " .. method.SetCustomizingHairDefaultColor .. "\n")

  method.SetCustomizingHairTwoToneColor = type(widget.SetCustomizingHairTwoToneColor)
  file:write("Modelview SetCustomizingHairTwoToneColor " .. method.SetCustomizingHairTwoToneColor .. "\n")

  method.SetCustomizingHorn = type(widget.SetCustomizingHorn)
  file:write("Modelview SetCustomizingHorn " .. method.SetCustomizingHorn .. "\n")

  method.SetCustomizingHornColor = type(widget.SetCustomizingHornColor)
  file:write("Modelview SetCustomizingHornColor " .. method.SetCustomizingHornColor .. "\n")

  method.SetCustomizingLipColor = type(widget.SetCustomizingLipColor)
  file:write("Modelview SetCustomizingLipColor " .. method.SetCustomizingLipColor .. "\n")

  method.SetCustomizingMakeUp = type(widget.SetCustomizingMakeUp)
  file:write("Modelview SetCustomizingMakeUp " .. method.SetCustomizingMakeUp .. "\n")

  method.SetCustomizingPreviewCloth = type(widget.SetCustomizingPreviewCloth)
  file:write("Modelview SetCustomizingPreviewCloth " .. method.SetCustomizingPreviewCloth .. "\n")

  method.SetCustomizingPupil = type(widget.SetCustomizingPupil)
  file:write("Modelview SetCustomizingPupil " .. method.SetCustomizingPupil .. "\n")

  method.SetCustomizingPupilColor = type(widget.SetCustomizingPupilColor)
  file:write("Modelview SetCustomizingPupilColor " .. method.SetCustomizingPupilColor .. "\n")

  method.SetCustomizingScar = type(widget.SetCustomizingScar)
  file:write("Modelview SetCustomizingScar " .. method.SetCustomizingScar .. "\n")

  method.SetCustomizingSkinColor = type(widget.SetCustomizingSkinColor)
  file:write("Modelview SetCustomizingSkinColor " .. method.SetCustomizingSkinColor .. "\n")

  method.SetCustomizingTail = type(widget.SetCustomizingTail)
  file:write("Modelview SetCustomizingTail " .. method.SetCustomizingTail .. "\n")

  method.SetCustomizingTattoo = type(widget.SetCustomizingTattoo)
  file:write("Modelview SetCustomizingTattoo " .. method.SetCustomizingTattoo .. "\n")

  method.SetDisableColorGrading = type(widget.SetDisableColorGrading)
  file:write("Modelview SetDisableColorGrading " .. method.SetDisableColorGrading .. "\n")

  method.SetEquipSlotFromCharacter = type(widget.SetEquipSlotFromCharacter)
  file:write("Modelview SetEquipSlotFromCharacter " .. method.SetEquipSlotFromCharacter .. "\n")

  method.SetFov = type(widget.SetFov)
  file:write("Modelview SetFov " .. method.SetFov .. "\n")

  method.SetFreeze = type(widget.SetFreeze)
  file:write("Modelview SetFreeze " .. method.SetFreeze .. "\n")

  method.SetIngameShopMode = type(widget.SetIngameShopMode)
  file:write("Modelview SetIngameShopMode " .. method.SetIngameShopMode .. "\n")

  method.SetModelViewBackground = type(widget.SetModelViewBackground)
  file:write("Modelview SetModelViewBackground " .. method.SetModelViewBackground .. "\n")

  method.SetModelViewCoords = type(widget.SetModelViewCoords)
  file:write("Modelview SetModelViewCoords " .. method.SetModelViewCoords .. "\n")

  method.SetModelViewExtent = type(widget.SetModelViewExtent)
  file:write("Modelview SetModelViewExtent " .. method.SetModelViewExtent .. "\n")

  method.SetSmile = type(widget.SetSmile)
  file:write("Modelview SetSmile " .. method.SetSmile .. "\n")

  method.SetTextureSize = type(widget.SetTextureSize)
  file:write("Modelview SetTextureSize " .. method.SetTextureSize .. "\n")

  method.ShowItem = type(widget.ShowItem)
  file:write("Modelview ShowItem " .. method.ShowItem .. "\n")

  method.StopAnimation = type(widget.StopAnimation)
  file:write("Modelview StopAnimation " .. method.StopAnimation .. "\n")

  method.ToggleCosplayEquipped = type(widget.ToggleCosplayEquipped)
  file:write("Modelview ToggleCosplayEquipped " .. method.ToggleCosplayEquipped .. "\n")

  method.UnequipItemSlot = type(widget.UnequipItemSlot)
  file:write("Modelview UnequipItemSlot " .. method.UnequipItemSlot .. "\n")

  method.UpdateDyeColor = type(widget.UpdateDyeColor)
  file:write("Modelview UpdateDyeColor " .. method.UpdateDyeColor .. "\n")

  method.ZoomInOut = type(widget.ZoomInOut)
  file:write("Modelview ZoomInOut " .. method.ZoomInOut .. "\n")

  method.ZoomInOutBeautyShop = type(widget.ZoomInOutBeautyShop)
  file:write("Modelview ZoomInOutBeautyShop " .. method.ZoomInOutBeautyShop .. "\n")

  method.AddWidgetToPage = type(widget.AddWidgetToPage)
  file:write("Pageable AddWidgetToPage " .. method.AddWidgetToPage .. "\n")

  method.ChangePage = type(widget.ChangePage)
  file:write("Pageable ChangePage " .. method.ChangePage .. "\n")

  method.GetCurrentPageIndex = type(widget.GetCurrentPageIndex)
  file:write("Pageable GetCurrentPageIndex " .. method.GetCurrentPageIndex .. "\n")

  method.GetTotalPage = type(widget.GetTotalPage)
  file:write("Pageable GetTotalPage " .. method.GetTotalPage .. "\n")

  method.NextPage = type(widget.NextPage)
  file:write("Pageable NextPage " .. method.NextPage .. "\n")

  method.PrevPage = type(widget.PrevPage)
  file:write("Pageable PrevPage " .. method.PrevPage .. "\n")

  method.SetCurrentPageIndex = type(widget.SetCurrentPageIndex)
  file:write("Pageable SetCurrentPageIndex " .. method.SetCurrentPageIndex .. "\n")

  method.SetPageCount = type(widget.SetPageCount)
  file:write("Pageable SetPageCount " .. method.SetPageCount .. "\n")

  method.GetHLSColor = type(widget.GetHLSColor)
  file:write("Paintcolorpicker GetHLSColor " .. method.GetHLSColor .. "\n")

  method.GetHue = type(widget.GetHue)
  file:write("Paintcolorpicker GetHue " .. method.GetHue .. "\n")

  method.GetLum = type(widget.GetLum)
  file:write("Paintcolorpicker GetLum " .. method.GetLum .. "\n")

  method.GetLuminanceWidget = type(widget.GetLuminanceWidget)
  file:write("Paintcolorpicker GetLuminanceWidget " .. method.GetLuminanceWidget .. "\n")

  method.GetRGBColor = type(widget.GetRGBColor)
  file:write("Paintcolorpicker GetRGBColor " .. method.GetRGBColor .. "\n")

  method.GetSat = type(widget.GetSat)
  file:write("Paintcolorpicker GetSat " .. method.GetSat .. "\n")

  method.GetSpectrumWidget = type(widget.GetSpectrumWidget)
  file:write("Paintcolorpicker GetSpectrumWidget " .. method.GetSpectrumWidget .. "\n")

  method.SetHLSColor = type(widget.SetHLSColor)
  file:write("Paintcolorpicker SetHLSColor " .. method.SetHLSColor .. "\n")

  method.SetHue = type(widget.SetHue)
  file:write("Paintcolorpicker SetHue " .. method.SetHue .. "\n")

  method.SetLum = type(widget.SetLum)
  file:write("Paintcolorpicker SetLum " .. method.SetLum .. "\n")

  method.SetLuminanceBg = type(widget.SetLuminanceBg)
  file:write("Paintcolorpicker SetLuminanceBg " .. method.SetLuminanceBg .. "\n")

  method.SetRGBColor = type(widget.SetRGBColor)
  file:write("Paintcolorpicker SetRGBColor " .. method.SetRGBColor .. "\n")

  method.SetSat = type(widget.SetSat)
  file:write("Paintcolorpicker SetSat " .. method.SetSat .. "\n")

  method.SetSpectrumBg = type(widget.SetSpectrumBg)
  file:write("Paintcolorpicker SetSpectrumBg " .. method.SetSpectrumBg .. "\n")

  method.Check = type(widget.Check)
  file:write("Radio Check " .. method.Check .. "\n")

  method.Clear = type(widget.Clear)
  file:write("Radio Clear " .. method.Clear .. "\n")

  method.CreateRadioItem = type(widget.CreateRadioItem)
  file:write("Radio CreateRadioItem " .. method.CreateRadioItem .. "\n")

  method.EnableIndex = type(widget.EnableIndex)
  file:write("Radio EnableIndex " .. method.EnableIndex .. "\n")

  method.GetChecked = type(widget.GetChecked)
  file:write("Radio GetChecked " .. method.GetChecked .. "\n")

  method.GetCheckedData = type(widget.GetCheckedData)
  file:write("Radio GetCheckedData " .. method.GetCheckedData .. "\n")

  method.GetDataValue = type(widget.GetDataValue)
  file:write("Radio GetDataValue " .. method.GetDataValue .. "\n")

  method.GetIndexByValue = type(widget.GetIndexByValue)
  file:write("Radio GetIndexByValue " .. method.GetIndexByValue .. "\n")

  method.GetSize = type(widget.GetSize)
  file:write("Radio GetSize " .. method.GetSize .. "\n")

  method.IsInRange = type(widget.IsInRange)
  file:write("Radio IsInRange " .. method.IsInRange .. "\n")

  method.ReleaseCheck = type(widget.ReleaseCheck)
  file:write("Radio ReleaseCheck " .. method.ReleaseCheck .. "\n")

  method.ShowIndex = type(widget.ShowIndex)
  file:write("Radio ShowIndex " .. method.ShowIndex .. "\n")

  method.UpdateValue = type(widget.UpdateValue)
  file:write("Radio UpdateValue " .. method.UpdateValue .. "\n")

  method.IsPingMode = type(widget.IsPingMode)
  file:write("Roadmap IsPingMode " .. method.IsPingMode .. "\n")

  method.SetMapSize = type(widget.SetMapSize)
  file:write("Roadmap SetMapSize " .. method.SetMapSize .. "\n")

  method.SetRoadMapNpc = type(widget.SetRoadMapNpc)
  file:write("Roadmap SetRoadMapNpc " .. method.SetRoadMapNpc .. "\n")

  method.ShowLeaderPing = type(widget.ShowLeaderPing)
  file:write("Roadmap ShowLeaderPing " .. method.ShowLeaderPing .. "\n")

  method.Down = type(widget.Down)
  file:write("Slider Down " .. method.Down .. "\n")

  method.GetMinMaxValues = type(widget.GetMinMaxValues)
  file:write("Slider GetMinMaxValues " .. method.GetMinMaxValues .. "\n")

  method.GetOrientation = type(widget.GetOrientation)
  file:write("Slider GetOrientation " .. method.GetOrientation .. "\n")

  method.GetThumbButtonWidget = type(widget.GetThumbButtonWidget)
  file:write("Slider GetThumbButtonWidget " .. method.GetThumbButtonWidget .. "\n")

  method.GetThumbDrawable = type(widget.GetThumbDrawable)
  file:write("Slider GetThumbDrawable " .. method.GetThumbDrawable .. "\n")

  method.GetValueStep = type(widget.GetValueStep)
  file:write("Slider GetValueStep " .. method.GetValueStep .. "\n")

  method.SetFixedThumb = type(widget.SetFixedThumb)
  file:write("Slider SetFixedThumb " .. method.SetFixedThumb .. "\n")

  method.SetInset = type(widget.SetInset)
  file:write("Slider SetInset " .. method.SetInset .. "\n")

  method.SetMinMaxValues = type(widget.SetMinMaxValues)
  file:write("Slider SetMinMaxValues " .. method.SetMinMaxValues .. "\n")

  method.SetMinThumbLength = type(widget.SetMinThumbLength)
  file:write("Slider SetMinThumbLength " .. method.SetMinThumbLength .. "\n")

  method.SetOrientation = type(widget.SetOrientation)
  file:write("Slider SetOrientation " .. method.SetOrientation .. "\n")

  method.SetPageStep = type(widget.SetPageStep)
  file:write("Slider SetPageStep " .. method.SetPageStep .. "\n")

  method.SetThumbButtonWidget = type(widget.SetThumbButtonWidget)
  file:write("Slider SetThumbButtonWidget " .. method.SetThumbButtonWidget .. "\n")

  method.SetValue = type(widget.SetValue)
  file:write("Slider SetValue " .. method.SetValue .. "\n")

  method.SetValueStep = type(widget.SetValueStep)
  file:write("Slider SetValueStep " .. method.SetValueStep .. "\n")

  method.Up = type(widget.Up)
  file:write("Slider Up " .. method.Up .. "\n")

  method.ChangeIconLayer = type(widget.ChangeIconLayer)
  file:write("Slot ChangeIconLayer " .. method.ChangeIconLayer .. "\n")

  method.DisableDefaultClick = type(widget.DisableDefaultClick)
  file:write("Slot DisableDefaultClick " .. method.DisableDefaultClick .. "\n")

  method.EstablishItem = type(widget.EstablishItem)
  file:write("Slot EstablishItem " .. method.EstablishItem .. "\n")

  method.EstablishSkill = type(widget.EstablishSkill)
  file:write("Slot EstablishSkill " .. method.EstablishSkill .. "\n")

  method.EstablishSkillAlert = type(widget.EstablishSkillAlert)
  file:write("Slot EstablishSkillAlert " .. method.EstablishSkillAlert .. "\n")

  method.EstablishSkillSlot = type(widget.EstablishSkillSlot)
  file:write("Slot EstablishSkillSlot " .. method.EstablishSkillSlot .. "\n")

  method.EstablishSlot = type(widget.EstablishSlot)
  file:write("Slot EstablishSlot " .. method.EstablishSlot .. "\n")

  method.EstablishVirtualSlot = type(widget.EstablishVirtualSlot)
  file:write("Slot EstablishVirtualSlot " .. method.EstablishVirtualSlot .. "\n")

  method.GetBindedType = type(widget.GetBindedType)
  file:write("Slot GetBindedType " .. method.GetBindedType .. "\n")

  method.GetExtraInfo = type(widget.GetExtraInfo)
  file:write("Slot GetExtraInfo " .. method.GetExtraInfo .. "\n")

  method.GetHotKey = type(widget.GetHotKey)
  file:write("Slot GetHotKey " .. method.GetHotKey .. "\n")

  method.GetItemLevelRequirment = type(widget.GetItemLevelRequirment)
  file:write("Slot GetItemLevelRequirment " .. method.GetItemLevelRequirment .. "\n")

  method.GetPassiveBuffType = type(widget.GetPassiveBuffType)
  file:write("Slot GetPassiveBuffType " .. method.GetPassiveBuffType .. "\n")

  method.GetSkillType = type(widget.GetSkillType)
  file:write("Slot GetSkillType " .. method.GetSkillType .. "\n")

  method.GetTooltip = type(widget.GetTooltip)
  file:write("Slot GetTooltip " .. method.GetTooltip .. "\n")

  method.IsEmpty = type(widget.IsEmpty)
  file:write("Slot IsEmpty " .. method.IsEmpty .. "\n")

  method.ReleaseSlot = type(widget.ReleaseSlot)
  file:write("Slot ReleaseSlot " .. method.ReleaseSlot .. "\n")

  method.ResetState = type(widget.ResetState)
  file:write("Slot ResetState " .. method.ResetState .. "\n")

  method.AddAnchorChildToBar = type(widget.AddAnchorChildToBar)
  file:write("Statusbar AddAnchorChildToBar " .. method.AddAnchorChildToBar .. "\n")

  method.GetBarColor = type(widget.GetBarColor)
  file:write("Statusbar GetBarColor " .. method.GetBarColor .. "\n")

  method.GetLeftWidth = type(widget.GetLeftWidth)
  file:write("Statusbar GetLeftWidth " .. method.GetLeftWidth .. "\n")

  method.GetMinMaxValues = type(widget.GetMinMaxValues)
  file:write("Statusbar GetMinMaxValues " .. method.GetMinMaxValues .. "\n")

  method.GetOrientation = type(widget.GetOrientation)
  file:write("Statusbar GetOrientation " .. method.GetOrientation .. "\n")

  method.IsChangeAfterImageColor = type(widget.IsChangeAfterImageColor)
  file:write("Statusbar IsChangeAfterImageColor " .. method.IsChangeAfterImageColor .. "\n")

  method.SetBarColor = type(widget.SetBarColor)
  file:write("Statusbar SetBarColor " .. method.SetBarColor .. "\n")

  method.SetBarColorByKey = type(widget.SetBarColorByKey)
  file:write("Statusbar SetBarColorByKey " .. method.SetBarColorByKey .. "\n")

  method.SetBarTexture = type(widget.SetBarTexture)
  file:write("Statusbar SetBarTexture " .. method.SetBarTexture .. "\n")

  method.SetBarTextureByKey = type(widget.SetBarTextureByKey)
  file:write("Statusbar SetBarTextureByKey " .. method.SetBarTextureByKey .. "\n")

  method.SetBarTextureCoords = type(widget.SetBarTextureCoords)
  file:write("Statusbar SetBarTextureCoords " .. method.SetBarTextureCoords .. "\n")

  method.SetMinMaxValues = type(widget.SetMinMaxValues)
  file:write("Statusbar SetMinMaxValues " .. method.SetMinMaxValues .. "\n")

  method.SetMinMaxValuesForString = type(widget.SetMinMaxValuesForString)
  file:write("Statusbar SetMinMaxValuesForString " .. method.SetMinMaxValuesForString .. "\n")

  method.SetOrientation = type(widget.SetOrientation)
  file:write("Statusbar SetOrientation " .. method.SetOrientation .. "\n")

  method.SetValue = type(widget.SetValue)
  file:write("Statusbar SetValue " .. method.SetValue .. "\n")

  method.SetValueForString = type(widget.SetValueForString)
  file:write("Statusbar SetValueForString " .. method.SetValueForString .. "\n")

  method.GetSelectedTab = type(widget.GetSelectedTab)
  file:write("Tabbase GetSelectedTab " .. method.GetSelectedTab .. "\n")

  method.RemoveAllTabs = type(widget.RemoveAllTabs)
  file:write("Tabbase RemoveAllTabs " .. method.RemoveAllTabs .. "\n")

  method.RemoveTab = type(widget.RemoveTab)
  file:write("Tabbase RemoveTab " .. method.RemoveTab .. "\n")

  method.SelectTab = type(widget.SelectTab)
  file:write("Tabbase SelectTab " .. method.SelectTab .. "\n")

  method.SetGap = type(widget.SetGap)
  file:write("Tabbase SetGap " .. method.SetGap .. "\n")

  method.SetOffset = type(widget.SetOffset)
  file:write("Tabbase SetOffset " .. method.SetOffset .. "\n")

  method.AddNewTab = type(widget.AddNewTab)
  file:write("Tab AddNewTab " .. method.AddNewTab .. "\n")

  method.AddSimpleTab = type(widget.AddSimpleTab)
  file:write("Tab AddSimpleTab " .. method.AddSimpleTab .. "\n")

  method.AlignTabButtons = type(widget.AlignTabButtons)
  file:write("Tab AlignTabButtons " .. method.AlignTabButtons .. "\n")

  method.GetActivateTabCount = type(widget.GetActivateTabCount)
  file:write("Tab GetActivateTabCount " .. method.GetActivateTabCount .. "\n")

  method.GetTabCount = type(widget.GetTabCount)
  file:write("Tab GetTabCount " .. method.GetTabCount .. "\n")

  method.HideTab = type(widget.HideTab)
  file:write("Tab HideTab " .. method.HideTab .. "\n")

  method.IsHideTab = type(widget.IsHideTab)
  file:write("Tab IsHideTab " .. method.IsHideTab .. "\n")

  method.SetActivateTabCount = type(widget.SetActivateTabCount)
  file:write("Tab SetActivateTabCount " .. method.SetActivateTabCount .. "\n")

  method.SetCorner = type(widget.SetCorner)
  file:write("Tab SetCorner " .. method.SetCorner .. "\n")

  method.SetVertical = type(widget.SetVertical)
  file:write("Tab SetVertical " .. method.SetVertical .. "\n")

  method.ShowTab = type(widget.ShowTab)
  file:write("Tab ShowTab " .. method.ShowTab .. "\n")

  method.AddTab = type(widget.AddTab)
  file:write("ChatTab AddTab " .. method.AddTab .. "\n")
  method.AllowTabSwitch = type(widget.AllowTabSwitch)
  file:write("ChatTab AllowTabSwitch " .. method.AllowTabSwitch .. "\n")
  method.GetAddButton = type(widget.GetAddButton)
  file:write("ChatTab GetAddButton " .. method.GetAddButton .. "\n")

  method.GetCaretDrawable = type(widget.GetCaretDrawable)
  file:write("ChatTab GetCaretDrawable " .. method.GetCaretDrawable .. "\n")

  method.GetLeftLineDrawable = type(widget.GetLeftLineDrawable)
  file:write("ChatTab GetLeftLineDrawable " .. method.GetLeftLineDrawable .. "\n")

  method.GetLockNotifyDrawable = type(widget.GetLockNotifyDrawable)
  file:write("ChatTab GetLockNotifyDrawable " .. method.GetLockNotifyDrawable .. "\n")

  method.GetRightLineDrawable = type(widget.GetRightLineDrawable)
  file:write("ChatTab GetRightLineDrawable " .. method.GetRightLineDrawable .. "\n")

  method.SetCaretOffset = type(widget.SetCaretOffset)
  file:write("ChatTab SetCaretOffset " .. method.SetCaretOffset .. "\n")

  method.SetContentOffset = type(widget.SetContentOffset)
  file:write("ChatTab SetContentOffset " .. method.SetContentOffset .. "\n")

  method.SetInjectable = type(widget.SetInjectable)
  file:write("ChatTab SetInjectable " .. method.SetInjectable .. "\n")

  method.SetLeftLineOffset = type(widget.SetLeftLineOffset)
  file:write("ChatTab SetLeftLineOffset " .. method.SetLeftLineOffset .. "\n")

  method.SetMaxNotifyTime = type(widget.SetMaxNotifyTime)
  file:write("ChatTab SetMaxNotifyTime " .. method.SetMaxNotifyTime .. "\n")

  method.SetMinTabWidth = type(widget.SetMinTabWidth)
  file:write("ChatTab SetMinTabWidth " .. method.SetMinTabWidth .. "\n")

  method.SetNotifyBlinkingFreq = type(widget.SetNotifyBlinkingFreq)
  file:write("ChatTab SetNotifyBlinkingFreq " .. method.SetNotifyBlinkingFreq .. "\n")

  method.SetRightLineOffset = type(widget.SetRightLineOffset)
  file:write("ChatTab SetRightLineOffset " .. method.SetRightLineOffset .. "\n")

  method.SetSlideTimeInDragging = type(widget.SetSlideTimeInDragging)
  file:write("ChatTab SetSlideTimeInDragging " .. method.SetSlideTimeInDragging .. "\n")

  method.SetTabAreaHeight = type(widget.SetTabAreaHeight)
  file:write("ChatTab SetTabAreaHeight " .. method.SetTabAreaHeight .. "\n")

  method.SetTabAreaInset = type(widget.SetTabAreaInset)
  file:write("ChatTab SetTabAreaInset " .. method.SetTabAreaInset .. "\n")

  method.SetTabButtonAlpha = type(widget.SetTabButtonAlpha)
  file:write("ChatTab SetTabButtonAlpha " .. method.SetTabButtonAlpha .. "\n")

  method.SetTabWidth = type(widget.SetTabWidth)
  file:write("ChatTab SetTabWidth " .. method.SetTabWidth .. "\n")

  method.UseAddTabButton = type(widget.UseAddTabButton)
  file:write("ChatTab UseAddTabButton " .. method.UseAddTabButton .. "\n")

  method.UseAutoResizingTabButtonMode = type(widget.UseAutoResizingTabButtonMode)
  file:write("ChatTab UseAutoResizingTabButtonMode " .. method.UseAutoResizingTabButtonMode .. "\n")

  method.UseSlidingButton = type(widget.UseSlidingButton)
  file:write("ChatTab UseSlidingButton " .. method.UseSlidingButton .. "\n")

  method.GetInset = type(widget.GetInset)
  file:write("Textbox GetInset " .. method.GetInset .. "\n")

  method.GetLineCount = type(widget.GetLineCount)
  file:write("Textbox GetLineCount " .. method.GetLineCount .. "\n")

  method.GetLineLength = type(widget.GetLineLength)
  file:write("Textbox GetLineLength " .. method.GetLineLength .. "\n")

  method.GetLongestLineWidth = type(widget.GetLongestLineWidth)
  file:write("Textbox GetLongestLineWidth " .. method.GetLongestLineWidth .. "\n")

  method.GetTextHeight = type(widget.GetTextHeight)
  file:write("Textbox GetTextHeight " .. method.GetTextHeight .. "\n")

  method.GetTextLength = type(widget.GetTextLength)
  file:write("Textbox GetTextLength " .. method.GetTextLength .. "\n")

  method.SetAutoResize = type(widget.SetAutoResize)
  file:write("Textbox SetAutoResize " .. method.SetAutoResize .. "\n")

  method.SetAutoWordwrap = type(widget.SetAutoWordwrap)
  file:write("Textbox SetAutoWordwrap " .. method.SetAutoWordwrap .. "\n")

  method.SetInset = type(widget.SetInset)
  file:write("Textbox SetInset " .. method.SetInset .. "\n")

  method.SetLineColor = type(widget.SetLineColor)
  file:write("Textbox SetLineColor " .. method.SetLineColor .. "\n")

  method.SetLineHeight = type(widget.SetLineHeight)
  file:write("Textbox SetLineHeight " .. method.SetLineHeight .. "\n")

  method.SetLineSpace = type(widget.SetLineSpace)
  file:write("Textbox SetLineSpace " .. method.SetLineSpace .. "\n")

  method.SetStrikeThrough = type(widget.SetStrikeThrough)
  file:write("Textbox SetStrikeThrough " .. method.SetStrikeThrough .. "\n")

  method.SetTextAutoWidth = type(widget.SetTextAutoWidth)
  file:write("Textbox SetTextAutoWidth " .. method.SetTextAutoWidth .. "\n")

  method.SetUnderLine = type(widget.SetUnderLine)
  file:write("Textbox SetUnderLine " .. method.SetUnderLine .. "\n")

  method.GetLineHeight = type(widget.GetLineHeight)
  file:write("TextStyle GetLineHeight " .. method.GetLineHeight .. "\n")

  method.GetTextWidth = type(widget.GetTextWidth)
  file:write("TextStyle GetTextWidth " .. method.GetTextWidth .. "\n")

  method.SetAlign = type(widget.SetAlign)
  file:write("TextStyle SetAlign " .. method.SetAlign .. "\n")

  method.SetColor = type(widget.SetColor)
  file:write("TextStyle SetColor " .. method.SetColor .. "\n")

  method.SetColorByKey = type(widget.SetColorByKey)
  file:write("TextStyle SetColorByKey " .. method.SetColorByKey .. "\n")

  method.SetEllipsis = type(widget.SetEllipsis)
  file:write("TextStyle SetEllipsis " .. method.SetEllipsis .. "\n")

  method.SetFont = type(widget.SetFont)
  file:write("TextStyle SetFont " .. method.SetFont .. "\n")

  method.SetFontSize = type(widget.SetFontSize)
  file:write("TextStyle SetFontSize " .. method.SetFontSize .. "\n")

  method.SetOutline = type(widget.SetOutline)
  file:write("TextStyle SetOutline " .. method.SetOutline .. "\n")

  method.SetShadow = type(widget.SetShadow)
  file:write("TextStyle SetShadow " .. method.SetShadow .. "\n")

  method.SetSnap = type(widget.SetSnap)
  file:write("TextStyle SetSnap " .. method.SetSnap .. "\n")

  method.AddAnchor = type(widget.AddAnchor)
  file:write("Uibounds AddAnchor " .. method.AddAnchor .. "\n")

  method.BindWidth = type(widget.BindWidth)
  file:write("Uibounds BindWidth " .. method.BindWidth .. "\n")

  method.CheckOutOfScreen = type(widget.CheckOutOfScreen)
  file:write("Uibounds CheckOutOfScreen " .. method.CheckOutOfScreen .. "\n")

  method.CorrectOffsetByScreen = type(widget.CorrectOffsetByScreen)
  file:write("Uibounds CorrectOffsetByScreen " .. method.CorrectOffsetByScreen .. "\n")

  method.GetEffectiveExtent = type(widget.GetEffectiveExtent)
  file:write("Uibounds GetEffectiveExtent " .. method.GetEffectiveExtent .. "\n")

  method.GetEffectiveOffset = type(widget.GetEffectiveOffset)
  file:write("Uibounds GetEffectiveOffset " .. method.GetEffectiveOffset .. "\n")

  method.GetExtent = type(widget.GetExtent)
  file:write("Uibounds GetExtent " .. method.GetExtent .. "\n")

  method.GetHeight = type(widget.GetHeight)
  file:write("Uibounds GetHeight " .. method.GetHeight .. "\n")

  method.GetOffset = type(widget.GetOffset)
  file:write("Uibounds GetOffset " .. method.GetOffset .. "\n")

  method.GetWidth = type(widget.GetWidth)
  file:write("Uibounds GetWidth " .. method.GetWidth .. "\n")

  method.RemoveAllAnchors = type(widget.RemoveAllAnchors)
  file:write("Uibounds RemoveAllAnchors " .. method.RemoveAllAnchors .. "\n")

  method.SetExtent = type(widget.SetExtent)
  file:write("Uibounds SetExtent " .. method.SetExtent .. "\n")

  method.SetHeight = type(widget.SetHeight)
  file:write("Uibounds SetHeight " .. method.SetHeight .. "\n")

  method.SetWidth = type(widget.SetWidth)
  file:write("Uibounds SetWidth " .. method.SetWidth .. "\n")

  method.GetId = type(widget.GetId)
  file:write("Uiobject GetId " .. method.GetId .. "\n")

  method.GetName = type(widget.GetName)
  file:write("Uiobject GetName " .. method.GetName .. "\n")

  method.GetObjectType = type(widget.GetObjectType)
  file:write("Uiobject GetObjectType " .. method.GetObjectType .. "\n")

  method.IsValidUIObject = type(widget.IsValidUIObject)
  file:write("Uiobject IsValidUIObject " .. method.IsValidUIObject .. "\n")

  method.ClearFocus = type(widget.ClearFocus)
  file:write("Webbrowser ClearFocus " .. method.ClearFocus .. "\n")

  method.GetURL = type(widget.GetURL)
  file:write("Webbrowser GetURL " .. method.GetURL .. "\n")

  method.LoadBlankPage = type(widget.LoadBlankPage)
  file:write("Webbrowser LoadBlankPage " .. method.LoadBlankPage .. "\n")

  method.MouseDown = type(widget.MouseDown)
  file:write("Webbrowser MouseDown " .. method.MouseDown .. "\n")

  method.MouseMove = type(widget.MouseMove)
  file:write("Webbrowser MouseMove " .. method.MouseMove .. "\n")

  method.MouseUp = type(widget.MouseUp)
  file:write("Webbrowser MouseUp " .. method.MouseUp .. "\n")

  method.RequestExpeditionBBS = type(widget.RequestExpeditionBBS)
  file:write("Webbrowser RequestExpeditionBBS " .. method.RequestExpeditionBBS .. "\n")

  method.RequestExpeditionHome = type(widget.RequestExpeditionHome)
  file:write("Webbrowser RequestExpeditionHome " .. method.RequestExpeditionHome .. "\n")

  method.RequestExternalPage = type(widget.RequestExternalPage)
  file:write("Webbrowser RequestExternalPage " .. method.RequestExternalPage .. "\n")

  method.RequestHelp = type(widget.RequestHelp)
  file:write("Webbrowser RequestHelp " .. method.RequestHelp .. "\n")

  method.RequestMessenger = type(widget.RequestMessenger)
  file:write("Webbrowser RequestMessenger " .. method.RequestMessenger .. "\n")

  method.RequestMessengerByPcName = type(widget.RequestMessengerByPcName)
  file:write("Webbrowser RequestMessengerByPcName " .. method.RequestMessengerByPcName .. "\n")

  method.RequestMessengerOnTarget = type(widget.RequestMessengerOnTarget)
  file:write("Webbrowser RequestMessengerOnTarget " .. method.RequestMessengerOnTarget .. "\n")

  method.RequestPlayDiary = type(widget.RequestPlayDiary)
  file:write("Webbrowser RequestPlayDiary " .. method.RequestPlayDiary .. "\n")

  method.RequestPlayDiaryByPcName = type(widget.RequestPlayDiaryByPcName)
  file:write("Webbrowser RequestPlayDiaryByPcName " .. method.RequestPlayDiaryByPcName .. "\n")

  method.RequestPlayDiaryInstant = type(widget.RequestPlayDiaryInstant)
  file:write("Webbrowser RequestPlayDiaryInstant " .. method.RequestPlayDiaryInstant .. "\n")

  method.RequestPlayDiaryOnTarget = type(widget.RequestPlayDiaryOnTarget)
  file:write("Webbrowser RequestPlayDiaryOnTarget " .. method.RequestPlayDiaryOnTarget .. "\n")

  method.RequestSensitiveOperationVerify = type(widget.RequestSensitiveOperationVerify)
  file:write("Webbrowser RequestSensitiveOperationVerify " .. method.RequestSensitiveOperationVerify .. "\n")

  method.RequestTest = type(widget.RequestTest)
  file:write("Webbrowser RequestTest " .. method.RequestTest .. "\n")

  method.RequestTGOS = type(widget.RequestTGOS)
  file:write("Webbrowser RequestTGOS " .. method.RequestTGOS .. "\n")

  method.RequestWiki = type(widget.RequestWiki)
  file:write("Webbrowser RequestWiki " .. method.RequestWiki .. "\n")

  method.SetDefaultDrawable = type(widget.SetDefaultDrawable)
  file:write("Webbrowser SetDefaultDrawable " .. method.SetDefaultDrawable .. "\n")

  method.SetEscEvent = type(widget.SetEscEvent)
  file:write("Webbrowser SetEscEvent " .. method.SetEscEvent .. "\n")

  method.SetFocus = type(widget.SetFocus)
  file:write("Webbrowser SetFocus " .. method.SetFocus .. "\n")

  method.SetLoadingDrawable = type(widget.SetLoadingDrawable)
  file:write("Webbrowser SetLoadingDrawable " .. method.SetLoadingDrawable .. "\n")

  method.SetMsgToParent = type(widget.SetMsgToParent)
  file:write("Webbrowser SetMsgToParent " .. method.SetMsgToParent .. "\n")

  method.SetUiLayer = type(widget.SetUiLayer)
  file:write("Webbrowser SetUiLayer " .. method.SetUiLayer .. "\n")

  method.SetURL = type(widget.SetURL)
  file:write("Webbrowser SetURL " .. method.SetURL .. "\n")

  method.SetZoomLevel = type(widget.SetZoomLevel)
  file:write("Webbrowser SetZoomLevel " .. method.SetZoomLevel .. "\n")

  method.WheelDown = type(widget.WheelDown)
  file:write("Webbrowser WheelDown " .. method.WheelDown .. "\n")

  method.WheelUp = type(widget.WheelUp)
  file:write("Webbrowser WheelUp " .. method.WheelUp .. "\n")

  method.DisableDrawables = type(widget.DisableDrawables)
  file:write("Widget DisableDrawables " .. method.DisableDrawables .. "\n")

  method.DisableDrawablesWithChildren = type(widget.DisableDrawablesWithChildren)
  file:write("Widget DisableDrawablesWithChildren " .. method.DisableDrawablesWithChildren .. "\n")

  method.EnableDrawables = type(widget.EnableDrawables)
  file:write("Widget EnableDrawables " .. method.EnableDrawables .. "\n")

  method.EnableDrawablesWithChildren = type(widget.EnableDrawablesWithChildren)
  file:write("Widget EnableDrawablesWithChildren " .. method.EnableDrawablesWithChildren .. "\n")

  method.GetRotation = type(widget.GetRotation)
  file:write("Widget GetRotation " .. method.GetRotation .. "\n")

  method.RemoveAllDrawables = type(widget.RemoveAllDrawables)
  file:write("Widget RemoveAllDrawables " .. method.RemoveAllDrawables .. "\n")

  method.RemoveDrawable = type(widget.RemoveDrawable)
  file:write("Widget RemoveDrawable " .. method.RemoveDrawable .. "\n")

  method.SetLayerColor = type(widget.SetLayerColor)
  file:write("Widget SetLayerColor " .. method.SetLayerColor .. "\n")

  method.SetRotation = type(widget.SetRotation)
  file:write("Widget SetRotation " .. method.SetRotation .. "\n")

  method.UseDynamicContentState = type(widget.UseDynamicContentState)
  file:write("Widget UseDynamicContentState " .. method.UseDynamicContentState .. "\n")

  method.UseDynamicDrawableState = type(widget.UseDynamicDrawableState)
  file:write("Widget UseDynamicDrawableState " .. method.UseDynamicDrawableState .. "\n")

  method.ApplyUIScale = type(widget.ApplyUIScale)
  file:write("Widgetbase ApplyUIScale " .. method.ApplyUIScale .. "\n")

  method.AttachWidget = type(widget.AttachWidget)
  file:write("Widgetbase AttachWidget " .. method.AttachWidget .. "\n")

  method.CancelRequestCharacterCacheData = type(widget.CancelRequestCharacterCacheData)
  file:write("Widgetbase CancelRequestCharacterCacheData " .. method.CancelRequestCharacterCacheData .. "\n")

  method.ChangeChildAnchorByScrollValue = type(widget.ChangeChildAnchorByScrollValue)
  file:write("Widgetbase ChangeChildAnchorByScrollValue " .. method.ChangeChildAnchorByScrollValue .. "\n")

  method.Clickable = type(widget.Clickable)
  file:write("Widgetbase Clickable " .. method.Clickable .. "\n")

  method.CreateChildWidget = type(widget.CreateChildWidget)
  file:write("Widgetbase CreateChildWidget " .. method.CreateChildWidget .. "\n")

  method.CreateChildWidgetByType = type(widget.CreateChildWidgetByType)
  file:write("Widgetbase CreateChildWidgetByType " .. method.CreateChildWidgetByType .. "\n")

  method.CreateColorDrawable = type(widget.CreateColorDrawable)
  file:write("Widgetbase CreateColorDrawable " .. method.CreateColorDrawable .. "\n")

  method.CreateColorDrawableByKey = type(widget.CreateColorDrawableByKey)
  file:write("Widgetbase CreateColorDrawableByKey " .. method.CreateColorDrawableByKey .. "\n")

  method.CreateDrawable = type(widget.CreateDrawable)
  file:write("Widgetbase CreateDrawable " .. method.CreateDrawable .. "\n")

  method.CreateEffectDrawable = type(widget.CreateEffectDrawable)
  file:write("Widgetbase CreateEffectDrawable " .. method.CreateEffectDrawable .. "\n")

  method.CreateEffectDrawableByKey = type(widget.CreateEffectDrawableByKey)
  file:write("Widgetbase CreateEffectDrawableByKey " .. method.CreateEffectDrawableByKey .. "\n")

  method.CreateIconDrawable = type(widget.CreateIconDrawable)
  file:write("Widgetbase CreateIconDrawable " .. method.CreateIconDrawable .. "\n")

  method.CreateImageDrawable = type(widget.CreateImageDrawable)
  file:write("Widgetbase CreateImageDrawable " .. method.CreateImageDrawable .. "\n")

  method.CreateNinePartDrawable = type(widget.CreateNinePartDrawable)
  file:write("Widgetbase CreateNinePartDrawable " .. method.CreateNinePartDrawable .. "\n")

  method.CreateTextDrawable = type(widget.CreateTextDrawable)
  file:write("Widgetbase CreateTextDrawable " .. method.CreateTextDrawable .. "\n")

  method.CreateThreeColorDrawable = type(widget.CreateThreeColorDrawable)
  file:write("Widgetbase CreateThreeColorDrawable " .. method.CreateThreeColorDrawable .. "\n")

  method.CreateThreePartDrawable = type(widget.CreateThreePartDrawable)
  file:write("Widgetbase CreateThreePartDrawable " .. method.CreateThreePartDrawable .. "\n")

  method.DetachWidget = type(widget.DetachWidget)
  file:write("Widgetbase DetachWidget " .. method.DetachWidget .. "\n")

  method.Enable = type(widget.Enable)
  file:write("Widgetbase Enable " .. method.Enable .. "\n")

  method.EnableDrag = type(widget.EnableDrag)
  file:write("Widgetbase EnableDrag " .. method.EnableDrag .. "\n")

  method.EnableFocus = type(widget.EnableFocus)
  file:write("Widgetbase EnableFocus " .. method.EnableFocus .. "\n")

  method.EnableHidingIsRemove = type(widget.EnableHidingIsRemove)
  file:write("Widgetbase EnableHidingIsRemove " .. method.EnableHidingIsRemove .. "\n")

  method.EnableKeyboard = type(widget.EnableKeyboard)
  file:write("Widgetbase EnableKeyboard " .. method.EnableKeyboard .. "\n")

  method.EnablePick = type(widget.EnablePick)
  file:write("Widgetbase EnablePick " .. method.EnablePick .. "\n")

  method.EnableScroll = type(widget.EnableScroll)
  file:write("Widgetbase EnableScroll " .. method.EnableScroll .. "\n")

  method.GetAlpha = type(widget.GetAlpha)
  file:write("Widgetbase GetAlpha " .. method.GetAlpha .. "\n")

  method.GetAttachedWidget = type(widget.GetAttachedWidget)
  file:write("Widgetbase GetAttachedWidget " .. method.GetAttachedWidget .. "\n")

  method.GetParent = type(widget.GetParent)
  file:write("Widgetbase GetParent " .. method.GetParent .. "\n")

  method.GetText = type(widget.GetText)
  file:write("Widgetbase GetText " .. method.GetText .. "\n")

  method.GetUILayer = type(widget.GetUILayer)
  file:write("Widgetbase GetUILayer " .. method.GetUILayer .. "\n")

  method.GetValue = type(widget.GetValue)
  file:write("Widgetbase GetValue " .. method.GetValue .. "\n")

  method.HasHandler = type(widget.HasHandler)
  file:write("Widgetbase HasHandler " .. method.HasHandler .. "\n")

  method.InheritAnimationData = type(widget.InheritAnimationData)
  file:write("Widgetbase InheritAnimationData " .. method.InheritAnimationData .. "\n")

  method.IsDescendantWidget = type(widget.IsDescendantWidget)
  file:write("Widgetbase IsDescendantWidget " .. method.IsDescendantWidget .. "\n")

  method.IsEnabled = type(widget.IsEnabled)
  file:write("Widgetbase IsEnabled " .. method.IsEnabled .. "\n")

  method.IsMouseOver = type(widget.IsMouseOver)
  file:write("Widgetbase IsMouseOver " .. method.IsMouseOver .. "\n")

  method.IsNowAnimation = type(widget.IsNowAnimation)
  file:write("Widgetbase IsNowAnimation " .. method.IsNowAnimation .. "\n")

  method.IsVisible = type(widget.IsVisible)
  file:write("Widgetbase IsVisible " .. method.IsVisible .. "\n")

  method.Lower = type(widget.Lower)
  file:write("Widgetbase Lower " .. method.Lower .. "\n")

  method.MoveTo = type(widget.MoveTo)
  file:write("Widgetbase MoveTo " .. method.MoveTo .. "\n")

  method.Raise = type(widget.Raise)
  file:write("Widgetbase Raise " .. method.Raise .. "\n")

  method.RegisterEvent = type(widget.RegisterEvent)
  file:write("Widgetbase RegisterEvent " .. method.RegisterEvent .. "\n")

  method.ReleaseDeletedHandler = type(widget.ReleaseDeletedHandler)
  file:write("Widgetbase ReleaseDeletedHandler " .. method.ReleaseDeletedHandler .. "\n")

  method.ReleaseHandler = type(widget.ReleaseHandler)
  file:write("Widgetbase ReleaseHandler " .. method.ReleaseHandler .. "\n")

  method.RequestCharacterCacheData = type(widget.RequestCharacterCacheData)
  file:write("Widgetbase RequestCharacterCacheData " .. method.RequestCharacterCacheData .. "\n")

  method.SetAlpha = type(widget.SetAlpha)
  file:write("Widgetbase SetAlpha " .. method.SetAlpha .. "\n")

  method.SetAlphaAnimation = type(widget.SetAlphaAnimation)
  file:write("Widgetbase SetAlphaAnimation " .. method.SetAlphaAnimation .. "\n")

  method.SetCategory = type(widget.SetCategory)
  file:write("Widgetbase SetCategory " .. method.SetCategory .. "\n")

  method.SetCharacterCacheDataHandler = type(widget.SetCharacterCacheDataHandler)
  file:write("Widgetbase SetCharacterCacheDataHandler " .. method.SetCharacterCacheDataHandler .. "\n")

  method.SetDelegator = type(widget.SetDelegator)
  file:write("Widgetbase SetDelegator " .. method.SetDelegator .. "\n")

  method.SetDeletedHandler = type(widget.SetDeletedHandler)
  file:write("Widgetbase SetDeletedHandler " .. method.SetDeletedHandler .. "\n")

  method.SetDragCondition = type(widget.SetDragCondition)
  file:write("Widgetbase SetDragCondition " .. method.SetDragCondition .. "\n")

  method.SetDrawableLayerAlpha = type(widget.SetDrawableLayerAlpha)
  file:write("Widgetbase SetDrawableLayerAlpha " .. method.SetDrawableLayerAlpha .. "\n")

  method.SetDrawPriority = type(widget.SetDrawPriority)
  file:write("Widgetbase SetDrawPriority " .. method.SetDrawPriority .. "\n")

  method.SetHandler = type(widget.SetHandler)
  file:write("Widgetbase SetHandler " .. method.SetHandler .. "\n")

  method.SetLText = type(widget.SetLText)
  file:write("Widgetbase SetLText " .. method.SetLText .. "\n")

  method.SetMaxResizingExtent = type(widget.SetMaxResizingExtent)
  file:write("Widgetbase SetMaxResizingExtent " .. method.SetMaxResizingExtent .. "\n")

  method.SetMinResizingExtent = type(widget.SetMinResizingExtent)
  file:write("Widgetbase SetMinResizingExtent " .. method.SetMinResizingExtent .. "\n")

  method.SetMoveAnimation = type(widget.SetMoveAnimation)
  file:write("Widgetbase SetMoveAnimation " .. method.SetMoveAnimation .. "\n")

  method.SetResizingBorderSize = type(widget.SetResizingBorderSize)
  file:write("Widgetbase SetResizingBorderSize " .. method.SetResizingBorderSize .. "\n")

  method.SetScale = type(widget.SetScale)
  file:write("Widgetbase SetScale " .. method.SetScale .. "\n")

  method.SetScaleAnimation = type(widget.SetScaleAnimation)
  file:write("Widgetbase SetScaleAnimation " .. method.SetScaleAnimation .. "\n")

  method.SetSounds = type(widget.SetSounds)
  file:write("Widgetbase SetSounds " .. method.SetSounds .. "\n")

  method.SetStartAnimation = type(widget.SetStartAnimation)
  file:write("Widgetbase SetStartAnimation " .. method.SetStartAnimation .. "\n")

  method.SetText = type(widget.SetText)
  file:write("Widgetbase SetText " .. method.SetText .. "\n")

  method.Show = type(widget.Show)
  file:write("Widgetbase Show " .. method.Show .. "\n")

  method.StartMoving = type(widget.StartMoving)
  file:write("Widgetbase StartMoving " .. method.StartMoving .. "\n")

  method.StartSizing = type(widget.StartSizing)
  file:write("Widgetbase StartSizing " .. method.StartSizing .. "\n")

  method.StopMovingOrSizing = type(widget.StopMovingOrSizing)
  file:write("Widgetbase StopMovingOrSizing " .. method.StopMovingOrSizing .. "\n")

  method.TriggerMoveAnimation = type(widget.TriggerMoveAnimation)
  file:write("Widgetbase TriggerMoveAnimation " .. method.TriggerMoveAnimation .. "\n")

  method.UseResizing = type(widget.UseResizing)
  file:write("Widgetbase UseResizing " .. method.UseResizing .. "\n")

  method.SetCloseOnEscape = type(widget.SetCloseOnEscape)
  file:write("Window SetCloseOnEscape " .. method.SetCloseOnEscape .. "\n")

  method.SetTitleInset = type(widget.SetTitleInset)
  file:write("Window SetTitleInset " .. method.SetTitleInset .. "\n")

  method.SetTitleText = type(widget.SetTitleText)
  file:write("Window SetTitleText " .. method.SetTitleText .. "\n")

  method.SetUILayer = type(widget.SetUILayer)
  file:write("Window SetUILayer " .. method.SetUILayer .. "\n")

  method.SetWindowModal = type(widget.SetWindowModal)
  file:write("Window SetWindowModal " .. method.SetWindowModal .. "\n")

  method.GetClimateInfo = type(widget.GetClimateInfo)
  file:write("Worldmap GetClimateInfo " .. method.GetClimateInfo .. "\n")

  method.GetCursorSextants = type(widget.GetCursorSextants)
  file:write("Worldmap GetCursorSextants " .. method.GetCursorSextants .. "\n")

  method.GetIconDrawable = type(widget.GetIconDrawable)
  file:write("Worldmap GetIconDrawable " .. method.GetIconDrawable .. "\n")

  method.GetRouteDrawable = type(widget.GetRouteDrawable)
  file:write("Worldmap GetRouteDrawable " .. method.GetRouteDrawable .. "\n")

  method.HideAllIconDrawable = type(widget.HideAllIconDrawable)
  file:write("Worldmap HideAllIconDrawable " .. method.HideAllIconDrawable .. "\n")

  method.RemovePing = type(widget.RemovePing)
  file:write("Worldmap RemovePing " .. method.RemovePing .. "\n")

  method.RemovePingAll = type(widget.RemovePingAll)
  file:write("Worldmap RemovePingAll " .. method.RemovePingAll .. "\n")

  method.SetCommonFarmDrawable = type(widget.SetCommonFarmDrawable)
  file:write("Worldmap SetCommonFarmDrawable " .. method.SetCommonFarmDrawable .. "\n")

  method.SetFestivalZoneColor = type(widget.SetFestivalZoneColor)
  file:write("Worldmap SetFestivalZoneColor " .. method.SetFestivalZoneColor .. "\n")

  method.SetPortalDrawable = type(widget.SetPortalDrawable)
  file:write("Worldmap SetPortalDrawable " .. method.SetPortalDrawable .. "\n")

  method.SetTempNotifyColor = type(widget.SetTempNotifyColor)
  file:write("Worldmap SetTempNotifyColor " .. method.SetTempNotifyColor .. "\n")

  method.SetTempNotifyCoord = type(widget.SetTempNotifyCoord)
  file:write("Worldmap SetTempNotifyCoord " .. method.SetTempNotifyCoord .. "\n")

  method.SetTroubleZoneColor = type(widget.SetTroubleZoneColor)
  file:write("Worldmap SetTroubleZoneColor " .. method.SetTroubleZoneColor .. "\n")

  method.ShowCommonFarm = type(widget.ShowCommonFarm)
  file:write("Worldmap ShowCommonFarm " .. method.ShowCommonFarm .. "\n")

  method.ShowPortal = type(widget.ShowPortal)
  file:write("Worldmap ShowPortal " .. method.ShowPortal .. "\n")

  method.ShowQuest = type(widget.ShowQuest)
  file:write("Worldmap ShowQuest " .. method.ShowQuest .. "\n")

  method.UpdateEventMap = type(widget.UpdateEventMap)
  file:write("Worldmap UpdateEventMap " .. method.UpdateEventMap .. "\n")

  method.UpdateRouteMap = type(widget.UpdateRouteMap)
  file:write("Worldmap UpdateRouteMap " .. method.UpdateRouteMap .. "\n")

  method.UpdateZoneStateDrawable = type(widget.UpdateZoneStateDrawable)
  file:write("Worldmap UpdateZoneStateDrawable " .. method.UpdateZoneStateDrawable .. "\n")

  file:close()
end

-- Avi
Avi = UIParent:CreateWidget("avi", "exampleAvi", "UIParent")
dump_object(Avi, "Avi")

-- Button | .style TextStyle
Button = UIParent:CreateWidget("button", "exampleButton", "UIParent")
dump_object(Button, "Button")

-- ChatTab
ChatWindow = UIParent:CreateWidget("chatwindow", "exampleChatWindow", "UIParent")
dump_object(ChatWindow, "ChatWindow")

-- CheckButton | .style TextStyle
CheckButton = UIParent:CreateWidget("checkbutton", "exampleCheckButton", "UIParent")
dump_object(CheckButton, "CheckButton")

-- CircleDiagram
CircleDiagram = UIParent:CreateWidget("circlediagram", "exampleCircleDiagram", "UIParent")
dump_object(CircleDiagram, "CircleDiagram")

-- ColorPicker
ColorPicker = UIParent:CreateWidget("colorpicker", "exampleColorPicker", "UIParent")
dump_object(ColorPicker, "ColorPicker")

-- Combobox | dropdown List .selector X2EditBox .selectorBtn Button TextStyle Slider
Combobox = UIParent:CreateWidget("combobox", "exampleCombobox", "UIParent")
dump_object(Combobox, "Combobox")

-- CooldownButton | .style TextStyle
CooldownButton = UIParent:CreateWidget("cooldownbutton", "exampleCooldownButton", "UIParent")
dump_object(CooldownButton, "CooldownButton")

-- CooldownConstantButton | .style TextStyle
CooldownConstantButton = UIParent:CreateWidget("cooldownconstantbutton", "exampleCooldownConstantButton", "UIParent")
dump_object(CooldownConstantButton, "CooldownConstantButton")

-- CooldownInventoryButton | .style TextStyle
CooldownInventoryButton = UIParent:CreateWidget("cooldowninventorybutton", "exampleCooldownInventoryButton", "UIParent")
dump_object(CooldownInventoryButton, "CooldownInventoryButton")

-- DamageDisplay | .style TextStyle
DamageDisplay = UIParent:CreateWidget("damagedisplay", "exampleDamageDisplay", "UIParent")
dump_object(DamageDisplay, "DamageDisplay")

-- DynamicList | .content.anchor EmptyWidget
DynamicList = UIParent:CreateWidget("dynamiclist", "exampleDynamicList", "UIParent")
dump_object(DynamicList, "DynamicList")

-- Editbox | .style TextStyle
Editbox = UIParent:CreateWidget("editbox", "exampleEditbox", "UIParent")
dump_object(Editbox, "Editbox")

-- EditboxMultiline | .style TextStyle
EditboxMultiline = UIParent:CreateWidget("editboxmultiline", "exampleEditboxMultiline", "UIParent")
dump_object(EditboxMultiline, "EditboxMultiline")

-- EmptyWidget
EmptyWidget = UIParent:CreateWidget("emptywidget", "exampleEmptyWidget", "UIParent")
dump_object(EmptyWidget, "EmptyWidget")

local ColorDrawable = EmptyWidget:CreateColorDrawable(1, 1, 1, 1, "background")
dump_object(ColorDrawable, "EmptyWidgetColorDrawable")

local ColorDrawableByKey = EmptyWidget:CreateColorDrawableByKey("texture_check_window_bg", "background")
dump_object(ColorDrawableByKey, "EmptyWidgetColorDrawableByKey")

---TODO: CreateDrawable can return multiple types apparently and this is a ninepart
local Drawable = EmptyWidget:CreateDrawable(TEXTURE_PATH.DEFAULT, "type_05", "background")
dump_object(Drawable, "EmptyWidgetDrawable")

local EffectDrawable = EmptyWidget:CreateEffectDrawable("ui/font/image_text.dds", "artwork")
dump_object(EffectDrawable, "EmptyWidgetEffectDrawable")

local EffectDrawableByKey = EmptyWidget:CreateEffectDrawableByKey(TEXTURE_PATH.DEFAULT, "ulc_effect_bg", "background")
dump_object(EffectDrawableByKey, "EmptyWidgetEffectDrawableByKey")

local IconDrawable = EmptyWidget:CreateIconDrawable("background")
dump_object(IconDrawable, "EmptyWidgetIconDrawable")

local ImageDrawable = EmptyWidget:CreateImageDrawable(TEXTURE_PATH.RANKING_GRADE, "artwork")
dump_object(ImageDrawable, "EmptyWidgetImageDrawable")

local NinePartDrawable = EmptyWidget:CreateNinePartDrawable(TEXTURE_PATH.HUD, "background")
dump_object(NinePartDrawable, "EmptyWidgetNinePartDrawable")

--- .style TextStyle
local TextDrawable = EmptyWidget:CreateTextDrawable(FONT_PATH.SUB, FONT_SIZE.XXLARGE, "artwork")
dump_object(TextDrawable, "EmptyWidgetTextDrawable")

local ThreeColorDrawable = EmptyWidget:CreateThreeColorDrawable(1024, 1024, "background")
dump_object(ThreeColorDrawable, "EmptyWidgetThreeColorDrawable")

local ThreePartDrawable = EmptyWidget:CreateThreePartDrawable(TEXTURE_PATH.DEFAULT, "background")
dump_object(ThreePartDrawable, "EmptyWidgetThreePartDrawable")

-- Folder | .style TextStyle
Folder = UIParent:CreateWidget("folder", "exampleFolder", "UIParent")
dump_object(Folder, "Folder")

-- GameTooltip | .style TextStyle
GameTooltip = UIParent:CreateWidget("gametooltip", "exampleGameTooltip", "UIParent")
dump_object(GameTooltip, "GameTooltip")

-- Grid
Grid = UIParent:CreateWidget("grid", "exampleGrid", "UIParent")
dump_object(Grid, "Grid")

-- Label | .style TextStyle
Label = UIParent:CreateWidget("label", "exampleLabel", "UIParent")
dump_object(Label, "Label")

-- Line
Line = UIParent:CreateWidget("line", "exampleLine", "UIParent")
dump_object(Line, "Line")

-- ListCtrl
ListCtrl = UIParent:CreateWidget("listctrl", "exampleListCtrl", "UIParent")
local output = ListCtrl:InsertColumn(100, LCCIT_STRING)
ListCtrl:InsertRows(1, false)
dump_object(ListCtrl, "ListCtrl")

local OveredImage = ListCtrl:CreateOveredImage()
dump_object(OveredImage, "ListCtrlOveredImage")

local SelectedImage = ListCtrl:CreateSelectedImage()
dump_object(SelectedImage, "ListCtrlSelectedImage")

local Column1Header = ListCtrl.column[1]
dump_object(Column1Header, "ListCtrlColumn1Header")

local Column1Row1 = ListCtrl.items[1]
dump_object(Column1Row1, "ListCtrlColumn1Row1")

local Column1Row1SubItem = Column1Row1.subItems[1]
dump_object(Column1Row1SubItem, "ListCtrlColumn1Row1SubItem")


-- Listbox | .itemStyle TextStyle ...
Listbox = UIParent:CreateWidget("listbox", "exampleListbox", "UIParent")
dump_object(Listbox, "Listbox")

-- MegaphoneChatEdit | .style TextStyle ...
MegaphoneChatEdit = UIParent:CreateWidget("megaphonechatedit", "exampleMegaphoneChatEdit", "UIParent")
dump_object(MegaphoneChatEdit, "MegaphoneChatEdit")

-- Message | .style TextStyle
Message = UIParent:CreateWidget("message", "exampleMessage", "UIParent")
dump_object(Message, "Message")

-- ModelView
ModelView = UIParent:CreateWidget("modelview", "exampleModelView", "UIParent")
dump_object(ModelView, "ModelView")

--Pageable
Pageable = UIParent:CreateWidget("pageable", "examplePageable", "UIParent")
dump_object(Pageable, "Pageable")

-- PaintColorPicker | .luminanceWidget Emptywidget .spectrumWidget Emptywidget
PaintColorPicker = UIParent:CreateWidget("paintcolorpicker", "examplePaintColorPicker", "UIParent")
dump_object(PaintColorPicker, "PaintColorPicker")

-- RadioGroup
RadioGroup = UIParent:CreateWidget("radiogroup", "exampleRadioGroup", "UIParent")
dump_object(RadioGroup, "RadioGroup")

local radio = RadioGroup:CreateRadioItem(1)

dump_object(radio, "RadioGroupItem")
dump_object(radio.check, "RadioGroupItemCheck")

-- RoadMap
RoadMap = UIParent:CreateWidget("roadmap", "exampleRoadMap", "UIParent")
dump_object(RoadMap, "RoadMap")

-- Slider
Slider = UIParent:CreateWidget("slider", "exampleSlider", "UIParent")
dump_object(Slider, "Slider")

-- Slot | .style TextStyle .cooltime_style TextStyle .icon IconDrawable
Slot = UIParent:CreateWidget("slot", "exampleSlot", "UIParent")
dump_object(Slot, "Slot")

-- StatusBar
StatusBar = UIParent:CreateWidget("statusbar", "exampleStatusBar", "UIParent")
dump_object(StatusBar, "StatusBar")

-- Tab
Tab = UIParent:CreateWidget("tab", "exampleTab", "UIParent")
dump_object(Tab, "Tab")

-- Textbox | .style TextStyle
Textbox = UIParent:CreateWidget("textbox", "exampleTextbox", "UIParent")
dump_object(Textbox, "Textbox")

-- UnitframeTooltip | .style TextStyle
UnitframeTooltip = UIParent:CreateWidget("unitframetooltip", "exampleUnitframeTooltip", "UIParent")
dump_object(UnitframeTooltip, "UnitframeTooltip")

-- Webbrowser
Webbrowser = UIParent:CreateWidget("webbrowser", "exampleWebbrowser", "UIParent")
dump_object(Webbrowser, "Webbrowser")

-- Window | .modalBackgroundWindow EmptyWidget
Window = UIParent:CreateWidget("window", "exampleWindow", "UIParent")
dump_object(Window, "Window")

-- WorldMap
WorldMap = UIParent:CreateWidget("worldmap", "exampleWorldMap", "UIParent")
dump_object(WorldMap, "WorldMap")

-- X2Editbox | .style TextStyle
X2Editbox = UIParent:CreateWidget("x2editbox", "exampleX2EditBox", "UIParent")
dump_object(X2Editbox, "X2Editbox")

ADDON:ChatLog("================================================================")