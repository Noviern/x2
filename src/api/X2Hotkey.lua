---@meta _

---@class X2Hotkey
X2Hotkey = {} -- api/X2Hotkey

---@TODO: HOTKEY_ACTION|string players can make their own actions but unsure how these could be used.

---Enables or disables the hotkey system.
---@param enable boolean `true` to enable the hotkey system, `false` to disable it. (default: `true`)
---@usage
---```lua
---X2Hotkey:EnableHotkey(false)
---```
function X2Hotkey:EnableHotkey(enable) end

---Retrieves the option binding for a specified hotkey action.
---@param action HOTKEY_ACTION The hotkey action to query.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@param option boolean `true` to include additional options, `false` otherwise.
---@param arg number Additional argument for the binding.
---@return string optionBinding The option binding string.
---@nodiscard
---@usage
---```lua
---X2Hotkey:GetOptionBinding("quest_directing_interaction", 1, false, 2)
---```
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:GetOptionBinding(action, index, option, arg) end

---Retrieves the button binding for a specified hotkey action.
---@param action HOTKEY_ACTION The hotkey action to query.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@return string optionBindingButton The button binding string.
---@usage
---```lua
---X2Hotkey:GetOptionBindingButton("toggle_worldmap", 1)
---```
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:GetOptionBindingButton(action, index) end

---Checks if a hotkey action is overridable.
---@param action HOTKEY_ACTION The hotkey action to check.
---@return boolean overridableAction `true` if the action is overridable, `false` otherwise.
---@nodiscard
---@usage
---```lua
---local overridableAction = X2Hotkey:IsOverridableAction("quest_directing_interaction")
---```
---@see HOTKEY_ACTION
function X2Hotkey:IsOverridableAction(action) end

---Checks if a hotkey action name is valid.
---@param action HOTKEY_ACTION The hotkey action to validate.
---@return boolean validActionName `true` if the action name is valid, `false` otherwise.
---@nodiscard
---@usage
---```lua
---local validActionName = X2Hotkey:IsValidActionName("quest_directing_interaction")
---```
---@see HOTKEY_ACTION
function X2Hotkey:IsValidActionName(action) end

---@TODO: this never saved but sets the key into the key slot in the options
---Sets the button binding for a hotkey action with a specific key type.
---@param action HOTKEY_ACTION The hotkey action to bind.
---@param key string The key to bind.
---@param keyType HOTKEY_MANAGER The key type for the binding.
---@usage
---```lua
---X2Hotkey:SetOptionBindingButtonWithIndex("front_camera", "`", 1)
---```
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:SetOptionBindingButtonWithIndex(action, key, keyType) end

---@TODO: this never saved but sets the key into the key slot in the options
---Sets the option binding for a hotkey action with additional arguments.
---@param action HOTKEY_ACTION The hotkey action to bind.
---@param key string The key to bind.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@param arg number The additional argument for the binding. (min: `0`)
---@usage
---```lua
---X2Hotkey:SetOptionBindingWithIndex("front_camera", "`", 1, 0)
---```
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:SetOptionBindingWithIndex(action, key, index, arg) end
