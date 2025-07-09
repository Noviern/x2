---@meta _

AP_BOTTOM = 8 -- object/ModelView
AP_BOTTOMLEFT = 2 -- object/ModelView
AP_BOTTOMRIGHT = 3 -- object/ModelView
AP_CENTER = 4 -- object/ModelView
AP_LEFT = 6 -- object/ModelView
AP_RIGHT = 7 -- object/ModelView
AP_TOP = 5 -- object/ModelView
AP_TOPLEFT = 0 -- object/ModelView
AP_TOPRIGHT = 1 -- object/ModelView
CT_ABILITY = 2 -- object/ModelView
CT_EXPEDITION_NAME = 3 -- object/ModelView
CT_NAME = 1 -- object/ModelView
DC_ALWAYS = 0 -- object/ModelView
DC_SHIFT_KEY_DOWN = 1 -- object/ModelView

---object/ModelView
---@class ModelView: Widget
---@field AddRotation fun(self: self, angle: number)
---@field AdjustCameraPos fun(self: self, offsetX: number, offsetY: number, offsetZ: number)
---@field AdjustCameraPosToModel fun(self: self, offsetY: number, offsetZ: number)
---@field ApplyCustomizerParamToUnit fun(self: self)
---@field ApplyModel fun(self: self)
---@field ApplyPresetParam fun(self: self, part: number, index: number)
---@field ClearModel fun(self: self)
---@field EquipCostume fun(self: self, itemType: number, itemGrade: number, r: number, g: number, b: number)
---@field EquipItem fun(self: self, itemType: number)
---@field GetCustomBodyNormal fun(self: self)
---@field GetCustomDeco fun(self: self)
---@field GetCustomEyebrow fun(self: self)
---@field GetCustomEyebrowColor fun(self: self): number, number, number
---@field GetCustomFaceDiffuse fun(self: self)
---@field GetCustomFaceNormal fun(self: self)
---@field GetCustomHair fun(self: self)
---@field GetCustomHairColor fun(self: self)
---@field GetCustomHorn fun(self: self)
---@field GetCustomHornColor fun(self: self)
---@field GetCustomizingDecoColor fun(self: self): number, number, number
---@field GetCustomizingOddEyeUsable fun(self: self): boolean
---@field GetCustomLipColor fun(self: self): number, number, number
---@field GetCustomMakeUp fun(self: self)
---@field GetCustomPreviewCloth fun(self: self)
---@field GetCustomPupil fun(self: self, range: number)
---@field GetCustomPupilColor fun(self: self, range: number): number, number, number
---@field GetCustomScar fun(self: self)
---@field GetCustomSkinColor fun(self: self)
---@field GetCustomTail fun(self: self)
---@field GetCustomTattoo fun(self: self)
---@field GetFaceTargetCurValue fun(self: self, index: number): number
---@field GetGender fun(self: self): number
---@field GetRace fun(self: self): number
---@field GetRotation fun(self: self): number
---@field GetScarStatus fun(self: self)
---@field GetSelectedPresetIndex fun(self: self, part: number)
---@field GetTwoToneHairStatus fun(self: self)
---@field HasDiffWithClientUnit fun(self: self): boolean
---@field Init fun(self: self, unit: string, createModel): boolean
---@field InitBeautyShop fun(self: self)
---@field InitByModelRef fun(self: self, modelRef: number, race: string,  gender: string, butlerMode: boolean)
---@field InitCustomizerControl fun(self: self)
---@field IsFrozen fun(self: self): boolean
---@field ModifyFaceParamValue fun(self: self, index: number, value: number)
---@field PayBeautyShop fun(self: self)
---@field PlayAnimation fun(self: self, name: string, loop: boolean)
---@field RemoveEquipSlot fun(self: self, index: number)
---@field ResetBeautyShop fun(self: self)
---@field ResetEquips fun(self: self)
---@field SetBackColor fun(self: self, r: number, g: number, b: number)
---@field SetBeautyShopMode fun(self: self, beautyShop: boolean)
---@field SetCameraPos fun(self: self, x: number, y: number, z: number)
---@field SetCustomizingBodyNormal fun(self: self, index: number, weight: number)
---@field SetCustomizingDeco fun(self: self, index: number, weight: number)
---@field SetCustomizingDecoColor fun(self: self, r: number, g: number, b: number)
---@field SetCustomizingEyebrow fun(self: self, index: number)
---@field SetCustomizingEyebrowColor fun(self: self, r: number, g: number, b: number)
---@field SetCustomizingFaceDiffuse fun(self: self, index: number)
---@field SetCustomizingFaceNormal fun(self: self, index: number, weight: number)
---@field SetCustomizingHair fun(self: self, index: number)
---@field SetCustomizingHairColor fun(self: self, infos: table)
---@field SetCustomizingHairDefaultColor fun(self: self, infos: table)
---@field SetCustomizingHairTwoToneColor fun(self: self, infos: table)
---@field SetCustomizingHorn fun(self: self, index: number)
---@field SetCustomizingHornColor fun(self: self, index: number)
---@field SetCustomizingLipColor fun(self: self, r: number, g: number, b: number)
---@field SetCustomizingMakeUp fun(self: self, index: number, weight: number)
---@field SetCustomizingPreviewCloth fun(self: self, index: number)
---@field SetCustomizingPupil fun(self: self, index: number, range: number)
---@field SetCustomizingPupilColor fun(self: self, r: number, g: number, b: number, range: number)
---@field SetCustomizingScar fun(self: self, index: number, x: number, y: number, scale: number, rotate: number, weight: number)
---@field SetCustomizingSkinColor fun(self: self, index: number)
---@field SetCustomizingTail fun(self: self, index: number)
---@field SetCustomizingTattoo fun(self: self, index: number, weight: number)
---@field SetDisableColorGrading fun(self: self, disable: boolean)
---@field SetEquipSlotFromCharacter fun(self: self, index: number)
---@field SetFov fun(self: self, angle: number)
---@field SetFreeze fun(self: self, isStop: boolean)
---@field SetIngameShopMode fun(self: self, ingameShop: boolean)
---@field SetModelViewBackground fun(self: self, path: string)
---@field SetModelViewCoords fun(self: self, x: number, y: number, w: number, h: number)
---@field SetModelViewExtent fun(self: self, width: number, height: number)
---@field SetRotation fun(self: self, angle: number)
---@field SetSmile fun(self: self, smile: boolean)
---@field SetTextureSize fun(self: self, width: number, height: number)
---@field ShowItem fun(self: self, itemType: number): boolean
---@field StopAnimation fun(self: self)
---@field ToggleCosplayEquipped fun(self: self, equipped: boolean)
---@field UnequipItemSlot fun(self: self, itemSlot: number)
---@field UpdateDyeColor fun(self: self, r: number, g: number, b: number)
---@field ZoomInOut fun(self: self, yAmt: number)
---@field ZoomInOutBeautyShop fun(self: self, amount: number)