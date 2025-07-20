---@meta _

AP_BOTTOM = 8          -- object/ModelView
AP_BOTTOMLEFT = 2      -- object/ModelView
AP_BOTTOMRIGHT = 3     -- object/ModelView
AP_CENTER = 4          -- object/ModelView
AP_LEFT = 6            -- object/ModelView
AP_RIGHT = 7           -- object/ModelView
AP_TOP = 5             -- object/ModelView
AP_TOPLEFT = 0         -- object/ModelView
AP_TOPRIGHT = 1        -- object/ModelView
CT_ABILITY = 2         -- object/ModelView
CT_EXPEDITION_NAME = 3 -- object/ModelView
CT_NAME = 1            -- object/ModelView
DC_ALWAYS = 0          -- object/ModelView
DC_SHIFT_KEY_DOWN = 1  -- object/ModelView

---object/ModelView
---@enum (key) GENDER_ID
local GENDER_ID = {
  [1] = "male",
  [2] = "female",
}

---object/ModelView
---@enum GENDER
local GENDER = {
  [1] = "male",
  [2] = "female",
}

----object/ModelView
---@enum (key) RACE_ID
local RACE_ID = {
  [1] = "nuian",
  [2] = "fairy",
  [3] = "dwarf",
  [4] = "elf",
  [5] = "harani",
  [6] = "firran",
  [7] = "returned",
  [8] = "warborn",
  [9] = "daru",
}

---object/ModelView
---@enum RACE
local RACE = {
  [1] = "nuian",
  [2] = "fairy",
  [3] = "dwarf",
  [4] = "elf",
  [5] = "harani",
  [6] = "firran",
  [7] = "returned",
  [8] = "warborn",
  [9] = "daru",
}

---object/ModelView
---@class ModelView: Widget
local ModelView = {}

---Adds rotation `angle` to the ModelView.
---@param angle number in degrees
function ModelView:AddRotation(angle) end

---Adjusts the cameras position for the ModelView.
---@param offsetX number
---@param offsetY number
---@param offsetZ number
function ModelView:AdjustCameraPos(offsetX, offsetY, offsetZ) end

---TODO:
---@param offsetY number
---@param offsetZ number
function ModelView:AdjustCameraPosToModel(offsetY, offsetZ) end

---TODO:
function ModelView:ApplyCustomizerParamToUnit() end

---TODO:
function ModelView:ApplyModel() end

---TODO:
---@param part number
---@param index number
function ModelView:ApplyPresetParam(part, index) end

---Clears the model for the ModelView.
function ModelView:ClearModel() end

---TODO:
---@param itemType number
---@param itemGrade number
---@param r number
---@param g number
---@param b number
function ModelView:EquipCostume(itemType, itemGrade, r, g, b) end

---Equips the `itemType` on to the model for the ModelView.
---@param itemType number
function ModelView:EquipItem(itemType) end

---TODO:
function ModelView:GetCustomBodyNormal() end

---TODO:
function ModelView:GetCustomDeco() end

---TODO:
function ModelView:GetCustomEyebrow() end

---TODO:
---@return number
---@return number
---@return number
---@nodiscard
function ModelView:GetCustomEyebrowColor() end

---TODO:
function ModelView:GetCustomFaceDiffuse() end

---TODO:
function ModelView:GetCustomFaceNormal() end

---TODO:
function ModelView:GetCustomHair() end

---TODO:
function ModelView:GetCustomHairColor() end

---TODO:
function ModelView:GetCustomHorn() end

---TODO:
function ModelView:GetCustomHornColor() end

---TODO:
---@return number
---@return number
---@return number
---@nodiscard
function ModelView:GetCustomizingDecoColor() end

---TODO:
---@return boolean
---@nodiscard
function ModelView:GetCustomizingOddEyeUsable() end

---TODO:
---@return number
---@return number
---@return number
---@nodiscard
function ModelView:GetCustomLipColor() end

---TODO:
function ModelView:GetCustomMakeUp() end

---TODO:
function ModelView:GetCustomPreviewCloth() end

---TODO:
---@param range number
function ModelView:GetCustomPupil(range) end

---TODO:
---@param range number
---@return number
---@return number
---@return number
---@nodiscard
function ModelView:GetCustomPupilColor(range) end

---TODO:
function ModelView:GetCustomScar() end

---TODO:
function ModelView:GetCustomSkinColor() end

---TODO:
function ModelView:GetCustomTail() end

---TODO:
function ModelView:GetCustomTattoo() end

---TODO:
---@param index number
---@return number
---@nodiscard
function ModelView:GetFaceTargetCurValue(index) end

---Returns `gender` for the ModelView.
---@return GENDER_ID genderId
---@nodiscard
function ModelView:GetGender() end

---Returns the `raceId` for the model of the ModelView.
---@return RACE_ID raceId
---@nodiscard
function ModelView:GetRace() end

---Returns `rotation` for the ModelView.
---@return number rotation in degrees.
---@nodiscard
function ModelView:GetRotation() end

---TODO:
function ModelView:GetScarStatus() end

---TODO:
---@param part number
function ModelView:GetSelectedPresetIndex(part) end

---TODO:
function ModelView:GetTwoToneHairStatus() end

---TODO:
---@return boolean
---@nodiscard
function ModelView:HasDiffWithClientUnit() end

---TODO:
---@param unit string
---@param createModel boolean
---@return boolean
---@nodiscard
function ModelView:Init(unit, createModel) end

---TODO:
function ModelView:InitBeautyShop() end

---TODO:
---@param modelRef number
---@param race RACE
---@param gender GENDER
---@param butlerMode boolean
function ModelView:InitByModelRef(modelRef, race, gender, butlerMode) end

---TODO:
function ModelView:InitCustomizerControl() end

---TODO: This is broken, returns the opposite of what you would expect.
---Returns a boolean `frozen` indicating if the model is frozen for ModelView.
---@return boolean frozen
---@nodiscard
function ModelView:IsFrozen() end

---TODO:
---@param index number
---@param value number
function ModelView:ModifyFaceParamValue(index, value) end

---TODO:
function ModelView:PayBeautyShop() end

---Plays a animation for the ModelView.
---@param name string
---@param loop boolean
function ModelView:PlayAnimation(name, loop) end

---TODO:
---@param index number
function ModelView:RemoveEquipSlot(index) end

---TODO:
function ModelView:ResetBeautyShop() end

---TODO:
function ModelView:ResetEquips() end

---TODO:
---@param r number
---@param g number
---@param b number
function ModelView:SetBackColor(r, g, b) end

---TODO:
---@param beautyShop boolean
function ModelView:SetBeautyShopMode(beautyShop) end

---TODO:
---@param x number
---@param y number
---@param z number
function ModelView:SetCameraPos(x, y, z) end

---TODO:
---@param index number
---@param weight number
function ModelView:SetCustomizingBodyNormal(index, weight) end

---TODO:
---@param index number
---@param weight number
function ModelView:SetCustomizingDeco(index, weight) end

---TODO:
---@param r number
---@param g number
---@param b number
function ModelView:SetCustomizingDecoColor(r, g, b) end

---TODO:
---@param index number
function ModelView:SetCustomizingEyebrow(index) end

---TODO:
---@param r number
---@param g number
---@param b number
function ModelView:SetCustomizingEyebrowColor(r, g, b) end

---TODO:
---@param index number
function ModelView:SetCustomizingFaceDiffuse(index) end

---TODO:
---@param index number
---@param weight number
function ModelView:SetCustomizingFaceNormal(index, weight) end

---TODO:
---@param index number
function ModelView:SetCustomizingHair(index) end

---TODO:
---@param infos table
function ModelView:SetCustomizingHairColor(infos) end

---TODO:
---@param infos table
function ModelView:SetCustomizingHairDefaultColor(infos) end

---TODO:
---@param infos table
function ModelView:SetCustomizingHairTwoToneColor(infos) end

---TODO:
---@param index number
function ModelView:SetCustomizingHorn(index) end

---TODO:
---@param index number
function ModelView:SetCustomizingHornColor(index) end

---TODO:
---@param r number
---@param g number
---@param b number
function ModelView:SetCustomizingLipColor(r, g, b) end

---TODO:
---@param index number
---@param weight number
function ModelView:SetCustomizingMakeUp(index, weight) end

---TODO:
---@param index number
function ModelView:SetCustomizingPreviewCloth(index) end

---TODO:
---@param index number
---@param range number
function ModelView:SetCustomizingPupil(index, range) end

---TODO:
---@param r number
---@param g number
---@param b number
---@param range number
function ModelView:SetCustomizingPupilColor(r, g, b, range) end

---TODO:
---@param index number
---@param x number
---@param y number
---@param scale number
---@param rotate number
---@param weight number
function ModelView:SetCustomizingScar(index, x, y, scale, rotate, weight) end

---TODO:
---@param index number
function ModelView:SetCustomizingSkinColor(index) end

---TODO:
---@param index number
function ModelView:SetCustomizingTail(index) end

---TODO:
---@param index number
---@param weight number
function ModelView:SetCustomizingTattoo(index, weight) end

---TODO:
---@param disable boolean
function ModelView:SetDisableColorGrading(disable) end

---TODO:
---@param index number
function ModelView:SetEquipSlotFromCharacter(index) end

---TODO: Broken?
---Sets the fov `angle` for the ModelView.
---@param angle number
function ModelView:SetFov(angle) end

---Sets `isStop` for the ModelView.
---@param isStop boolean
function ModelView:SetFreeze(isStop) end

---TODO:
---@param ingameShop boolean
function ModelView:SetIngameShopMode(ingameShop) end

---TODO: Buggy, causes flashing screen
---Sets the background of the ModelView.
---@param path string
---@param key? string
function ModelView:SetModelViewBackground(path, key) end

---Sets the coords of the ModelView.
---@param x number
---@param y number
---@param w number
---@param h number
function ModelView:SetModelViewCoords(x, y, w, h) end

---Sets the extent `width` and `height` of the ModelView.
---@param width number
---@param height number
function ModelView:SetModelViewExtent(width, height) end

---Sets the rotation `angle` for the ModelView.
---@param angle number in degrees.
function ModelView:SetRotation(angle) end

---Enables/Disables smiling for the ModelView.
---@param smile boolean
function ModelView:SetSmile(smile) end

---Sets the texture `width` and `height` of the ModelView.
---@param width number
---@param height number
function ModelView:SetTextureSize(width, height) end

---Returns a boolean `itemIsEquipped` indicating if the item is equipped and
---shows the item if true for the ModelView.
---@param itemType number
---@return boolean itemIsEquipped
---@nodiscard
function ModelView:ShowItem(itemType) end

---Stops the animation for the ModelView.
function ModelView:StopAnimation() end

---Enables/Disables cosplay `equipped` for the ModelView.
---@param equipped boolean
function ModelView:ToggleCosplayEquipped(equipped) end

---TODO:
---@param itemSlot number
function ModelView:UnequipItemSlot(itemSlot) end

---TODO:
---@param r number
---@param g number
---@param b number
function ModelView:UpdateDyeColor(r, g, b) end

---Zooms in/out `yAmt` the model for the ModelView.
---@param yAmt number
function ModelView:ZoomInOut(yAmt) end

---TODO:
---@param amount number
function ModelView:ZoomInOutBeautyShop(amount) end
