---@meta _

AP_BOTTOM = 8          -- objects/ModelView
AP_BOTTOMLEFT = 2      -- objects/ModelView
AP_BOTTOMRIGHT = 3     -- objects/ModelView
AP_CENTER = 4          -- objects/ModelView
AP_LEFT = 6            -- objects/ModelView
AP_RIGHT = 7           -- objects/ModelView
AP_TOP = 5             -- objects/ModelView
AP_TOPLEFT = 0         -- objects/ModelView
AP_TOPRIGHT = 1        -- objects/ModelView
CT_ABILITY = 2         -- objects/ModelView
CT_EXPEDITION_NAME = 3 -- objects/ModelView
CT_NAME = 1            -- objects/ModelView
DC_ALWAYS = 0          -- objects/ModelView
DC_SHIFT_KEY_DOWN = 1  -- objects/ModelView

---objects/ModelView
---@class ModelView: Widget
---@class modelview: ModelView
local ModelView = {}

---Adds rotation `angle` to the ModelView. positive is left negative is right
---@param angle number in degrees
---@usage
---```lua
---widget:AddRotation(45)
---```
function ModelView:AddRotation(angle) end

---@TODO: if this isnt set the camera position is random? center, zoom, height
---Adjusts the cameras position for the ModelView.
---@param offsetX number
---@param offsetY number
---@param offsetZ number
---@usage
---```lua
---widget:AdjustCameraPos(0, 0, 0)
---```
function ModelView:AdjustCameraPos(offsetX, offsetY, offsetZ) end

---@TODO: unsurew how this works
---Adjusts the camera position relative to the model in the ModelView.
---@param offsetY number
---@param offsetZ number
---@usage
---```lua
---widget:AdjustCameraPosToModel(0, 0)
---```
function ModelView:AdjustCameraPosToModel(offsetY, offsetZ) end

---Applies customizer parameters to the unit in the ModelView.
---@usage
---```lua
---widget:ApplyCustomizerParamToUnit()
---```
function ModelView:ApplyCustomizerParamToUnit() end

---Applies the model to the ModelView.
---@usage
---```lua
---widget:ApplyModel()
---```
function ModelView:ApplyModel() end

---@TODO: usage still needed
---Applies a preset parameter to a specific part of the model.
---@param part number
---@param index number
function ModelView:ApplyPresetParam(part, index) end

---Clears the model for the ModelView.
---@usage
---```lua
---widget:ClearModel()
---```
function ModelView:ClearModel() end

---Equips a costume item on the model with specified color.
---@param itemType number
---@param itemGrade ITEM_GRADE_TYPE
---@param r number (min: `0`, max: `255`)
---@param g number (min: `0`, max: `255`)
---@param b number (min: `0`, max: `255`)
---@usage
---```lua
---widget:EquipCostume(51479, 12, 0, 255, 0)
---```
---@see ITEM_GRADE_TYPE
function ModelView:EquipCostume(itemType, itemGrade, r, g, b) end

---Equips the `itemType` on to the model for the ModelView. stops any playing animation.
---@param itemType number
---@usage
---```lua
---widget:EquipItem(49376)
---```
function ModelView:EquipItem(itemType) end

---@TODO: never got this to work
---Retrieves the custom body normal index and weight.
---@return number|nil index
---@return number|nil weight (min: `0`, max: `1`)
---@nodiscard
---@usage
---```lua
---local index, weight = widget:GetCustomBodyNormal()
---```
function ModelView:GetCustomBodyNormal() end

---@TODO: never got this to work
---Retrieves the custom decoration index and weight.
---@return number|nil index
---@return number|nil weight (min: `0`, max: `1`)
---@nodiscard
---@usage
---```lua
---local index, weight = widget:GetCustomDeco()
---```
function ModelView:GetCustomDeco() end

---@TODO: unsure what this is suppose to return, maybe number|nil? usage still needed
---Retrieves the custom eyebrow index.
---@return number|nil
---@nodiscard
function ModelView:GetCustomEyebrow() end

---Retrieves the custom eyebrow color.
---@return number red (min: `0`, max: `255`, default: `0`)
---@return number green (min: `0`, max: `255`, default: `0`)
---@return number blue (min: `0`, max: `255`, default: `0`)
---@nodiscard
---@usage
---```lua
---local red, green, blue = widget:GetCustomEyebrowColor()
---```
function ModelView:GetCustomEyebrowColor() end

---@TODO: unsure what this is suppose to return, maybe number|nil? usage still needed
---Retrieves the custom face diffuse index.
---@return nil
---@nodiscard
function ModelView:GetCustomFaceDiffuse() end

---@TODO: never got this to work
---Retrieves the custom face normal index and weight.
---@return number|nil index
---@return number|nil weight (min: `0`, max: `1`)
---@nodiscard
---@usage
---```lua
---local index, weight = widget:GetCustomFaceNormal()
---```
function ModelView:GetCustomFaceNormal() end

---@TODO: usage still needed
---Retrieves the custom hair data.
---@return table|number|nil
---@nodiscard
function ModelView:GetCustomHair() end

---@TODO: returns CustomHairColor for new hair and a number for older hair
---Retrieves the custom hair color.
---@return CustomHairColor|number|nil customHairColor
---@nodiscard
---@usage
---```lua
---local customHairColor = widget:GetCustomHairColor()
---```
---@see CustomHairColor
function ModelView:GetCustomHairColor() end

---@TODO: unsure what this is suppose to return, maybe number|nil? usage still needed
---Retrieves the custom horn index.
---@return number|nil
---@nodiscard
function ModelView:GetCustomHorn() end

---@TODO: unsure what this is suppose to return, maybe number|nil? usage still needed
---Retrieves the custom horn color index.
---@return number|nil
---@nodiscard
function ModelView:GetCustomHornColor() end

---Retrieves the custom decoration color.
---@return number red (min: `0`, max: `255`, default: `0`)
---@return number green (min: `0`, max: `255`, default: `0`)
---@return number blue (min: `0`, max: `255`, default: `0`)
---@nodiscard
---@usage
---```lua
---local red, green, blue = widget:GetCustomizingDecoColor()
---```
function ModelView:GetCustomizingDecoColor() end

---Checks if odd-eye customization is usable.
---@return boolean customizingOddEyeUsable
---@nodiscard
---@usage
---```lua
---local customizingOddEyeUsable = widget:GetCustomizingOddEyeUsable()
---```
function ModelView:GetCustomizingOddEyeUsable() end

---Retrieves the custom lip color.
---@return number red (min: `0`, max: `255`, default: `0`)
---@return number green (min: `0`, max: `255`, default: `0`)
---@return number blue (min: `0`, max: `255`, default: `0`)
---@nodiscard
---@usage
---```lua
---local red, green, blue = widget:GetCustomLipColor()
---```
function ModelView:GetCustomLipColor() end

---@TODO: never got this to work
---Retrieves the custom makeup index and weight.
---@return number|nil index
---@return number|nil weight (min: `0`, max: `1`)
---@nodiscard
---@usage
---```lua
---local index, weight = widget:GetCustomMakeUp()
---```
function ModelView:GetCustomMakeUp() end

---@TODO: unsure what this is suppose to return, maybe number|nil? usage still needed
---Retrieves the custom preview cloth index.
---@return number|nil
---@nodiscard
function ModelView:GetCustomPreviewCloth() end

---@TODO: never got this to work
---Retrieves the custom pupil index for a given range.
---@param range PR
---@return number|nil index
---@nodiscard
---@usage
---```lua
---local index = widget:GetCustomPupil(0)
---```
---@see PR
function ModelView:GetCustomPupil(range) end

---Retrieves the custom pupil color for a specified eye.
---@param range PR
---@return number red (min: `0`, max: `255`, default: `0`)
---@return number green (min: `0`, max: `255`, default: `0`)
---@return number blue (min: `0`, max: `255`, default: `0`)
---@nodiscard
---@usage
---```lua
---local red, green, blue = widget:GetCustomPupilColor()
---```
---@see PR
function ModelView:GetCustomPupilColor(range) end

---Retrieves the custom scar index.
---@return number|nil index
---@nodiscard
---@usage
---```lua
---local index = widget:GetCustomScar()
---```
function ModelView:GetCustomScar() end

---@TODO: usage still needed
---Retrieves the custom skin color index.
---@return number|nil
---@nodiscard
function ModelView:GetCustomSkinColor() end

---@TODO: usage still needed
---Retrieves the custom tail index.
---@return number|nil
---@nodiscard
function ModelView:GetCustomTail() end

---@TODO: never got this to work
---Retrieves the custom tattoo index and weight.
---@return number|nil index
---@return number|nil weight (min: `0`, max: `1`)
---@nodiscard
---@usage
---```lua
---local index, weight = widget:GetCustomTattoo()
---```
function ModelView:GetCustomTattoo() end

---@TODO: can this be nil? not sure on default
---Retrieves the current value for a face target parameter.
---@param index number
---@return number faceTargetCurValue (default: `0`)
---@nodiscard
---@usage
---```lua
---local faceTargetCurValue = widget:GetFaceTargetCurValue(1)
---```
function ModelView:GetFaceTargetCurValue(index) end

---Returns `gender` for the ModelView.
---@return GENDER_ID genderId (default: `0`)
---@nodiscard
---@usage
---```lua
---local genderId = widget:GetGender()
---```
function ModelView:GetGender() end

---Returns the `raceId` for the model of the ModelView.
---@return RACE_ID raceId (default: `0`)
---@nodiscard
---@usage
---```lua
---local raceId = widget:GetRace()
---```
function ModelView:GetRace() end

---Returns `rotation` for the ModelView.
---@return number rotation in degrees. (default: `0`)
---@nodiscard
---@usage
---```lua
---widget:GetRotation()
---```
function ModelView:GetRotation() end

---@TODO: never got this to work
---Retrieves the scar status of the model.
---@return table|nil info
---@nodiscard
---@usage
---```lua
---local info = widget:GetScarStatus()
---```
function ModelView:GetScarStatus() end

---@TODO: never got this to work
---Retrieves the selected preset index for a specific part.
---@param part number
---@return nil
---@nodiscard
---@usage
---```lua
---widget:GetSelectedPresetIndex(1)
---```
function ModelView:GetSelectedPresetIndex(part) end

---@TODO: unsure on return variable names
---Retrieves the two-tone hair status.
---@return number|nil firstWidth Dye Length. (min: `0`, max: `1`)
---@return number|nil secondWidth Highlights. (min: `0`, max: `1`)
---@nodiscard
---@usage
---```lua
---local firstWidth, secondWidth = widget:GetTwoToneHairStatus()
---```
function ModelView:GetTwoToneHairStatus() end

---@TODO: changing equipment doesnt return true but changing color of things does
---Checks if the model differs from the client unit.
---@return boolean diffWithClientUnit
---@nodiscard
---@usage
---```lua
---local diffWithClientUnit = widget:HasDiffWithClientUnit()
---```
function ModelView:HasDiffWithClientUnit() end

---@TODO: unknown return
---Initializes the ModelView with a unit and model creation option.
---@param unit UNIT
---@param createModel boolean
---@return boolean unknown
---@usage
---```lua
---widget:Init("target", true)
---```
---@see UNIT
function ModelView:Init(unit, createModel) end

---@TODO: this has to be called before Init as it sets its own init as the player, this is set on your characters height? if im a dwarf models are slightly outside the window
---Initializes the ModelView for beauty shop mode.
---@usage
---```lua
---widget:InitBeautyShop()
---```
function ModelView:InitBeautyShop() end

---@TODO: never got this to work usage still needed
---Initializes the ModelView with a model reference, race, gender, and butler mode.
---@param modelRef number
---@param race RACE
---@param gender GENDER
---@param butlerMode boolean
---@see RACE
---@see GENDER
function ModelView:InitByModelRef(modelRef, race, gender, butlerMode) end

---@TODO: no idea what this does
---Initializes customizer controls for the ModelView.
---@usage
---```lua
---widget:InitCustomizerControl()
---```
function ModelView:InitCustomizerControl() end

---@TODO: This is broken, returns the opposite of what you would expect.
---Returns a boolean `frozen` indicating if the model is frozen for ModelView.
---@return boolean frozen
---@nodiscard
---@usage
---```lua
---local frozen = widget:IsFrozen()
---```
function ModelView:IsFrozen() end

---Modifies the value of a face parameter.
---@param index number
---@param weight number (min: `0`, max: `1`)
---@usage
---```lua
---widget:ModifyFaceParamValue(1, 1)
---```
function ModelView:ModifyFaceParamValue(index, weight) end

---Processes payment for the beauty shop.
---@usage
---```lua
---widget:PayBeautyShop()
---```
function ModelView:PayBeautyShop() end

---@TODO: Need a list of animations
---Plays an animation for the ModelView.
---@param name string
---@param loop boolean
---@usage
---```lua
---widget:PlayAnimation("fist_ba_relaxed_idle", true)
---```
function ModelView:PlayAnimation(name, loop) end

---Removes an item from the specified equipment slot.
---@param index ES
---@usage
---```lua
---widget:RemoveEquipSlot(ES_CHEST)
---```
---@see ES
function ModelView:RemoveEquipSlot(index) end

---Resets the beauty shop settings.
---@usage
---```lua
---widget:ResetBeautyShop()
---```
function ModelView:ResetBeautyShop() end

---@TODO: resets the characters equipment to what they are were wearing
---Resets the model's equipment to match the character's current equipment.
---@usage
---```lua
---widget:ResetEquips()
---```
function ModelView:ResetEquips() end

---@TODO: usage still needed
---Sets the background color for the ModelView.
---@param r number
---@param g number
---@param b number
function ModelView:SetBackColor(r, g, b) end

---Sets the beauty shop mode for the ModelView.
---@param beautyShop boolean
---@usage
---```lua
---widget:SetBeautyShopMode(true)
---```
function ModelView:SetBeautyShopMode(beautyShop) end

---@TODO: usage still needed
---Sets the camera position for the ModelView.
---@param x number
---@param y number
---@param z number
function ModelView:SetCameraPos(x, y, z) end

---@TODO: usage still needed
---Sets the custom body normal index and weight.
---@param index number
---@param weight number (min: `0`, max: `1`)
function ModelView:SetCustomizingBodyNormal(index, weight) end

---@TODO: usage still needed
---Sets the custom decoration index and weight.
---@param index number
---@param weight number (min: `0`, max: `1`)
function ModelView:SetCustomizingDeco(index, weight) end

---Sets the custom decoration color.
---@param r number (min: `0`, max: `255`)
---@param g number (min: `0`, max: `255`)
---@param b number (min: `0`, max: `255`)
---@usage
---```lua
---widget:SetCustomizingDecoColor(0, 255, 0)
---```
function ModelView:SetCustomizingDecoColor(r, g, b) end

---@TODO: usage still needed
---Sets the custom eyebrow index.
---@param index number
function ModelView:SetCustomizingEyebrow(index) end

---Sets the custom eyebrow color.
---@param r number (min: `0`, max: `255`)
---@param g number (min: `0`, max: `255`)
---@param b number (min: `0`, max: `255`)
---@usage
---```lua
---widget:SetCustomizingEyebrowColor(0, 255, 0)
---```
function ModelView:SetCustomizingEyebrowColor(r, g, b) end

---@TODO: usage still needed
---Sets the custom face diffuse index.
---@param index number
function ModelView:SetCustomizingFaceDiffuse(index) end

---@TODO: usage still needed
---Sets the custom face normal index and weight.
---@param index number
---@param weight number (min: `0`, max: `1`)
function ModelView:SetCustomizingFaceNormal(index, weight) end

---@TODO: usage still needed
---Sets the custom hair index.
---@param index number
function ModelView:SetCustomizingHair(index) end

---Sets the custom hair color.
---@param infos CustomHairColor
---@usage
---```lua
---widget:SetCustomizingHairColor({
---  defaultR = 255,
---  defaultB = 0,
---  defaultG = 0,
---  twoToneR = 0,
---  twoToneG = 0,
---  twoToneB = 0,
---  firstWidth = .5,
---  secondWidth = .6,
---})
---```
---@see CustomHairColor
function ModelView:SetCustomizingHairColor(infos) end

---Sets the default custom hair color.
---@param infos CustomizingHairDefaultColor
---@usage
---```lua
---widget:SetCustomizingHairDefaultColor({
---  defaultR = 255,
---  defaultG = 0,
---  defaultB = 0,
---})
---```
---@see CustomizingHairDefaultColor
function ModelView:SetCustomizingHairDefaultColor(infos) end

---Sets the two-tone custom hair color.
---@param infos CustomizingHairTwoToneColor
---@usage
---```lua
---widget:SetCustomizingHairTwoToneColor({
---  twoToneR = 0,
---  twoToneG = 0,
---  twoToneB = 0,
---  firstWidth = .5,
---  secondWidth = .6
---})
---```
---@see CustomizingHairTwoToneColor
function ModelView:SetCustomizingHairTwoToneColor(infos) end

---@TODO: usage still needed
---Sets the custom horn index.
---@param index number
function ModelView:SetCustomizingHorn(index) end

---@TODO: i need a enum here?
---Sets the custom horn color index.
---@param index number (min: `?`, max: `?`)
---@usage
---```lua
---widget:SetCustomizingHornColor(7)
---```
function ModelView:SetCustomizingHornColor(index) end

---Sets the custom lip color.
---@param r number (min: `0`, max: `255`)
---@param g number (min: `0`, max: `255`)
---@param b number (min: `0`, max: `255`)
---@usage
---```lua
---widget:SetCustomizingLipColor(0, 255, 0)
---```
function ModelView:SetCustomizingLipColor(r, g, b) end

---@TODO: usage still needed
---Sets the custom makeup index and weight.
---@param index number
---@param weight number (min: `0`, max: `1`)
function ModelView:SetCustomizingMakeUp(index, weight) end

---@TODO: usage still needed
---Sets the custom preview cloth index.
---@param index number
function ModelView:SetCustomizingPreviewCloth(index) end

---@TODO: usage still needed
---Sets the custom pupil index for a specified range.
---@param index number
---@param range PR
---@see PR
function ModelView:SetCustomizingPupil(index, range) end

---@TODO: usage still needed
---Sets the custom pupil color for a specified range.
---@param r number (min: `0`, max: `255`)
---@param g number (min: `0`, max: `255`)
---@param b number (min: `0`, max: `255`)
---@param range PR
---@see PR
function ModelView:SetCustomizingPupilColor(r, g, b, range) end

---@TODO: usage still needed
---Sets the custom scar parameters.
---@param index number
---@param x number
---@param y number
---@param scale number
---@param rotate number
---@param weight number (min: `0`, max: `1`)
function ModelView:SetCustomizingScar(index, x, y, scale, rotate, weight) end

---@TODO: usage still needed
---Sets the custom skin color index.
---@param index number
function ModelView:SetCustomizingSkinColor(index) end

---@TODO: usage still needed
---Sets the custom tail index.
---@param index number
function ModelView:SetCustomizingTail(index) end

---@TODO: usage still needed
---Sets the custom tattoo index and weight.
---@param index number
---@param weight number (min: `0`, max: `1`)
function ModelView:SetCustomizingTattoo(index, weight) end

---@TODO: disables color grading, must be used when `SetModelViewBackground` is used to prevent flickering
---Disables color grading to prevent flickering when using `SetModelViewBackground`.
---@param disable boolean (default: `false`)
---@usage
---```lua
---widget:SetDisableColorGrading(true)
---```
function ModelView:SetDisableColorGrading(disable) end

---@TODO: sets the players equipment from the slot index to the current model
---Sets the equipment from a character slot to the current model.
---@param index ES
---@usage
---```lua
---widget:SetEquipSlotFromCharacter(ES_COSPLAYLOOKS)
---```
---@see ES
function ModelView:SetEquipSlotFromCharacter(index) end

---Sets the fov `angle` for the ModelView.
---@param angle number in degrees (default: `20`)
---@usage
---```lua
---widget:SetFov(30)
---```
function ModelView:SetFov(angle) end

---Sets `isStop` for the ModelView.
---@param isStop boolean
---@usage
---```lua
---widget:SetFreeze(true)
---```
function ModelView:SetFreeze(isStop) end

---@TODO: not sure what this does
---Sets the in-game shop mode for the ModelView.
---@param ingameShop boolean
---@usage
---```lua
---widget:SetIngameShopMode(true)
---```
function ModelView:SetIngameShopMode(ingameShop) end

---@TODO: Buggy, causes flashing screen, use `SetDisableColorGrading`
---Sets the background of the ModelView.
---@param path string
---@param key? string
---@usage
---```lua
---widget:SetModelViewBackground(TEXTURE_PATH.INGAME_SHOP, "character_bg")
---widget:SetDisableColorGrading(true)
---```
function ModelView:SetModelViewBackground(path, key) end

---@TODO: usage still needed
---Sets the coords of the ModelView.
---@param x number
---@param y number
---@param w number
---@param h number
function ModelView:SetModelViewCoords(x, y, w, h) end

---@TODO: usage still needed
---Sets the extent `width` and `height` of the ModelView.
---@param width number
---@param height number
function ModelView:SetModelViewExtent(width, height) end

---Sets the rotation `angle` for the ModelView.
---@param angle number in degrees. (default: `0`)
---@usage
---```lua
---widget:SetRotation(90)
---```
function ModelView:SetRotation(angle) end

---Enables/Disables smiling for the ModelView.
---@param smile boolean (default: `false`)
---@usage
---```lua
---widget:SetSmile(true)
---```
function ModelView:SetSmile(smile) end

---@TODO: test this more
---Sets the texture `width` and `height` of the ModelView.
---@param width number
---@param height number
---@usage
---```lua
---widget:SetTextureSize(512, 512)
---```
function ModelView:SetTextureSize(width, height) end

---Shows an item on the model.
---@param itemType number
---@return boolean success
---@return boolean initModel do i need to init the model true or false
---@nodiscard
---@usage
---```lua
---local success, initModel = widget:ShowItem(50835)
---```
function ModelView:ShowItem(itemType) end

---Stops the animation for the ModelView.
---@usage
---```lua
---widget:StopAnimation()
---```
function ModelView:StopAnimation() end

---Enables/Disables cosplay `equipped` for the ModelView.
---@param equipped boolean (default: `true`)
---@usage
---```lua
---widget:ToggleCosplayEquipped(false)
---```
function ModelView:ToggleCosplayEquipped(equipped) end

---Unequips an item from the specified slot.
---@param itemSlot ES
---@usage
---```lua
---widget:UnequipItemSlot(ES_MAINHAND)
---widget:ApplyModel()
---```
---@see ES
function ModelView:UnequipItemSlot(itemSlot) end

---@TODO: if the cosplay can be dyed then it will be
---Updates the dye color for cosplay items.
---@param r number (min: `0`, max: `255`)
---@param g number (min: `0`, max: `255`)
---@param b number (min: `0`, max: `255`)
---@usage
---```lua
---widget:UpdateDyeColor(255, 255, 255)
---```
function ModelView:UpdateDyeColor(r, g, b) end

---Zooms in/out `yAmt` the model for the ModelView.
---@param yAmt number
---@usage
---```lua
---widget:ZoomInOut(1)
---```
function ModelView:ZoomInOut(yAmt) end

---@TODO: first use sets the zoom and next use changes the zoom
---Zooms in or out in beauty shop mode.
---@param amount BEAUTY_SHOP_ZOOM (default: `2`)
---@usage
---```lua
---widget:ZoomInOutBeautyShop(1) -- Set the default zoom.
---
---widget:SetHandler("OnWheelUp", function(self)
---  self:ZoomInOutBeautyShop(-1) -- Set how much to change.
---end)
---
---widget:SetHandler("OnWheelDown", function(self)
---  self:ZoomInOutBeautyShop(1) -- Set how much to change.
---end)
---```
---@see BEAUTY_SHOP_ZOOM
function ModelView:ZoomInOutBeautyShop(amount) end
