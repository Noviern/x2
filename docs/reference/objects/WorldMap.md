# WorldMap
## Globals
**MAX_SKILL_MAP_EFFECT_COUNT**

`integer`

## Classes
### Class: WorldMap
Extends [Widget](../types/Widget.md#class-widget), [Map](../types/Map.md#class-map)

> [WorldMap](../types/WorldMap.md#class-worldmap)
> 
> **Warning:** Worldmap is highly tied to the actual world map and one can have
> an effect on the other.
> 
> A `WorldMap` widget represents the in-game world map. It manages zones,
> climate data, icons, routes, portals, farm locations, quest indicators, and
> temporary notifications. Many functions directly affect the real world map,
> so changes in the widget may impact actual map data.
> 
> **Dependencies**:
>  - [ImageDrawable](../types/ImageDrawable.md#class-imagedrawable) used for settings drawables.
>  - [EffectDrawable](../types/EffectDrawable.md#class-effectdrawable) used for setting effect drawables.
> 
#### Method: GetClimateInfo
```lua
(method) WorldMap:GetClimateInfo(zoneId: `0`|`100`|`101`|`102`|`103`...(+151))
  -> climateInfo: `1`|`2`|`3`|`4`|`5`[]
```
> Retrieves climate information for a specific zone.
> 
> @*param* `zoneId` — The ID of the zone.
> 
> @*return* `climateInfo` — The climate information for the zone.
> 
> ```lua
> -- Obtained from db zone_groups
> zoneId:
>     | `0` -- current - Current location
>     | `1` -- w_gweonid_forest - Gweonid Forest
>     | `2` -- w_marianople - Marianople
>     | `3` -- w_garangdol_plains - Dewstone Plains
>     | `4` -- e_sunrise_peninsula - Solis Headlands
>     | `5` -- w_solzreed - Solzreed Peninsula
>     | `6` -- w_lilyut_meadow - Lilyut Hills
>     | `7` -- e_rainbow_field - Arcum Iris
>     | `8` -- w_two_crowns - Two Crowns
>     | `9` -- e_mahadevi - Mahadevi
>     | `10` -- w_bronze_rock - Airain Rock
>     | `11` -- e_falcony_plateau - Falcorth Plains
>     | `12` -- e_singing_land - Villanelle
>     | `13` -- e_sunny_wilderness - Sunbite Wilds
>     | `14` -- e_steppe_belt - Windscour Savannah
>     | `15` -- e_ruins_of_hariharalaya - Perinoor Ruins
>     | `16` -- e_lokas_checkers - Rookborne Basin
>     | `17` -- e_ynystere - Ynystere
>     | `18` -- w_white_forest - White Arden
>     | `19` -- w_the_carcass - Karkasse Ridgelands
>     | `20` -- w_cross_plains - Cinderstone Moor
>     | `21` -- w_cradle_of_genesis - Aubre Cradle
>     | `22` -- w_golden_plains - Halcyona
>     | `23` -- e_hasla - Hasla
>     | `24` -- e_tiger_spine_mountains - Tigerspine Mountains
>     | `25` -- e_ancient_forest - Silent Forest
>     | `26` -- w_hell_swamp - Hellswamp
>     | `27` -- w_long_sand - Sanddeep
>     | `28` -- w_barren_land - The Wastes
>     | `29` -- s_lost_island - Libertia Sea
>     | `30` -- s_lostway_sea - Castaway Strait
>     | `31` -- instance_training_camp - Drill Camp
>     | `32` -- instance_silent_colossus - Dreadnought
>     | `33` -- o_salpimari - Heedmar
>     | `34` -- o_nuimari - Nuimari
>     | `35` -- w_dark_side_of_the_moon -
>     | `36` -- s_silent_sea - Arcadian Sea
>     | `37` -- e_una_basin -
>     | `38` -- s_nightmare_coast -
>     | `39` -- s_golden_sea - Halcyona Gulf
>     | `40` -- s_crescent_sea - Feuille Sound
>     | `41` -- locked_sea_temp - Forbidden Sea
>     | `42` -- locked_land_temp - Forbidden Shore
>     | `43` -- o_seonyeokmari - Marcala
>     | `44` -- o_rest_land - Calmlands
>     | `45` -- instance_burntcastle_armory - Burnt Castle Armory
>     | `46` -- instance_hadir_farm - Hadir Farm
>     | `47` -- instance_sal_temple - Palace Cellar
>     | `48` -- e_white_island - Saltswept Atoll
>     | `49` -- arche_mall - Mirage Isle
>     | `50` -- instance_cuttingwind_deadmine - Sharpwind Mines
>     | `51` -- instance_howling_abyss - Howling Abyss
>     | `52` -- instance_cradle_of_destruction - Kroloal Cradle
>     | `53` -- test_instance_violent_maelstrom - Violent Maelstrom Arena
>     | `54` -- o_abyss_gate - Exeloch
>     | `55` -- instance_nachashgar - Serpentis
>     | `56` -- o_land_of_sunlights - Sungold Fields
>     | `57` -- o_ruins_of_gold - Golden Ruins
>     | `58` -- instance_howling_abyss_2 - Greater Howling Abyss
>     | `59` -- s_freedom_island - Sunspeck Sea
>     | `60` -- s_pirate_island - Stormraw Sound
>     | `61` -- o_shining_shore - Diamond Shores
>     | `62` -- instance_immortal_isle - Sea of Drowned Love
>     | `63` -- o_the_great_reeds - Reedwind
>     | `64` -- instance_immortal_isle_easy - Lesser Sea of Drowned Love
>     | `65` -- o_library_2 - Verdant Skychamber
>     | `66` -- instance_nachashgar_easy - Lesser Serpentis
>     | `67` -- o_library_1 - Introspect Path
>     | `68` -- instance_prologue - Lucius's Dream
>     | `69` -- o_library_3 - Evening Botanica
>     | `70` -- instance_library_1 - Encyclopedia Room
>     | `71` -- instance_library_2 - Libris Garden
>     | `72` -- instance_library_3 - Screaming Archives
>     | `73` -- instance_library_boss_1 - Screening Hall
>     | `74` -- instance_library_boss_2 - Frozen Study
>     | `75` -- instance_library_boss_3 - Deranged Bookroom
>     | `76` -- instance_library_tower_defense - Corner Reading Room
>     | `77` -- instance_training_camp_1on1 - Gladiator Arena
>     | `78` -- o_dew_plains - Mistmerrow
>     | `79` -- w_mirror_kingdom - Miroir Tundra
>     | `80` -- s_broken_mirrors_sea - Shattered Sea
>     | `81` -- instance_battle_field - New Arena
>     | `82` -- o_epherium - Epherium
>     | `83` -- instance_hadir_farm_hard - Greater Hadir Farm
>     | `84` -- instance_burntcastle_armory_hard - Greater Burnt Castle Armory
>     | `85` -- instance_library_heart - Heart of Ayanad
>     | `86` -- instance_sal_temple_hard - Greater Palace Cellar
>     | `87` -- instance_cuttingwind_deadmine_hard - Greater Sharpwind Mines
>     | `88` -- instance_cradle_of_destruction_hard - Greater Kroloal Cradle
>     | `89` -- instance_feast_garden - Mistsong Summit
>     | `90` -- instance_training_camp_no_item - Arena
>     | `91` -- instance_the_judge_of_uthstin - Decisive Arena
>     | `92` -- instance_battle_field_of_feast - Free-For-All Arena
>     | `93` -- w_hanuimaru - Ahnimar
>     | `94` -- instance_prologue_izuna - Ancient Ezna
>     | `95` -- s_boiling_sea - Boiling Sea
>     | `96` -- e_sylvina_region - Sylvina Caldera
>     | `97` -- instance_sea_of_chaos - Bloodsalt Bay
>     | `98` -- o_room_of_queen - Queen's Chamber
>     | `99` -- e_lokaloka_mountains - Rokhala Mountains
>     | `100` -- o_room_of_queen_2 - Queen's Chamber
>     | `101` -- o_room_of_queen_3 - Burnt Castle Cellar
>     | `102` -- o_candlestick_of_sea - Aegis Island
>     | `103` -- o_whale_song_bay - Whalesong Harbor
>     | `104` -- s_whale_swell_strait - Whaleswell Straits
>     | `105` -- instance_hanging_gardens_of_ipna - Ipnysh Sanctuary
>     | `106` -- instance_festival_training_camp_1on1 - Snowball Arena
>     | `107` -- o_hirama_the_west - Western Hiram Mountains
>     | `108` -- instance_golden_plains - Golden Plains Battle
>     | `109` -- instance_golden_plains_war - Golden Plains Battle
>     | `110` -- o_hirama_the_east - Eastern Hiram Mountains
>     | `111` -- instance_library_new_boss_1 - Screening Hall (Disabled)
>     | `112` -- instance_library_new_boss_2 - Frozen Study (Disabled)
>     | `113` -- instance_library_new_boss_3 - Deranged Bookroom (Disabled)
>     | `114` -- test_arcaneearth - Corner Reading Room (Disabled)
>     | `115` -- instance_library_new_heart - Heart of Ayanad (Disabled)
>     | `116` -- library_lobby_1f - Unused
>     | `117` -- library_lobby_2f - Verdant Skychamber (Disabled)
>     | `118` -- library_lobby_3f - Evening Botanica (Disabled)
>     | `119` -- library_lobby_4f - Constellation Breakroom (Disabled)
>     | `120` -- instance_library_boss_total - Abyssal Library
>     | `121` -- instance_carcass - Red Dragon's Keep
>     | `122` -- instance_the_last_day_of_hiramakand - The Fall of Hiram City
>     | `125` -- instance_challenge_tower - Noryette Challenge
>     | `126` -- zonegroup_instance_defense_of_feast - Mistsong Banquet
>     | `127` -- instance_sea_survival - Naval Survival Game (test)
>     | `129` -- instance_sea_survival_2 - Stillwater Gulf
>     | `130` -- instance_eternity - Hereafter Rebellion
>     | `131` -- instance_dew_plain - Battle of Mistmerrow
>     | `132` -- instance_dewplane_boss - Kadum
>     | `133` -- the_garden - Garden of the Gods
>     | `134` -- gatekeeper_hall - Gatekeeper Hall
>     | `135` -- instance_hanuimaru_zone - Dairy Cow Dreamland
>     | `136` -- instance_restraint_of_power - Circle of Authority
>     | `137` -- instance_phantom_of_delphinad - Delphinad Mirage
>     | `138` -- instance_arena_2on2 - Test Arena
>     | `139` -- o_land_of_magic - Mysthrane Gorge
>     | `140` -- o_mount_ipnir - Ipnya Ridge
>     | `141` -- instance_garuda_nest - Skyfin War
>     | `142` -- instance_mount_ipnir_story - Queen's Altar
>     | `143` -- instance_event_camp_1on1 - Event Arena
>     | `144` -- test_cbush - Guild House
>     | `145` -- instance_black_thorn - Unused
>     | `146` -- instance_black_spike - Black Thorn Prison
>     | `147` -- o_western_prairie - Great Prairie of the West
>     | `148` -- instance_nachashgar_ancient - Greater Serpentis
>     | `149` -- instance_cuttlefish_event_zone - Squid Game Event Arena
>     | `150` -- instance_dimensional_defence - Dimensional Boundary Defense Raid
>     | `151` -- instance_event_hanuimaru - Ahnimar Event Arena
>     | `152` -- w_golden_moss_forest - Goldleaf Forest
>     | `153` -- instance_training_camp_1on1_ga - Make a Splash
>     | `154` -- instance_burntcastle_armory_nightmare - Nightmare Burnt Castle Armory
>     | `155` -- instance_divided_crossroad - Crossroads Arena
>     | `156` -- instance_noryette_battlefield - Noryette Arena
>     | `158` -- instance_life_dungeon_daru - Island of Abundance
>     | `159` -- instance_golden_plains_ga - Golden Plains Battle
> ```

#### Method: SetTroubleZoneColor
```lua
(method) WorldMap:SetTroubleZoneColor(state: `-1`|`HPWS_BATTLE`|`HPWS_PEACE`|`HPWS_TROUBLE_0`|`HPWS_TROUBLE_1`...(+4), r: number, g: number, b: number, a: number)
```
> Sets the color for trouble zones on the world map based on their state.
> 
> @*param* `state` — The state of the trouble zone.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`)
> 
> @*param* `a` — The alpha component. (min: `0`, max: `1`)
> 
> ```lua
> -- api/X2Dominion
> state:
>     | `-1`
>     | `HPWS_BATTLE`
>     | `HPWS_PEACE`
>     | `HPWS_TROUBLE_0`
>     | `HPWS_TROUBLE_1`
>     | `HPWS_TROUBLE_2`
>     | `HPWS_TROUBLE_3`
>     | `HPWS_TROUBLE_4`
>     | `HPWS_WAR`
> ```

#### Method: SetTempNotifyCoord
```lua
(method) WorldMap:SetTempNotifyCoord(isMain: boolean, coord: table)
```
> Sets temporary notification coordinates for the world map.
> 
> @*param* `isMain` — Whether the coordinate is for the main notification.
> 
> @*param* `coord` — The coordinate data.

#### Method: SetTempNotifyColor
```lua
(method) WorldMap:SetTempNotifyColor(color: RGBAColor)
```
> Sets a temporary notification color for the world map.
> 
> @*param* `color` — The color for the temporary notification.
> 
> See: [RGBAColor](../types/classes.md#class-rgbacolor)

#### Method: SetPortalDrawable
```lua
(method) WorldMap:SetPortalDrawable(drawable: EffectDrawable)
```
> Sets the drawable for portal icons on the world map. May accept any drawable
> type.
> 
> @*param* `drawable` — The drawable for the portal icon.
> 
> ```lua
> local portalDrawable = widget:CreateEffectDrawableByKey("ui/map/icon/npc_icon.dds", "portal", "overlay")
> portalDrawable:SetVisible(false)
> portalDrawable:SetEffectPriority(1, "alpha", 0.5, 0.4)
> portalDrawable:SetMoveRepeatCount(0)
> portalDrawable:SetMoveRotate(false)
> portalDrawable:SetMoveEffectType(1, "right", 0, 0, 0.4, 0.4)
> portalDrawable:SetMoveEffectEdge(1, 0.3, 0.5)
> portalDrawable:SetMoveEffectType(2, "right", 0, 0, 0.4, 0.4)
> portalDrawable:SetMoveEffectEdge(2, 0.5, 0.3)
> widget:SetPortalDrawable(portalDrawable)
> ```
> See: [EffectDrawable](../objects/EffectDrawable.md#class-effectdrawable)

#### Method: ShowCommonFarm
```lua
(method) WorldMap:ShowCommonFarm(farmGroupType: number, farmType: number, x: number, y: number)
```
> Shows a common farm icon on the world map at the specified coordinates.
> 
> @*param* `farmGroupType` — The farm group type.
> 
> @*param* `farmType` — The farm type.
> 
> @*param* `x` — The x-coordinate.
> 
> @*param* `y` — The y-coordinate.

#### Method: ShowQuest
```lua
(method) WorldMap:ShowQuest(qType: number, decalIndex: number, hasDecal: boolean)
```
> Shows a quest indicator on the world map.
> 
> @*param* `qType` — The quest type.
> 
> @*param* `decalIndex` — The decal index for the quest.
> 
> @*param* `hasDecal` — Whether the quest has a decal.

#### Method: ShowPortal
```lua
(method) WorldMap:ShowPortal(zoneId: `0`|`100`|`101`|`102`|`104`...(+315), x: number, y: number, z: number)
```
> Shows a portal location on the world map at the specified coordinates.
> Crashes if `SetPortalDrawable` is not called first.
> 
> @*param* `zoneId` — The zone ID.
> 
> @*param* `x` — The x-coordinate.
> 
> @*param* `y` — The y-coordinate.
> 
> @*param* `z` — The z-coordinate.
> 
> ```lua
> -- Obtained from db zones
> zoneId:
>     | `0` -- login -
>     | `2` -- siegefield -
>     | `3` -- npc_single -
>     | `4` -- cbsuh_nonpc - Guild House
>     | `21` -- old_w_garangdol -
>     | `22` -- old_w_marianople -
>     | `23` -- old_w_solzreed -
>     | `24` -- old_w_two_crowns -
>     | `25` -- old_w_cross_plains -
>     | `29` -- old_w_white_forest -
>     | `30` -- old_w_gold_moss -
>     | `31` -- old_w_longsand -
>     | `32` -- old_w_gold_plains -
>     | `33` -- old_w_cradle_genesis -
>     | `34` -- old_w_bronze_rock -
>     | `35` -- old_w_hanuimaru -
>     | `36` -- old_w_nameless_canyon -
>     | `37` -- old_w_gweoniod_forest -
>     | `38` -- old_w_lilyut_mea -
>     | `39` -- old_w_carcass -
>     | `40` -- old_w_hell_swamp -
>     | `41` -- old_w_death_mt -
>     | `42` -- old_w_twist_coast -
>     | `43` -- old_w_tornado_mea -
>     | `44` -- old_w_dark_moon -
>     | `45` -- old_w_firefly_pen -
>     | `46` -- old_w_frozen_top -
>     | `47` -- old_w_mirror_kingdom -
>     | `72` -- ocean_level -
>     | `73` -- old_e_black_desert -
>     | `74` -- old_e_laveda -
>     | `75` -- old_e_desert_of_fossils -
>     | `76` -- old_e_sunny_wilderness -
>     | `77` -- old_e_volcanic_shore -
>     | `78` -- old_e_sylvina_volcanic_region -
>     | `79` -- old_e_hasla -
>     | `80` -- old_e_ruins_of_hariharalaya -
>     | `81` -- old_e_steppe_belt -
>     | `82` -- old_e_rainbow_field -
>     | `83` -- old_e_lokaloka_mt_south -
>     | `84` -- old_e_lokaloka_mt_north -
>     | `85` -- old_e_return_land -
>     | `86` -- old_e_loca_checkers -
>     | `87` -- old_e_night_velley -
>     | `88` -- old_e_una_basin -
>     | `89` -- old_e_ancient_forest -
>     | `90` -- old_e_ynystere -
>     | `91` -- old_e_sing_land -
>     | `92` -- old_e_falcony_plateau -
>     | `93` -- old_e_tiger_mt -
>     | `94` -- old_e_mahadevi -
>     | `95` -- old_e_sunrise_pen -
>     | `96` -- old_e_white_island -
>     | `97` -- old_w_ynys_island -
>     | `98` -- old_w_wandering_island -
>     | `99` -- origin -
>     | `100` -- model_room -
>     | `101` -- worldlevel8x8 -
>     | `102` -- world8x8_noone -
>     | `104` -- module_object_update -
>     | `105` -- module_hightmap_update -
>     | `108` -- npc_brave -
>     | `117` -- background_lod -
>     | `118` -- main_world_0_0 -
>     | `119` -- main_world_1_0 -
>     | `120` -- main_world_2_0 -
>     | `121` -- main_world_0_1 -
>     | `122` -- main_world_1_1 -
>     | `123` -- main_world_2_1 -
>     | `124` -- main_world_0_2 -
>     | `125` -- main_world_1_2 -
>     | `126` -- main_world_2_2 -
>     | `127` -- main_world_rain_bow -
>     | `128` -- main_world_tiger -
>     | `129` -- w_gweonid_forest_1 - Gweonid Forest
>     | `130` -- main_world_two_crowns -
>     | `131` -- main_world_3_0 -
>     | `132` -- main_world_bone -
>     | `133` -- w_marianople_1 - Marianople
>     | `134` -- instance_silent_colossus - Dreadnought
>     | `135` -- main_world_rough_ynystere -
>     | `136` -- e_steppe_belt_1 - Windscour Savannah
>     | `137` -- e_ruins_of_hariharalaya_1 - Perinoor Ruins
>     | `138` -- e_lokas_checkers_1 - Rookborne Basin
>     | `139` -- e_ynystere_1 - Ynystere
>     | `140` -- w_garangdol_plains_1 - Dewstone Plains
>     | `141` -- e_sunrise_peninsula_1 - Solis Headlands
>     | `142` -- w_solzreed_1 - Solzreed Peninsula
>     | `143` -- w_white_forest_1 - White Arden
>     | `144` -- w_lilyut_meadow_1 - Lilyut Hills
>     | `145` -- w_the_carcass_1 - Karkasse Ridgelands
>     | `146` -- e_rainbow_field_1 - Arcum Iris
>     | `147` -- sound_test -
>     | `148` -- w_cross_plains_1 - Cinderstone Moor
>     | `149` -- w_two_crowns_1 - Two Crowns
>     | `150` -- w_cradle_of_genesis_1 - Aubre Cradle
>     | `151` -- w_golden_plains_1 - Halcyona
>     | `152` -- 3d_environment_object -
>     | `153` -- e_mahadevi_1 - Mahadevi
>     | `154` -- w_bronze_rock_1 - Airain Rock
>     | `155` -- e_hasla_1 - Hasla
>     | `156` -- e_falcony_plateau_1 - Falcorth Plains
>     | `157` -- e_sunny_wilderness_1 - Sunbite Wilds
>     | `158` -- e_tiger_spine_mountains_1 - Tigerspine Mountains
>     | `159` -- e_ancient_forest - Silent Forest
>     | `160` -- e_singing_land_1 - Villanelle
>     | `161` -- w_hell_swamp_1 - Hellswamp
>     | `162` -- w_long_sand_1 - Sanddeep
>     | `163` -- test_w_gweonid_forest -
>     | `164` -- w_barren_land - The Wastes
>     | `165` -- machinima_w_solzreed -
>     | `166` -- npc_test -
>     | `167` -- 3d_natural_object -
>     | `168` -- machinima_w_gweonid_forest -
>     | `169` -- machinima_w_garangdol_plains -
>     | `170` -- machinima_w_bronze_rock -
>     | `171` -- sumday_nonpc -
>     | `172` -- s_lost_island - Castaway Strait
>     | `173` -- s_lostway_sea - Castaway Strait
>     | `174` -- gstar2010 - G-Star 2010
>     | `175` -- chls_model_room -
>     | `176` -- s_zman_nonpc -
>     | `177` -- loginbg2 -
>     | `178` -- w_solzreed_2 - Solzreed Peninsula
>     | `179` -- w_solzreed_3 - Solzreed Peninsula
>     | `180` -- s_silent_sea_7 - Arcadian Sea
>     | `181` -- w_gweonid_forest_2 - Gweonid Forest
>     | `182` -- w_gweonid_forest_3 - Gweonid Forest
>     | `183` -- w_marianople_2 - Marianople
>     | `184` -- e_falcony_plateau_2 - Falcorth Plains
>     | `185` -- w_garangdol_plains_2 - Dewstone Plains
>     | `186` -- w_two_crowns_2 - Two Crowns
>     | `187` -- e_rainbow_field_2 - Arcum Iris
>     | `188` -- e_rainbow_field_3 - Arcum Iris
>     | `189` -- e_rainbow_field_4 - Arcum Iris
>     | `190` -- e_sunny_wilderness_2 - Sunbite Wilds
>     | `191` -- e_sunrise_peninsula_2 - Solis Headlands
>     | `192` -- w_bronze_rock_2 - Airain Rock
>     | `193` -- w_bronze_rock_3 - Airain Rock
>     | `194` -- e_singing_land_2 - Villanelle
>     | `195` -- w_lilyut_meadow_2 - Lilyut Hills
>     | `196` -- e_mahadevi_2 - Mahadevi
>     | `197` -- e_mahadevi_3 - Mahadevi
>     | `198` -- instance_training_camp - Drill Camp
>     | `204` -- o_salpimari - Heedmar
>     | `205` -- o_nuimari - Nuimari
>     | `206` -- w_golden_plains_2 - Halcyona
>     | `207` -- w_golden_plains_3 - Halcyona
>     | `209` -- w_dark_side_of_the_moon -
>     | `210` -- s_silent_sea_1 - Arcadian Sea
>     | `211` -- s_silent_sea_2 - Arcadian Sea
>     | `212` -- s_silent_sea_3 - Arcadian Sea
>     | `213` -- s_silent_sea_4 - Arcadian Sea
>     | `214` -- s_silent_sea_5 - Arcadian Sea
>     | `215` -- s_silent_sea_6 - Arcadian Sea
>     | `216` -- e_una_basin -
>     | `217` -- s_nightmare_coast -
>     | `218` -- s_golden_sea_1 - Halcyona Gulf
>     | `219` -- s_golden_sea_2 - Halcyona Gulf
>     | `221` -- s_crescent_sea - Feuille Sound
>     | `225` -- lock_south_sunrise_peninsula - Southern Solis Forbidden Field
>     | `226` -- lock_golden_sea - Forbidden Halcyona Reef
>     | `227` -- lock_left_side_of_silent_sea - Western Arcadian Sea Forbidden Reef
>     | `228` -- lock_right_side_of_silent_sea_1 - Eastern Arcadian Sea Forbidden Reef
>     | `229` -- lock_right_side_of_silent_sea_2 - Eastern Arcadian Sea Forbidden Reef
>     | `233` -- o_seonyeokmari - Marcala
>     | `234` -- o_rest_land - Calmlands
>     | `236` -- instance_burntcastle_armory - Burnt Castle Armory
>     | `240` -- instance_sal_temple - Palace Cellar
>     | `241` -- instance_hadir_farm - Hadir Farm
>     | `242` -- e_ruins_of_hariharalaya_2 - Perinoor Ruins
>     | `243` -- e_ruins_of_hariharalaya_3 - Perinoor Ruins
>     | `244` -- w_white_forest_2 - White Arden
>     | `245` -- w_long_sand_2 - Sanddeep
>     | `246` -- e_lokas_checkers_2 - Rookborne Basin
>     | `247` -- e_steppe_belt_2 - Windscour Savannah
>     | `248` -- w_hell_swamp_2 - Hellswamp
>     | `251` -- e_sylvina_region - Sylvina Caldera
>     | `256` -- e_singing_land_3 - Villanelle
>     | `257` -- w_cross_plains_2 - Cinderstone Moor
>     | `258` -- e_tiger_spine_mountains_2 - Tigerspine Mountains
>     | `259` -- e_ynystere_2 - Ynystere
>     | `260` -- arche_mall - Mirage Isle
>     | `261` -- e_white_island - Saltswept Atoll
>     | `262` -- instance_cuttingwind_deadmine - Sharpwind Mines
>     | `264` -- instance_cradle_of_destruction - Kroloal Cradle
>     | `265` -- instance_howling_abyss - Howling Abyss
>     | `266` -- w_mirror_kingdom_1 - Miroir Tundra
>     | `267` -- w_frozen_top_1 - Skytalon
>     | `269` -- w_hanuimaru_1 - Ahnimar
>     | `270` -- e_lokaloka_mountains_1 - Rokhala Mountains
>     | `271` -- test_instance_violent_maelstrom - 199881 DO NOT TRANSLATE
>     | `272` -- e_hasla_2 - Hasla
>     | `273` -- w_the_carcass_2 - Karkasse Ridgelands
>     | `274` -- e_hasla_3 - Hasla
>     | `275` -- o_land_of_sunlights - Sungold Fields
>     | `276` -- o_abyss_gate - Exeloch
>     | `277` -- s_lonely_sea_1 - Unknown Area
>     | `278` -- instance_nachashgar - Serpentis
>     | `280` -- instance_howling_abyss_2 - Greater Howling Abyss
>     | `281` -- o_ruins_of_gold - Golden Ruins
>     | `282` -- o_shining_shore_1 - Diamond Shores
>     | `283` -- s_freedom_island - Sunspeck Sea
>     | `284` -- s_pirate_island - Stormraw Sound
>     | `285` -- instance_immortal_isle - Sea of Drowned Love
>     | `286` -- e_sunny_wilderness_3 - Sunbite Wilds
>     | `287` -- e_sunny_wilderness_4 - Sunbite Wilds
>     | `288` -- o_the_great_reeds - Reedwind
>     | `289` -- s_silent_sea_8 - Arcadian Sea
>     | `290` -- instance_immortal_isle_easy - Lesser Sea of Drowned Love
>     | `292` -- instance_nachashgar_easy - Lesser Serpentis
>     | `293` -- o_library_1 - Introspect Path
>     | `294` -- o_library_2 - Verdant Skychamber
>     | `295` -- o_library_3 - Evening Botanica
>     | `296` -- instance_library_1 -  Encyclopedia Room
>     | `297` -- instance_library_2 - Libris Garden
>     | `298` -- instance_library_3 - Screaming Archives
>     | `299` -- tutorial_test - 264310 DO NOT TRANSLATE
>     | `300` -- instance_prologue - 268409 DO NOT TRANSLATE
>     | `301` -- o_shining_shore_2 - Diamond Shores
>     | `302` -- instance_training_camp_1on1 - Gladiator Arena
>     | `303` -- instance_library_boss_1 - Screening Hall
>     | `304` -- instance_library_boss_2 - Frozen Study
>     | `305` -- instance_library_boss_3 - Deranged Bookroom
>     | `306` -- instance_library_tower_defense - Corner Reading Room
>     | `307` -- o_dew_plains - Mistmerrow
>     | `308` -- s_broken_mirrors_sea_1 - Shattered Sea
>     | `309` -- s_broken_mirrors_sea_2 - Shattered Sea
>     | `310` -- o_whale_song_bay - Whalesong Harbor
>     | `311` -- lock_left_side_of_broken_mirrors_sea - Shattered Sea Hidden Sea
>     | `312` -- o_epherium_1 - Epherium
>     | `313` -- instance_battle_field - New Arena
>     | `314` -- o_epherium_2 - Epherium
>     | `315` -- instance_library_heart - Heart of Ayanad
>     | `316` -- instance_burntcastle_armory_hard - Greater Burnt Castle Armory
>     | `317` -- instance_hadir_farm_hard - Greater Hadir Farm
>     | `318` -- instance_cuttingwind_deadmine_hard - Greater Sharpwind Mines
>     | `319` -- instance_sal_temple_hard - Greater Palace Cellar
>     | `320` -- instance_cradle_of_destruction_hard - Greater Kroloal Cradle
>     | `321` -- instance_feast_garden - Mistsong Summit
>     | `322` -- instance_training_camp_no_item - Gladiator Arena
>     | `323` -- instance_the_judge_of_uthstin - Decisive Arena
>     | `326` -- instance_battle_field_of_feast - Free-For-All Arena
>     | `327` -- instance_prologue_izuna - Ezna Massacre Site
>     | `328` -- w_cradle_of_genesis_2 - Aubre Cradle
>     | `329` -- s_boiling_sea_1 - Boiling Sea
>     | `330` -- s_boiling_sea_2 - Boiling Sea
>     | `331` -- s_boiling_sea_3 - Boiling Sea
>     | `332` -- s_boiling_sea_4 - Boiling Sea
>     | `333` -- w_hanuimaru_2 - Ahnimar
>     | `334` -- w_hanuimaru_3 - Ahnimar
>     | `335` -- s_lonely_sea_2 - Unknown Area
>     | `337` -- o_room_of_queen_1 - Queen's Chamber
>     | `338` -- instance_sea_of_chaos - [Naval Arena] Bloodsalt Bay
>     | `339` -- s_boiling_sea_5 - Boiling Sea
>     | `340` -- e_lokaloka_mountains_2 - Rokhala Mountains
>     | `341` -- o_room_of_queen_2 - Queen's Chamber
>     | `342` -- o_room_of_queen_3 - Unreleased Queen's Chamber
>     | `343` -- s_whale_swell_strait - Whaleswell Straits
>     | `344` -- o_candlestick_of_sea - Aegis Island
>     | `345` -- lock_left_side_of_whale_sea - West Whalesong
>     | `346` -- instance_hanging_gardens_of_ipna - Ipnysh Sanctuary
>     | `347` -- instance_festival_camp_1on1 - Snowball Arena
>     | `348` -- promotion - Promotion
>     | `349` -- promotion_45 - Promotion
>     | `350` -- o_hirama_the_west_1 - Western Hiram Mountains
>     | `351` -- o_hirama_the_west_2 - Western Hiram Mountains
>     | `352` -- instance_golden_plains - Golden Plains Battle
>     | `353` -- instance_golden_plains_war - Golden Plains Battle
>     | `354` -- o_hirama_the_east_1 - Eastern Hiram Mountains
>     | `355` -- o_hirama_the_east_2 - Eastern Hiram Mountains
>     | `356` -- instance_library_new_boss_1 - Screening Hall (Disabled)
>     | `357` -- instance_library_new_boss_2 - Frozen Study
>     | `358` -- instance_library_new_boss_3 - Deranged Bookroom
>     | `359` -- test_arcaneearth - Magic Land Test
>     | `360` -- instance_library_new_heart - Heart of Ayanad
>     | `361` -- library_lobby_1f - Introspect Path
>     | `362` -- library_lobby_2f - Verdant Skychamber
>     | `363` -- library_lobby_3f - Evening Botanica
>     | `364` -- library_lobby_4f - Constellation Breakroom
>     | `365` -- instance_library_boss_total - Abyssal Library
>     | `366` -- instance_carcass - Red Dragon's Keep
>     | `367` -- instance_the_last_day_of_hiramakand - The Fall of Hiram City
>     | `368` -- instance_challenge_tower - Noryette Challenge
>     | `369` -- zone_instance_defense_of_feast - Mistsong Banquet
>     | `370` -- instance_sea_survival - Naval Survival Game (test)
>     | `371` -- tod_test - 598857 DO NOT TRANSLATE - TEST
>     | `372` -- instance_sea_survival_2 - Stillwater Gulf
>     | `373` -- instance_eternity - Hereafter Rebellion
>     | `374` -- instance_dew_plain - Battle of Mistmerrow
>     | `375` -- loginbg5 -
>     | `376` -- instance_dewplane_boss - Kadum
>     | `378` -- the_garden_1 - Garden of the Gods
>     | `379` -- gatekeeper_hall - Gatekeeper Hall
>     | `381` -- instance_hanuimaru - Dairy Cow Dreamland
>     | `382` -- the_garden_2 - Garden of the Gods
>     | `383` -- instance_restraint_of_power - Circle of Authority
>     | `384` -- instance_phantom_of_delphinad - Delphinad Mirage
>     | `386` -- instance_arena_2on2 - Test Arena
>     | `387` -- o_land_of_magic - Mysthrane Gorge
>     | `388` -- o_mount_ipnir_1 - Ipnya Ridge
>     | `389` -- instance_garuda_nest - Skyfin War
>     | `390` -- instance_mount_ipnir_story - Queen's Altar
>     | `391` -- o_mount_ipnir_2 - Ipnya Ridge
>     | `393` -- instance_event_camp_1on1 - Event Arena
>     | `395` -- instance_black_thorn - Unused
>     | `396` -- instance_black_spike - Black Thorn
>     | `397` -- o_western_prairie_1 - Great Prairie of the West
>     | `398` -- instance_nachashgar_ancient - Greater Serpentis
>     | `399` -- instance_cuttlefish_event_zone - Squid Game Event Arena
>     | `401` -- o_western_prairie_2 - Great Prairie of the West
>     | `402` -- instance_dimensional_defence - Dimensional Boundary Defense Raid
>     | `403` -- instance_event_hanuimaru - Ahnimar Event Arena
>     | `405` -- w_golden_moss_forest - Goldleaf Forest
>     | `406` -- instance_training_camp_1on1_ga - Gladiator Arena
>     | `407` -- instance_burntcastle_armory_nightmare -
>     | `408` -- instance_divided_crossroad - Crossroads Arena
>     | `409` -- instance_noryette_battlefield - Noryette Arena
>     | `410` -- instance_life_dungeon_daru - Island of Abundance
>     | `411` -- instance_golden_plains_ga - Arena
> ```

#### Method: UpdateEventMap
```lua
(method) WorldMap:UpdateEventMap()
```
> Updates the event map data on the world map.

#### Method: UpdateRouteMap
```lua
(method) WorldMap:UpdateRouteMap(routeDrawable: ImageDrawable)
```
> Updates the route map with the specified drawable.
> 
> @*param* `routeDrawable` — The drawable for the route.
> 
> ```lua
> local routeDrawable, created = widget:GetRouteDrawable(3, 17)
> widget:UpdateRouteMap(routeDrawable)
> ```
> See: [ImageDrawable](../objects/ImageDrawable.md#class-imagedrawable)

#### Method: SetFestivalZoneColor
```lua
(method) WorldMap:SetFestivalZoneColor(r: number, g: number, b: number, a: number)
```
> Sets the color for festival zones on the world map.
> 
> @*param* `r` — The red color component. (min: `0`, max: `1`)
> 
> @*param* `g` — The green color component. (min: `0`, max: `1`)
> 
> @*param* `b` — The blue color component. (min: `0`, max: `1`)
> 
> @*param* `a` — The alpha component. (min: `0`, max: `1`)

#### Method: RemovePingAll
```lua
(method) WorldMap:RemovePingAll()
```
> Removes all pings from the world map.

#### Method: GetIconDrawable
```lua
(method) WorldMap:GetIconDrawable(level: `1`|`2`|`3`|`4`, id: `0`|`100`|`101`|`102`|`103`...(+151))
  -> iconDrawable: ImageDrawable
```
> Retrieves the icon drawable for a specific zoom level and zone ID.
> 
> @*param* `level` — The zoom level.
> 
> @*param* `id` — The zone ID.
> 
> @*return* `iconDrawable` — The icon drawable, empty table if the object `ImageDrawable` hasn't been imported, or `nil` if not found.
> 
> ```lua
> level:
>     | `1` -- World
>     | `2` -- Continent
>     | `3` -- Zone
>     | `4` -- City
> 
> -- Obtained from db zone_groups
> id:
>     | `0` -- current - Current location
>     | `1` -- w_gweonid_forest - Gweonid Forest
>     | `2` -- w_marianople - Marianople
>     | `3` -- w_garangdol_plains - Dewstone Plains
>     | `4` -- e_sunrise_peninsula - Solis Headlands
>     | `5` -- w_solzreed - Solzreed Peninsula
>     | `6` -- w_lilyut_meadow - Lilyut Hills
>     | `7` -- e_rainbow_field - Arcum Iris
>     | `8` -- w_two_crowns - Two Crowns
>     | `9` -- e_mahadevi - Mahadevi
>     | `10` -- w_bronze_rock - Airain Rock
>     | `11` -- e_falcony_plateau - Falcorth Plains
>     | `12` -- e_singing_land - Villanelle
>     | `13` -- e_sunny_wilderness - Sunbite Wilds
>     | `14` -- e_steppe_belt - Windscour Savannah
>     | `15` -- e_ruins_of_hariharalaya - Perinoor Ruins
>     | `16` -- e_lokas_checkers - Rookborne Basin
>     | `17` -- e_ynystere - Ynystere
>     | `18` -- w_white_forest - White Arden
>     | `19` -- w_the_carcass - Karkasse Ridgelands
>     | `20` -- w_cross_plains - Cinderstone Moor
>     | `21` -- w_cradle_of_genesis - Aubre Cradle
>     | `22` -- w_golden_plains - Halcyona
>     | `23` -- e_hasla - Hasla
>     | `24` -- e_tiger_spine_mountains - Tigerspine Mountains
>     | `25` -- e_ancient_forest - Silent Forest
>     | `26` -- w_hell_swamp - Hellswamp
>     | `27` -- w_long_sand - Sanddeep
>     | `28` -- w_barren_land - The Wastes
>     | `29` -- s_lost_island - Libertia Sea
>     | `30` -- s_lostway_sea - Castaway Strait
>     | `31` -- instance_training_camp - Drill Camp
>     | `32` -- instance_silent_colossus - Dreadnought
>     | `33` -- o_salpimari - Heedmar
>     | `34` -- o_nuimari - Nuimari
>     | `35` -- w_dark_side_of_the_moon -
>     | `36` -- s_silent_sea - Arcadian Sea
>     | `37` -- e_una_basin -
>     | `38` -- s_nightmare_coast -
>     | `39` -- s_golden_sea - Halcyona Gulf
>     | `40` -- s_crescent_sea - Feuille Sound
>     | `41` -- locked_sea_temp - Forbidden Sea
>     | `42` -- locked_land_temp - Forbidden Shore
>     | `43` -- o_seonyeokmari - Marcala
>     | `44` -- o_rest_land - Calmlands
>     | `45` -- instance_burntcastle_armory - Burnt Castle Armory
>     | `46` -- instance_hadir_farm - Hadir Farm
>     | `47` -- instance_sal_temple - Palace Cellar
>     | `48` -- e_white_island - Saltswept Atoll
>     | `49` -- arche_mall - Mirage Isle
>     | `50` -- instance_cuttingwind_deadmine - Sharpwind Mines
>     | `51` -- instance_howling_abyss - Howling Abyss
>     | `52` -- instance_cradle_of_destruction - Kroloal Cradle
>     | `53` -- test_instance_violent_maelstrom - Violent Maelstrom Arena
>     | `54` -- o_abyss_gate - Exeloch
>     | `55` -- instance_nachashgar - Serpentis
>     | `56` -- o_land_of_sunlights - Sungold Fields
>     | `57` -- o_ruins_of_gold - Golden Ruins
>     | `58` -- instance_howling_abyss_2 - Greater Howling Abyss
>     | `59` -- s_freedom_island - Sunspeck Sea
>     | `60` -- s_pirate_island - Stormraw Sound
>     | `61` -- o_shining_shore - Diamond Shores
>     | `62` -- instance_immortal_isle - Sea of Drowned Love
>     | `63` -- o_the_great_reeds - Reedwind
>     | `64` -- instance_immortal_isle_easy - Lesser Sea of Drowned Love
>     | `65` -- o_library_2 - Verdant Skychamber
>     | `66` -- instance_nachashgar_easy - Lesser Serpentis
>     | `67` -- o_library_1 - Introspect Path
>     | `68` -- instance_prologue - Lucius's Dream
>     | `69` -- o_library_3 - Evening Botanica
>     | `70` -- instance_library_1 - Encyclopedia Room
>     | `71` -- instance_library_2 - Libris Garden
>     | `72` -- instance_library_3 - Screaming Archives
>     | `73` -- instance_library_boss_1 - Screening Hall
>     | `74` -- instance_library_boss_2 - Frozen Study
>     | `75` -- instance_library_boss_3 - Deranged Bookroom
>     | `76` -- instance_library_tower_defense - Corner Reading Room
>     | `77` -- instance_training_camp_1on1 - Gladiator Arena
>     | `78` -- o_dew_plains - Mistmerrow
>     | `79` -- w_mirror_kingdom - Miroir Tundra
>     | `80` -- s_broken_mirrors_sea - Shattered Sea
>     | `81` -- instance_battle_field - New Arena
>     | `82` -- o_epherium - Epherium
>     | `83` -- instance_hadir_farm_hard - Greater Hadir Farm
>     | `84` -- instance_burntcastle_armory_hard - Greater Burnt Castle Armory
>     | `85` -- instance_library_heart - Heart of Ayanad
>     | `86` -- instance_sal_temple_hard - Greater Palace Cellar
>     | `87` -- instance_cuttingwind_deadmine_hard - Greater Sharpwind Mines
>     | `88` -- instance_cradle_of_destruction_hard - Greater Kroloal Cradle
>     | `89` -- instance_feast_garden - Mistsong Summit
>     | `90` -- instance_training_camp_no_item - Arena
>     | `91` -- instance_the_judge_of_uthstin - Decisive Arena
>     | `92` -- instance_battle_field_of_feast - Free-For-All Arena
>     | `93` -- w_hanuimaru - Ahnimar
>     | `94` -- instance_prologue_izuna - Ancient Ezna
>     | `95` -- s_boiling_sea - Boiling Sea
>     | `96` -- e_sylvina_region - Sylvina Caldera
>     | `97` -- instance_sea_of_chaos - Bloodsalt Bay
>     | `98` -- o_room_of_queen - Queen's Chamber
>     | `99` -- e_lokaloka_mountains - Rokhala Mountains
>     | `100` -- o_room_of_queen_2 - Queen's Chamber
>     | `101` -- o_room_of_queen_3 - Burnt Castle Cellar
>     | `102` -- o_candlestick_of_sea - Aegis Island
>     | `103` -- o_whale_song_bay - Whalesong Harbor
>     | `104` -- s_whale_swell_strait - Whaleswell Straits
>     | `105` -- instance_hanging_gardens_of_ipna - Ipnysh Sanctuary
>     | `106` -- instance_festival_training_camp_1on1 - Snowball Arena
>     | `107` -- o_hirama_the_west - Western Hiram Mountains
>     | `108` -- instance_golden_plains - Golden Plains Battle
>     | `109` -- instance_golden_plains_war - Golden Plains Battle
>     | `110` -- o_hirama_the_east - Eastern Hiram Mountains
>     | `111` -- instance_library_new_boss_1 - Screening Hall (Disabled)
>     | `112` -- instance_library_new_boss_2 - Frozen Study (Disabled)
>     | `113` -- instance_library_new_boss_3 - Deranged Bookroom (Disabled)
>     | `114` -- test_arcaneearth - Corner Reading Room (Disabled)
>     | `115` -- instance_library_new_heart - Heart of Ayanad (Disabled)
>     | `116` -- library_lobby_1f - Unused
>     | `117` -- library_lobby_2f - Verdant Skychamber (Disabled)
>     | `118` -- library_lobby_3f - Evening Botanica (Disabled)
>     | `119` -- library_lobby_4f - Constellation Breakroom (Disabled)
>     | `120` -- instance_library_boss_total - Abyssal Library
>     | `121` -- instance_carcass - Red Dragon's Keep
>     | `122` -- instance_the_last_day_of_hiramakand - The Fall of Hiram City
>     | `125` -- instance_challenge_tower - Noryette Challenge
>     | `126` -- zonegroup_instance_defense_of_feast - Mistsong Banquet
>     | `127` -- instance_sea_survival - Naval Survival Game (test)
>     | `129` -- instance_sea_survival_2 - Stillwater Gulf
>     | `130` -- instance_eternity - Hereafter Rebellion
>     | `131` -- instance_dew_plain - Battle of Mistmerrow
>     | `132` -- instance_dewplane_boss - Kadum
>     | `133` -- the_garden - Garden of the Gods
>     | `134` -- gatekeeper_hall - Gatekeeper Hall
>     | `135` -- instance_hanuimaru_zone - Dairy Cow Dreamland
>     | `136` -- instance_restraint_of_power - Circle of Authority
>     | `137` -- instance_phantom_of_delphinad - Delphinad Mirage
>     | `138` -- instance_arena_2on2 - Test Arena
>     | `139` -- o_land_of_magic - Mysthrane Gorge
>     | `140` -- o_mount_ipnir - Ipnya Ridge
>     | `141` -- instance_garuda_nest - Skyfin War
>     | `142` -- instance_mount_ipnir_story - Queen's Altar
>     | `143` -- instance_event_camp_1on1 - Event Arena
>     | `144` -- test_cbush - Guild House
>     | `145` -- instance_black_thorn - Unused
>     | `146` -- instance_black_spike - Black Thorn Prison
>     | `147` -- o_western_prairie - Great Prairie of the West
>     | `148` -- instance_nachashgar_ancient - Greater Serpentis
>     | `149` -- instance_cuttlefish_event_zone - Squid Game Event Arena
>     | `150` -- instance_dimensional_defence - Dimensional Boundary Defense Raid
>     | `151` -- instance_event_hanuimaru - Ahnimar Event Arena
>     | `152` -- w_golden_moss_forest - Goldleaf Forest
>     | `153` -- instance_training_camp_1on1_ga - Make a Splash
>     | `154` -- instance_burntcastle_armory_nightmare - Nightmare Burnt Castle Armory
>     | `155` -- instance_divided_crossroad - Crossroads Arena
>     | `156` -- instance_noryette_battlefield - Noryette Arena
>     | `158` -- instance_life_dungeon_daru - Island of Abundance
>     | `159` -- instance_golden_plains_ga - Golden Plains Battle
> ```
> 
> See: [ImageDrawable](../objects/ImageDrawable.md#class-imagedrawable)

#### Method: GetCursorSextants
```lua
(method) WorldMap:GetCursorSextants()
  -> The: SEXTANT|nil
```
> Retrieves the sextant location of the cursor on the world map.
> 
> @*return* `The` — cursor's sextant data, or `nil` if not available.

#### Method: SetCommonFarmDrawable
```lua
(method) WorldMap:SetCommonFarmDrawable(drawable: EffectDrawable)
```
> Sets the drawable for common farm icons on the world map.
> 
> @*param* `drawable` — The drawable for the farm icon.
> 
> ```lua
> local farmDrawable = widget:CreateEffectDrawableByKey("ui/map/icon/npc_icon.dds", "portal", "overlay")
> farmDrawable:SetVisible(false)
> farmDrawable:SetEffectPriority(1, "alpha", 0.5, 0.4)
> farmDrawable:SetMoveRepeatCount(0)
> farmDrawable:SetMoveRotate(false)
> farmDrawable:SetMoveEffectType(1, "right", 0, 0, 0.4, 0.4)
> farmDrawable:SetMoveEffectEdge(1, 0.3, 0.5)
> farmDrawable:SetMoveEffectType(2, "right", 0, 0, 0.4, 0.4)
> farmDrawable:SetMoveEffectEdge(2, 0.5, 0.3)
> widget:SetCommonFarmDrawable(farmDrawable)
> ```
> See: [EffectDrawable](../objects/EffectDrawable.md#class-effectdrawable)

#### Method: GetRouteDrawable
```lua
(method) WorldMap:GetRouteDrawable(level: `1`|`2`|`3`|`4`, id: number)
  -> routeDrawable: ImageDrawable
  2. created: boolean
```
> Retrieves or creates a route drawable for a specific zoom level and ID.
> Crashes if an invalid level is provided.
> 
> @*param* `level` — The zoom level.
> 
> @*param* `id` — The route ID.
> 
> @*return* `routeDrawable` — The route drawable, empty table if the object `ImageDrawable` hasn't been imported, or `nil` if not found.
> 
> @*return* `created` — `true` if the drawable was created, `false` if it already existed.
> 
> ```lua
> level:
>     | `1` -- World
>     | `2` -- Continent
>     | `3` -- Zone
>     | `4` -- City
> ```
> 
> See: [ImageDrawable](../objects/ImageDrawable.md#class-imagedrawable)

#### Method: InitMapData
```lua
(method) WorldMap:InitMapData(width: number, height: number, tgaPath: string|"ui/map/image_map.tga", iconPath: string|"ui/map/frame_map.dds")
```
> Initializes map data with specified dimensions and texture paths. Must be
> called before showing the widget to ensure proper rendering.
> 
> @*param* `width` — The width of the map.
> 
> @*param* `height` — The height of the map.
> 
> @*param* `tgaPath` — The path to the map texture.
> 
> @*param* `iconPath` — The path to the icon texture.
> 
> ```lua
> tgaPath:
>     | "ui/map/image_map.tga"
> 
> iconPath:
>     | "ui/map/frame_map.dds"
> ```

#### Method: HideAllIconDrawable
```lua
(method) WorldMap:HideAllIconDrawable()
```
> Hides all icon drawables on the world map.

#### Method: RemovePing
```lua
(method) WorldMap:RemovePing(pingType: `1`|`2`|`3`|`4`|`5`)
```
> Removes a ping from the world map by its type.
> 
> @*param* `pingType` — The type of ping to remove.
> 
> ```lua
> pingType:
>     | `1` -- Ping
>     | `2` -- Enemy
>     | `3` -- Attack
>     | `4` -- Line
>     | `5` -- Eraser
> ```

#### Method: UpdateZoneStateDrawable
```lua
(method) WorldMap:UpdateZoneStateDrawable()
```
> Updates the zone state drawables on the world map.

