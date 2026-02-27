# X2Hotkey
## Globals
**X2Hotkey**

`X2Hotkey`

## Classes
### Class: X2Hotkey
#### Method: BindingToOption
```lua
(method) X2Hotkey:BindingToOption()
```
> Sets all current bindings to their option button.
> 
> **This must be used before `X2Hotkey:SaveHotKey()` or all hotkeys will be
> erased upon reloading!**
> ```lua
> X2Hotkey:BindingToOption()
> -- Set a new binding.
> X2Hotkey:SaveHotKey()
> ```

#### Method: SetBindingUiEvent
```lua
(method) X2Hotkey:SetBindingUiEvent(actionName: string, key: string|","|"."|"/"|"0"...(+96))
```
> Binds a key to an action and registers the key to fire the `HOTKEY_ACTION`
> event when pressed and released. This can't be saved but the hotkey can be
> used immediately.
> 
> @*param* `actionName` — The custom action name to bind.
> 
> @*param* `key` — The key to bind to the action.
> 
> ```lua
> -- Supported modifier keys: CTRL, SHIFT, ALT
> -- You may combine multiple modifiers (e.g., CTRL-SHIFT)
> -- 
> -- Hotkey format
> -- {MODIFIER1}-{MODIFIER2}-{MODIFIER3}-{KEY}
> -- Example: CTRL-A, CTRL-SHIFT-F1, ALT-ESCAPE
> key:
>     | "ESCAPE" -- Keyboard
>     | "F1" -- Keyboard
>     | "F2" -- Keyboard
>     | "F3" -- Keyboard
>     | "F4" -- Keyboard
>     | "F5" -- Keyboard
>     | "F6" -- Keyboard
>     | "F7" -- Keyboard
>     | "F8" -- Keyboard
>     | "F9" -- Keyboard
>     | "F10" -- Keyboard
>     | "F11" -- Keyboard
>     | "F12" -- Keyboard
>     | "PRINT" -- Keyboard
>     | "SCROLLLOCK" -- Keyboard
>     | "PAUSE" -- Keyboard
>     | "APOSTROPHE" -- Keyboard
>     | "1" -- Keyboard
>     | "2" -- Keyboard
>     | "3" -- Keyboard
>     | "4" -- Keyboard
>     | "5" -- Keyboard
>     | "6" -- Keyboard
>     | "7" -- Keyboard
>     | "8" -- Keyboard
>     | "9" -- Keyboard
>     | "0" -- Keyboard
>     | "MINUS" -- Keyboard
>     | "EQUALS" -- Keyboard
>     | "BACKSPACE" -- Keyboard
>     | "TAB" -- Keyboard
>     | "CAPSLOCK" -- Keyboard
>     | "{" -- Keyboard
>     | "}" -- Keyboard
>     | "BACKSLASH" -- Keyboard
>     | "ENTER" -- Keyboard
>     | "," -- Keyboard
>     | "." -- Keyboard
>     | "/" -- Keyboard
>     | "A" -- Keyboard
>     | "B" -- Keyboard
>     | "C" -- Keyboard
>     | "D" -- Keyboard
>     | "E" -- Keyboard
>     | "F" -- Keyboard
>     | "G" -- Keyboard
>     | "H" -- Keyboard
>     | "I" -- Keyboard
>     | "J" -- Keyboard
>     | "K" -- Keyboard
>     | "L" -- Keyboard
>     | "M" -- Keyboard
>     | "N" -- Keyboard
>     | "O" -- Keyboard
>     | "P" -- Keyboard
>     | "Q" -- Keyboard
>     | "R" -- Keyboard
>     | "S" -- Keyboard
>     | "T" -- Keyboard
>     | "U" -- Keyboard
>     | "V" -- Keyboard
>     | "W" -- Keyboard
>     | "X" -- Keyboard
>     | "Y" -- Keyboard
>     | "Z" -- Keyboard
>     | "SPACE" -- Keyboard
>     | "INSERT" -- Keyboard
>     | "HOME" -- Keyboard
>     | "PAGEUP" -- Keyboard
>     | "DELETE" -- Keyboard
>     | "END" -- Keyboard
>     | "PAGEDOWN" -- Keyboard
>     | "UP" -- Keyboard
>     | "LEFT" -- Keyboard
>     | "DOWN" -- Keyboard
>     | "RIGHT" -- Keyboard
>     | "NUMBER-" -- Number Pad
>     | "NUMBER+" -- Number Pad
>     | "NUMBER0" -- Number Pad
>     | "NUMBER1" -- Number Pad
>     | "NUMBER2" -- Number Pad
>     | "NUMBER3" -- Number Pad
>     | "NUMBER4" -- Number Pad
>     | "NUMBER5" -- Number Pad
>     | "NUMBER6" -- Number Pad
>     | "NUMBER7" -- Number Pad
>     | "NUMBER8" -- Number Pad
>     | "NUMBER9" -- Number Pad
>     | "NUMLOCK" -- Number Pad
>     | "MOUSE1" -- Mouse
>     | "MOUSE2" -- Mouse
>     | "MOUSE3" -- Mouse
>     | "MOUSE4" -- Mouse
>     | "MOUSE5" -- Mouse
>     | "MOUSE6" -- Mouse
>     | "MOUSE7" -- Mouse
>     | "MOUSE8" -- Mouse
>     | "MIDDLEBUTTON" -- Mouse
>     | "WHEELDOWN" -- Mouse
>     | "WHEELUP" -- Mouse
> ```

#### Method: SaveHotKey
```lua
(method) X2Hotkey:SaveHotKey()
```
> Saves currently set hotkeys. Triggers the `UPDATE_BINDINGS` event.
> - **`X2Hotkey:BindingToOption()` must be used before or all hotkeys will
> be erased upon reloading!**
> - **Any key pressed when this is fired and `X2Hotkey:BindingToOption()` isn't
> used right before setting a hotkey can become stuck in a pressed state until
> pressed again.**
> ```lua
> X2Hotkey:BindingToOption()
> -- Set a new binding here.
> X2Hotkey:SaveHotKey()
> ```

#### Method: OptionToBinding
```lua
(method) X2Hotkey:OptionToBinding()
```
> Sets current option bindings and allows them to be used but does not save
> them.
> - **`X2Hotkey:BindingToOption()` must be used before or all hotkeys will
> be erased upon reloading!**
> - **Any key pressed when this is fired and `X2Hotkey:BindingToOption()` isn't
> used right before setting a hotkey can become stuck in a pressed state until
> pressed again.**

#### Method: SetBindingUiEventWithIndex
```lua
(method) X2Hotkey:SetBindingUiEventWithIndex(actionName: string, key: string|","|"."|"/"|"0"...(+96), index: `1`|`2`)
```
> Binds a key to a action in the specified index and registers the key to fire
> the `HOTKEY_ACTION` event when pressed and released. This can't be saved but
> the hotkey can be used immediately.
> 
> @*param* `actionName` — The custom action name to bind.
> 
> @*param* `key` — The key to bind to the action.
> 
> @*param* `index` — The index of the hotkey manager.
> 
> ```lua
> -- Supported modifier keys: CTRL, SHIFT, ALT
> -- You may combine multiple modifiers (e.g., CTRL-SHIFT)
> -- 
> -- Hotkey format
> -- {MODIFIER1}-{MODIFIER2}-{MODIFIER3}-{KEY}
> -- Example: CTRL-A, CTRL-SHIFT-F1, ALT-ESCAPE
> key:
>     | "ESCAPE" -- Keyboard
>     | "F1" -- Keyboard
>     | "F2" -- Keyboard
>     | "F3" -- Keyboard
>     | "F4" -- Keyboard
>     | "F5" -- Keyboard
>     | "F6" -- Keyboard
>     | "F7" -- Keyboard
>     | "F8" -- Keyboard
>     | "F9" -- Keyboard
>     | "F10" -- Keyboard
>     | "F11" -- Keyboard
>     | "F12" -- Keyboard
>     | "PRINT" -- Keyboard
>     | "SCROLLLOCK" -- Keyboard
>     | "PAUSE" -- Keyboard
>     | "APOSTROPHE" -- Keyboard
>     | "1" -- Keyboard
>     | "2" -- Keyboard
>     | "3" -- Keyboard
>     | "4" -- Keyboard
>     | "5" -- Keyboard
>     | "6" -- Keyboard
>     | "7" -- Keyboard
>     | "8" -- Keyboard
>     | "9" -- Keyboard
>     | "0" -- Keyboard
>     | "MINUS" -- Keyboard
>     | "EQUALS" -- Keyboard
>     | "BACKSPACE" -- Keyboard
>     | "TAB" -- Keyboard
>     | "CAPSLOCK" -- Keyboard
>     | "{" -- Keyboard
>     | "}" -- Keyboard
>     | "BACKSLASH" -- Keyboard
>     | "ENTER" -- Keyboard
>     | "," -- Keyboard
>     | "." -- Keyboard
>     | "/" -- Keyboard
>     | "A" -- Keyboard
>     | "B" -- Keyboard
>     | "C" -- Keyboard
>     | "D" -- Keyboard
>     | "E" -- Keyboard
>     | "F" -- Keyboard
>     | "G" -- Keyboard
>     | "H" -- Keyboard
>     | "I" -- Keyboard
>     | "J" -- Keyboard
>     | "K" -- Keyboard
>     | "L" -- Keyboard
>     | "M" -- Keyboard
>     | "N" -- Keyboard
>     | "O" -- Keyboard
>     | "P" -- Keyboard
>     | "Q" -- Keyboard
>     | "R" -- Keyboard
>     | "S" -- Keyboard
>     | "T" -- Keyboard
>     | "U" -- Keyboard
>     | "V" -- Keyboard
>     | "W" -- Keyboard
>     | "X" -- Keyboard
>     | "Y" -- Keyboard
>     | "Z" -- Keyboard
>     | "SPACE" -- Keyboard
>     | "INSERT" -- Keyboard
>     | "HOME" -- Keyboard
>     | "PAGEUP" -- Keyboard
>     | "DELETE" -- Keyboard
>     | "END" -- Keyboard
>     | "PAGEDOWN" -- Keyboard
>     | "UP" -- Keyboard
>     | "LEFT" -- Keyboard
>     | "DOWN" -- Keyboard
>     | "RIGHT" -- Keyboard
>     | "NUMBER-" -- Number Pad
>     | "NUMBER+" -- Number Pad
>     | "NUMBER0" -- Number Pad
>     | "NUMBER1" -- Number Pad
>     | "NUMBER2" -- Number Pad
>     | "NUMBER3" -- Number Pad
>     | "NUMBER4" -- Number Pad
>     | "NUMBER5" -- Number Pad
>     | "NUMBER6" -- Number Pad
>     | "NUMBER7" -- Number Pad
>     | "NUMBER8" -- Number Pad
>     | "NUMBER9" -- Number Pad
>     | "NUMLOCK" -- Number Pad
>     | "MOUSE1" -- Mouse
>     | "MOUSE2" -- Mouse
>     | "MOUSE3" -- Mouse
>     | "MOUSE4" -- Mouse
>     | "MOUSE5" -- Mouse
>     | "MOUSE6" -- Mouse
>     | "MOUSE7" -- Mouse
>     | "MOUSE8" -- Mouse
>     | "MIDDLEBUTTON" -- Mouse
>     | "WHEELDOWN" -- Mouse
>     | "WHEELUP" -- Mouse
> 
> index:
>     | `1` -- PRIMARY
>     | `2` -- SECONDARY
> ```

#### Method: SetOptionBindingUiEvent
```lua
(method) X2Hotkey:SetOptionBindingUiEvent(actionName: string, key: string|","|"."|"/"|"0"...(+96))
```
> Binds a key to a action option button and once saved registers the key to
> fire the `HOTKEY_ACTION` event when pressed and released.
> 
> @*param* `actionName` — The custom action name to bind.
> 
> @*param* `key` — The key to bind to the action.
> 
> ```lua
> X2Hotkey:BindingToOption()
> X2Hotkey:SetOptionBindingUiEvent("my_custom_action_name", "CTRL-`")
> X2Hotkey:SaveHotKey()
> ```
> 
> ```lua
> -- Supported modifier keys: CTRL, SHIFT, ALT
> -- You may combine multiple modifiers (e.g., CTRL-SHIFT)
> -- 
> -- Hotkey format
> -- {MODIFIER1}-{MODIFIER2}-{MODIFIER3}-{KEY}
> -- Example: CTRL-A, CTRL-SHIFT-F1, ALT-ESCAPE
> key:
>     | "ESCAPE" -- Keyboard
>     | "F1" -- Keyboard
>     | "F2" -- Keyboard
>     | "F3" -- Keyboard
>     | "F4" -- Keyboard
>     | "F5" -- Keyboard
>     | "F6" -- Keyboard
>     | "F7" -- Keyboard
>     | "F8" -- Keyboard
>     | "F9" -- Keyboard
>     | "F10" -- Keyboard
>     | "F11" -- Keyboard
>     | "F12" -- Keyboard
>     | "PRINT" -- Keyboard
>     | "SCROLLLOCK" -- Keyboard
>     | "PAUSE" -- Keyboard
>     | "APOSTROPHE" -- Keyboard
>     | "1" -- Keyboard
>     | "2" -- Keyboard
>     | "3" -- Keyboard
>     | "4" -- Keyboard
>     | "5" -- Keyboard
>     | "6" -- Keyboard
>     | "7" -- Keyboard
>     | "8" -- Keyboard
>     | "9" -- Keyboard
>     | "0" -- Keyboard
>     | "MINUS" -- Keyboard
>     | "EQUALS" -- Keyboard
>     | "BACKSPACE" -- Keyboard
>     | "TAB" -- Keyboard
>     | "CAPSLOCK" -- Keyboard
>     | "{" -- Keyboard
>     | "}" -- Keyboard
>     | "BACKSLASH" -- Keyboard
>     | "ENTER" -- Keyboard
>     | "," -- Keyboard
>     | "." -- Keyboard
>     | "/" -- Keyboard
>     | "A" -- Keyboard
>     | "B" -- Keyboard
>     | "C" -- Keyboard
>     | "D" -- Keyboard
>     | "E" -- Keyboard
>     | "F" -- Keyboard
>     | "G" -- Keyboard
>     | "H" -- Keyboard
>     | "I" -- Keyboard
>     | "J" -- Keyboard
>     | "K" -- Keyboard
>     | "L" -- Keyboard
>     | "M" -- Keyboard
>     | "N" -- Keyboard
>     | "O" -- Keyboard
>     | "P" -- Keyboard
>     | "Q" -- Keyboard
>     | "R" -- Keyboard
>     | "S" -- Keyboard
>     | "T" -- Keyboard
>     | "U" -- Keyboard
>     | "V" -- Keyboard
>     | "W" -- Keyboard
>     | "X" -- Keyboard
>     | "Y" -- Keyboard
>     | "Z" -- Keyboard
>     | "SPACE" -- Keyboard
>     | "INSERT" -- Keyboard
>     | "HOME" -- Keyboard
>     | "PAGEUP" -- Keyboard
>     | "DELETE" -- Keyboard
>     | "END" -- Keyboard
>     | "PAGEDOWN" -- Keyboard
>     | "UP" -- Keyboard
>     | "LEFT" -- Keyboard
>     | "DOWN" -- Keyboard
>     | "RIGHT" -- Keyboard
>     | "NUMBER-" -- Number Pad
>     | "NUMBER+" -- Number Pad
>     | "NUMBER0" -- Number Pad
>     | "NUMBER1" -- Number Pad
>     | "NUMBER2" -- Number Pad
>     | "NUMBER3" -- Number Pad
>     | "NUMBER4" -- Number Pad
>     | "NUMBER5" -- Number Pad
>     | "NUMBER6" -- Number Pad
>     | "NUMBER7" -- Number Pad
>     | "NUMBER8" -- Number Pad
>     | "NUMBER9" -- Number Pad
>     | "NUMLOCK" -- Number Pad
>     | "MOUSE1" -- Mouse
>     | "MOUSE2" -- Mouse
>     | "MOUSE3" -- Mouse
>     | "MOUSE4" -- Mouse
>     | "MOUSE5" -- Mouse
>     | "MOUSE6" -- Mouse
>     | "MOUSE7" -- Mouse
>     | "MOUSE8" -- Mouse
>     | "MIDDLEBUTTON" -- Mouse
>     | "WHEELDOWN" -- Mouse
>     | "WHEELUP" -- Mouse
> ```

#### Method: SetOptionBindingButtonWithIndex
```lua
(method) X2Hotkey:SetOptionBindingButtonWithIndex(action: "action_bar_button"|"action_bar_page"|"action_bar_page_next"|"action_bar_page_prev"|"activate_weapon"...(+89), key: string|","|"."|"/"|"0"...(+96), keyType: `1`|`2`)
```
> Binds a key to a action option button in the specified index. Can't be saved
> or used.
> 
> @*param* `action` — The hotkey action to bind.
> 
> @*param* `key` — The key to bind.
> 
> @*param* `keyType` — The key type for the binding.
> 
> ```lua
> action:
>     | "action_bar_button"
>     | "action_bar_page_next"
>     | "action_bar_page_prev"
>     | "action_bar_page"
>     | "activate_weapon"
>     | "autorun"
>     | "back_camera"
>     | "battle_pet_action_bar_button"
>     | "change_roadmap_size"
>     | "cycle_camera_clockwise"
>     | "cycle_camera_counter_clockwise"
>     | "cycle_friendly_backward"
>     | "cycle_friendly_forward"
>     | "cycle_friendly_head_marker_backward"
>     | "cycle_friendly_head_marker_forward"
>     | "cycle_hostile_backward"
>     | "cycle_hostile_forward"
>     | "cycle_hostile_head_marker_backward"
>     | "cycle_hostile_head_marker_forward"
>     | "do_interaction_1"
>     | "do_interaction_2"
>     | "do_interaction_3"
>     | "do_interaction_4"
>     | "dof_add_dist"
>     | "dof_add_range"
>     | "dof_auto_focus"
>     | "dof_sub_dist"
>     | "dof_sub_range"
>     | "dof_toggle"
>     | "down"
>     | "front_camera"
>     | "instant_kill_streak_action_bar_button"
>     | "jump"
>     | "left_camera"
>     | "mode_action_bar_button"
>     | "moveback"
>     | "moveforward"
>     | "moveleft"
>     | "moveright"
>     | "open_chat"
>     | "open_config"
>     | "open_target_equipment"
>     | "over_head_marker_to_target"
>     | "over_head_marker"
>     | "pet_target"
>     | "quest_directing_interaction"
>     | "reply_last_whisper"
>     | "reply_last_whispered"
>     | "ride_pet_action_bar_button"
>     | "right_camera"
>     | "round_target"
>     | "screenshotmode"
>     | "self_target"
>     | "set_watch_target"
>     | "swap_preliminary_equipment"
>     | "targets_target_to_target"
>     | "team_target"
>     | "toggle_achievement"
>     | "toggle_auction"
>     | "toggle_bag"
>     | "toggle_battle_field"
>     | "toggle_butler_info"
>     | "toggle_character"
>     | "toggle_chronicle_book"
>     | "toggle_commercial_mail"
>     | "toggle_common_farm_info"
>     | "toggle_community_expedition_tab"
>     | "toggle_community_faction_tab"
>     | "toggle_community_family_tab"
>     | "toggle_community"
>     | "toggle_craft_book"
>     | "toggle_force_attack"
>     | "toggle_hero"
>     | "toggle_ingameshop"
>     | "toggle_mail"
>     | "toggle_nametag"
>     | "toggle_quest"
>     | "toggle_raid_frame"
>     | "toggle_raid_team_manager"
>     | "toggle_random_shop"
>     | "toggle_ranking"
>     | "toggle_show_guide_decal"
>     | "toggle_specialty_info"
>     | "toggle_spellbook"
>     | "toggle_walk"
>     | "toggle_web_messenger"
>     | "toggle_web_play_diary_instant"
>     | "toggle_web_play_diary"
>     | "toggle_web_wiki"
>     | "toggle_worldmap"
>     | "turnleft"
>     | "turnright"
>     | "watch_targets_target_to_target"
>     | "zoom_in"
> 
> -- Supported modifier keys: CTRL, SHIFT, ALT
> -- You may combine multiple modifiers (e.g., CTRL-SHIFT)
> -- 
> -- Hotkey format
> -- {MODIFIER1}-{MODIFIER2}-{MODIFIER3}-{KEY}
> -- Example: CTRL-A, CTRL-SHIFT-F1, ALT-ESCAPE
> key:
>     | "ESCAPE" -- Keyboard
>     | "F1" -- Keyboard
>     | "F2" -- Keyboard
>     | "F3" -- Keyboard
>     | "F4" -- Keyboard
>     | "F5" -- Keyboard
>     | "F6" -- Keyboard
>     | "F7" -- Keyboard
>     | "F8" -- Keyboard
>     | "F9" -- Keyboard
>     | "F10" -- Keyboard
>     | "F11" -- Keyboard
>     | "F12" -- Keyboard
>     | "PRINT" -- Keyboard
>     | "SCROLLLOCK" -- Keyboard
>     | "PAUSE" -- Keyboard
>     | "APOSTROPHE" -- Keyboard
>     | "1" -- Keyboard
>     | "2" -- Keyboard
>     | "3" -- Keyboard
>     | "4" -- Keyboard
>     | "5" -- Keyboard
>     | "6" -- Keyboard
>     | "7" -- Keyboard
>     | "8" -- Keyboard
>     | "9" -- Keyboard
>     | "0" -- Keyboard
>     | "MINUS" -- Keyboard
>     | "EQUALS" -- Keyboard
>     | "BACKSPACE" -- Keyboard
>     | "TAB" -- Keyboard
>     | "CAPSLOCK" -- Keyboard
>     | "{" -- Keyboard
>     | "}" -- Keyboard
>     | "BACKSLASH" -- Keyboard
>     | "ENTER" -- Keyboard
>     | "," -- Keyboard
>     | "." -- Keyboard
>     | "/" -- Keyboard
>     | "A" -- Keyboard
>     | "B" -- Keyboard
>     | "C" -- Keyboard
>     | "D" -- Keyboard
>     | "E" -- Keyboard
>     | "F" -- Keyboard
>     | "G" -- Keyboard
>     | "H" -- Keyboard
>     | "I" -- Keyboard
>     | "J" -- Keyboard
>     | "K" -- Keyboard
>     | "L" -- Keyboard
>     | "M" -- Keyboard
>     | "N" -- Keyboard
>     | "O" -- Keyboard
>     | "P" -- Keyboard
>     | "Q" -- Keyboard
>     | "R" -- Keyboard
>     | "S" -- Keyboard
>     | "T" -- Keyboard
>     | "U" -- Keyboard
>     | "V" -- Keyboard
>     | "W" -- Keyboard
>     | "X" -- Keyboard
>     | "Y" -- Keyboard
>     | "Z" -- Keyboard
>     | "SPACE" -- Keyboard
>     | "INSERT" -- Keyboard
>     | "HOME" -- Keyboard
>     | "PAGEUP" -- Keyboard
>     | "DELETE" -- Keyboard
>     | "END" -- Keyboard
>     | "PAGEDOWN" -- Keyboard
>     | "UP" -- Keyboard
>     | "LEFT" -- Keyboard
>     | "DOWN" -- Keyboard
>     | "RIGHT" -- Keyboard
>     | "NUMBER-" -- Number Pad
>     | "NUMBER+" -- Number Pad
>     | "NUMBER0" -- Number Pad
>     | "NUMBER1" -- Number Pad
>     | "NUMBER2" -- Number Pad
>     | "NUMBER3" -- Number Pad
>     | "NUMBER4" -- Number Pad
>     | "NUMBER5" -- Number Pad
>     | "NUMBER6" -- Number Pad
>     | "NUMBER7" -- Number Pad
>     | "NUMBER8" -- Number Pad
>     | "NUMBER9" -- Number Pad
>     | "NUMLOCK" -- Number Pad
>     | "MOUSE1" -- Mouse
>     | "MOUSE2" -- Mouse
>     | "MOUSE3" -- Mouse
>     | "MOUSE4" -- Mouse
>     | "MOUSE5" -- Mouse
>     | "MOUSE6" -- Mouse
>     | "MOUSE7" -- Mouse
>     | "MOUSE8" -- Mouse
>     | "MIDDLEBUTTON" -- Mouse
>     | "WHEELDOWN" -- Mouse
>     | "WHEELUP" -- Mouse
> 
> keyType:
>     | `1` -- PRIMARY
>     | `2` -- SECONDARY
> ```

#### Method: SetOptionBindingUiEventWithIndex
```lua
(method) X2Hotkey:SetOptionBindingUiEventWithIndex(actionName: string, key: string|","|"."|"/"|"0"...(+96), index: `1`|`2`)
```
> Binds a key to a custom action option button in the specified index and once
> saved registers the key to fire the `HOTKEY_ACTION` event when pressed and
> released.
> 
> @*param* `actionName` — The custom action name to bind.
> 
> @*param* `key` — The key to bind to the action.
> 
> @*param* `index` — The index of the hotkey manager.
> 
> ```lua
> X2Hotkey:BindingToOption()
> X2Hotkey:SetOptionBindingUiEventWithIndex("my_custom_action_name", "SHIFT-`", 1)
> X2Hotkey:SaveHotKey()
> ```
> 
> ```lua
> -- Supported modifier keys: CTRL, SHIFT, ALT
> -- You may combine multiple modifiers (e.g., CTRL-SHIFT)
> -- 
> -- Hotkey format
> -- {MODIFIER1}-{MODIFIER2}-{MODIFIER3}-{KEY}
> -- Example: CTRL-A, CTRL-SHIFT-F1, ALT-ESCAPE
> key:
>     | "ESCAPE" -- Keyboard
>     | "F1" -- Keyboard
>     | "F2" -- Keyboard
>     | "F3" -- Keyboard
>     | "F4" -- Keyboard
>     | "F5" -- Keyboard
>     | "F6" -- Keyboard
>     | "F7" -- Keyboard
>     | "F8" -- Keyboard
>     | "F9" -- Keyboard
>     | "F10" -- Keyboard
>     | "F11" -- Keyboard
>     | "F12" -- Keyboard
>     | "PRINT" -- Keyboard
>     | "SCROLLLOCK" -- Keyboard
>     | "PAUSE" -- Keyboard
>     | "APOSTROPHE" -- Keyboard
>     | "1" -- Keyboard
>     | "2" -- Keyboard
>     | "3" -- Keyboard
>     | "4" -- Keyboard
>     | "5" -- Keyboard
>     | "6" -- Keyboard
>     | "7" -- Keyboard
>     | "8" -- Keyboard
>     | "9" -- Keyboard
>     | "0" -- Keyboard
>     | "MINUS" -- Keyboard
>     | "EQUALS" -- Keyboard
>     | "BACKSPACE" -- Keyboard
>     | "TAB" -- Keyboard
>     | "CAPSLOCK" -- Keyboard
>     | "{" -- Keyboard
>     | "}" -- Keyboard
>     | "BACKSLASH" -- Keyboard
>     | "ENTER" -- Keyboard
>     | "," -- Keyboard
>     | "." -- Keyboard
>     | "/" -- Keyboard
>     | "A" -- Keyboard
>     | "B" -- Keyboard
>     | "C" -- Keyboard
>     | "D" -- Keyboard
>     | "E" -- Keyboard
>     | "F" -- Keyboard
>     | "G" -- Keyboard
>     | "H" -- Keyboard
>     | "I" -- Keyboard
>     | "J" -- Keyboard
>     | "K" -- Keyboard
>     | "L" -- Keyboard
>     | "M" -- Keyboard
>     | "N" -- Keyboard
>     | "O" -- Keyboard
>     | "P" -- Keyboard
>     | "Q" -- Keyboard
>     | "R" -- Keyboard
>     | "S" -- Keyboard
>     | "T" -- Keyboard
>     | "U" -- Keyboard
>     | "V" -- Keyboard
>     | "W" -- Keyboard
>     | "X" -- Keyboard
>     | "Y" -- Keyboard
>     | "Z" -- Keyboard
>     | "SPACE" -- Keyboard
>     | "INSERT" -- Keyboard
>     | "HOME" -- Keyboard
>     | "PAGEUP" -- Keyboard
>     | "DELETE" -- Keyboard
>     | "END" -- Keyboard
>     | "PAGEDOWN" -- Keyboard
>     | "UP" -- Keyboard
>     | "LEFT" -- Keyboard
>     | "DOWN" -- Keyboard
>     | "RIGHT" -- Keyboard
>     | "NUMBER-" -- Number Pad
>     | "NUMBER+" -- Number Pad
>     | "NUMBER0" -- Number Pad
>     | "NUMBER1" -- Number Pad
>     | "NUMBER2" -- Number Pad
>     | "NUMBER3" -- Number Pad
>     | "NUMBER4" -- Number Pad
>     | "NUMBER5" -- Number Pad
>     | "NUMBER6" -- Number Pad
>     | "NUMBER7" -- Number Pad
>     | "NUMBER8" -- Number Pad
>     | "NUMBER9" -- Number Pad
>     | "NUMLOCK" -- Number Pad
>     | "MOUSE1" -- Mouse
>     | "MOUSE2" -- Mouse
>     | "MOUSE3" -- Mouse
>     | "MOUSE4" -- Mouse
>     | "MOUSE5" -- Mouse
>     | "MOUSE6" -- Mouse
>     | "MOUSE7" -- Mouse
>     | "MOUSE8" -- Mouse
>     | "MIDDLEBUTTON" -- Mouse
>     | "WHEELDOWN" -- Mouse
>     | "WHEELUP" -- Mouse
> 
> index:
>     | `1` -- PRIMARY
>     | `2` -- SECONDARY
> ```

#### Method: IsValidActionName
```lua
(method) X2Hotkey:IsValidActionName(action: "action_bar_button"|"action_bar_page"|"action_bar_page_next"|"action_bar_page_prev"|"activate_weapon"...(+89))
  -> validActionName: boolean
```
> Checks if a hotkey action is valid.
> 
> @*param* `action` — The hotkey action to validate.
> 
> @*return* `validActionName` — `true` if the action name is valid, `false` otherwise.
> 
> ```lua
> action:
>     | "action_bar_button"
>     | "action_bar_page_next"
>     | "action_bar_page_prev"
>     | "action_bar_page"
>     | "activate_weapon"
>     | "autorun"
>     | "back_camera"
>     | "battle_pet_action_bar_button"
>     | "change_roadmap_size"
>     | "cycle_camera_clockwise"
>     | "cycle_camera_counter_clockwise"
>     | "cycle_friendly_backward"
>     | "cycle_friendly_forward"
>     | "cycle_friendly_head_marker_backward"
>     | "cycle_friendly_head_marker_forward"
>     | "cycle_hostile_backward"
>     | "cycle_hostile_forward"
>     | "cycle_hostile_head_marker_backward"
>     | "cycle_hostile_head_marker_forward"
>     | "do_interaction_1"
>     | "do_interaction_2"
>     | "do_interaction_3"
>     | "do_interaction_4"
>     | "dof_add_dist"
>     | "dof_add_range"
>     | "dof_auto_focus"
>     | "dof_sub_dist"
>     | "dof_sub_range"
>     | "dof_toggle"
>     | "down"
>     | "front_camera"
>     | "instant_kill_streak_action_bar_button"
>     | "jump"
>     | "left_camera"
>     | "mode_action_bar_button"
>     | "moveback"
>     | "moveforward"
>     | "moveleft"
>     | "moveright"
>     | "open_chat"
>     | "open_config"
>     | "open_target_equipment"
>     | "over_head_marker_to_target"
>     | "over_head_marker"
>     | "pet_target"
>     | "quest_directing_interaction"
>     | "reply_last_whisper"
>     | "reply_last_whispered"
>     | "ride_pet_action_bar_button"
>     | "right_camera"
>     | "round_target"
>     | "screenshotmode"
>     | "self_target"
>     | "set_watch_target"
>     | "swap_preliminary_equipment"
>     | "targets_target_to_target"
>     | "team_target"
>     | "toggle_achievement"
>     | "toggle_auction"
>     | "toggle_bag"
>     | "toggle_battle_field"
>     | "toggle_butler_info"
>     | "toggle_character"
>     | "toggle_chronicle_book"
>     | "toggle_commercial_mail"
>     | "toggle_common_farm_info"
>     | "toggle_community_expedition_tab"
>     | "toggle_community_faction_tab"
>     | "toggle_community_family_tab"
>     | "toggle_community"
>     | "toggle_craft_book"
>     | "toggle_force_attack"
>     | "toggle_hero"
>     | "toggle_ingameshop"
>     | "toggle_mail"
>     | "toggle_nametag"
>     | "toggle_quest"
>     | "toggle_raid_frame"
>     | "toggle_raid_team_manager"
>     | "toggle_random_shop"
>     | "toggle_ranking"
>     | "toggle_show_guide_decal"
>     | "toggle_specialty_info"
>     | "toggle_spellbook"
>     | "toggle_walk"
>     | "toggle_web_messenger"
>     | "toggle_web_play_diary_instant"
>     | "toggle_web_play_diary"
>     | "toggle_web_wiki"
>     | "toggle_worldmap"
>     | "turnleft"
>     | "turnright"
>     | "watch_targets_target_to_target"
>     | "zoom_in"
> ```

#### Method: GetOptionBindingUiEvent
```lua
(method) X2Hotkey:GetOptionBindingUiEvent(actionName: string|"action_bar_button"|"action_bar_page"|"action_bar_page_next"|"action_bar_page_prev"...(+90), index: `1`|`2`)
  -> key: string
```
> Returns the key bound to the action option button.
> 
> @*param* `actionName` — The action name or hotkey action to query.
> 
> @*param* `index` — The index of the hotkey manager.
> 
> @*return* `key` — The key bound to the action option button.
> 
> ```lua
> actionName:
>     | "action_bar_button"
>     | "action_bar_page_next"
>     | "action_bar_page_prev"
>     | "action_bar_page"
>     | "activate_weapon"
>     | "autorun"
>     | "back_camera"
>     | "battle_pet_action_bar_button"
>     | "change_roadmap_size"
>     | "cycle_camera_clockwise"
>     | "cycle_camera_counter_clockwise"
>     | "cycle_friendly_backward"
>     | "cycle_friendly_forward"
>     | "cycle_friendly_head_marker_backward"
>     | "cycle_friendly_head_marker_forward"
>     | "cycle_hostile_backward"
>     | "cycle_hostile_forward"
>     | "cycle_hostile_head_marker_backward"
>     | "cycle_hostile_head_marker_forward"
>     | "do_interaction_1"
>     | "do_interaction_2"
>     | "do_interaction_3"
>     | "do_interaction_4"
>     | "dof_add_dist"
>     | "dof_add_range"
>     | "dof_auto_focus"
>     | "dof_sub_dist"
>     | "dof_sub_range"
>     | "dof_toggle"
>     | "down"
>     | "front_camera"
>     | "instant_kill_streak_action_bar_button"
>     | "jump"
>     | "left_camera"
>     | "mode_action_bar_button"
>     | "moveback"
>     | "moveforward"
>     | "moveleft"
>     | "moveright"
>     | "open_chat"
>     | "open_config"
>     | "open_target_equipment"
>     | "over_head_marker_to_target"
>     | "over_head_marker"
>     | "pet_target"
>     | "quest_directing_interaction"
>     | "reply_last_whisper"
>     | "reply_last_whispered"
>     | "ride_pet_action_bar_button"
>     | "right_camera"
>     | "round_target"
>     | "screenshotmode"
>     | "self_target"
>     | "set_watch_target"
>     | "swap_preliminary_equipment"
>     | "targets_target_to_target"
>     | "team_target"
>     | "toggle_achievement"
>     | "toggle_auction"
>     | "toggle_bag"
>     | "toggle_battle_field"
>     | "toggle_butler_info"
>     | "toggle_character"
>     | "toggle_chronicle_book"
>     | "toggle_commercial_mail"
>     | "toggle_common_farm_info"
>     | "toggle_community_expedition_tab"
>     | "toggle_community_faction_tab"
>     | "toggle_community_family_tab"
>     | "toggle_community"
>     | "toggle_craft_book"
>     | "toggle_force_attack"
>     | "toggle_hero"
>     | "toggle_ingameshop"
>     | "toggle_mail"
>     | "toggle_nametag"
>     | "toggle_quest"
>     | "toggle_raid_frame"
>     | "toggle_raid_team_manager"
>     | "toggle_random_shop"
>     | "toggle_ranking"
>     | "toggle_show_guide_decal"
>     | "toggle_specialty_info"
>     | "toggle_spellbook"
>     | "toggle_walk"
>     | "toggle_web_messenger"
>     | "toggle_web_play_diary_instant"
>     | "toggle_web_play_diary"
>     | "toggle_web_wiki"
>     | "toggle_worldmap"
>     | "turnleft"
>     | "turnright"
>     | "watch_targets_target_to_target"
>     | "zoom_in"
> 
> index:
>     | `1` -- PRIMARY
>     | `2` -- SECONDARY
> ```

#### Method: EnableHotkey
```lua
(method) X2Hotkey:EnableHotkey(enable: boolean)
```
> Enables or disables the hotkey system.
> 
> @*param* `enable` — `true` to enable the hotkey system, `false` to disable it. (default: `true`)

#### Method: IsOverridableAction
```lua
(method) X2Hotkey:IsOverridableAction(action: "action_bar_button"|"action_bar_page"|"action_bar_page_next"|"action_bar_page_prev"|"activate_weapon"...(+89))
  -> overridableAction: boolean
```
> Checks if a hotkey action is overridable.
> 
> @*param* `action` — The hotkey action to check.
> 
> @*return* `overridableAction` — `true` if the action is overridable, `false` otherwise.
> 
> ```lua
> action:
>     | "action_bar_button"
>     | "action_bar_page_next"
>     | "action_bar_page_prev"
>     | "action_bar_page"
>     | "activate_weapon"
>     | "autorun"
>     | "back_camera"
>     | "battle_pet_action_bar_button"
>     | "change_roadmap_size"
>     | "cycle_camera_clockwise"
>     | "cycle_camera_counter_clockwise"
>     | "cycle_friendly_backward"
>     | "cycle_friendly_forward"
>     | "cycle_friendly_head_marker_backward"
>     | "cycle_friendly_head_marker_forward"
>     | "cycle_hostile_backward"
>     | "cycle_hostile_forward"
>     | "cycle_hostile_head_marker_backward"
>     | "cycle_hostile_head_marker_forward"
>     | "do_interaction_1"
>     | "do_interaction_2"
>     | "do_interaction_3"
>     | "do_interaction_4"
>     | "dof_add_dist"
>     | "dof_add_range"
>     | "dof_auto_focus"
>     | "dof_sub_dist"
>     | "dof_sub_range"
>     | "dof_toggle"
>     | "down"
>     | "front_camera"
>     | "instant_kill_streak_action_bar_button"
>     | "jump"
>     | "left_camera"
>     | "mode_action_bar_button"
>     | "moveback"
>     | "moveforward"
>     | "moveleft"
>     | "moveright"
>     | "open_chat"
>     | "open_config"
>     | "open_target_equipment"
>     | "over_head_marker_to_target"
>     | "over_head_marker"
>     | "pet_target"
>     | "quest_directing_interaction"
>     | "reply_last_whisper"
>     | "reply_last_whispered"
>     | "ride_pet_action_bar_button"
>     | "right_camera"
>     | "round_target"
>     | "screenshotmode"
>     | "self_target"
>     | "set_watch_target"
>     | "swap_preliminary_equipment"
>     | "targets_target_to_target"
>     | "team_target"
>     | "toggle_achievement"
>     | "toggle_auction"
>     | "toggle_bag"
>     | "toggle_battle_field"
>     | "toggle_butler_info"
>     | "toggle_character"
>     | "toggle_chronicle_book"
>     | "toggle_commercial_mail"
>     | "toggle_common_farm_info"
>     | "toggle_community_expedition_tab"
>     | "toggle_community_faction_tab"
>     | "toggle_community_family_tab"
>     | "toggle_community"
>     | "toggle_craft_book"
>     | "toggle_force_attack"
>     | "toggle_hero"
>     | "toggle_ingameshop"
>     | "toggle_mail"
>     | "toggle_nametag"
>     | "toggle_quest"
>     | "toggle_raid_frame"
>     | "toggle_raid_team_manager"
>     | "toggle_random_shop"
>     | "toggle_ranking"
>     | "toggle_show_guide_decal"
>     | "toggle_specialty_info"
>     | "toggle_spellbook"
>     | "toggle_walk"
>     | "toggle_web_messenger"
>     | "toggle_web_play_diary_instant"
>     | "toggle_web_play_diary"
>     | "toggle_web_wiki"
>     | "toggle_worldmap"
>     | "turnleft"
>     | "turnright"
>     | "watch_targets_target_to_target"
>     | "zoom_in"
> ```

#### Method: GetBindingUiEvent
```lua
(method) X2Hotkey:GetBindingUiEvent(actionName: string|"action_bar_button"|"action_bar_page"|"action_bar_page_next"|"action_bar_page_prev"...(+90), index: `1`|`2`)
  -> key: string
```
> Returns the current set key for the action.
> 
> @*param* `actionName` — The action name or hotkey action to query.
> 
> @*param* `index` — The index of the hotkey manager.
> 
> @*return* `key` — The key bound to the action.
> 
> ```lua
> actionName:
>     | "action_bar_button"
>     | "action_bar_page_next"
>     | "action_bar_page_prev"
>     | "action_bar_page"
>     | "activate_weapon"
>     | "autorun"
>     | "back_camera"
>     | "battle_pet_action_bar_button"
>     | "change_roadmap_size"
>     | "cycle_camera_clockwise"
>     | "cycle_camera_counter_clockwise"
>     | "cycle_friendly_backward"
>     | "cycle_friendly_forward"
>     | "cycle_friendly_head_marker_backward"
>     | "cycle_friendly_head_marker_forward"
>     | "cycle_hostile_backward"
>     | "cycle_hostile_forward"
>     | "cycle_hostile_head_marker_backward"
>     | "cycle_hostile_head_marker_forward"
>     | "do_interaction_1"
>     | "do_interaction_2"
>     | "do_interaction_3"
>     | "do_interaction_4"
>     | "dof_add_dist"
>     | "dof_add_range"
>     | "dof_auto_focus"
>     | "dof_sub_dist"
>     | "dof_sub_range"
>     | "dof_toggle"
>     | "down"
>     | "front_camera"
>     | "instant_kill_streak_action_bar_button"
>     | "jump"
>     | "left_camera"
>     | "mode_action_bar_button"
>     | "moveback"
>     | "moveforward"
>     | "moveleft"
>     | "moveright"
>     | "open_chat"
>     | "open_config"
>     | "open_target_equipment"
>     | "over_head_marker_to_target"
>     | "over_head_marker"
>     | "pet_target"
>     | "quest_directing_interaction"
>     | "reply_last_whisper"
>     | "reply_last_whispered"
>     | "ride_pet_action_bar_button"
>     | "right_camera"
>     | "round_target"
>     | "screenshotmode"
>     | "self_target"
>     | "set_watch_target"
>     | "swap_preliminary_equipment"
>     | "targets_target_to_target"
>     | "team_target"
>     | "toggle_achievement"
>     | "toggle_auction"
>     | "toggle_bag"
>     | "toggle_battle_field"
>     | "toggle_butler_info"
>     | "toggle_character"
>     | "toggle_chronicle_book"
>     | "toggle_commercial_mail"
>     | "toggle_common_farm_info"
>     | "toggle_community_expedition_tab"
>     | "toggle_community_faction_tab"
>     | "toggle_community_family_tab"
>     | "toggle_community"
>     | "toggle_craft_book"
>     | "toggle_force_attack"
>     | "toggle_hero"
>     | "toggle_ingameshop"
>     | "toggle_mail"
>     | "toggle_nametag"
>     | "toggle_quest"
>     | "toggle_raid_frame"
>     | "toggle_raid_team_manager"
>     | "toggle_random_shop"
>     | "toggle_ranking"
>     | "toggle_show_guide_decal"
>     | "toggle_specialty_info"
>     | "toggle_spellbook"
>     | "toggle_walk"
>     | "toggle_web_messenger"
>     | "toggle_web_play_diary_instant"
>     | "toggle_web_play_diary"
>     | "toggle_web_wiki"
>     | "toggle_worldmap"
>     | "turnleft"
>     | "turnright"
>     | "watch_targets_target_to_target"
>     | "zoom_in"
> 
> index:
>     | `1` -- PRIMARY
>     | `2` -- SECONDARY
> ```

#### Method: GetOptionBindingButton
```lua
(method) X2Hotkey:GetOptionBindingButton(action: "action_bar_button"|"action_bar_page"|"action_bar_page_next"|"action_bar_page_prev"|"activate_weapon"...(+89), index: `1`|`2`)
  -> key: string
```
> Returns the key bound to the action option button for a specified hotkey
> index.
> 
> @*param* `action` — The hotkey action to query.
> 
> @*param* `index` — The index of the hotkey manager.
> 
> @*return* `key` — The button binding string.
> 
> ```lua
> action:
>     | "action_bar_button"
>     | "action_bar_page_next"
>     | "action_bar_page_prev"
>     | "action_bar_page"
>     | "activate_weapon"
>     | "autorun"
>     | "back_camera"
>     | "battle_pet_action_bar_button"
>     | "change_roadmap_size"
>     | "cycle_camera_clockwise"
>     | "cycle_camera_counter_clockwise"
>     | "cycle_friendly_backward"
>     | "cycle_friendly_forward"
>     | "cycle_friendly_head_marker_backward"
>     | "cycle_friendly_head_marker_forward"
>     | "cycle_hostile_backward"
>     | "cycle_hostile_forward"
>     | "cycle_hostile_head_marker_backward"
>     | "cycle_hostile_head_marker_forward"
>     | "do_interaction_1"
>     | "do_interaction_2"
>     | "do_interaction_3"
>     | "do_interaction_4"
>     | "dof_add_dist"
>     | "dof_add_range"
>     | "dof_auto_focus"
>     | "dof_sub_dist"
>     | "dof_sub_range"
>     | "dof_toggle"
>     | "down"
>     | "front_camera"
>     | "instant_kill_streak_action_bar_button"
>     | "jump"
>     | "left_camera"
>     | "mode_action_bar_button"
>     | "moveback"
>     | "moveforward"
>     | "moveleft"
>     | "moveright"
>     | "open_chat"
>     | "open_config"
>     | "open_target_equipment"
>     | "over_head_marker_to_target"
>     | "over_head_marker"
>     | "pet_target"
>     | "quest_directing_interaction"
>     | "reply_last_whisper"
>     | "reply_last_whispered"
>     | "ride_pet_action_bar_button"
>     | "right_camera"
>     | "round_target"
>     | "screenshotmode"
>     | "self_target"
>     | "set_watch_target"
>     | "swap_preliminary_equipment"
>     | "targets_target_to_target"
>     | "team_target"
>     | "toggle_achievement"
>     | "toggle_auction"
>     | "toggle_bag"
>     | "toggle_battle_field"
>     | "toggle_butler_info"
>     | "toggle_character"
>     | "toggle_chronicle_book"
>     | "toggle_commercial_mail"
>     | "toggle_common_farm_info"
>     | "toggle_community_expedition_tab"
>     | "toggle_community_faction_tab"
>     | "toggle_community_family_tab"
>     | "toggle_community"
>     | "toggle_craft_book"
>     | "toggle_force_attack"
>     | "toggle_hero"
>     | "toggle_ingameshop"
>     | "toggle_mail"
>     | "toggle_nametag"
>     | "toggle_quest"
>     | "toggle_raid_frame"
>     | "toggle_raid_team_manager"
>     | "toggle_random_shop"
>     | "toggle_ranking"
>     | "toggle_show_guide_decal"
>     | "toggle_specialty_info"
>     | "toggle_spellbook"
>     | "toggle_walk"
>     | "toggle_web_messenger"
>     | "toggle_web_play_diary_instant"
>     | "toggle_web_play_diary"
>     | "toggle_web_wiki"
>     | "toggle_worldmap"
>     | "turnleft"
>     | "turnright"
>     | "watch_targets_target_to_target"
>     | "zoom_in"
> 
> index:
>     | `1` -- PRIMARY
>     | `2` -- SECONDARY
> ```

#### Method: GetOptionBinding
```lua
(method) X2Hotkey:GetOptionBinding(action: "action_bar_button"|"action_bar_page"|"action_bar_page_next"|"action_bar_page_prev"|"activate_weapon"...(+89), index: `1`|`2`, option: boolean, arg: number)
  -> optionBinding: string
```
> Returns the key bound to the action option button for a specified hotkey
> index.
> 
> @*param* `action` — The hotkey action to query.
> 
> @*param* `index` — The index of the hotkey manager.
> 
> @*param* `option` — `true` to include additional options, `false` otherwise.
> 
> @*param* `arg` — Additional argument for the binding.
> 
> @*return* `optionBinding` — The option binding string.
> 
> ```lua
> action:
>     | "action_bar_button"
>     | "action_bar_page_next"
>     | "action_bar_page_prev"
>     | "action_bar_page"
>     | "activate_weapon"
>     | "autorun"
>     | "back_camera"
>     | "battle_pet_action_bar_button"
>     | "change_roadmap_size"
>     | "cycle_camera_clockwise"
>     | "cycle_camera_counter_clockwise"
>     | "cycle_friendly_backward"
>     | "cycle_friendly_forward"
>     | "cycle_friendly_head_marker_backward"
>     | "cycle_friendly_head_marker_forward"
>     | "cycle_hostile_backward"
>     | "cycle_hostile_forward"
>     | "cycle_hostile_head_marker_backward"
>     | "cycle_hostile_head_marker_forward"
>     | "do_interaction_1"
>     | "do_interaction_2"
>     | "do_interaction_3"
>     | "do_interaction_4"
>     | "dof_add_dist"
>     | "dof_add_range"
>     | "dof_auto_focus"
>     | "dof_sub_dist"
>     | "dof_sub_range"
>     | "dof_toggle"
>     | "down"
>     | "front_camera"
>     | "instant_kill_streak_action_bar_button"
>     | "jump"
>     | "left_camera"
>     | "mode_action_bar_button"
>     | "moveback"
>     | "moveforward"
>     | "moveleft"
>     | "moveright"
>     | "open_chat"
>     | "open_config"
>     | "open_target_equipment"
>     | "over_head_marker_to_target"
>     | "over_head_marker"
>     | "pet_target"
>     | "quest_directing_interaction"
>     | "reply_last_whisper"
>     | "reply_last_whispered"
>     | "ride_pet_action_bar_button"
>     | "right_camera"
>     | "round_target"
>     | "screenshotmode"
>     | "self_target"
>     | "set_watch_target"
>     | "swap_preliminary_equipment"
>     | "targets_target_to_target"
>     | "team_target"
>     | "toggle_achievement"
>     | "toggle_auction"
>     | "toggle_bag"
>     | "toggle_battle_field"
>     | "toggle_butler_info"
>     | "toggle_character"
>     | "toggle_chronicle_book"
>     | "toggle_commercial_mail"
>     | "toggle_common_farm_info"
>     | "toggle_community_expedition_tab"
>     | "toggle_community_faction_tab"
>     | "toggle_community_family_tab"
>     | "toggle_community"
>     | "toggle_craft_book"
>     | "toggle_force_attack"
>     | "toggle_hero"
>     | "toggle_ingameshop"
>     | "toggle_mail"
>     | "toggle_nametag"
>     | "toggle_quest"
>     | "toggle_raid_frame"
>     | "toggle_raid_team_manager"
>     | "toggle_random_shop"
>     | "toggle_ranking"
>     | "toggle_show_guide_decal"
>     | "toggle_specialty_info"
>     | "toggle_spellbook"
>     | "toggle_walk"
>     | "toggle_web_messenger"
>     | "toggle_web_play_diary_instant"
>     | "toggle_web_play_diary"
>     | "toggle_web_wiki"
>     | "toggle_worldmap"
>     | "turnleft"
>     | "turnright"
>     | "watch_targets_target_to_target"
>     | "zoom_in"
> 
> index:
>     | `1` -- PRIMARY
>     | `2` -- SECONDARY
> ```

#### Method: SetOptionBindingWithIndex
```lua
(method) X2Hotkey:SetOptionBindingWithIndex(action: "action_bar_button"|"action_bar_page"|"action_bar_page_next"|"action_bar_page_prev"|"activate_weapon"...(+89), key: string|","|"."|"/"|"0"...(+96), index: `1`|`2`, arg: number)
```
> Binds a key to a action option button in the specified index with additional
> arguments. Can trigger the `UPDATE_OPTION_BINDINGS` event if the button key
> has changed.
> 
> @*param* `action` — The hotkey action to bind.
> 
> @*param* `key` — The key to bind.
> 
> @*param* `index` — The index of the hotkey manager.
> 
> @*param* `arg` — The additional argument for the binding. (min: `0`)
> 
> ```lua
> X2Hotkey:BindingToOption()
> X2Hotkey:SetOptionBindingWithIndex("front_camera", "`", 1, 0)
> X2Hotkey:SaveHotKey()
> ```
> 
> ```lua
> action:
>     | "action_bar_button"
>     | "action_bar_page_next"
>     | "action_bar_page_prev"
>     | "action_bar_page"
>     | "activate_weapon"
>     | "autorun"
>     | "back_camera"
>     | "battle_pet_action_bar_button"
>     | "change_roadmap_size"
>     | "cycle_camera_clockwise"
>     | "cycle_camera_counter_clockwise"
>     | "cycle_friendly_backward"
>     | "cycle_friendly_forward"
>     | "cycle_friendly_head_marker_backward"
>     | "cycle_friendly_head_marker_forward"
>     | "cycle_hostile_backward"
>     | "cycle_hostile_forward"
>     | "cycle_hostile_head_marker_backward"
>     | "cycle_hostile_head_marker_forward"
>     | "do_interaction_1"
>     | "do_interaction_2"
>     | "do_interaction_3"
>     | "do_interaction_4"
>     | "dof_add_dist"
>     | "dof_add_range"
>     | "dof_auto_focus"
>     | "dof_sub_dist"
>     | "dof_sub_range"
>     | "dof_toggle"
>     | "down"
>     | "front_camera"
>     | "instant_kill_streak_action_bar_button"
>     | "jump"
>     | "left_camera"
>     | "mode_action_bar_button"
>     | "moveback"
>     | "moveforward"
>     | "moveleft"
>     | "moveright"
>     | "open_chat"
>     | "open_config"
>     | "open_target_equipment"
>     | "over_head_marker_to_target"
>     | "over_head_marker"
>     | "pet_target"
>     | "quest_directing_interaction"
>     | "reply_last_whisper"
>     | "reply_last_whispered"
>     | "ride_pet_action_bar_button"
>     | "right_camera"
>     | "round_target"
>     | "screenshotmode"
>     | "self_target"
>     | "set_watch_target"
>     | "swap_preliminary_equipment"
>     | "targets_target_to_target"
>     | "team_target"
>     | "toggle_achievement"
>     | "toggle_auction"
>     | "toggle_bag"
>     | "toggle_battle_field"
>     | "toggle_butler_info"
>     | "toggle_character"
>     | "toggle_chronicle_book"
>     | "toggle_commercial_mail"
>     | "toggle_common_farm_info"
>     | "toggle_community_expedition_tab"
>     | "toggle_community_faction_tab"
>     | "toggle_community_family_tab"
>     | "toggle_community"
>     | "toggle_craft_book"
>     | "toggle_force_attack"
>     | "toggle_hero"
>     | "toggle_ingameshop"
>     | "toggle_mail"
>     | "toggle_nametag"
>     | "toggle_quest"
>     | "toggle_raid_frame"
>     | "toggle_raid_team_manager"
>     | "toggle_random_shop"
>     | "toggle_ranking"
>     | "toggle_show_guide_decal"
>     | "toggle_specialty_info"
>     | "toggle_spellbook"
>     | "toggle_walk"
>     | "toggle_web_messenger"
>     | "toggle_web_play_diary_instant"
>     | "toggle_web_play_diary"
>     | "toggle_web_wiki"
>     | "toggle_worldmap"
>     | "turnleft"
>     | "turnright"
>     | "watch_targets_target_to_target"
>     | "zoom_in"
> 
> -- Supported modifier keys: CTRL, SHIFT, ALT
> -- You may combine multiple modifiers (e.g., CTRL-SHIFT)
> -- 
> -- Hotkey format
> -- {MODIFIER1}-{MODIFIER2}-{MODIFIER3}-{KEY}
> -- Example: CTRL-A, CTRL-SHIFT-F1, ALT-ESCAPE
> key:
>     | "ESCAPE" -- Keyboard
>     | "F1" -- Keyboard
>     | "F2" -- Keyboard
>     | "F3" -- Keyboard
>     | "F4" -- Keyboard
>     | "F5" -- Keyboard
>     | "F6" -- Keyboard
>     | "F7" -- Keyboard
>     | "F8" -- Keyboard
>     | "F9" -- Keyboard
>     | "F10" -- Keyboard
>     | "F11" -- Keyboard
>     | "F12" -- Keyboard
>     | "PRINT" -- Keyboard
>     | "SCROLLLOCK" -- Keyboard
>     | "PAUSE" -- Keyboard
>     | "APOSTROPHE" -- Keyboard
>     | "1" -- Keyboard
>     | "2" -- Keyboard
>     | "3" -- Keyboard
>     | "4" -- Keyboard
>     | "5" -- Keyboard
>     | "6" -- Keyboard
>     | "7" -- Keyboard
>     | "8" -- Keyboard
>     | "9" -- Keyboard
>     | "0" -- Keyboard
>     | "MINUS" -- Keyboard
>     | "EQUALS" -- Keyboard
>     | "BACKSPACE" -- Keyboard
>     | "TAB" -- Keyboard
>     | "CAPSLOCK" -- Keyboard
>     | "{" -- Keyboard
>     | "}" -- Keyboard
>     | "BACKSLASH" -- Keyboard
>     | "ENTER" -- Keyboard
>     | "," -- Keyboard
>     | "." -- Keyboard
>     | "/" -- Keyboard
>     | "A" -- Keyboard
>     | "B" -- Keyboard
>     | "C" -- Keyboard
>     | "D" -- Keyboard
>     | "E" -- Keyboard
>     | "F" -- Keyboard
>     | "G" -- Keyboard
>     | "H" -- Keyboard
>     | "I" -- Keyboard
>     | "J" -- Keyboard
>     | "K" -- Keyboard
>     | "L" -- Keyboard
>     | "M" -- Keyboard
>     | "N" -- Keyboard
>     | "O" -- Keyboard
>     | "P" -- Keyboard
>     | "Q" -- Keyboard
>     | "R" -- Keyboard
>     | "S" -- Keyboard
>     | "T" -- Keyboard
>     | "U" -- Keyboard
>     | "V" -- Keyboard
>     | "W" -- Keyboard
>     | "X" -- Keyboard
>     | "Y" -- Keyboard
>     | "Z" -- Keyboard
>     | "SPACE" -- Keyboard
>     | "INSERT" -- Keyboard
>     | "HOME" -- Keyboard
>     | "PAGEUP" -- Keyboard
>     | "DELETE" -- Keyboard
>     | "END" -- Keyboard
>     | "PAGEDOWN" -- Keyboard
>     | "UP" -- Keyboard
>     | "LEFT" -- Keyboard
>     | "DOWN" -- Keyboard
>     | "RIGHT" -- Keyboard
>     | "NUMBER-" -- Number Pad
>     | "NUMBER+" -- Number Pad
>     | "NUMBER0" -- Number Pad
>     | "NUMBER1" -- Number Pad
>     | "NUMBER2" -- Number Pad
>     | "NUMBER3" -- Number Pad
>     | "NUMBER4" -- Number Pad
>     | "NUMBER5" -- Number Pad
>     | "NUMBER6" -- Number Pad
>     | "NUMBER7" -- Number Pad
>     | "NUMBER8" -- Number Pad
>     | "NUMBER9" -- Number Pad
>     | "NUMLOCK" -- Number Pad
>     | "MOUSE1" -- Mouse
>     | "MOUSE2" -- Mouse
>     | "MOUSE3" -- Mouse
>     | "MOUSE4" -- Mouse
>     | "MOUSE5" -- Mouse
>     | "MOUSE6" -- Mouse
>     | "MOUSE7" -- Mouse
>     | "MOUSE8" -- Mouse
>     | "MIDDLEBUTTON" -- Mouse
>     | "WHEELDOWN" -- Mouse
>     | "WHEELUP" -- Mouse
> 
> index:
>     | `1` -- PRIMARY
>     | `2` -- SECONDARY
> ```

