# X2Sound
## Globals
**X2Sound**

`X2Sound`

## Classes
### Class: X2Sound
#### Method: IsPlaying
```lua
(method) X2Sound:IsPlaying(soundId: number)
  -> playing: boolean
```
> Checks if the specified sound is currently playing.
> 
> @*param* `soundId` — The ID of the sound to check.
> 
> @*return* `playing` — `true` if the sound is playing, `false` otherwise.

#### Method: StopMusic
```lua
(method) X2Sound:StopMusic()
```
> Stops the currently playing music.

#### Method: PlayUISound
```lua
(method) X2Sound:PlayUISound(soundName: "battlefield_1_secound"|"battlefield_2_secound"|"battlefield_3_secound"|"battlefield_4_secound"|"battlefield_5_secound"...(+219), duplicable?: boolean)
  -> soundId: number
```
> Plays a UI sound and returns its sound instance ID.
> 
> @*param* `soundName` — The name of the sound to play.
> 
> @*param* `duplicable` — If true, allows the sound to play multiple times concurrently; defaults to false.
> 
> @*return* `soundId` — The ID of the sound instance. @TODO: 0 if already playing and not duplicable
> 
> ```lua
> -- Obtained from db sound_pack_items sound_pack_id = 203
> soundName:
>     | "battlefield_1_secound"
>     | "battlefield_2_secound"
>     | "battlefield_3_secound"
>     | "battlefield_4_secound"
>     | "battlefield_5_secound"
>     | "battlefield_already_start"
>     | "battlefield_defeat"
>     | "battlefield_draw"
>     | "battlefield_end"
>     | "battlefield_kill_amazing_spirit"
>     | "battlefield_kill_destruction_god"
>     | "battlefield_kill_eyes_on_fire"
>     | "battlefield_kill_fifth"
>     | "battlefield_kill_first"
>     | "battlefield_kill_fourth"
>     | "battlefield_kill_more_than_sixth"
>     | "battlefield_kill_second"
>     | "battlefield_kill_third"
>     | "battlefield_start"
>     | "battlefield_win"
>     | "cdi_scene_artillery_contents2"
>     | "cdi_scene_artillery_quest_accept_title"
>     | "cdi_scene_artillery_title"
>     | "cdi_scene_combat_contents2"
>     | "cdi_scene_combat_contents3"
>     | "cdi_scene_combat_title"
>     | "cdi_scene_complete_quest_title"
>     | "cdi_scene_find_captain_title"
>     | "cdi_scene_glider_quest_accept_title"
>     | "cdi_scene_go_to_oldman_title"
>     | "cdi_scene_guardtower_title"
>     | "cdi_scene_ladder_contents1"
>     | "cdi_scene_ladder_title"
>     | "cdi_scene_quest_accept_title"
>     | "cdi_scene_siege_contents2"
>     | "cdi_scene_siege_quest_accept_title"
>     | "cdi_scene_siege_title"
>     | "cdi_scene_start_contents2"
>     | "cdi_scene_tribe_quest_accept_title"
>     | "edit_box_text_added"
>     | "edit_box_text_deleted"
>     | "event_actability_expert_changed"
>     | "event_auction_item_putdown"
>     | "event_auction_item_putup"
>     | "event_commercial_mail_alarm"
>     | "event_current_mail_delete"
>     | "event_explored_region"
>     | "event_item_added"
>     | "event_item_ancient_added"
>     | "event_item_artifact_added"
>     | "event_item_epic_added"
>     | "event_item_heroic_added"
>     | "event_item_legendary_added"
>     | "event_item_mythic_added"
>     | "event_item_rare_added"
>     | "event_item_socketing_result_fail"
>     | "event_item_socketing_result_success"
>     | "event_item_uncommon_added"
>     | "event_item_unique_added"
>     | "event_item_wonder_added"
>     | "event_mail_alarm"
>     | "event_mail_delete"
>     | "event_mail_read_changed"
>     | "event_mail_send"
>     | "event_message_box_ability_change_onok"
>     | "event_message_box_aution_bid_onok"
>     | "event_message_box_aution_direct_onok"
>     | "event_message_box_default_onok"
>     | "event_message_box_item_destroy_onok"
>     | "event_nation_independence"
>     | "event_quest_completed_daily"
>     | "event_quest_completed_daily_hunt"
>     | "event_quest_completed_group"
>     | "event_quest_completed_hidden"
>     | "event_quest_completed_livelihood"
>     | "event_quest_completed_main"
>     | "event_quest_completed_normal"
>     | "event_quest_completed_saga"
>     | "event_quest_completed_task"
>     | "event_quest_completed_tutorial"
>     | "event_quest_completed_weekly"
>     | "event_quest_directing_mode"
>     | "event_quest_dropped_daily"
>     | "event_quest_dropped_daily_hunt"
>     | "event_quest_dropped_group"
>     | "event_quest_dropped_hidden"
>     | "event_quest_dropped_livelihood"
>     | "event_quest_dropped_main"
>     | "event_quest_dropped_normal"
>     | "event_quest_dropped_saga"
>     | "event_quest_dropped_task"
>     | "event_quest_dropped_tutorial"
>     | "event_quest_dropped_weekly"
>     | "event_quest_failed_daily"
>     | "event_quest_failed_daily_hunt"
>     | "event_quest_failed_group"
>     | "event_quest_failed_hidden"
>     | "event_quest_failed_livelihood"
>     | "event_quest_failed_main"
>     | "event_quest_failed_normal"
>     | "event_quest_failed_saga"
>     | "event_quest_failed_task"
>     | "event_quest_failed_tutorial"
>     | "event_quest_failed_weekly"
>     | "event_quest_list_changed"
>     | "event_quest_started_daily"
>     | "event_quest_started_daily_hunt"
>     | "event_quest_started_group"
>     | "event_quest_started_hidden"
>     | "event_quest_started_livelihood"
>     | "event_quest_started_main"
>     | "event_quest_started_normal"
>     | "event_quest_started_saga"
>     | "event_quest_started_task"
>     | "event_quest_started_tutorial"
>     | "event_quest_started_weekly"
>     | "event_siege_defeat"
>     | "event_siege_ready_to_siege"
>     | "event_siege_victory"
>     | "event_trade_can_not_putup"
>     | "event_trade_item_and_money_recv"
>     | "event_trade_item_putup"
>     | "event_trade_item_recv"
>     | "event_trade_item_tookdown"
>     | "event_trade_lock"
>     | "event_trade_money_recv"
>     | "event_trade_unlock"
>     | "event_ulc_activate"
>     | "event_web_messenger_alarm"
>     | "gender_transfer"
>     | "high_rank_achievement"
>     | "item_synthesis_result"
>     | "listbox_item_selected"
>     | "listbox_item_toggled"
>     | "listbox_over"
>     | "login_stage_music_before_login"
>     | "login_stage_music_character_stage"
>     | "login_stage_music_creator"
>     | "login_stage_music_world_select"
>     | "login_stage_ready_to_connect_world"
>     | "login_stage_start_game"
>     | "login_stage_try_login"
>     | "login_stage_world_select"
>     | "low_rank_achievement"
>     | "makeup_done"
>     | "successor_skill_change"
>     | "successor_skill_select"
>     | "tutorial_contents_2584_2_1"
>     | "tutorial_contents_2584_2_2"
>     | "tutorial_contents_2585_2_1"
>     | "tutorial_contents_2585_2_2"
>     | "tutorial_contents_2586_2_1"
>     | "tutorial_contents_2586_2_2"
>     | "tutorial_contents_2587_1_1"
>     | "tutorial_contents_2588_1_1"
>     | "tutorial_contents_2589_2_1"
>     | "tutorial_contents_2589_2_2"
>     | "tutorial_contents_2590_2_1"
>     | "tutorial_contents_2590_2_2"
>     | "tutorial_contents_2591_1_1"
>     | "tutorial_contents_2592_1_1"
>     | "tutorial_contents_2593_1_1"
>     | "tutorial_contents_2594_2_1"
>     | "tutorial_contents_2594_2_2"
>     | "tutorial_contents_2595_1_1"
>     | "tutorial_contents_2596_2_1"
>     | "tutorial_contents_2596_2_2"
>     | "tutorial_contents_2597_1_1"
>     | "tutorial_contents_2598_2_1"
>     | "tutorial_contents_2598_2_2"
>     | "tutorial_contents_2599_1_1"
>     | "tutorial_contents_2600_1_1"
>     | "tutorial_contents_2601_1_1"
>     | "tutorial_contents_2602_1_1"
>     | "tutorial_contents_2603_1_1"
>     | "tutorial_contents_2604_1_1"
>     | "tutorial_contents_2605_1_1"
>     | "tutorial_contents_2606_1_1"
>     | "tutorial_contents_2607_1_1"
>     | "tutorial_contents_2608_1_1"
>     | "tutorial_contents_2609_2_1"
>     | "tutorial_contents_2609_2_2"
>     | "tutorial_contents_2610_1_1"
>     | "tutorial_contents_2611_1_1"
>     | "tutorial_contents_2612_1_1"
>     | "tutorial_contents_2613_1_1"
>     | "tutorial_contents_2614_1_1"
>     | "tutorial_contents_2615_1_1"
>     | "tutorial_contents_2616_1_1"
>     | "tutorial_contents_2617_1_1"
>     | "tutorial_contents_2618_1_1"
>     | "tutorial_contents_2619_1_1"
>     | "tutorial_contents_2620_1_1"
>     | "tutorial_contents_2621_1_1"
>     | "tutorial_contents_2622_1_1"
>     | "tutorial_contents_2623_1_1"
>     | "tutorial_contents_2624_1_1"
>     | "tutorial_contents_2625_1_1"
>     | "tutorial_contents_2626_1_1"
>     | "tutorial_contents_2627_1_1"
>     | "tutorial_contents_2628_1_1"
>     | "tutorial_contents_2629_1_1"
>     | "tutorial_contents_2630_1_1"
>     | "tutorial_contents_2631_1_1"
>     | "tutorial_contents_2632_1_1"
>     | "tutorial_contents_2633_1_1"
>     | "tutorial_contents_2634_1_1"
>     | "tutorial_contents_2635_1_1"
>     | "tutorial_contents_2636_1_1"
>     | "tutorial_contents_2639_1_1"
>     | "tutorial_contents_2640_1_1"
>     | "tutorial_contents_2641_1_1"
>     | "tutorial_contents_2642_1_1"
>     | "tutorial_contents_2643_1_1"
>     | "tutorial_contents_2644_1_1"
>     | "tutorial_contents_2645_1_1"
>     | "tutorial_contents_2646_1_1"
>     | "tutorial_contents_2647_1_1"
>     | "tutorial_contents_2648_1_1"
>     | "tutorial_contents_2649_1_1"
>     | "tutorial_contents_2650_1_1"
>     | "tutorial_contents_2651_1_1"
>     | "tutorial_contents_2652_1_1"
>     | "tutorial_contents_2653_1_1"
> ```

#### Method: PlayMusic
```lua
(method) X2Sound:PlayMusic(soundPackItemName: string)
```
> Plays music from the specified sound pack item.
> 
> @*param* `soundPackItemName` — The name of the sound pack item.

#### Method: StopSound
```lua
(method) X2Sound:StopSound(soundId: number)
```
> Stops the sound instance with the specified ID.
> 
> @*param* `soundId` — The ID of the sound to stop.

