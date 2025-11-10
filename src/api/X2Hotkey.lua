---@meta _

---@class X2Hotkey
X2Hotkey = {} -- api/X2Hotkey

---When working with hotkeys its best to do everything on another character so
---you dont mess up your main.
---There are current active bindings and then current option button bindings that can be changed and applied.

---Sets all current bindings to their option button.
---
---**This must be used before `X2Hotkey:SaveHotKey()` or all hotkeys will be
---erased upon reloading!**
---@usage
---```lua
---X2Hotkey:BindingToOption()
----- Set a new binding.
---X2Hotkey:SaveHotKey()
---```
function X2Hotkey:BindingToOption() end

---Enables or disables the hotkey system.
---@param enable boolean `true` to enable the hotkey system, `false` to disable it. (default: `true`)
function X2Hotkey:EnableHotkey(enable) end

---Returns the current set key for the action.
---@param actionName HOTKEY_ACTION|string The action name or hotkey action to query.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@return string key The key bound to the action.
---@nodiscard
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
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:GetOptionBinding(action, index, option, arg) end

---Returns the key bound to the action option button for a specified hotkey
---index.
---@param action HOTKEY_ACTION The hotkey action to query.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@return string key The button binding string.
---@nodiscard
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:GetOptionBindingButton(action, index) end

---Returns the key bound to the action option button.
---@param actionName HOTKEY_ACTION|string The action name or hotkey action to query.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@return string key The key bound to the action option button.
---@nodiscard
---@see HOTKEY_ACTION
---@see HOTKEY_MANAGER
function X2Hotkey:GetOptionBindingUiEvent(actionName, index) end

---Checks if a hotkey action is overridable.
---@param action HOTKEY_ACTION The hotkey action to check.
---@return boolean overridableAction `true` if the action is overridable, `false` otherwise.
---@nodiscard
---@see HOTKEY_ACTION
function X2Hotkey:IsOverridableAction(action) end

---Checks if a hotkey action is valid.
---@param action HOTKEY_ACTION The hotkey action to validate.
---@return boolean validActionName `true` if the action name is valid, `false` otherwise.
---@nodiscard
---@see HOTKEY_ACTION
function X2Hotkey:IsValidActionName(action) end

---Sets current option bindings and allows them to be used but does not save
---them.
---- **`X2Hotkey:BindingToOption()` must be used before or all hotkeys will
---be erased upon reloading!**
---- **Any key pressed when this is fired and `X2Hotkey:BindingToOption()` isn't
---used right before setting a hotkey can become stuck in a pressed state until
---pressed again.**
function X2Hotkey:OptionToBinding() end

---Saves currently set hotkeys. Triggers the `UPDATE_BINDINGS` event.
---- **`X2Hotkey:BindingToOption()` must be used before or all hotkeys will
---be erased upon reloading!**
---- **Any key pressed when this is fired and `X2Hotkey:BindingToOption()` isn't
---used right before setting a hotkey can become stuck in a pressed state until
---pressed again.**
---@usage
---```lua
---X2Hotkey:BindingToOption()
----- Set a new binding here.
---X2Hotkey:SaveHotKey()
---```
function X2Hotkey:SaveHotKey() end

---Binds a key to an action and registers the key to fire the `HOTKEY_ACTION`
---event when pressed and released. This can't be saved but the hotkey can be
---used immediately.
---@param actionName string The custom action name to bind.
---@param key HOTKEY_NAME|string The key to bind to the action.
---@see HOTKEY_NAME
function X2Hotkey:SetBindingUiEvent(actionName, key) end

---Binds a key to a action in the specified index and registers the key to fire
---the `HOTKEY_ACTION` event when pressed and released. This can't be saved but
---the hotkey can be used immediately.
---@param actionName string The custom action name to bind.
---@param key HOTKEY_NAME|string The key to bind to the action.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@see HOTKEY_NAME
---@see HOTKEY_MANAGER
function X2Hotkey:SetBindingUiEventWithIndex(actionName, key, index) end

---Binds a key to a action option button in the specified index. Can't be saved
---or used.
---@param action HOTKEY_ACTION The hotkey action to bind.
---@param key HOTKEY_NAME|string The key to bind.
---@param keyType HOTKEY_MANAGER The key type for the binding.
---@see HOTKEY_ACTION
---@see HOTKEY_NAME
---@see HOTKEY_MANAGER
function X2Hotkey:SetOptionBindingButtonWithIndex(action, key, keyType) end

---Binds a key to a action option button and once saved registers the key to
---fire the `HOTKEY_ACTION` event when pressed and released.
---@param actionName string The custom action name to bind.
---@param key HOTKEY_NAME|string The key to bind to the action.
---@usage
---```lua
---X2Hotkey:BindingToOption()
---X2Hotkey:SetOptionBindingUiEvent("my_custom_action_name", "CTRL-`")
---X2Hotkey:SaveHotKey()
---```
---@see HOTKEY_NAME
function X2Hotkey:SetOptionBindingUiEvent(actionName, key) end

---Binds a key to a custom action option button in the specified index and once
---saved registers the key to fire the `HOTKEY_ACTION` event when pressed and
---released.
---@param actionName string The custom action name to bind.
---@param key HOTKEY_NAME|string The key to bind to the action.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@usage
---```lua
---X2Hotkey:BindingToOption()
---X2Hotkey:SetOptionBindingUiEventWithIndex("my_custom_action_name", "SHIFT-`", 1)
---X2Hotkey:SaveHotKey()
---```
---@see HOTKEY_ACTION
---@see HOTKEY_NAME
---@see HOTKEY_MANAGER
function X2Hotkey:SetOptionBindingUiEventWithIndex(actionName, key, index) end

---Binds a key to a action option button in the specified index with additional
---arguments. Can trigger the `UPDATE_OPTION_BINDINGS` event if the button key
---has changed.
---@param action HOTKEY_ACTION The hotkey action to bind.
---@param key HOTKEY_NAME|string The key to bind.
---@param index HOTKEY_MANAGER The index of the hotkey manager.
---@param arg number The additional argument for the binding. (min: `0`)
---@usage
---```lua
---X2Hotkey:BindingToOption()
---X2Hotkey:SetOptionBindingWithIndex("front_camera", "`", 1, 0)
---X2Hotkey:SaveHotKey()
---```
---@see HOTKEY_ACTION
---@see HOTKEY_NAME
---@see HOTKEY_MANAGER
function X2Hotkey:SetOptionBindingWithIndex(action, key, index, arg) end
