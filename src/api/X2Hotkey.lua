---@meta _

---@class X2Hotkey
X2Hotkey = {} -- api/X2Hotkey

---@TODO: without X2Hotkey:SaveHotKey() all keys/actions must be set each reload.
---@TODO: action option button is the the button in the settings that can be changed and applied.

---Enables or disables the hotkey system.
---@param enable boolean `true` to enable the hotkey system, `false` to disable it. (default: `true`)
---@usage
---```lua
---X2Hotkey:EnableHotkey(false)
---```
function X2Hotkey:EnableHotkey(enable) end

---Returns the current set key for the action.
---@param actionName HOTKEY_ACTION|string The action name or hotkey action to query.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@return string key The key bound to the action.
---@nodiscard
---@usage
---```lua
---local key = X2Hotkey:GetBindingUiEvent("my_custom_action_name", 1)
---```
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:GetBindingUiEvent(actionName, index) end

---Returns the key bound to the action option button for a specified hotkey
---index.
---@param action HOTKEY_ACTION The hotkey action to query.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@param option boolean `true` to include additional options, `false` otherwise.
---@param arg number Additional argument for the binding.
---@return string optionBinding The option binding string.
---@nodiscard
---@usage
---```lua
---local optionBinding = X2Hotkey:GetOptionBinding("quest_directing_interaction", 1, false, 2)
---```
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:GetOptionBinding(action, index, option, arg) end

---Returns the key bound to the action option button for a specified hotkey
---index.
---@param action HOTKEY_ACTION The hotkey action to query.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@return string key The button binding string.
---@nodiscard
---@usage
---```lua
---local key = X2Hotkey:GetOptionBindingButton("toggle_worldmap", 1)
---```
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:GetOptionBindingButton(action, index) end

---Returns the key bound to the action option button.
---@param actionName HOTKEY_ACTION|string The action name or hotkey action to query.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@return string key The key bound to the action option button.
---@nodiscard
---@usage
---```lua
---local key = X2Hotkey:GetOptionBindingUiEvent("my_custom_action_name", 1)
---```
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:GetOptionBindingUiEvent(actionName, index) end

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

---Checks if a hotkey action is valid.
---@param action HOTKEY_ACTION The hotkey action to validate.
---@return boolean validActionName `true` if the action name is valid, `false` otherwise.
---@nodiscard
---@usage
---```lua
---local validActionName = X2Hotkey:IsValidActionName("quest_directing_interaction")
---```
---@see HOTKEY_ACTION
function X2Hotkey:IsValidActionName(action) end

---Saves currently set hotkeys. **Danger!** Currently will erase all hotkeys after reloading.
---@usage
---```lua
---X2Hotkey:SaveHotKey()
---```
function X2Hotkey:SaveHotKey() end

---Binds a key to a action and registers the key to fire the `HOTKEY_ACTION`
---event when pressed and released.
---@param actionName string custom action
---@param key string
---@usage
---```lua
---X2Hotkey:SetBindingUiEvent("my_custom_action_name", "CTRL-`")
---```
---@see HOTKEY_ACTION
function X2Hotkey:SetBindingUiEvent(actionName, key) end

---Binds a key to a action in the specified index and registers the key to fire
---the `HOTKEY_ACTION` event when pressed and released.
---@param actionName string The custom action name to bind.
---@param key string The key to bind to the action.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@usage
---```lua
---X2Hotkey:SetBindingUiEventWithIndex("my_custom_action_name", "CTRL-`", 1)
---```
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:SetBindingUiEventWithIndex(actionName, key, index) end

---Binds a key to a action option button in the specified index.
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

---Binds a key to a action option button.
---@param actionName string The custom action name to bind.
---@param key string The key to bind to the action.
---@usage
---```lua
---X2Hotkey:SetOptionBindingUiEvent("my_custom_action_name", "CTRL-`")
---```
function X2Hotkey:SetOptionBindingUiEvent(actionName, key) end

---Binds a key to a custom action option button in the specified index.
---@param actionName string The custom action name to bind.
---@param key string The key to bind to the action.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@usage
---```lua
---X2Hotkey:SetOptionBindingUiEventWithIndex("my_custom_action_name", "CTRL-`", 1)
---```
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:SetOptionBindingUiEventWithIndex(actionName, key, index) end

---Binds a key to a action option button in the specified index with additional
---arguments. Can trigger the `UPDATE_OPTION_BINDINGS` event if the button key has changed.
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
