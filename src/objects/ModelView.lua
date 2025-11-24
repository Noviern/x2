---@meta _

---objects/ModelView
---@class ModelView: Widget
local ModelView = {}
---@class modelview: ModelView

---Adds rotation `angle` to the ModelView. positive is left negative is right.
---@param angle number in degrees.
function ModelView:AddRotation(angle) end

---Adjusts the cameras position for the ModelView.
---@param offsetX number center
---@param offsetY number zoom
---@param offsetZ number height
function ModelView:AdjustCameraPos(offsetX, offsetY, offsetZ) end

---@TODO: unsure how this works
---Adjusts the camera position relative to the model in the ModelView.
---@param offsetY number
---@param offsetZ number
function ModelView:AdjustCameraPosToModel(offsetY, offsetZ) end

---Applies customizer parameters to the unit in the ModelView.
function ModelView:ApplyCustomizerParamToUnit() end

---Applies the model to the ModelView.
function ModelView:ApplyModel() end

---Applies a preset parameter to a specific part of the model.
---@param part number
---@param index number
function ModelView:ApplyPresetParam(part, index) end

---Clears the model for the ModelView.
function ModelView:ClearModel() end

---Equips a costume item on the model with specified color.
---@param itemType number
---@param itemGrade ITEM_GRADE_TYPE
---@param r number (min: `0`, max: `255`)
---@param g number (min: `0`, max: `255`)
---@param b number (min: `0`, max: `255`)
function ModelView:EquipCostume(itemType, itemGrade, r, g, b) end

---Equips the `itemType` on to the model for the ModelView. stops any playing
---animation.
---@param itemType number
function ModelView:EquipItem(itemType) end

---@TODO: never got this to work
---Retrieves the custom body normal index and weight.
---@return number|nil index
---@return number|nil weight (min: `0`, max: `1`)
---@nodiscard
function ModelView:GetCustomBodyNormal() end

---@TODO: never got this to work
---Retrieves the custom decoration index and weight.
---@return number|nil index
---@return number|nil weight (min: `0`, max: `1`)
---@nodiscard
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
function ModelView:GetCustomFaceNormal() end

---Retrieves the custom hair data.
---@return table|number|nil
---@nodiscard
function ModelView:GetCustomHair() end

---@TODO: returns CustomHairColor for new hair and a number for older hair
---Retrieves the custom hair color.
---@return CustomHairColor|number|nil customHairColor
---@nodiscard
---@see CustomHairColor
function ModelView:GetCustomHairColor() end

---@TODO: unsure what this is suppose to return, maybe number|nil? usage still needed
---Retrieves the custom horn index.
---@return number|nil
---@nodiscard
function ModelView:GetCustomHorn() end

---Retrieves the custom horn color index.
---@return number|nil hornColor
---@nodiscard
function ModelView:GetCustomHornColor() end

---Retrieves the custom decoration color.
---@return number red (min: `0`, max: `255`, default: `0`)
---@return number green (min: `0`, max: `255`, default: `0`)
---@return number blue (min: `0`, max: `255`, default: `0`)
---@nodiscard
function ModelView:GetCustomizingDecoColor() end

---Checks if odd-eye customization is usable.
---@return boolean customizingOddEyeUsable
---@nodiscard
function ModelView:GetCustomizingOddEyeUsable() end

---Retrieves the custom lip color.
---@return number red (min: `0`, max: `255`, default: `0`)
---@return number green (min: `0`, max: `255`, default: `0`)
---@return number blue (min: `0`, max: `255`, default: `0`)
---@nodiscard
function ModelView:GetCustomLipColor() end

---@TODO: never got this to work
---Retrieves the custom makeup index and weight.
---@return number|nil index
---@return number|nil weight (min: `0`, max: `1`)
---@nodiscard
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
function ModelView:GetCustomPupil(range) end

---Retrieves the custom pupil color for a specified eye.
---@param range PR
---@return number red (min: `0`, max: `255`, default: `0`)
---@return number green (min: `0`, max: `255`, default: `0`)
---@return number blue (min: `0`, max: `255`, default: `0`)
---@nodiscard
function ModelView:GetCustomPupilColor(range) end

---Retrieves the custom scar index.
---@return number|nil index
---@nodiscard
function ModelView:GetCustomScar() end

---Retrieves the custom skin color index.
---@return number|nil
---@nodiscard
function ModelView:GetCustomSkinColor() end

---Retrieves the custom tail index.
---@return number|nil
---@nodiscard
function ModelView:GetCustomTail() end

---@TODO: never got this to work
---Retrieves the custom tattoo index and weight.
---@return number|nil index
---@return number|nil weight (min: `0`, max: `1`)
---@nodiscard
function ModelView:GetCustomTattoo() end

---@TODO: can this be nil? not sure on default
---Retrieves the current value for a face target parameter.
---@param index number
---@return number faceTargetCurValue (default: `0`)
---@nodiscard
function ModelView:GetFaceTargetCurValue(index) end

---Returns `gender` for the ModelView.
---@return GENDER_ID genderId (default: `0`)
---@nodiscard
function ModelView:GetGender() end

---Returns the `raceId` for the model of the ModelView.
---@return RACE_ID raceId (default: `0`)
---@nodiscard
function ModelView:GetRace() end

---Returns `rotation` for the ModelView.
---@return number rotation in degrees. (default: `0`)
---@nodiscard
function ModelView:GetRotation() end

---@TODO: never got this to work
---Retrieves the scar status of the model.
---@return table|nil info
---@nodiscard
function ModelView:GetScarStatus() end

---@TODO: never got this to work
---Retrieves the selected preset index for a specific part.
---@param part number
---@return nil
---@nodiscard
function ModelView:GetSelectedPresetIndex(part) end

---Retrieves the two-tone hair status.
---@return number|nil firstWidth Dye Length. (min: `0`, max: `1`)
---@return number|nil secondWidth Highlights. (min: `0`, max: `1`)
---@nodiscard
function ModelView:GetTwoToneHairStatus() end

---Checks if the model, excluding equipment, differs from the client unit.
---@return boolean diffWithClientUnit
---@nodiscard
function ModelView:HasDiffWithClientUnit() end

---@TODO: unknown return
---Initializes the ModelView with a unit and model creation option.
---@param unit UNIT
---@param createModel boolean
---@return boolean unknown
function ModelView:Init(unit, createModel) end

---Initializes beauty shop mode.
function ModelView:InitBeautyShop() end

---@TODO: never got this to work
---Initializes the ModelView with a model reference, race, gender, and butler
---mode.
---@param modelRef number
---@param race RACE
---@param gender GENDER
---@param butlerMode boolean
function ModelView:InitByModelRef(modelRef, race, gender, butlerMode) end

---@FIXME: this may not work without X2Customizer
---Initializes customizer controls for the ModelView.
function ModelView:InitCustomizerControl() end

---@FIXME: This is broken, returns the opposite of what you would expect.
---Returns a boolean `frozen` indicating if the model is frozen for ModelView.
---@return boolean frozen
---@nodiscard
function ModelView:IsFrozen() end

---Modifies the value of a face parameter.
---@param index number
---@param weight number (min: `0`, max: `1`)
function ModelView:ModifyFaceParamValue(index, weight) end

---Processes payment for the beauty shop.
function ModelView:PayBeautyShop() end

---Plays an animation for the ModelView.
---@param name ANIMATION
---@param loop boolean
function ModelView:PlayAnimation(name, loop) end

---Removes an item from the specified equipment slot.
---@param index ES
function ModelView:RemoveEquipSlot(index) end

---Resets the beauty shop settings.
function ModelView:ResetBeautyShop() end

---Resets changes to the model's equipment.
function ModelView:ResetEquips() end

---Sets the background color for the ModelView.
---@param r number
---@param g number
---@param b number
function ModelView:SetBackColor(r, g, b) end

---Sets the beauty shop mode for the ModelView.
---@param beautyShop boolean
function ModelView:SetBeautyShopMode(beautyShop) end

---Sets the camera position for the ModelView.
---@param x number
---@param y number
---@param z number
function ModelView:SetCameraPos(x, y, z) end

---Sets the custom body normal index and weight.
---@param index number
---@param weight number (min: `0`, max: `1`)
function ModelView:SetCustomizingBodyNormal(index, weight) end

---Sets the custom decoration index and weight.
---@param index number
---@param weight number (min: `0`, max: `1`)
function ModelView:SetCustomizingDeco(index, weight) end

---Sets the custom decoration color.
---@param r number (min: `0`, max: `255`)
---@param g number (min: `0`, max: `255`)
---@param b number (min: `0`, max: `255`)
function ModelView:SetCustomizingDecoColor(r, g, b) end

---Sets the custom eyebrow index.
---@param index number
function ModelView:SetCustomizingEyebrow(index) end

---Sets the custom eyebrow color.
---@param r number (min: `0`, max: `255`)
---@param g number (min: `0`, max: `255`)
---@param b number (min: `0`, max: `255`)
function ModelView:SetCustomizingEyebrowColor(r, g, b) end

---Sets the custom face diffuse index.
---@param index number
function ModelView:SetCustomizingFaceDiffuse(index) end

---Sets the custom face normal index and weight.
---@param index number
---@param weight number (min: `0`, max: `1`)
function ModelView:SetCustomizingFaceNormal(index, weight) end

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

---Sets the custom horn index.
---@param index number
function ModelView:SetCustomizingHorn(index) end

---Sets the custom horn color index.
---@param index number (min: `1`, max: `8`)
function ModelView:SetCustomizingHornColor(index) end

---Sets the custom lip color.
---@param r number (min: `0`, max: `255`)
---@param g number (min: `0`, max: `255`)
---@param b number (min: `0`, max: `255`)
function ModelView:SetCustomizingLipColor(r, g, b) end

---Sets the custom makeup index and weight.
---@param index number
---@param weight number (min: `0`, max: `1`)
function ModelView:SetCustomizingMakeUp(index, weight) end

---Sets the custom preview cloth index.
---@param index number
function ModelView:SetCustomizingPreviewCloth(index) end

---Sets the custom pupil index for a specified range.
---@param index number
---@param range PR
function ModelView:SetCustomizingPupil(index, range) end

---Sets the custom pupil color for a specified range.
---@param r number (min: `0`, max: `255`)
---@param g number (min: `0`, max: `255`)
---@param b number (min: `0`, max: `255`)
---@param range PR
function ModelView:SetCustomizingPupilColor(r, g, b, range) end

---Sets the custom scar parameters.
---@param index number
---@param x number
---@param y number
---@param scale number
---@param rotate number
---@param weight number (min: `0`, max: `1`)
function ModelView:SetCustomizingScar(index, x, y, scale, rotate, weight) end

---Sets the custom skin color index.
---@param index number
function ModelView:SetCustomizingSkinColor(index) end

---Sets the custom tail index.
---@param index number
function ModelView:SetCustomizingTail(index) end

---Sets the custom tattoo index and weight.
---@param index number
---@param weight number (min: `0`, max: `1`)
function ModelView:SetCustomizingTattoo(index, weight) end

---Disables color grading to prevent flickering when using
---`ModelView:SetModelViewBackground`.
---@param disable boolean (default: `false`)
function ModelView:SetDisableColorGrading(disable) end

---Sets the equipment from a character slot to the current model.
---@param index ES
function ModelView:SetEquipSlotFromCharacter(index) end

---Sets the fov `angle` for the ModelView.
---@param angle number in degrees (default: `20`)
function ModelView:SetFov(angle) end

---Sets `isStop` for the ModelView.
---@param isStop boolean
function ModelView:SetFreeze(isStop) end

---@TODO: not sure what this does
---Sets the in-game shop mode for the ModelView.
---@param ingameShop boolean
function ModelView:SetIngameShopMode(ingameShop) end

---Sets the background of the ModelView. `ModelView:SetDisableColorGrading`
---required to prevent flashing.
---@param path string
---@param key? string
---@usage
---```lua
---widget:SetModelViewBackground("ui/itemshop.dds", "character_bg")
---widget:SetDisableColorGrading(true)
---```
function ModelView:SetModelViewBackground(path, key) end

---Sets the coords of the ModelView.
---@param x number origin bottom right
---@param y number origin bottom right
---@param w number width of the model
---@param h number height of the model
function ModelView:SetModelViewCoords(x, y, w, h) end

---Sets the extent `width` and `height` of the ModelView.
---@param width number
---@param height number
function ModelView:SetModelViewExtent(width, height) end

---Sets the rotation `angle` for the ModelView.
---@param angle number in degrees. (default: `0`)
function ModelView:SetRotation(angle) end

---Enables/Disables smiling for the ModelView.
---@param smile boolean (default: `false`)
function ModelView:SetSmile(smile) end

---Sets the texture `width` and `height` of the ModelView.
---@param width number
---@param height number
function ModelView:SetTextureSize(width, height) end

---Shows an item on the model.
---@param itemType number
---@return boolean success
---@return boolean initModel do i need to init the model true or false
---@nodiscard
function ModelView:ShowItem(itemType) end

---Stops the animation for the ModelView.
function ModelView:StopAnimation() end

---Enables/Disables cosplay `equipped` for the ModelView.
---@param equipped boolean (default: `true`)
function ModelView:ToggleCosplayEquipped(equipped) end

---Unequips an item from the specified slot. `ModelView:ApplyModel` after is required.
---@param itemSlot ES
function ModelView:UnequipItemSlot(itemSlot) end

---Updates the dye color for dyeable cosplay items.
---@param r number (min: `0`, max: `255`)
---@param g number (min: `0`, max: `255`)
---@param b number (min: `0`, max: `255`)
function ModelView:UpdateDyeColor(r, g, b) end

---Zooms in/out `yAmt` the model for the ModelView.
---@param yAmt number
function ModelView:ZoomInOut(yAmt) end

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
function ModelView:ZoomInOutBeautyShop(amount) end
