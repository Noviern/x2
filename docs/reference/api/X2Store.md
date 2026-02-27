# X2Store
## Globals
**CURRENCY_AA_POINT**

`integer`

**CURRENCY_CONTRIBUTION_POINT**

`integer`

**CURRENCY_GOLD**

`integer`

**CURRENCY_GOLD_WITH_AA_POINT**

`integer`

**CURRENCY_HONOR_POINT**

`integer`

**CURRENCY_ITEM_POINT**

`integer`

**CURRENCY_LIVING_POINT**

`integer`

**GAMEPOINT_LEADERSHIP**

`integer`

**MPT_ALLWAYS**

`integer`

**MPT_DALIY**

`integer`

**MPT_MONTHLY**

`integer`

**MPT_WEEKLY**

`integer`

**RANDOM_SHOP_REFRESH**

`integer`

**SHOP_OPEN_BATTLEFIELD**

`integer`

**SHOP_OPEN_CONTRIBUTION**

`integer`

**SHOP_OPEN_DIRECT_RANDOM_SHOP**

`integer`

**SHOP_OPEN_HONORPOINT**

`integer`

**SHOP_OPEN_LIVINGPOINT**

`integer`

**SHOP_OPEN_NORMAL**

`integer`

**SHOP_OPEN_RANDOM_SHOP**

`integer`

**X2Store**

`X2Store`

## Aliases
**CURRENCY**

`CURRENCY_AA_POINT`|`CURRENCY_CONTRIBUTION_POINT`|`CURRENCY_GOLD_WITH_AA_POINT`|`CURRENCY_GOLD`|`CURRENCY_HONOR_POINT`...(+2)

```lua
-- api/X2Store
CURRENCY:
    | `CURRENCY_AA_POINT`
    | `CURRENCY_CONTRIBUTION_POINT`
    | `CURRENCY_GOLD`
    | `CURRENCY_GOLD_WITH_AA_POINT`
    | `CURRENCY_HONOR_POINT`
    | `CURRENCY_ITEM_POINT`
    | `CURRENCY_LIVING_POINT`
```

**MPT**

`MPT_ALLWAYS`|`MPT_DALIY`|`MPT_MONTHLY`|`MPT_WEEKLY`

```lua
-- api/X2Store
-- Market Period Time
MPT:
    | `MPT_ALLWAYS`
    | `MPT_DALIY`
    | `MPT_MONTHLY`
    | `MPT_WEEKLY`
```

**SHOP_OPEN**

`SHOP_OPEN_BATTLEFIELD`|`SHOP_OPEN_CONTRIBUTION`|`SHOP_OPEN_DIRECT_RANDOM_SHOP`|`SHOP_OPEN_HONORPOINT`|`SHOP_OPEN_LIVINGPOINT`...(+2)

```lua
-- api/X2Store
SHOP_OPEN:
    | `SHOP_OPEN_BATTLEFIELD`
    | `SHOP_OPEN_CONTRIBUTION`
    | `SHOP_OPEN_DIRECT_RANDOM_SHOP`
    | `SHOP_OPEN_HONORPOINT`
    | `SHOP_OPEN_LIVINGPOINT`
    | `SHOP_OPEN_NORMAL`
    | `SHOP_OPEN_RANDOM_SHOP`
```

## Classes
### Class: X2Store
#### Method: GetProductionZoneGroups
```lua
(method) X2Store:GetProductionZoneGroups()
  -> productionZoneGroups: ZoneInfo[]
```
> Retrieves a list of zone information for all zones where packs can be
> crafted.
> 
> @*return* `productionZoneGroups` — A table of zone information for the production zone groups.
> 
> See: [ZoneInfo](../types/classes.md#class-zoneinfo)

#### Method: GetSpecialtyRatioBetween
```lua
(method) X2Store:GetSpecialtyRatioBetween(fromZoneGroup: `0`|`100`|`101`|`102`|`103`...(+151), toZoneGroup: `0`|`100`|`101`|`102`|`103`...(+151))
  -> cooldownTime: number
```
> Retrieves the cooldown time and triggers the `SPECIALTY_RATIO_BETWEEN_INFO`
> event.
> 
> @*param* `fromZoneGroup` — The source zone ID.
> 
> @*param* `toZoneGroup` — The destination zone ID.
> 
> @*return* `cooldownTime` — The cooldown time in milliseconds.
> 
> ```lua
> local sellableZoneGroups = X2Store:GetSellableZoneGroups(1)
> local cooldownTime = X2Store:GetSpecialtyRatioBetween(1, sellableZoneGroups[1].id)
> ```
> 
> ```lua
> -- Obtained from db zone_groups
> fromZoneGroup:
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
> 
> -- Obtained from db zone_groups
> toZoneGroup:
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

#### Method: GetSpecialtyRatio
```lua
(method) X2Store:GetSpecialtyRatio()
  -> specialtyRatio: number
```
> Retrieves the specialty ratio.
> 
> @*return* `specialtyRatio` — The specialty ratio.

#### Method: GetSellableZoneGroups
```lua
(method) X2Store:GetSellableZoneGroups(fromZoneGroup: `0`|`100`|`101`|`102`|`103`...(+151))
  -> sellableZoneGroups: ZoneInfo[]
```
> Retrieves a list of zone information for all zones where a pack crafted in
> the specified zone can be turned in.
> 
> @*param* `fromZoneGroup` — The source zone ID.
> 
> @*return* `sellableZoneGroups` — A table of zone information for the sellable zone groups.
> 
> ```lua
> -- Obtained from db zone_groups
> fromZoneGroup:
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
> See: [ZoneInfo](../types/classes.md#class-zoneinfo)

#### Method: GetZoneSpecialtyRatio
```lua
(method) X2Store:GetZoneSpecialtyRatio()
```
> Retrieves the specialty ratio for zones. Triggers the
> `SELL_SPECIALTY_CONTENT_INFO` event.

