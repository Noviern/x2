# X2Unit
## Globals
**BANVOTE_TYPE_CHECK_ENABLE**

`integer`

**BANVOTE_TYPE_START_VOTE**

`integer`

**BANVOTE_TYPE_VOTE_AGREE**

`integer`

**BANVOTE_TYPE_VOTE_CLEAR**

`integer`

**BRT_CHEATING**

`integer`

**BRT_CHILLING_EFFECT**

`integer`

**BRT_NON_PARTICIPATE**

`integer`

**BRT_NO_MANNER_CHAT**

`integer`

**BRT_NO_REASON**

`integer`

**DUEL_TYPE_INVALID**

`integer`

**DUEL_TYPE_PARTY**

`integer`

**DUEL_TYPE_SOLO**

`integer`

**GAME_TYPE_BATTLE_FIELD**

`integer`

**GAME_TYPE_CONFLICT_ZONE**

`integer`

**GAME_TYPE_INDUN**

`integer`

**GAME_TYPE_NORMAL**

`integer`

**GAME_TYPE_SEAMLESS**

`integer`

**GAME_TYPE_SIEGE**

`integer`

**GENDER_FEMALE**

`integer`

**GENDER_MALE**

`integer`

**GENDER_NONE**

`integer`

**MAX_MODE_ACTION_COUNT**

`integer`

**MAX_OVER_HEAD_MARKER**

`integer`

**RACE_DARU**

`integer`

**RACE_DWARF**

`integer`

**RACE_ELF**

`integer`

**RACE_FAIRY**

`integer`

**RACE_FERRE**

`integer`

**RACE_HARIHARAN**

`integer`

**RACE_NONE**

`integer`

**RACE_NUIAN**

`integer`

**RACE_RETURNED**

`integer`

**RACE_WARBORN**

`integer`

**X2Unit**

`X2Unit`

## Aliases
**BANVOTE_TYPE**

`BANVOTE_TYPE_CHECK_ENABLE`|`BANVOTE_TYPE_START_VOTE`|`BANVOTE_TYPE_VOTE_AGREE`|`BANVOTE_TYPE_VOTE_CLEAR`

```lua
-- api/X2Unit
BANVOTE_TYPE:
    | `BANVOTE_TYPE_CHECK_ENABLE`
    | `BANVOTE_TYPE_START_VOTE`
    | `BANVOTE_TYPE_VOTE_AGREE`
    | `BANVOTE_TYPE_VOTE_CLEAR`
```

**BAN_REASON_TYPE**

`BRT_CHEATING`|`BRT_CHILLING_EFFECT`|`BRT_NON_PARTICIPATE`|`BRT_NO_MANNER_CHAT`|`BRT_NO_REASON`

```lua
-- api/X2Unit
BAN_REASON_TYPE:
    | `BRT_CHEATING`
    | `BRT_CHILLING_EFFECT`
    | `BRT_NON_PARTICIPATE`
    | `BRT_NO_MANNER_CHAT`
    | `BRT_NO_REASON`
```

**DUEL_TYPE**

`DUEL_TYPE_INVALID`|`DUEL_TYPE_PARTY`|`DUEL_TYPE_SOLO`

```lua
-- api/X2Unit
DUEL_TYPE:
    | `DUEL_TYPE_INVALID`
    | `DUEL_TYPE_PARTY`
    | `DUEL_TYPE_SOLO`
```

**GAME_TYPE**

`GAME_TYPE_BATTLE_FIELD`|`GAME_TYPE_CONFLICT_ZONE`|`GAME_TYPE_INDUN`|`GAME_TYPE_NORMAL`|`GAME_TYPE_SEAMLESS`...(+1)

```lua
-- api/X2Unit
GAME_TYPE:
    | `GAME_TYPE_BATTLE_FIELD`
    | `GAME_TYPE_CONFLICT_ZONE`
    | `GAME_TYPE_INDUN`
    | `GAME_TYPE_NORMAL`
    | `GAME_TYPE_SEAMLESS`
    | `GAME_TYPE_SIEGE`
```

**GENDER_ID**

`GENDER_FEMALE`|`GENDER_MALE`|`GENDER_NONE`

```lua
-- api/X2Unit
GENDER_ID:
    | `GENDER_FEMALE` -- 2
    | `GENDER_MALE` -- 1
    | `GENDER_NONE` -- 0
```

**RACE_ID**

`RACE_DARU`|`RACE_DWARF`|`RACE_ELF`|`RACE_FAIRY`|`RACE_FERRE`...(+5)

```lua
-- api/X2Unit
RACE_ID:
    | `RACE_DARU` -- 9
    | `RACE_DWARF` -- 3
    | `RACE_ELF` -- 4
    | `RACE_FAIRY` -- 2
    | `RACE_FERRE` -- 6
    | `RACE_HARIHARAN` -- 5
    | `RACE_NONE` -- 0
    | `RACE_NUIAN` -- 1
    | `RACE_RETURNED` -- 7
    | `RACE_WARBORN` -- 8
```

## Classes
### Class: X2Unit
#### Method: GetCurrentZoneGroup
```lua
(method) X2Unit:GetCurrentZoneGroup()
  -> currentZoneGroup: `0`|`100`|`101`|`102`|`103`...(+151)
```
> Retrieves the current zone group ID.
> 
> @*return* `currentZoneGroup` — The current zone group ID.
> 
> ```lua
> -- Obtained from db zone_groups
> currentZoneGroup:
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

#### Method: UnitHiddenBuffCount
```lua
(method) X2Unit:UnitHiddenBuffCount(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> unitHiddenBuffCount: number
```
> Retrieves the number of hidden buffs on the specified unit if in render
> range.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `unitHiddenBuffCount` — The number of hidden buffs, or 0 if not in range.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: UnitHiddenBuffTooltip
```lua
(method) X2Unit:UnitHiddenBuffTooltip(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153), buffIndex: number, neededInfo?: `BIK_DESCRIPTION`|`BIK_RUNTIME_ALL`|`BIK_RUNTIME_DURATION`|`BIK_RUNTIME_MINE`|`BIK_RUNTIME_STACK`...(+1))
  -> unitHiddenBuffTooltip: BuffTooltip|nil
```
> Retrieves the hidden buff tooltip for the specified buff index of the unit if
> it exists.
> 
> @*param* `unit` — The unit to query.
> 
> @*param* `buffIndex` — The hidden buff index. (min: `1`)
> 
> @*param* `neededInfo` — Optional additional information for the buff.
> 
> @*return* `unitHiddenBuffTooltip` — The hidden buff tooltip, or `nil` if not found.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> 
> -- api/X2Ability
> -- Values can be added together to get more information. (e.g, `BIK_DESCRIPTION + BIK_RUNTIME_DURATION`)
> neededInfo:
>     | `BIK_DESCRIPTION`
>     | `BIK_RUNTIME_ALL`
>     | `BIK_RUNTIME_DURATION`
>     | `BIK_RUNTIME_MINE`
>     | `BIK_RUNTIME_STACK`
>     | `BIK_RUNTIME_TIMELEFT`
> ```
> 
> See: [BuffTooltip](../types/classes.md#class-bufftooltip)

#### Method: UnitLevel
```lua
(method) X2Unit:UnitLevel(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> unitLevel: number|`ABILITY_ACTIVATION_LEVEL_1`|`ABILITY_ACTIVATION_LEVEL_2`|`ABILITY_ACTIVATION_LEVEL_3`|nil
```
> Retrieves the level of the specified unit if it exists.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `unitLevel` — The unit's level (1 to 55), or `nil` if not found.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> 
> -- api/X2Ability
> unitLevel:
>     | `ABILITY_ACTIVATION_LEVEL_1`
>     | `ABILITY_ACTIVATION_LEVEL_2`
>     | `ABILITY_ACTIVATION_LEVEL_3`
> ```

#### Method: UnitHiddenBuff
```lua
(method) X2Unit:UnitHiddenBuff(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153), buffIndex: number)
  -> unitHiddenBuffInfo: BuffInfo
```
> Retrieves hidden buff information for the specified buff index of the unit if
> it exists.
> 
> @*param* `unit` — The unit to query.
> 
> @*param* `buffIndex` — The hidden buff index. (min: `1`)
> 
> @*return* `unitHiddenBuffInfo` — The hidden buff information, or an empty table if not found.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```
> 
> See: [BuffInfo](../types/classes.md#class-buffinfo)

#### Method: UnitHealth
```lua
(method) X2Unit:UnitHealth(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> unitHealth: string|nil
```
> Retrieves the health of the specified unit if it exists.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `unitHealth` — The unit's health, or `nil` if not found.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: UnitHealthInfo
```lua
(method) X2Unit:UnitHealthInfo(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> unitCurrentHealth: string
  2. unitMaxHealth: string
  3. unitHealthPercentage: string
```
> Retrieves the current health, maximum health, and health percentage of the
> specified unit.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `unitCurrentHealth` — The current health, or "0" if not found.
> 
> @*return* `unitMaxHealth` — The maximum health, or "0" if not found.
> 
> @*return* `unitHealthPercentage` — The health percentage, or "0" if not found.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: UnitGearScore
```lua
(method) X2Unit:UnitGearScore(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153), comma: boolean)
  -> result: boolean|string
```
> Retrieves the gear score of the specified unit within visual range or a
> boolean indicating if the unit exists.
> 
> @*param* `unit` — The unit to query.
> 
> @*param* `comma` — `true` to include a comma, `false` otherwise. `UIParent:SetUseInsertComma` may be required depending on the user's language.
> 
> @*return* `result` — The gear score as a string, or `false` if the unit does not exist.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: UnitMana
```lua
(method) X2Unit:UnitMana(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> unitCurrentMana: string|nil
```
> Retrieves the current mana of the specified unit if it exists.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `unitCurrentMana` — The unit's current mana, or `nil` if not found.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: UnitMaxHealth
```lua
(method) X2Unit:UnitMaxHealth(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> unitMaxHealth: string|nil
```
> Retrieves the maximum health of the specified unit if it exists.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `unitMaxHealth` — The unit's maximum health, or `nil` if not found.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: UnitRemovableDebuff
```lua
(method) X2Unit:UnitRemovableDebuff(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153), deBuffIndex: number)
  -> removableDebuff: BuffInfo|nil
```
> Retrieves the removable debuff for the specified buff index of the unit if it
> exists.
> 
> @*param* `unit` — The unit to query.
> 
> @*param* `deBuffIndex` — The debuff index. (min: `1`)
> 
> @*return* `removableDebuff` — The removable debuff information, or `nil` if not found.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: UnitManaInfo
```lua
(method) X2Unit:UnitManaInfo(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> unitCurrentMana: string
  2. unitMaxMana: string
  3. unitManaPercentage: string
```
> Retrieves the current mana, maximum mana, and mana percentage of the
> specified unit.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `unitCurrentMana` — The current mana, or "0" if not found.
> 
> @*return* `unitMaxMana` — The maximum mana, or "0" if not found.
> 
> @*return* `unitManaPercentage` — The mana percentage, or "0" if not found.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: UnitNameWithWorld
```lua
(method) X2Unit:UnitNameWithWorld(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> unitNameWithWorld: string|nil
```
> Retrieves the name with world information of the specified unit if it exists.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `unitNameWithWorld` — The unit's name with world info, or `nil` if not found.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: UnitMaxMana
```lua
(method) X2Unit:UnitMaxMana(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> unitMaxMana: string|nil
```
> Retrieves the maximum mana of the specified unit if it exists.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `unitMaxMana` — The unit's maximum mana, or `nil` if not found.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: UnitName
```lua
(method) X2Unit:UnitName(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> unitName: string|nil
```
> Retrieves the name of the specified unit if it exists.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `unitName` — The unit's name, or `nil` if not found.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: UnitRemovableDebuffCount
```lua
(method) X2Unit:UnitRemovableDebuffCount(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> removableDebuffCount: number|nil
```
> Retrieves the number of removable debuffs on the specified unit if in render
> range.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `removableDebuffCount` — The number of removable debuffs, or `nil` if none exist.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: UnitDistance
```lua
(method) X2Unit:UnitDistance(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> unitDistance: UnitDistance|nil
```
> Retrieves the distance between the player and the specified unit's boundary
> box if in render range.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `unitDistance` — The distance information, or `nil` if not in range.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```
> 
> See: [UnitDistance](../types/classes.md#class-unitdistance)

#### Method: UnitDeBuffCount
```lua
(method) X2Unit:UnitDeBuffCount(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> unitDeBuffCount: number
```
> Retrieves the number of debuffs on the specified unit if in render range.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `unitDeBuffCount` — The number of debuffs, or 0 if not in range.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: GetUnitInfoById
```lua
(method) X2Unit:GetUnitInfoById(unitId: string)
  -> unitInfo: UnitInfo|nil
```
> Retrieves unit information for the specified unit ID if in render range.
> 
> @*param* `unitId` — The unit ID.
> 
> @*return* `unitInfo` — The unit information, or `nil` if not in range.
> 
> See: [UnitInfo](../types/classes.md#class-unitinfo)

#### Method: GetUnitNameById
```lua
(method) X2Unit:GetUnitNameById(unitId: string)
  -> unitName: string|nil
```
> Retrieves the name of the unit for the specified unit ID if in render range.
> 
> @*param* `unitId` — The unit ID.
> 
> @*return* `unitName` — The unit name, or `nil` if not in range.

#### Method: GetUnitId
```lua
(method) X2Unit:GetUnitId(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> unitId: string|nil
```
> Retrieves the unit ID for the specified unit if in render range.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `unitId` — The unit ID, or `nil` if not in range.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: GetTargetAbilityTemplates
```lua
(method) X2Unit:GetTargetAbilityTemplates(target: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> targetAbilityTemplates: TargetAbility[]|nil
```
> Retrieves a list of up to three target ability templates for the specified
> target if in render range.
> 
> @*param* `target` — The target unit.
> 
> @*return* `targetAbilityTemplates` — A table of ability templates, or `nil` if not in range.
> 
> ```lua
> target:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```
> 
> See: [TargetAbility](../types/classes.md#class-targetability)

#### Method: GetTargetUnitId
```lua
(method) X2Unit:GetTargetUnitId()
  -> unitId: string|nil
```
> Retrieves the unit ID of the current target if in render range.
> 
> @*return* `unitId` — The target's unit ID, or `nil` if not in range.

#### Method: UnitDeBuffTooltip
```lua
(method) X2Unit:UnitDeBuffTooltip(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153), deBuffIndex: number, neededInfo?: `BIK_DESCRIPTION`|`BIK_RUNTIME_ALL`|`BIK_RUNTIME_DURATION`|`BIK_RUNTIME_MINE`|`BIK_RUNTIME_STACK`...(+1))
  -> unitDebuffTooltip: BuffTooltip|nil
```
> Retrieves the debuff tooltip for the specified buff index of the unit if in
> render range.
> 
> @*param* `unit` — The unit to query.
> 
> @*param* `deBuffIndex` — The debuff index. (min: `1`)
> 
> @*param* `neededInfo` — Optional additional information for the buff.
> 
> @*return* `unitDebuffTooltip` — The debuff tooltip, or `nil` if not in range.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> 
> -- api/X2Ability
> -- Values can be added together to get more information. (e.g, `BIK_DESCRIPTION + BIK_RUNTIME_DURATION`)
> neededInfo:
>     | `BIK_DESCRIPTION`
>     | `BIK_RUNTIME_ALL`
>     | `BIK_RUNTIME_DURATION`
>     | `BIK_RUNTIME_MINE`
>     | `BIK_RUNTIME_STACK`
>     | `BIK_RUNTIME_TIMELEFT`
> ```
> 
> See: [BuffTooltip](../types/classes.md#class-bufftooltip)

#### Method: GetUnitScreenPosition
```lua
(method) X2Unit:GetUnitScreenPosition(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> x: number|nil
  2. y: number|nil
  3. z: number|nil
```
> Retrieves the screen position (x, y, z) of the specified unit if in render
> range.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `x` — The UI scaled x-coordinate, or `nil` if not in range.
> 
> @*return* `y` — The UI scaled y-coordinate, or `nil` if not in range.
> 
> @*return* `z` — The UI scaled z-coordinate, or `nil` if not in range.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: UnitBuff
```lua
(method) X2Unit:UnitBuff(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153), buffIndex: number)
  -> unitBuffInfo: BuffInfo
```
> Retrieves buff information for the specified buff index of the unit if in
> render range.
> 
> @*param* `unit` — The unit to query.
> 
> @*param* `buffIndex` — The buff index. (min: `1`)
> 
> @*return* `unitBuffInfo` — The buff information, or an empty table if not in range.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```
> 
> See: [BuffInfo](../types/classes.md#class-buffinfo)

#### Method: UnitDeBuff
```lua
(method) X2Unit:UnitDeBuff(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153), deBuffIndex: number)
  -> unitDebuffInfo: BuffInfo
```
> Retrieves debuff information for the specified buff index of the unit if in
> render range.
> 
> @*param* `unit` — The unit to query.
> 
> @*param* `deBuffIndex` — The debuff index. (min: `1`)
> 
> @*return* `unitDebuffInfo` — The debuff information, or an empty table if not in range.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```
> 
> See: [BuffInfo](../types/classes.md#class-buffinfo)

#### Method: GetUnitWorldPositionByTarget
```lua
(method) X2Unit:GetUnitWorldPositionByTarget(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153), isLocal: boolean)
  -> x: number|nil
  2. y: number|nil
  3. z: number|nil
  4. angle: number|nil
```
> Retrieves the world position (x, y, z) and angle of the specified unit if in
> render range.
> 
> @*param* `unit` — The unit to query.
> 
> @*param* `isLocal` — `true` to use local coordinates, `false` otherwise.
> 
> @*return* `x` — The x-coordinate, or `nil` if not in range.
> 
> @*return* `y` — The y-coordinate, or `nil` if not in range.
> 
> @*return* `z` — The z-coordinate, or `nil` if not in range.
> 
> @*return* `angle` — The unit's angle, or `nil` if not in range.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: UnitCastingInfo
```lua
(method) X2Unit:UnitCastingInfo(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> unitCastingInfo: CastingInfo|nil
```
> Retrieves casting information for the specified unit if in render range.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `unitCastingInfo` — The casting information, or `nil` if not in range.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```
> 
> See: [CastingInfo](../types/classes.md#class-castinginfo)

#### Method: UnitBuffCount
```lua
(method) X2Unit:UnitBuffCount(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153))
  -> unitBuffCount: number
```
> Retrieves the number of buffs on the specified unit if in render range.
> 
> @*param* `unit` — The unit to query.
> 
> @*return* `unitBuffCount` — The number of buffs, or 0 if not in range.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> ```

#### Method: UnitBuffTooltip
```lua
(method) X2Unit:UnitBuffTooltip(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153), buffIndex: number, neededInfo?: `BIK_DESCRIPTION`|`BIK_RUNTIME_ALL`|`BIK_RUNTIME_DURATION`|`BIK_RUNTIME_MINE`|`BIK_RUNTIME_STACK`...(+1))
  -> unitBuffTooltip: BuffTooltip|nil
```
> Retrieves the buff tooltip for the specified buff index of the unit if in
> render range.
> 
> @*param* `unit` — The unit to query.
> 
> @*param* `buffIndex` — The buff index. (min: `1`)
> 
> @*param* `neededInfo` — Optional additional information for the buff.
> 
> @*return* `unitBuffTooltip` — The buff tooltip, or `nil` if not in range.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> 
> -- api/X2Ability
> -- Values can be added together to get more information. (e.g, `BIK_DESCRIPTION + BIK_RUNTIME_DURATION`)
> neededInfo:
>     | `BIK_DESCRIPTION`
>     | `BIK_RUNTIME_ALL`
>     | `BIK_RUNTIME_DURATION`
>     | `BIK_RUNTIME_MINE`
>     | `BIK_RUNTIME_STACK`
>     | `BIK_RUNTIME_TIMELEFT`
> ```
> 
> See: [BuffTooltip](../types/classes.md#class-bufftooltip)

#### Method: UnitRemovableDebuffTooltip
```lua
(method) X2Unit:UnitRemovableDebuffTooltip(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153), deBuffIndex: number, neededInfo?: `BIK_DESCRIPTION`|`BIK_RUNTIME_ALL`|`BIK_RUNTIME_DURATION`|`BIK_RUNTIME_MINE`|`BIK_RUNTIME_STACK`...(+1))
  -> removableDebuffTooltip: BuffInfo|nil
```
> Retrieves the removable debuff tooltip for the specified buff index of the
> unit if it exists.
> 
> @*param* `unit` — The unit to query.
> 
> @*param* `deBuffIndex` — The debuff index. (min: `1`)
> 
> @*param* `neededInfo` — Optional additional information for the buff.
> 
> @*return* `removableDebuffTooltip` — The removable debuff tooltip info, or `nil` if not found.
> 
> ```lua
> unit:
>     | "player"
>     | "target"
>     | "targettarget"
>     | "watchtarget"
>     | "playerpet" -- mount/pet
>     | "playerpet1" -- mount
>     | "playerpet2" -- pet
>     | "slave"
>     | "team1" -- team = the current raid/can be co raid
>     | "team2"
>     | "team3"
>     | "team4"
>     | "team5"
>     | "team6"
>     | "team7"
>     | "team8"
>     | "team9"
>     | "team10"
>     | "team11"
>     | "team12"
>     | "team13"
>     | "team14"
>     | "team15"
>     | "team16"
>     | "team17"
>     | "team18"
>     | "team19"
>     | "team20"
>     | "team21"
>     | "team22"
>     | "team23"
>     | "team24"
>     | "team25"
>     | "team26"
>     | "team27"
>     | "team28"
>     | "team29"
>     | "team30"
>     | "team31"
>     | "team32"
>     | "team33"
>     | "team34"
>     | "team35"
>     | "team36"
>     | "team37"
>     | "team38"
>     | "team39"
>     | "team40"
>     | "team41"
>     | "team42"
>     | "team43"
>     | "team44"
>     | "team45"
>     | "team46"
>     | "team47"
>     | "team48"
>     | "team49"
>     | "team50"
>     | "team_1_1"
>     | "team_1_2"
>     | "team_1_3"
>     | "team_1_4"
>     | "team_1_5"
>     | "team_1_6"
>     | "team_1_7"
>     | "team_1_8"
>     | "team_1_9"
>     | "team_1_10"
>     | "team_1_11"
>     | "team_1_12"
>     | "team_1_13"
>     | "team_1_14"
>     | "team_1_15"
>     | "team_1_16"
>     | "team_1_17"
>     | "team_1_18"
>     | "team_1_19"
>     | "team_1_20"
>     | "team_1_21"
>     | "team_1_22"
>     | "team_1_23"
>     | "team_1_24"
>     | "team_1_25"
>     | "team_1_26"
>     | "team_1_27"
>     | "team_1_28"
>     | "team_1_29"
>     | "team_1_30"
>     | "team_1_31"
>     | "team_1_32"
>     | "team_1_33"
>     | "team_1_34"
>     | "team_1_35"
>     | "team_1_36"
>     | "team_1_37"
>     | "team_1_38"
>     | "team_1_39"
>     | "team_1_40"
>     | "team_1_41"
>     | "team_1_42"
>     | "team_1_43"
>     | "team_1_44"
>     | "team_1_45"
>     | "team_1_46"
>     | "team_1_47"
>     | "team_1_48"
>     | "team_1_49"
>     | "team_1_50"
>     | "team_2_1"
>     | "team_2_2"
>     | "team_2_3"
>     | "team_2_4"
>     | "team_2_5"
>     | "team_2_6"
>     | "team_2_7"
>     | "team_2_8"
>     | "team_2_9"
>     | "team_2_10"
>     | "team_2_11"
>     | "team_2_12"
>     | "team_2_13"
>     | "team_2_14"
>     | "team_2_15"
>     | "team_2_16"
>     | "team_2_17"
>     | "team_2_18"
>     | "team_2_19"
>     | "team_2_20"
>     | "team_2_21"
>     | "team_2_22"
>     | "team_2_23"
>     | "team_2_24"
>     | "team_2_25"
>     | "team_2_26"
>     | "team_2_27"
>     | "team_2_28"
>     | "team_2_29"
>     | "team_2_30"
>     | "team_2_31"
>     | "team_2_32"
>     | "team_2_33"
>     | "team_2_34"
>     | "team_2_35"
>     | "team_2_36"
>     | "team_2_37"
>     | "team_2_38"
>     | "team_2_39"
>     | "team_2_40"
>     | "team_2_41"
>     | "team_2_42"
>     | "team_2_43"
>     | "team_2_44"
>     | "team_2_45"
>     | "team_2_46"
>     | "team_2_47"
>     | "team_2_48"
>     | "team_2_49"
>     | "team_2_50"
> 
> -- api/X2Ability
> -- Values can be added together to get more information. (e.g, `BIK_DESCRIPTION + BIK_RUNTIME_DURATION`)
> neededInfo:
>     | `BIK_DESCRIPTION`
>     | `BIK_RUNTIME_ALL`
>     | `BIK_RUNTIME_DURATION`
>     | `BIK_RUNTIME_MINE`
>     | `BIK_RUNTIME_STACK`
>     | `BIK_RUNTIME_TIMELEFT`
> ```

