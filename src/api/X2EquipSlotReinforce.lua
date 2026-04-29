---@meta _

ESRA_DEFENCE = 2          -- api/X2EquipSlotReinforce EQUIP_SLOT_REINFORCE_ATTRIBUTE
ESRA_MAX = 4              -- api/X2EquipSlotReinforce
ESRA_OFFENCE = 1          -- api/X2EquipSlotReinforce EQUIP_SLOT_REINFORCE_ATTRIBUTE
ESRA_SUPPORT = 3          -- api/X2EquipSlotReinforce EQUIP_SLOT_REINFORCE_ATTRIBUTE
---@class X2EquipSlotReinforce
X2EquipSlotReinforce = {} -- api/X2EquipSlotReinforce

---api/X2EquipSlotReinforce
---@alias EQUIP_SLOT_REINFORCE_ATTRIBUTE
---| `ESRA_DEFENCE`
---| `ESRA_OFFENCE`
---| `ESRA_SUPPORT`

---Returns the currently applied bundle rank effects.
---@return table|nil appliedAllBundleEffect The list of applied bundle effects, or `nil` if none.
---@nodiscard
function X2EquipSlotReinforce:GetAppliedAllBundleEffect() end

---Returns a list of all applied level effects from equipment slot reinforcement.
---@return AppliedAllLevelEffect[] appliedAllLevelEffect The list of applied level effects.
---@nodiscard
---@see AppliedAllLevelEffect
function X2EquipSlotReinforce:GetAppliedAllLevelEffect() end

---@TODO: This is only used if X2Player:GetFeatureSet().equipSlotBundleEffect == false. Likely a relic of an early system.
---@deprecated
function X2EquipSlotReinforce:GetAppliedAllSetEffect() end

---Returns the total level of the specified attribute type across all reinforced slots.
---@param attributeType EQUIP_SLOT_REINFORCE_ATTRIBUTE The attribute type.
---@return number attributeTotalLevel The total level of the attribute.
---@nodiscard
function X2EquipSlotReinforce:GetAttributeTotalLevel(attributeType) end

---Returns the attribute type associated with the given equipment slot.
---@param equipSlotIndex EQUIPMENT_SLOT The equipment slot index.
---@return EQUIP_SLOT_REINFORCE_ATTRIBUTE attributeType The corresponding attribute type.
---@nodiscard
function X2EquipSlotReinforce:GetAttributeType(equipSlotIndex) end

---Returns a list of all available bundle rank effects.
---@return BundleEffectInfo[] bundleEffectInfos The list of bundle effect information.
---@nodiscard
---@see BundleEffectInfo
function X2EquipSlotReinforce:GetBundleEffectInfos() end

---Returns the player's current bundle rank level.
---@return number myBundleEffectTopLevel The player's top bundle effect level.
---@nodiscard
function X2EquipSlotReinforce:GetBundleEffectTopLevel() end

---@FIXME: Currently broken - crashes the game.
---@TODO: Likely a relic of an early system.
---**Warning:** currently broken, crashes the game.
---@param equipSlotIndex EQUIPMENT_SLOT The equipment slot index.
---@deprecated
function X2EquipSlotReinforce:GetLevelEffectChangeUIInfo(equipSlotIndex) end

---Returns level effect information for the specified equipment slot.
---@param equipSlotIndex EQUIPMENT_SLOT The equipment slot index.
---@return LevelEffectInfo[] levelEffectInfoByEquipSlot The list of level effects for the slot.
---@nodiscard
---@see LevelEffectInfo
function X2EquipSlotReinforce:GetLevelEffectInfoByEquipSlot(equipSlotIndex) end

---Returns the current level effect step of the specified equipment slot.
---@param equipSlotIndex EQUIPMENT_SLOT The equipment slot index.
---@return number levelEffectStep The current level effect step.
---@nodiscard
function X2EquipSlotReinforce:GetLevelEffectStep(equipSlotIndex) end

---@FIXME: Currently broken - crashes the game.
---**Warning:** currently broken, crashes the game.
---@param equipSlotIndex EQUIPMENT_SLOT The equipment slot index.
---@param level number The level to query.
function X2EquipSlotReinforce:GetMaterialInfo(equipSlotIndex, level) end

---Returns the next level required to activate the next set effect for the attribute.
---This appears to be unused and is likely a relic of an early system.
---@param attributeType EQUIP_SLOT_REINFORCE_ATTRIBUTE The attribute type.
---@return number nextSetApplyLevel The level required for the next set effect.
---@nodiscard
---@deprecated
function X2EquipSlotReinforce:GetNextSetApplyLevel(attributeType) end

---Returns reinforcement information for the specified equipment slot.
---@param equipSlotIndex EQUIPMENT_SLOT The equipment slot index.
---@return ReinforceInfo reinforceInfo The reinforcement info for the slot.
---@nodiscard
---@see ReinforceInfo
function X2EquipSlotReinforce:GetReinforceInfo(equipSlotIndex) end

---Returns the set effect top level for the specified attribute type.
---This appears to be unused and is likely a relic of an early system.
---@param attributeType EQUIP_SLOT_REINFORCE_ATTRIBUTE The attribute type.
---@return number setEffectTopLevel The top set effect level.
---@nodiscard
---@deprecated
function X2EquipSlotReinforce:GetSetEffectTopLevel(attributeType) end

---Returns the set effects for the specified attribute type.
---This appears to be unused and is likely a relic of an early system.
---@param attributeType EQUIP_SLOT_REINFORCE_ATTRIBUTE The attribute type.
---@return SetEffect[] setEffects The list of set effects.
---@nodiscard
---@deprecated
---@see SetEffect
function X2EquipSlotReinforce:GetSetEffects(attributeType) end

---Returns the total reinforcement level across all equipment slots.
---@return number totalReinforceLevel The sum of all reinforcement levels.
---@nodiscard
function X2EquipSlotReinforce:GetTotalReinforceLevel() end

---Checks whether the attribute has a next set effect available.
---This appears to be unused and is likely a relic of an early system.
---@param attributeType EQUIP_SLOT_REINFORCE_ATTRIBUTE The attribute type.
---@return boolean hasNextSetEffect `true` if a next set effect exists, `false` otherwise.
---@nodiscard
---@deprecated
function X2EquipSlotReinforce:HasNextSetEffect(attributeType) end

---Checks whether the equipment slot has reached full experience.
---@param equipSlotIndex EQUIPMENT_SLOT The equipment slot index.
---@return number isFullExp `1` if at full experience, `0` otherwise.
---@nodiscard
function X2EquipSlotReinforce:IsFullExp(equipSlotIndex) end

---@FIXME:
---**Warning:** This function does not appear to work.
---Checks whether an item is tagged as an in-game shop item.
---@param itemType number The item type to check.
---@return boolean isInGameShopItem `true` if the item is an in-game shop item, `false` otherwise.
---@nodiscard
function X2EquipSlotReinforce:IsInGameShopItemTag(itemType) end

---Checks whether the player is high enough level to reinforce equipment slots.
---@return boolean suitableLevelForEquipSlotReinforce `true` if the player meets the level requirement, `false` otherwise.
---@nodiscard
function X2EquipSlotReinforce:SuitableLevelForEquipSlotReinforce() end
