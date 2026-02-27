# ModelView
## Classes
### Class: ModelView
Extends [Widget](../types/Widget.md#class-widget)

> [ModelView](../types/ModelView.md#class-modelview)
> 
> A `ModelView` widget is a 3D model viewer that allows displaying,
> customizing, and interacting with unit or character models. Supports
> rotating, zooming, camera adjustments, equipping items, beauty shop
> customization, facial parameters, animations, and color adjustments.
> Customization features include hair, eyes, eyebrows, lips, scars, tattoos,
> horns, tail, and clothing, with support for two-tone hair and item dyeing.
> 
#### Method: AddModelPosX
```lua
(method) ModelView:AddModelPosX(offset: number)
```


#### Method: SetCustomizingHair
```lua
(method) ModelView:SetCustomizingHair(index: number)
```
> Sets the custom hair index.

#### Method: SetCustomizingHairColor
```lua
(method) ModelView:SetCustomizingHairColor(infos: CustomHairColor)
```
> Sets the custom hair color.
> ```lua
> widget:SetCustomizingHairColor({
>   defaultR = 255,
>   defaultB = 0,
>   defaultG = 0,
>   twoToneR = 0,
>   twoToneG = 0,
>   twoToneB = 0,
>   firstWidth = .5,
>   secondWidth = .6,
> })
> ```
> See: [CustomHairColor](../types/classes.md#class-customhaircolor)

#### Method: SetCustomizingFaceNormal
```lua
(method) ModelView:SetCustomizingFaceNormal(index: number, weight: number)
```
> Sets the custom face normal index and weight.
> 
> @*param* `weight` — (min: `0`, max: `1`)

#### Method: SetCustomizingFaceDiffuse
```lua
(method) ModelView:SetCustomizingFaceDiffuse(index: number)
```
> Sets the custom face diffuse index.

#### Method: SetCustomizingEyebrowColor
```lua
(method) ModelView:SetCustomizingEyebrowColor(r: number, g: number, b: number)
```
> Sets the custom eyebrow color.
> 
> @*param* `r` — (min: `0`, max: `255`)
> 
> @*param* `g` — (min: `0`, max: `255`)
> 
> @*param* `b` — (min: `0`, max: `255`)

#### Method: SetCustomizingHairDefaultColor
```lua
(method) ModelView:SetCustomizingHairDefaultColor(infos: CustomizingHairDefaultColor)
```
> Sets the default custom hair color.
> ```lua
> widget:SetCustomizingHairDefaultColor({
>   defaultR = 255,
>   defaultG = 0,
>   defaultB = 0,
> })
> ```
> See: [CustomizingHairDefaultColor](../types/classes.md#class-customizinghairdefaultcolor)

#### Method: SetCustomizingHorn
```lua
(method) ModelView:SetCustomizingHorn(index: number)
```
> Sets the custom horn index.

#### Method: SetCustomizingHairTwoToneColor
```lua
(method) ModelView:SetCustomizingHairTwoToneColor(infos: CustomizingHairTwoToneColor)
```
> Sets the two-tone custom hair color.
> ```lua
> widget:SetCustomizingHairTwoToneColor({
>   twoToneR = 0,
>   twoToneG = 0,
>   twoToneB = 0,
>   firstWidth = .5,
>   secondWidth = .6
> })
> ```
> See: [CustomizingHairTwoToneColor](../types/classes.md#class-customizinghairtwotonecolor)

#### Method: SetCustomizingLipColor
```lua
(method) ModelView:SetCustomizingLipColor(r: number, g: number, b: number)
```
> Sets the custom lip color.
> 
> @*param* `r` — (min: `0`, max: `255`)
> 
> @*param* `g` — (min: `0`, max: `255`)
> 
> @*param* `b` — (min: `0`, max: `255`)

#### Method: SetCustomizingHornColor
```lua
(method) ModelView:SetCustomizingHornColor(index: number)
```
> Sets the custom horn color index.
> 
> @*param* `index` — (min: `1`, max: `8`)

#### Method: SetCustomizingMakeUp
```lua
(method) ModelView:SetCustomizingMakeUp(index: number, weight: number)
```
> Sets the custom makeup index and weight.
> 
> @*param* `weight` — (min: `0`, max: `1`)

#### Method: SetCustomizingEyebrow
```lua
(method) ModelView:SetCustomizingEyebrow(index: number)
```
> Sets the custom eyebrow index.

#### Method: SetCustomizingDeco
```lua
(method) ModelView:SetCustomizingDeco(index: number, weight: number)
```
> Sets the custom decoration index and weight.
> 
> @*param* `weight` — (min: `0`, max: `1`)

#### Method: ResetEquips
```lua
(method) ModelView:ResetEquips()
```
> Resets changes to the model's equipment.

#### Method: ResetModelPos
```lua
(method) ModelView:ResetModelPos()
```


#### Method: ResetBeautyShop
```lua
(method) ModelView:ResetBeautyShop()
```
> Resets the beauty shop settings.

#### Method: RemoveEquipSlot
```lua
(method) ModelView:RemoveEquipSlot(index: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27))
```
> Removes an item from the specified equipment slot.
> 
> ```lua
> -- api/X2Equipment
> index:
>     | `ES_ARMS`
>     | `ES_BACK`
>     | `ES_BACKPACK`
>     | `ES_BEARD`
>     | `ES_BODY`
>     | `ES_CHEST`
>     | `ES_COSPLAY`
>     | `ES_COSPLAYLOOKS`
>     | `ES_EAR_1`
>     | `ES_EAR_2`
>     | `ES_FACE`
>     | `ES_FEET`
>     | `ES_FINGER_1`
>     | `ES_FINGER_2`
>     | `ES_GLASSES`
>     | `ES_HAIR`
>     | `ES_HANDS`
>     | `ES_HEAD`
>     | `ES_HORNS`
>     | `ES_INVALID`
>     | `ES_LEGS`
>     | `ES_MAINHAND`
>     | `ES_MUSICAL`
>     | `ES_NECK`
>     | `ES_OFFHAND`
>     | `ES_RACE_COSPLAY`
>     | `ES_RACE_COSPLAYLOOKS`
>     | `ES_RANGED`
>     | `ES_TAIL`
>     | `ES_UNDERPANTS`
>     | `ES_UNDERSHIRT`
>     | `ES_WAIST`
> ```

#### Method: SetCustomizingDecoColor
```lua
(method) ModelView:SetCustomizingDecoColor(r: number, g: number, b: number)
```
> Sets the custom decoration color.
> 
> @*param* `r` — (min: `0`, max: `255`)
> 
> @*param* `g` — (min: `0`, max: `255`)
> 
> @*param* `b` — (min: `0`, max: `255`)

#### Method: ResetZoom
```lua
(method) ModelView:ResetZoom()
```


#### Method: SetBeautyShopMode
```lua
(method) ModelView:SetBeautyShopMode(beautyShop: boolean)
```
> Sets the beauty shop mode for the ModelView.

#### Method: SetBackColor
```lua
(method) ModelView:SetBackColor(r: number, g: number, b: number)
```
> Sets the background color for the ModelView.

#### Method: SetCustomizingBodyNormal
```lua
(method) ModelView:SetCustomizingBodyNormal(index: number, weight: number)
```
> Sets the custom body normal index and weight.
> 
> @*param* `weight` — (min: `0`, max: `1`)

#### Method: SetCameraPos
```lua
(method) ModelView:SetCameraPos(x: number, y: number, z: number)
```
> Sets the camera position for the ModelView.

#### Method: PlayAnimation
```lua
(method) ModelView:PlayAnimation(name: "additive_all_co_combat_miss"|"additive_all_re_combat_confuse"|"additive_all_re_combat_hit_b"|"additive_all_re_combat_hit_f"|"additive_all_re_combat_hit_l"...(+2091), loop: boolean)
```
> Plays an animation for the ModelView.
> 
> ```lua
> name:
>     | "additive_all_co_combat_miss"
>     | "additive_all_re_combat_confuse"
>     | "additive_all_re_combat_hit_b"
>     | "additive_all_re_combat_hit_f"
>     | "additive_all_re_combat_hit_l"
>     | "additive_all_re_combat_hit_r"
>     | "additive_all_re_combat_miss"
>     | "additive_all_re_relaxed_hit"
>     | "additive_all_re_relaxed_hit_b"
>     | "additive_all_re_relaxed_hit_f"
>     | "additive_all_re_relaxed_hit_l"
>     | "additive_all_re_relaxed_hit_r"
>     | "additive_dragon_plasma_ba_relaxed_idle"
>     | "additive_fist_ac_board_f"
>     | "additive_fist_ac_board_idle"
>     | "additive_fist_ac_gliding"
>     | "additive_fist_ac_gliding_2"
>     | "additive_fist_ac_gliding_3"
>     | "additive_fist_ba_turnhead_d"
>     | "additive_fist_ba_turnhead_l"
>     | "additive_fist_ba_turnhead_r"
>     | "additive_fist_mo_normal_run_f_2"
>     | "additive_fist_mo_normal_run_f_3"
>     | "additive_fist_mo_normal_run_f_4"
>     | "additive_fist_mo_normal_run_f_5"
>     | "additive_fist_mo_normal_run_f_6"
>     | "additive_fist_mo_normal_run_f_7"
>     | "additive_horse_ba_relaxed_idle_foldlegs"
>     | "additive_lion_ba_relaxed_idle"
>     | "additive_pangolin_ba_relaxed_idle"
>     | "additive_seabug_ba_relaxed_idle"
>     | "all_co_sk_arrest_cast"
>     | "all_co_sk_arrest_cast_start"
>     | "all_co_sk_arrest_launch_end"
>     | "all_co_sk_arrest_launch_loop"
>     | "all_co_sk_arrest_launch_start"
>     | "all_co_sk_backstep"
>     | "all_co_sk_backstep_diff"
>     | "all_co_sk_buff_cast_defense"
>     | "all_co_sk_buff_cast_mental"
>     | "all_co_sk_buff_cast_resist"
>     | "all_co_sk_buff_channel_force"
>     | "all_co_sk_buff_channel_special"
>     | "all_co_sk_buff_launch_alterego_l"
>     | "all_co_sk_buff_launch_alterego_l_mub"
>     | "all_co_sk_buff_launch_alterego_r"
>     | "all_co_sk_buff_launch_alterego_r_mub"
>     | "all_co_sk_buff_launch_berserk"
>     | "all_co_sk_buff_launch_defense"
>     | "all_co_sk_buff_launch_defense_mub"
>     | "all_co_sk_buff_launch_dragon"
>     | "all_co_sk_buff_launch_force"
>     | "all_co_sk_buff_launch_force_mub"
>     | "all_co_sk_buff_launch_mana"
>     | "all_co_sk_buff_launch_mana_mub"
>     | "all_co_sk_buff_launch_mental"
>     | "all_co_sk_buff_launch_mental_mub"
>     | "all_co_sk_buff_launch_resist"
>     | "all_co_sk_buff_launch_resist_mub"
>     | "all_co_sk_buff_launch_special"
>     | "all_co_sk_buff_launch_special_mub"
>     | "all_co_sk_buff_launch_teleport_mub"
>     | "all_co_sk_buff_launch_unslow"
>     | "all_co_sk_dashattack"
>     | "all_co_sk_dashattack_2"
>     | "all_co_sk_dashattack_2_mub"
>     | "all_co_sk_dashattack_2_ub"
>     | "all_co_sk_dashattack_mub"
>     | "all_co_sk_dashattack_ub"
>     | "all_co_sk_flyingkick"
>     | "all_co_sk_holdthrow_cast"
>     | "all_co_sk_holdthrow_launch"
>     | "all_co_sk_hovering"
>     | "all_co_sk_hovering_2"
>     | "all_co_sk_leapattack"
>     | "all_co_sk_leapattack_2"
>     | "all_co_sk_leapattack_diff"
>     | "all_co_sk_leapattack_diff2"
>     | "all_co_sk_lowkick"
>     | "all_co_sk_pull_cast"
>     | "all_co_sk_shout"
>     | "all_co_sk_shout_2"
>     | "all_co_sk_shout_mub"
>     | "all_co_sk_spell_cast_angersnake"
>     | "all_co_sk_spell_cast_bless"
>     | "all_co_sk_spell_cast_cold"
>     | "all_co_sk_spell_cast_combatrevival"
>     | "all_co_sk_spell_cast_crosslight"
>     | "all_co_sk_spell_cast_crosslight_mub"
>     | "all_co_sk_spell_cast_cure"
>     | "all_co_sk_spell_cast_d"
>     | "all_co_sk_spell_cast_dead"
>     | "all_co_sk_spell_cast_destroysword"
>     | "all_co_sk_spell_cast_energyshot"
>     | "all_co_sk_spell_cast_fireball"
>     | "all_co_sk_spell_cast_flash"
>     | "all_co_sk_spell_cast_love"
>     | "all_co_sk_spell_cast_meteor"
>     | "all_co_sk_spell_cast_meteor_dragon"
>     | "all_co_sk_spell_cast_missile"
>     | "all_co_sk_spell_cast_poisonsword"
>     | "all_co_sk_spell_cast_rescue"
>     | "all_co_sk_spell_cast_rescue2"
>     | "all_co_sk_spell_cast_shield"
>     | "all_co_sk_spell_cast_spear"
>     | "all_co_sk_spell_cast_spread"
>     | "all_co_sk_spell_cast_summon"
>     | "all_co_sk_spell_cast_swich"
>     | "all_co_sk_spell_cast_thunderbolt"
>     | "all_co_sk_spell_cast_thunderbolt_mub"
>     | "all_co_sk_spell_cast_tug"
>     | "all_co_sk_spell_cast_union"
>     | "all_co_sk_spell_channel_cure"
>     | "all_co_sk_spell_channel_dragon"
>     | "all_co_sk_spell_channel_medusa"
>     | "all_co_sk_spell_channel_meteor"
>     | "all_co_sk_spell_channel_meteor_end"
>     | "all_co_sk_spell_channel_meteor_start"
>     | "all_co_sk_spell_channel_pray"
>     | "all_co_sk_spell_channel_sorb"
>     | "all_co_sk_spell_channel_tug"
>     | "all_co_sk_spell_channel_zero"
>     | "all_co_sk_spell_launch_all"
>     | "all_co_sk_spell_launch_all_mub"
>     | "all_co_sk_spell_launch_angersnake"
>     | "all_co_sk_spell_launch_angersnake_mub"
>     | "all_co_sk_spell_launch_bless"
>     | "all_co_sk_spell_launch_bless_mub"
>     | "all_co_sk_spell_launch_cold"
>     | "all_co_sk_spell_launch_cold_mub"
>     | "all_co_sk_spell_launch_combatrevival"
>     | "all_co_sk_spell_launch_combatrevival_mub"
>     | "all_co_sk_spell_launch_crosslight"
>     | "all_co_sk_spell_launch_crosslight_mub"
>     | "all_co_sk_spell_launch_dead"
>     | "all_co_sk_spell_launch_dead_mub"
>     | "all_co_sk_spell_launch_destroysword"
>     | "all_co_sk_spell_launch_devilsword"
>     | "all_co_sk_spell_launch_dragonwind"
>     | "all_co_sk_spell_launch_d_mub"
>     | "all_co_sk_spell_launch_energyshot"
>     | "all_co_sk_spell_launch_energyshot_2"
>     | "all_co_sk_spell_launch_energyshot_2_mub"
>     | "all_co_sk_spell_launch_energyshot_3"
>     | "all_co_sk_spell_launch_energyshot_3_mub"
>     | "all_co_sk_spell_launch_energyshot_mub"
>     | "all_co_sk_spell_launch_fastmove"
>     | "all_co_sk_spell_launch_fepee"
>     | "all_co_sk_spell_launch_fepee_mub"
>     | "all_co_sk_spell_launch_field"
>     | "all_co_sk_spell_launch_field_mub"
>     | "all_co_sk_spell_launch_fireball"
>     | "all_co_sk_spell_launch_fireball2_mub"
>     | "all_co_sk_spell_launch_fireball_2"
>     | "all_co_sk_spell_launch_fireball_2_mub"
>     | "all_co_sk_spell_launch_fireball_3"
>     | "all_co_sk_spell_launch_fireball_3_mub"
>     | "all_co_sk_spell_launch_fireball_mub"
>     | "all_co_sk_spell_launch_flash"
>     | "all_co_sk_spell_launch_flash_mub"
>     | "all_co_sk_spell_launch_flow"
>     | "all_co_sk_spell_launch_ground_mub"
>     | "all_co_sk_spell_launch_inhalation"
>     | "all_co_sk_spell_launch_love"
>     | "all_co_sk_spell_launch_love_mub"
>     | "all_co_sk_spell_launch_l_diff"
>     | "all_co_sk_spell_launch_l_diff_mub"
>     | "all_co_sk_spell_launch_l_mub"
>     | "all_co_sk_spell_launch_meteor"
>     | "all_co_sk_spell_launch_meteor_dragon_mub"
>     | "all_co_sk_spell_launch_meteor_mub"
>     | "all_co_sk_spell_launch_missile"
>     | "all_co_sk_spell_launch_missile_mub"
>     | "all_co_sk_spell_launch_nd"
>     | "all_co_sk_spell_launch_nd_mub"
>     | "all_co_sk_spell_launch_poisonsword"
>     | "all_co_sk_spell_launch_pthrow"
>     | "all_co_sk_spell_launch_rescue"
>     | "all_co_sk_spell_launch_rescue2"
>     | "all_co_sk_spell_launch_rescue2_mub"
>     | "all_co_sk_spell_launch_rescue_mub"
>     | "all_co_sk_spell_launch_r_diff"
>     | "all_co_sk_spell_launch_r_diff_mub"
>     | "all_co_sk_spell_launch_r_mub"
>     | "all_co_sk_spell_launch_shield"
>     | "all_co_sk_spell_launch_site"
>     | "all_co_sk_spell_launch_site_mub"
>     | "all_co_sk_spell_launch_smoke"
>     | "all_co_sk_spell_launch_spear"
>     | "all_co_sk_spell_launch_spear_diff"
>     | "all_co_sk_spell_launch_spear_diff2"
>     | "all_co_sk_spell_launch_spear_diff2_mub"
>     | "all_co_sk_spell_launch_spear_diff_mub"
>     | "all_co_sk_spell_launch_spear_mub"
>     | "all_co_sk_spell_launch_spread"
>     | "all_co_sk_spell_launch_spread_mub"
>     | "all_co_sk_spell_launch_summon"
>     | "all_co_sk_spell_launch_summon_mub"
>     | "all_co_sk_spell_launch_swich"
>     | "all_co_sk_spell_launch_swich2"
>     | "all_co_sk_spell_launch_swich2_mub"
>     | "all_co_sk_spell_launch_swich_mub"
>     | "all_co_sk_spell_launch_thunderbolt"
>     | "all_co_sk_spell_launch_thunderbolt2"
>     | "all_co_sk_spell_launch_thunderbolt_2_mub"
>     | "all_co_sk_spell_launch_thunderbolt_3_mub"
>     | "all_co_sk_spell_launch_thunderbolt_4_mub"
>     | "all_co_sk_spell_launch_thunderbolt_mub"
>     | "all_co_sk_spell_launch_union"
>     | "all_co_sk_spell_launch_vitality"
>     | "all_co_sk_spell_launch_whip"
>     | "all_co_sk_spell_launch_whip_mub"
>     | "all_co_sk_swim_backstep"
>     | "all_co_sk_swim_buff_cast_defense"
>     | "all_co_sk_swim_buff_cast_mana"
>     | "all_co_sk_swim_buff_cast_mental"
>     | "all_co_sk_swim_buff_channel_force"
>     | "all_co_sk_swim_buff_channel_special"
>     | "all_co_sk_swim_buff_launch_alterego_l"
>     | "all_co_sk_swim_buff_launch_alterego_r"
>     | "all_co_sk_swim_buff_launch_defense"
>     | "all_co_sk_swim_buff_launch_dragon"
>     | "all_co_sk_swim_buff_launch_force"
>     | "all_co_sk_swim_buff_launch_mana"
>     | "all_co_sk_swim_buff_launch_mental"
>     | "all_co_sk_swim_buff_launch_special"
>     | "all_co_sk_swim_buff_launch_teleport"
>     | "all_co_sk_swim_dashattack_2_ub"
>     | "all_co_sk_swim_dashattack_ub"
>     | "all_co_sk_swim_flyingkick_ub"
>     | "all_co_sk_swim_holdthrow_cast"
>     | "all_co_sk_swim_holdthrow_launch_ub"
>     | "all_co_sk_swim_leapattack"
>     | "all_co_sk_swim_leapattack_2"
>     | "all_co_sk_swim_pull_cast"
>     | "all_co_sk_swim_shout"
>     | "all_co_sk_swim_spell_cast_angersnake"
>     | "all_co_sk_swim_spell_cast_bless"
>     | "all_co_sk_swim_spell_cast_cold"
>     | "all_co_sk_swim_spell_cast_combatrevival"
>     | "all_co_sk_swim_spell_cast_d"
>     | "all_co_sk_swim_spell_cast_dead"
>     | "all_co_sk_swim_spell_cast_destroysword"
>     | "all_co_sk_swim_spell_cast_energyshot"
>     | "all_co_sk_swim_spell_cast_fireball"
>     | "all_co_sk_swim_spell_cast_flash"
>     | "all_co_sk_swim_spell_cast_love"
>     | "all_co_sk_swim_spell_cast_medusa"
>     | "all_co_sk_swim_spell_cast_meteor"
>     | "all_co_sk_swim_spell_cast_meteor_dragon"
>     | "all_co_sk_swim_spell_cast_missile"
>     | "all_co_sk_swim_spell_cast_poisonsword"
>     | "all_co_sk_swim_spell_cast_rescue"
>     | "all_co_sk_swim_spell_cast_rescue2"
>     | "all_co_sk_swim_spell_cast_shield"
>     | "all_co_sk_swim_spell_cast_spear"
>     | "all_co_sk_swim_spell_cast_spread"
>     | "all_co_sk_swim_spell_cast_summon"
>     | "all_co_sk_swim_spell_cast_swich"
>     | "all_co_sk_swim_spell_cast_tug"
>     | "all_co_sk_swim_spell_cast_vitality"
>     | "all_co_sk_swim_spell_channel_cure"
>     | "all_co_sk_swim_spell_channel_dragon"
>     | "all_co_sk_swim_spell_channel_medusa"
>     | "all_co_sk_swim_spell_channel_pray"
>     | "all_co_sk_swim_spell_channel_sorb"
>     | "all_co_sk_swim_spell_channel_tug"
>     | "all_co_sk_swim_spell_channel_zero"
>     | "all_co_sk_swim_spell_launch_all"
>     | "all_co_sk_swim_spell_launch_bless"
>     | "all_co_sk_swim_spell_launch_cold"
>     | "all_co_sk_swim_spell_launch_combatrevival"
>     | "all_co_sk_swim_spell_launch_d"
>     | "all_co_sk_swim_spell_launch_dead"
>     | "all_co_sk_swim_spell_launch_devilsword"
>     | "all_co_sk_swim_spell_launch_energyshot"
>     | "all_co_sk_swim_spell_launch_energyshot_2"
>     | "all_co_sk_swim_spell_launch_energyshot_3"
>     | "all_co_sk_swim_spell_launch_fepee"
>     | "all_co_sk_swim_spell_launch_field"
>     | "all_co_sk_swim_spell_launch_fireball"
>     | "all_co_sk_swim_spell_launch_fireball_2"
>     | "all_co_sk_swim_spell_launch_fireball_3"
>     | "all_co_sk_swim_spell_launch_ground"
>     | "all_co_sk_swim_spell_launch_l"
>     | "all_co_sk_swim_spell_launch_meteor"
>     | "all_co_sk_swim_spell_launch_meteor_dragon"
>     | "all_co_sk_swim_spell_launch_missile"
>     | "all_co_sk_swim_spell_launch_nd"
>     | "all_co_sk_swim_spell_launch_r"
>     | "all_co_sk_swim_spell_launch_rescue"
>     | "all_co_sk_swim_spell_launch_shield"
>     | "all_co_sk_swim_spell_launch_site"
>     | "all_co_sk_swim_spell_launch_spear"
>     | "all_co_sk_swim_spell_launch_summon"
>     | "all_co_sk_swim_spell_launch_thunderbolt"
>     | "all_co_sk_swim_spell_launch_thunderbolt_2"
>     | "all_co_sk_swim_spell_launch_thunderbolt_3"
>     | "all_co_sk_swim_spell_launch_thunderbolt_4"
>     | "all_co_sk_swim_spell_launch_thunderbolt_5"
>     | "all_co_sk_swim_spell_launch_union"
>     | "all_co_sk_swim_spell_launch_vitality"
>     | "all_co_sk_swim_spell_launch_whip"
>     | "all_co_sk_swim_transformation"
>     | "all_co_sk_swim_whirlwind_cast"
>     | "all_co_sk_swim_whirlwind_launch_ub"
>     | "all_co_sk_underthrow"
>     | "all_co_sk_underthrow_mub"
>     | "all_co_sk_whirlwind_launch"
>     | "all_re_combat_airtied"
>     | "all_re_combat_crash"
>     | "all_re_combat_crash_end"
>     | "all_re_combat_crash_start"
>     | "all_re_combat_critical"
>     | "all_re_combat_critical_mub"
>     | "all_re_combat_crow"
>     | "all_re_combat_dead_end"
>     | "all_re_combat_dead_start"
>     | "all_re_combat_dodge"
>     | "all_re_combat_dodge_mub"
>     | "all_re_combat_fall"
>     | "all_re_combat_hit"
>     | "all_re_combat_hit_l"
>     | "all_re_combat_hit_l_mub"
>     | "all_re_combat_hit_mub"
>     | "all_re_combat_hit_r"
>     | "all_re_combat_hit_r_mub"
>     | "all_re_combat_knockback"
>     | "all_re_combat_knockback_b_start"
>     | "all_re_combat_knockback_start"
>     | "all_re_combat_pull"
>     | "all_re_combat_struggle"
>     | "all_re_combat_struggle_2"
>     | "all_re_combat_stun"
>     | "all_re_combat_stun_2"
>     | "all_re_combat_swim_stun"
>     | "all_re_combat_swim_stun_start"
>     | "all_re_combat_tied"
>     | "all_re_relaxed_hit"
>     | "all_re_relaxed_hit_mub"
>     | "bear_spell_launch_d"
>     | "bear_spell_launch_d_2"
>     | "bear_spell_launch_nd"
>     | "bow_co_attack"
>     | "bow_co_attack_mub"
>     | "bow_co_sk_cast"
>     | "bow_co_sk_cast_2"
>     | "bow_co_sk_cast_2_ub"
>     | "bow_co_sk_cast_3"
>     | "bow_co_sk_cast_3_ub"
>     | "bow_co_sk_cast_4"
>     | "bow_co_sk_cast_4_ub"
>     | "bow_co_sk_cast_5"
>     | "bow_co_sk_cast_5_ub"
>     | "bow_co_sk_cast_6"
>     | "bow_co_sk_cast_start"
>     | "bow_co_sk_cast_start_2"
>     | "bow_co_sk_cast_start_2_diff"
>     | "bow_co_sk_cast_start_2_ub"
>     | "bow_co_sk_cast_start_3"
>     | "bow_co_sk_cast_start_4"
>     | "bow_co_sk_cast_start_4_ub"
>     | "bow_co_sk_cast_start_5"
>     | "bow_co_sk_cast_start_5_ub"
>     | "bow_co_sk_cast_start_6"
>     | "bow_co_sk_cast_start_ub"
>     | "bow_co_sk_cast_ub"
>     | "bow_co_sk_high_cast"
>     | "bow_co_sk_high_cast_start"
>     | "bow_co_sk_high_cast_start_ub"
>     | "bow_co_sk_high_cast_ub"
>     | "bow_co_sk_high_launch"
>     | "bow_co_sk_high_launch_mub"
>     | "bow_co_sk_high_launch_ub"
>     | "bow_co_sk_launch"
>     | "bow_co_sk_launch_2"
>     | "bow_co_sk_launch_2_diff"
>     | "bow_co_sk_launch_2_diff_start"
>     | "bow_co_sk_launch_2_mub"
>     | "bow_co_sk_launch_3"
>     | "bow_co_sk_launch_3_mub"
>     | "bow_co_sk_launch_4"
>     | "bow_co_sk_launch_4_mub"
>     | "bow_co_sk_launch_5"
>     | "bow_co_sk_launch_5_mub"
>     | "bow_co_sk_launch_6"
>     | "bow_co_sk_launch_beastrush"
>     | "bow_co_sk_launch_beastrush_mub"
>     | "bow_co_sk_launch_differ_mub"
>     | "bow_co_sk_launch_flame_loop"
>     | "bow_co_sk_launch_mub"
>     | "bow_co_sk_launch_skill_cast"
>     | "bow_co_sk_launch_skill_launch"
>     | "bow_co_sk_launch_skill_loop"
>     | "bow_co_sk_launch_snakeeye"
>     | "bow_co_sk_launch_snakeeye_2"
>     | "bow_co_sk_launch_snakeeye_2_mub"
>     | "bow_co_sk_launch_snakeeye_3"
>     | "bow_co_sk_launch_snakeeye_3_mub"
>     | "bow_co_sk_launch_snakeeye_mub"
>     | "bow_co_sk_swim_cast"
>     | "bow_co_sk_swim_cast_2"
>     | "bow_co_sk_swim_cast_3"
>     | "bow_co_sk_swim_cast_4"
>     | "bow_co_sk_swim_cast_5"
>     | "bow_co_sk_swim_cast_5_ub"
>     | "bow_co_sk_swim_cast_6"
>     | "bow_co_sk_swim_cast_start"
>     | "bow_co_sk_swim_cast_start_2"
>     | "bow_co_sk_swim_cast_start_3"
>     | "bow_co_sk_swim_cast_start_4"
>     | "bow_co_sk_swim_cast_start_5"
>     | "bow_co_sk_swim_cast_start_6"
>     | "bow_co_sk_swim_high_cast"
>     | "bow_co_sk_swim_high_cast_start"
>     | "bow_co_sk_swim_launch_2_ub"
>     | "bow_co_sk_swim_launch_4_ub"
>     | "bow_co_sk_swim_launch_5_ub"
>     | "bow_co_sk_swim_launch_beastrush"
>     | "bow_co_sk_swim_launch_snakeeye"
>     | "bow_co_sk_swim_launch_ub"
>     | "bow_co_swim_attack_mub"
>     | "bow_shotgun_co_sk_cast_approach"
>     | "bow_shotgun_co_sk_cast_lightning"
>     | "bow_shotgun_co_sk_launch_approach"
>     | "bow_shotgun_co_sk_launch_corrode"
>     | "bow_shotgun_co_sk_launch_extensive"
>     | "bow_shotgun_co_sk_launch_finish"
>     | "bow_shotgun_co_sk_launch_infection"
>     | "bow_shotgun_co_sk_launch_notice"
>     | "bow_shotgun_co_sk_launch_revenge"
>     | "bow_shotgun_co_sk_launch_revenge_ub"
>     | "bow_shotgun_co_sk_launch_shoot_1"
>     | "bow_shotgun_co_sk_launch_shoot_2"
>     | "bow_shotgun_co_sk_swim_cast_lightning_ub"
>     | "bow_shotgun_co_sk_swim_launch_approach_ub"
>     | "bow_shotgun_co_sk_swim_launch_extensive_ub"
>     | "bow_shotgun_co_sk_swim_launch_infection_ub"
>     | "bow_shotgun_co_sk_swim_launch_revenge_ub"
>     | "dancer_co_sk_cast_naima"
>     | "dancer_co_sk_channel_empty"
>     | "dancer_co_sk_channel_naima"
>     | "dancer_co_sk_channel_phantom"
>     | "dancer_co_sk_channel_recovery"
>     | "dancer_co_sk_channel_weakness"
>     | "dancer_co_sk_launch_blessing"
>     | "dancer_co_sk_launch_commune"
>     | "dancer_co_sk_launch_maximize"
>     | "dancer_co_sk_launch_oneheart"
>     | "dancer_co_sk_launch_touch_1"
>     | "dancer_co_sk_launch_touch_1_ub"
>     | "dancer_co_sk_launch_touch_2"
>     | "dancer_co_sk_launch_whistle"
>     | "dancer_co_sk_swim_cast_naima_ub"
>     | "dancer_co_sk_swim_channel_empty_ub"
>     | "dancer_co_sk_swim_channel_naima_ub"
>     | "dancer_co_sk_swim_channel_phantom_ub"
>     | "dancer_co_sk_swim_channel_recovery_ub"
>     | "dancer_co_sk_swim_channel_weakness_ub"
>     | "dancer_co_sk_swim_launch_blessing_ub"
>     | "dancer_co_sk_swim_launch_commune_ub"
>     | "dancer_co_sk_swim_launch_maximize_ub"
>     | "dancer_co_sk_swim_launch_oneheart_ub"
>     | "dancer_co_sk_swim_launch_shock_ub"
>     | "dancer_co_sk_swim_launch_touch_1_ub"
>     | "dancer_co_sk_swim_launch_touch_2_ub"
>     | "dancer_co_sk_swim_launch_whistle_ub"
>     | "dragdor_ba_relaxed_idle_rand_1"
>     | "elephant_ba_passenger_idle"
>     | "elephant_mo_relaxed_idletorun_f"
>     | "fist_ac_anchor_steer_l_mub"
>     | "fist_ac_anchor_steer_r_mub"
>     | "fist_ac_ballista_fire"
>     | "fist_ac_ballista_idle"
>     | "fist_ac_ballista_release"
>     | "fist_ac_ballista_winding"
>     | "fist_ac_bathtub_loop"
>     | "fist_ac_bathtub_mermaid_loop"
>     | "fist_ac_bathtub_start"
>     | "fist_ac_bear_b_geton"
>     | "fist_ac_bear_f_geton"
>     | "fist_ac_bear_r_geton"
>     | "fist_ac_beggar_01_end"
>     | "fist_ac_beggar_01_loop"
>     | "fist_ac_beggar_01_start"
>     | "fist_ac_bicycle_idle"
>     | "fist_ac_bicycle_steering"
>     | "fist_ac_boarding"
>     | "fist_ac_boarding_backward"
>     | "fist_ac_board_b"
>     | "fist_ac_board_flip"
>     | "fist_ac_board_idle"
>     | "fist_ac_board_jump"
>     | "fist_ac_board_launch"
>     | "fist_ac_burden"
>     | "fist_ac_cannon_fire"
>     | "fist_ac_cannon_idle"
>     | "fist_ac_cannon_standby"
>     | "fist_ac_captain_transform"
>     | "fist_ac_captain_transform_2"
>     | "fist_ac_capture_cast"
>     | "fist_ac_capture_launch"
>     | "fist_ac_carbed_end"
>     | "fist_ac_carbed_loop"
>     | "fist_ac_carbed_start"
>     | "fist_ac_catapult_a_fire"
>     | "fist_ac_choice"
>     | "fist_ac_clear_end"
>     | "fist_ac_clear_loop"
>     | "fist_ac_clear_start"
>     | "fist_ac_cooking_end"
>     | "fist_ac_cooking_loop"
>     | "fist_ac_cooking_start"
>     | "fist_ac_cough"
>     | "fist_ac_cough_mub"
>     | "fist_ac_coupleduckship_b"
>     | "fist_ac_coupleduckship_f"
>     | "fist_ac_coupleduckship_idle"
>     | "fist_ac_doll_end"
>     | "fist_ac_doll_loop"
>     | "fist_ac_doll_start"
>     | "fist_ac_drink"
>     | "fist_ac_drink_mub"
>     | "fist_ac_eat"
>     | "fist_ac_eatherb"
>     | "fist_ac_eatherb_mub"
>     | "fist_ac_eatsuop"
>     | "fist_ac_eatsuop_loop"
>     | "fist_ac_eatsuop_mub"
>     | "fist_ac_eat_mub"
>     | "fist_ac_elephant_b_geton"
>     | "fist_ac_elephant_f_geton"
>     | "fist_ac_elephant_r_geton"
>     | "fist_ac_ent_b_geton"
>     | "fist_ac_ent_f_geton"
>     | "fist_ac_ent_r_geton"
>     | "fist_ac_excavate_brushing"
>     | "fist_ac_excavate_brushing_end"
>     | "fist_ac_excavate_brushing_start"
>     | "fist_ac_falldownfull"
>     | "fist_ac_falldown_end"
>     | "fist_ac_falldown_loop"
>     | "fist_ac_falldown_start"
>     | "fist_ac_feedingfull"
>     | "fist_ac_feeding_end"
>     | "fist_ac_feeding_loop"
>     | "fist_ac_feeding_start"
>     | "fist_ac_felly_end"
>     | "fist_ac_fepeedance"
>     | "fist_ac_fepeedance02"
>     | "fist_ac_fepeedance03"
>     | "fist_ac_fepeeflag_end"
>     | "fist_ac_fepeeflag_loop"
>     | "fist_ac_fepeeflag_start"
>     | "fist_ac_furcuting_end"
>     | "fist_ac_furcuting_start"
>     | "fist_ac_get_fruit_end"
>     | "fist_ac_get_fruit_loop"
>     | "fist_ac_get_fruit_start"
>     | "fist_ac_give"
>     | "fist_ac_give_mub"
>     | "fist_ac_gliding_back"
>     | "fist_ac_gliding_backflip"
>     | "fist_ac_gliding_bl"
>     | "fist_ac_gliding_board_back"
>     | "fist_ac_gliding_board_bl"
>     | "fist_ac_gliding_board_boost"
>     | "fist_ac_gliding_board_br"
>     | "fist_ac_gliding_board_end"
>     | "fist_ac_gliding_board_fl"
>     | "fist_ac_gliding_board_fr"
>     | "fist_ac_gliding_board_grounding"
>     | "fist_ac_gliding_board_left"
>     | "fist_ac_gliding_board_right"
>     | "fist_ac_gliding_board_sliding"
>     | "fist_ac_gliding_board_start"
>     | "fist_ac_gliding_board_turbulence_back"
>     | "fist_ac_gliding_board_turbulence_l"
>     | "fist_ac_gliding_board_turbulence_r"
>     | "fist_ac_gliding_board_turbulence_up"
>     | "fist_ac_gliding_br"
>     | "fist_ac_gliding_broom_back"
>     | "fist_ac_gliding_broom_bl"
>     | "fist_ac_gliding_broom_br"
>     | "fist_ac_gliding_broom_end"
>     | "fist_ac_gliding_broom_fl"
>     | "fist_ac_gliding_broom_fr"
>     | "fist_ac_gliding_broom_front"
>     | "fist_ac_gliding_broom_left"
>     | "fist_ac_gliding_broom_right"
>     | "fist_ac_gliding_broom_sliding"
>     | "fist_ac_gliding_broom_sliding_end"
>     | "fist_ac_gliding_broom_telpo_end"
>     | "fist_ac_gliding_broom_turbulence_back"
>     | "fist_ac_gliding_broom_turbulence_l"
>     | "fist_ac_gliding_broom_turbulence_r"
>     | "fist_ac_gliding_broom_turbulence_up"
>     | "fist_ac_gliding_carpet_bl"
>     | "fist_ac_gliding_carpet_boost"
>     | "fist_ac_gliding_carpet_boost2"
>     | "fist_ac_gliding_carpet_br"
>     | "fist_ac_gliding_carpet_fl"
>     | "fist_ac_gliding_carpet_fr"
>     | "fist_ac_gliding_carpet_front"
>     | "fist_ac_gliding_carpet_grounding"
>     | "fist_ac_gliding_carpet_idle"
>     | "fist_ac_gliding_carpet_left"
>     | "fist_ac_gliding_carpet_right"
>     | "fist_ac_gliding_carpet_sliding"
>     | "fist_ac_gliding_carpet_start"
>     | "fist_ac_gliding_carpet_telpo"
>     | "fist_ac_gliding_carpet_turbulence_back"
>     | "fist_ac_gliding_eagle_boost"
>     | "fist_ac_gliding_eagle_end"
>     | "fist_ac_gliding_eagle_fl"
>     | "fist_ac_gliding_eagle_fr"
>     | "fist_ac_gliding_eagle_front"
>     | "fist_ac_gliding_eagle_grounding"
>     | "fist_ac_gliding_eagle_idle"
>     | "fist_ac_gliding_eagle_left"
>     | "fist_ac_gliding_eagle_right"
>     | "fist_ac_gliding_eagle_sliding"
>     | "fist_ac_gliding_eagle_start"
>     | "fist_ac_gliding_fl"
>     | "fist_ac_gliding_fr"
>     | "fist_ac_gliding_hot_air_balloon_back"
>     | "fist_ac_gliding_hot_air_balloon_bl"
>     | "fist_ac_gliding_hot_air_balloon_boost"
>     | "fist_ac_gliding_hot_air_balloon_br"
>     | "fist_ac_gliding_hot_air_balloon_end"
>     | "fist_ac_gliding_hot_air_balloon_fl"
>     | "fist_ac_gliding_hot_air_balloon_fr"
>     | "fist_ac_gliding_hot_air_balloon_front"
>     | "fist_ac_gliding_hot_air_balloon_idle"
>     | "fist_ac_gliding_hot_air_balloon_left"
>     | "fist_ac_gliding_hot_air_balloon_right"
>     | "fist_ac_gliding_hot_air_balloon_sliding"
>     | "fist_ac_gliding_hot_air_balloon_start"
>     | "fist_ac_gliding_hot_air_balloon_turbulence_l"
>     | "fist_ac_gliding_hot_air_balloon_turbulence_r"
>     | "fist_ac_gliding_hot_air_balloon_turbulence_up"
>     | "fist_ac_gliding_idle"
>     | "fist_ac_gliding_left"
>     | "fist_ac_gliding_panda_back"
>     | "fist_ac_gliding_panda_bomb"
>     | "fist_ac_gliding_panda_boost"
>     | "fist_ac_gliding_panda_end"
>     | "fist_ac_gliding_panda_fl"
>     | "fist_ac_gliding_panda_fr"
>     | "fist_ac_gliding_panda_front"
>     | "fist_ac_gliding_panda_idle"
>     | "fist_ac_gliding_panda_launch"
>     | "fist_ac_gliding_panda_left"
>     | "fist_ac_gliding_panda_right"
>     | "fist_ac_gliding_panda_spin"
>     | "fist_ac_gliding_panda_spin2"
>     | "fist_ac_gliding_panda_start"
>     | "fist_ac_gliding_panda_tumbling_back"
>     | "fist_ac_gliding_panda_tumbling_front"
>     | "fist_ac_gliding_phonix_cast"
>     | "fist_ac_gliding_phonix_launch"
>     | "fist_ac_gliding_right"
>     | "fist_ac_gliding_rocket_back"
>     | "fist_ac_gliding_rocket_backtumbling"
>     | "fist_ac_gliding_rocket_bl"
>     | "fist_ac_gliding_rocket_boost"
>     | "fist_ac_gliding_rocket_br"
>     | "fist_ac_gliding_rocket_end"
>     | "fist_ac_gliding_rocket_fl"
>     | "fist_ac_gliding_rocket_fr"
>     | "fist_ac_gliding_rocket_front"
>     | "fist_ac_gliding_rocket_grounding"
>     | "fist_ac_gliding_rocket_grounding_end"
>     | "fist_ac_gliding_rocket_idle"
>     | "fist_ac_gliding_rocket_left"
>     | "fist_ac_gliding_rocket_right"
>     | "fist_ac_gliding_rocket_sliding"
>     | "fist_ac_gliding_rocket_start"
>     | "fist_ac_gliding_rocket_turbulence_back"
>     | "fist_ac_gliding_rocket_turbulence_l"
>     | "fist_ac_gliding_rocket_turbulence_r"
>     | "fist_ac_gliding_rocket_turbulence_up"
>     | "fist_ac_gliding_sliding"
>     | "fist_ac_gliding_spin"
>     | "fist_ac_gliding_spin2"
>     | "fist_ac_gliding_start"
>     | "fist_ac_gliding_tumbling_front"
>     | "fist_ac_gliding_turnleft"
>     | "fist_ac_gliding_turnright"
>     | "fist_ac_gliding_umbrella_back"
>     | "fist_ac_gliding_umbrella_bl"
>     | "fist_ac_gliding_umbrella_boost"
>     | "fist_ac_gliding_umbrella_br"
>     | "fist_ac_gliding_umbrella_fl"
>     | "fist_ac_gliding_umbrella_fr"
>     | "fist_ac_gliding_umbrella_front_start"
>     | "fist_ac_gliding_umbrella_idle"
>     | "fist_ac_gliding_umbrella_leapattack_launch"
>     | "fist_ac_gliding_umbrella_leapattack_launch_end"
>     | "fist_ac_gliding_umbrella_left"
>     | "fist_ac_gliding_umbrella_right"
>     | "fist_ac_gliding_umbrella_sliding"
>     | "fist_ac_gliding_umbrella_start"
>     | "fist_ac_gliding_umbrella_turbulence_back"
>     | "fist_ac_gliding_umbrella_turbulence_l"
>     | "fist_ac_gliding_umbrella_turbulence_up"
>     | "fist_ac_gliding_wing_attack_launch_01"
>     | "fist_ac_gliding_wing_attack_launch_02"
>     | "fist_ac_gliding_wing_back"
>     | "fist_ac_gliding_wing_bl"
>     | "fist_ac_gliding_wing_boost"
>     | "fist_ac_gliding_wing_bow_attack"
>     | "fist_ac_gliding_wing_bow_launch"
>     | "fist_ac_gliding_wing_br"
>     | "fist_ac_gliding_wing_end"
>     | "fist_ac_gliding_wing_fl"
>     | "fist_ac_gliding_wing_fr"
>     | "fist_ac_gliding_wing_front"
>     | "fist_ac_gliding_wing_grounding"
>     | "fist_ac_gliding_wing_grounding_end"
>     | "fist_ac_gliding_wing_idle"
>     | "fist_ac_gliding_wing_leapattack_dash"
>     | "fist_ac_gliding_wing_leapattack_launch"
>     | "fist_ac_gliding_wing_right"
>     | "fist_ac_gliding_wing_sliding"
>     | "fist_ac_gliding_wing_spell_attack"
>     | "fist_ac_gliding_wing_spell_launch_02"
>     | "fist_ac_gliding_wing_start"
>     | "fist_ac_gliding_wing_telpo_l"
>     | "fist_ac_gliding_wing_telpo_r"
>     | "fist_ac_gliding_wing_turbulence_back"
>     | "fist_ac_gliding_wing_turbulence_l"
>     | "fist_ac_gliding_wing_turbulence_r"
>     | "fist_ac_gliding_wing_turbulence_up"
>     | "fist_ac_gubuksun_oar_l_idle_a"
>     | "fist_ac_gubuksun_oar_l_idle_b"
>     | "fist_ac_gubuksun_oar_l_run_a"
>     | "fist_ac_gubuksun_oar_l_run_b"
>     | "fist_ac_gubuksun_oar_r_idle_a"
>     | "fist_ac_gubuksun_oar_r_idle_b"
>     | "fist_ac_gubuksun_oar_r_run_a"
>     | "fist_ac_gubuksun_oar_r_run_b"
>     | "fist_ac_hammer_end"
>     | "fist_ac_hammer_end_2"
>     | "fist_ac_hammer_ladder_end"
>     | "fist_ac_hammer_ladder_loop"
>     | "fist_ac_hammer_ladder_start"
>     | "fist_ac_hammer_loop"
>     | "fist_ac_hammer_loop_2"
>     | "fist_ac_hammer_sit_end"
>     | "fist_ac_hammer_sit_loop"
>     | "fist_ac_hammer_start"
>     | "fist_ac_hammer_start_2"
>     | "fist_ac_hammock_loop"
>     | "fist_ac_horse_b_geton"
>     | "fist_ac_horse_f_geton"
>     | "fist_ac_horse_l_getoff"
>     | "fist_ac_horse_l_getoff_end"
>     | "fist_ac_horse_l_getoff_loop"
>     | "fist_ac_horse_l_getoff_start"
>     | "fist_ac_horse_l_geton"
>     | "fist_ac_horse_r_geton"
>     | "fist_ac_hurray_mub"
>     | "fist_ac_ignition_end"
>     | "fist_ac_ignition_loop"
>     | "fist_ac_ignition_start"
>     | "fist_ac_kneelfull"
>     | "fist_ac_kneel_end"
>     | "fist_ac_kneel_loop"
>     | "fist_ac_kneel_start"
>     | "fist_ac_lavacar_idle"
>     | "fist_ac_lavacar_launch"
>     | "fist_ac_lavacar_launch_special"
>     | "fist_ac_lavacar_steering"
>     | "fist_ac_lavacar_steering_backward"
>     | "fist_ac_lion_b_geton"
>     | "fist_ac_lion_f_geton"
>     | "fist_ac_lion_l_getoff"
>     | "fist_ac_lion_l_geton"
>     | "fist_ac_lion_r_geton"
>     | "fist_ac_lowbed_a_loop"
>     | "fist_ac_lowbed_b_loop"
>     | "fist_ac_lowbed_c_loop"
>     | "fist_ac_makepotion_end"
>     | "fist_ac_makepotion_loop"
>     | "fist_ac_makepotion_start"
>     | "fist_ac_meditationfull"
>     | "fist_ac_meditation_end"
>     | "fist_ac_meditation_loop"
>     | "fist_ac_meditation_start"
>     | "fist_ac_middleship_oar_idle"
>     | "fist_ac_middleship_oar_run"
>     | "fist_ac_milkcowdance01"
>     | "fist_ac_milkcowdance02"
>     | "fist_ac_milkcowdance03"
>     | "fist_ac_milking_end"
>     | "fist_ac_milking_loop"
>     | "fist_ac_milking_start"
>     | "fist_ac_mine_end"
>     | "fist_ac_mine_loop"
>     | "fist_ac_mooflag_end"
>     | "fist_ac_mooflag_start"
>     | "fist_ac_nailing_end"
>     | "fist_ac_nailing_loop"
>     | "fist_ac_nailing_start"
>     | "fist_ac_newspeedboat_l"
>     | "fist_ac_newspeedboat_r"
>     | "fist_ac_operate_loop"
>     | "fist_ac_operate_start"
>     | "fist_ac_painter"
>     | "fist_ac_petwash_end"
>     | "fist_ac_petwash_start"
>     | "fist_ac_photo_01_end"
>     | "fist_ac_photo_01_loop"
>     | "fist_ac_photo_01_start"
>     | "fist_ac_pickupstand"
>     | "fist_ac_pickup_end"
>     | "fist_ac_pickup_loop"
>     | "fist_ac_pickup_start"
>     | "fist_ac_plank_down"
>     | "fist_ac_plank_up"
>     | "fist_ac_poledance_loop"
>     | "fist_ac_poundinggrain_loop"
>     | "fist_ac_poundinggrain_start"
>     | "fist_ac_prostrate"
>     | "fist_ac_prostrate_start"
>     | "fist_ac_pulling_end"
>     | "fist_ac_pulling_loop"
>     | "fist_ac_pulling_start"
>     | "fist_ac_punishment_critical"
>     | "fist_ac_punishment_end"
>     | "fist_ac_punishment_hit"
>     | "fist_ac_punishment_loop"
>     | "fist_ac_punishment_sit_critical"
>     | "fist_ac_punishment_sit_end"
>     | "fist_ac_punishment_sit_hit"
>     | "fist_ac_punishment_sit_loop"
>     | "fist_ac_punishment_sit_start"
>     | "fist_ac_punishment_start"
>     | "fist_ac_push_b"
>     | "fist_ac_push_f"
>     | "fist_ac_putdown"
>     | "fist_ac_reading_end"
>     | "fist_ac_reading_independent_end"
>     | "fist_ac_reading_independent_loop"
>     | "fist_ac_reading_independent_start"
>     | "fist_ac_reading_loop"
>     | "fist_ac_reading_start"
>     | "fist_ac_receive"
>     | "fist_ac_receive_mub"
>     | "fist_ac_resurrect_end"
>     | "fist_ac_resurrect_loop"
>     | "fist_ac_robot_b_geton"
>     | "fist_ac_robot_f_geton"
>     | "fist_ac_robot_l_getoff_start"
>     | "fist_ac_robot_l_geton"
>     | "fist_ac_robot_r_geton"
>     | "fist_ac_sail_steer_l"
>     | "fist_ac_sail_steer_l_mub"
>     | "fist_ac_sail_steer_r"
>     | "fist_ac_sail_steer_r_mub"
>     | "fist_ac_salute"
>     | "fist_ac_sawingwidth_end"
>     | "fist_ac_sawingwidth_loop"
>     | "fist_ac_sawing_end"
>     | "fist_ac_sawing_loop"
>     | "fist_ac_sawing_start"
>     | "fist_ac_sdance"
>     | "fist_ac_sewing_end"
>     | "fist_ac_shoveling_end"
>     | "fist_ac_shoveling_loop"
>     | "fist_ac_shoveling_start"
>     | "fist_ac_sitgroundfull"
>     | "fist_ac_sitground_doze"
>     | "fist_ac_sitground_doze_mub"
>     | "fist_ac_sitground_doze_ub"
>     | "fist_ac_sitground_end"
>     | "fist_ac_sitground_loop"
>     | "fist_ac_sitground_start"
>     | "fist_ac_sit_down_2_loop"
>     | "fist_ac_sit_down_2_start"
>     | "fist_ac_sit_down_launch"
>     | "fist_ac_sit_down_launch_2"
>     | "fist_ac_sit_down_loop"
>     | "fist_ac_sit_down_start"
>     | "fist_ac_sit_up"
>     | "fist_ac_sit_up_2"
>     | "fist_ac_slaughter"
>     | "fist_ac_smallhammer_end"
>     | "fist_ac_smallhammer_loop"
>     | "fist_ac_smallhammer_start"
>     | "fist_ac_springwater"
>     | "fist_ac_sprinklewater_end"
>     | "fist_ac_sprinklewater_loop"
>     | "fist_ac_sprinklewater_start"
>     | "fist_ac_stage_rand_1"
>     | "fist_ac_standcoffin"
>     | "fist_ac_standcoffin_start"
>     | "fist_ac_standsled_steering"
>     | "fist_ac_steercar_b"
>     | "fist_ac_steercar_idle"
>     | "fist_ac_steercar_launch"
>     | "fist_ac_steercar_launch_special"
>     | "fist_ac_steering"
>     | "fist_ac_steering_backward"
>     | "fist_ac_steer_idle"
>     | "fist_ac_steer_l"
>     | "fist_ac_steer_r"
>     | "fist_ac_steer_steering"
>     | "fist_ac_stumble"
>     | "fist_ac_stumble_knockback"
>     | "fist_ac_summon_cast"
>     | "fist_ac_summon_cast_start"
>     | "fist_ac_summon_launch_mub"
>     | "fist_ac_sunbed_b_loop"
>     | "fist_ac_synchronize01"
>     | "fist_ac_talk_11"
>     | "fist_ac_talk_12"
>     | "fist_ac_talk_13"
>     | "fist_ac_talk_14"
>     | "fist_ac_talk_15"
>     | "fist_ac_talk_21"
>     | "fist_ac_talk_22"
>     | "fist_ac_talk_23"
>     | "fist_ac_talk_24"
>     | "fist_ac_talk_25"
>     | "fist_ac_talk_31"
>     | "fist_ac_talk_32"
>     | "fist_ac_talk_33"
>     | "fist_ac_talk_34"
>     | "fist_ac_talk_35"
>     | "fist_ac_talk_41"
>     | "fist_ac_talk_42"
>     | "fist_ac_talk_43"
>     | "fist_ac_talk_44"
>     | "fist_ac_talk_45"
>     | "fist_ac_talk_51"
>     | "fist_ac_talk_52"
>     | "fist_ac_talk_53"
>     | "fist_ac_talk_54"
>     | "fist_ac_talk_55"
>     | "fist_ac_telescope_end"
>     | "fist_ac_telescope_loop"
>     | "fist_ac_telescope_start"
>     | "fist_ac_temptation"
>     | "fist_ac_throw"
>     | "fist_ac_throwwater"
>     | "fist_ac_thumbsup"
>     | "fist_ac_trailer_idle"
>     | "fist_ac_trailer_sit_idle"
>     | "fist_ac_trailer_steering"
>     | "fist_ac_whipping"
>     | "fist_ac_whipping_2"
>     | "fist_ac_whistle"
>     | "fist_ac_worship"
>     | "fist_ac_wyvern_b_geton"
>     | "fist_ac_wyvern_b_geton_2"
>     | "fist_ac_wyvern_f_geton"
>     | "fist_ac_wyvern_f_geton_2"
>     | "fist_ac_wyvern_l_geton"
>     | "fist_ac_wyvern_r_geton"
>     | "fist_ac_wyvern_r_geton_2"
>     | "fist_ac_yatadance02"
>     | "fist_ac_yatadance03"
>     | "fist_ac_yataflag_end"
>     | "fist_ac_yataflag_loop"
>     | "fist_ac_yataflag_start"
>     | "fist_ba_crawl_idle"
>     | "fist_ba_dance2_idle"
>     | "fist_ba_dance3_idle"
>     | "fist_ba_dance_idle"
>     | "fist_ba_idle_swim"
>     | "fist_ba_relaxed_idle"
>     | "fist_ba_relaxed_idle_rand_1"
>     | "fist_ba_relaxed_idle_rand_2"
>     | "fist_ba_relaxed_idle_rand_3"
>     | "fist_ba_relaxed_idle_rand_4"
>     | "fist_ba_relaxed_idle_rand_5"
>     | "fist_ba_relaxed_idle_rand_6"
>     | "fist_ba_relaxed_idle_start"
>     | "fist_ba_relaxed_idle_stop"
>     | "fist_ba_relaxed_rand_idle"
>     | "fist_ba_siegeweapon_idle"
>     | "fist_co_attack_r"
>     | "fist_co_attack_r_mub"
>     | "fist_co_sk_fistattack"
>     | "fist_co_sk_fistattack_mub"
>     | "fist_co_sk_pierce"
>     | "fist_co_sk_pierce_mub"
>     | "fist_co_sk_swim_pierce"
>     | "fist_co_sk_tackle"
>     | "fist_co_sk_uppercut"
>     | "fist_co_sk_uppercut_mub"
>     | "fist_co_swim_attack_r"
>     | "fist_em_amaze"
>     | "fist_em_amaze_mub"
>     | "fist_em_angry"
>     | "fist_em_angry_mub"
>     | "fist_em_anguish"
>     | "fist_em_anguish_mub"
>     | "fist_em_backpain"
>     | "fist_em_backpain_mub"
>     | "fist_em_badsmell"
>     | "fist_em_badsmell_mub"
>     | "fist_em_bashful"
>     | "fist_em_bashful_mub"
>     | "fist_em_beg"
>     | "fist_em_beg_mub"
>     | "fist_em_bored"
>     | "fist_em_bored_mub"
>     | "fist_em_bow"
>     | "fist_em_bow_mub"
>     | "fist_em_bye"
>     | "fist_em_bye_mub"
>     | "fist_em_celebrate"
>     | "fist_em_celebrate_mub"
>     | "fist_em_clap"
>     | "fist_em_clap_mub"
>     | "fist_em_cry"
>     | "fist_em_cry_mub"
>     | "fist_em_dogeza"
>     | "fist_em_fan_end"
>     | "fist_em_fan_start"
>     | "fist_em_fear"
>     | "fist_em_fear_mub"
>     | "fist_em_fight"
>     | "fist_em_fight_mub"
>     | "fist_em_find"
>     | "fist_em_find_mub"
>     | "fist_em_forward"
>     | "fist_em_forward_mub"
>     | "fist_em_gang"
>     | "fist_em_gang_mub"
>     | "fist_em_general_end"
>     | "fist_em_general_loop"
>     | "fist_em_general_start"
>     | "fist_em_greet"
>     | "fist_em_handx"
>     | "fist_em_handx_mub"
>     | "fist_em_happy"
>     | "fist_em_heart"
>     | "fist_em_heart_mub"
>     | "fist_em_knight_vow_end"
>     | "fist_em_knight_vow_loop"
>     | "fist_em_knight_vow_start"
>     | "fist_em_laugh"
>     | "fist_em_laugh_mub"
>     | "fist_em_lonely_mub"
>     | "fist_em_loud_mub"
>     | "fist_em_no"
>     | "fist_em_no_mub"
>     | "fist_em_paper"
>     | "fist_em_paper_mub"
>     | "fist_em_pointback"
>     | "fist_em_pointback_mub"
>     | "fist_em_pointdown"
>     | "fist_em_pointdown_mub"
>     | "fist_em_pointup"
>     | "fist_em_pointup_mub"
>     | "fist_em_point_mub"
>     | "fist_em_question"
>     | "fist_em_question_mub"
>     | "fist_em_rock"
>     | "fist_em_rock_mub"
>     | "fist_em_scissors"
>     | "fist_em_scissors_mub"
>     | "fist_em_shakehead"
>     | "fist_em_shakehead_mub"
>     | "fist_em_shouting"
>     | "fist_em_shouting_mub"
>     | "fist_em_shy"
>     | "fist_em_sigh"
>     | "fist_em_sigh_mub"
>     | "fist_em_silenttribute"
>     | "fist_em_silenttribute_mub"
>     | "fist_em_sleep_2_loop"
>     | "fist_em_sleep_2_start"
>     | "fist_em_sleep_3_loop"
>     | "fist_em_sleep_3_start"
>     | "fist_em_sleep_end"
>     | "fist_em_sleep_loop"
>     | "fist_em_stretch"
>     | "fist_em_sweat"
>     | "fist_em_sweat_mub"
>     | "fist_em_sword_salute_end"
>     | "fist_em_tapchest"
>     | "fist_em_umbrella_end"
>     | "fist_em_umbrella_start"
>     | "fist_em_vomit"
>     | "fist_em_vomit_mub"
>     | "fist_em_whist"
>     | "fist_em_whist_mub"
>     | "fist_em_yawn_mub"
>     | "fist_em_yes"
>     | "fist_em_yes_mub"
>     | "fist_fishing_action"
>     | "fist_fishing_action_l"
>     | "fist_fishing_action_r"
>     | "fist_fishing_action_reelin"
>     | "fist_fishing_action_reelout"
>     | "fist_fishing_action_up"
>     | "fist_fishing_casting"
>     | "fist_fishing_hooking"
>     | "fist_fishing_ice_casting"
>     | "fist_fishing_ice_idle"
>     | "fist_fishing_ice_landing"
>     | "fist_fishing_idle"
>     | "fist_fishing_landing"
>     | "fist_mo_barrel_idle"
>     | "fist_mo_barrel_jump"
>     | "fist_mo_climb_idle"
>     | "fist_mo_climb_right"
>     | "fist_mo_climb_up"
>     | "fist_mo_crawl_run_bl"
>     | "fist_mo_crawl_run_br"
>     | "fist_mo_crawl_run_fl"
>     | "fist_mo_crawl_run_fr"
>     | "fist_mo_dance2_run_b"
>     | "fist_mo_dance2_run_bl"
>     | "fist_mo_dance2_run_br"
>     | "fist_mo_dance2_run_f"
>     | "fist_mo_dance2_run_fl"
>     | "fist_mo_dance2_run_fr"
>     | "fist_mo_dance2_run_l"
>     | "fist_mo_dance2_run_r"
>     | "fist_mo_dance3_run_b"
>     | "fist_mo_dance3_run_bl"
>     | "fist_mo_dance3_run_br"
>     | "fist_mo_dance3_run_f"
>     | "fist_mo_dance3_run_fl"
>     | "fist_mo_dance3_run_fr"
>     | "fist_mo_dance3_run_l"
>     | "fist_mo_dance3_run_r"
>     | "fist_mo_dance4_run_b"
>     | "fist_mo_dance4_run_bl"
>     | "fist_mo_dance4_run_br"
>     | "fist_mo_dance4_run_f"
>     | "fist_mo_dance4_run_fl"
>     | "fist_mo_dance4_run_fr"
>     | "fist_mo_dance4_run_l"
>     | "fist_mo_dance4_run_r"
>     | "fist_mo_dance_run_b"
>     | "fist_mo_dance_run_bl"
>     | "fist_mo_dance_run_br"
>     | "fist_mo_dance_run_f"
>     | "fist_mo_dance_run_fl"
>     | "fist_mo_dance_run_fr"
>     | "fist_mo_dance_run_l"
>     | "fist_mo_dance_run_r"
>     | "fist_mo_gondola_rowing_b"
>     | "fist_mo_gondola_rowing_bl"
>     | "fist_mo_gondola_rowing_br"
>     | "fist_mo_gondola_rowing_f"
>     | "fist_mo_gondola_rowing_fl"
>     | "fist_mo_gondola_rowing_fr"
>     | "fist_mo_gondola_rowing_idle"
>     | "fist_mo_jump_b_land"
>     | "fist_mo_jump_b_loop"
>     | "fist_mo_jump_b_start"
>     | "fist_mo_jump_dance2_b_land"
>     | "fist_mo_jump_dance2_f_land"
>     | "fist_mo_jump_dance2_f_start"
>     | "fist_mo_jump_dance2_l_land"
>     | "fist_mo_jump_dance2_r_land"
>     | "fist_mo_jump_dance2_s_end"
>     | "fist_mo_jump_dance3_b_land"
>     | "fist_mo_jump_dance3_f_land"
>     | "fist_mo_jump_dance3_f_loop"
>     | "fist_mo_jump_dance3_f_start"
>     | "fist_mo_jump_dance3_l_land"
>     | "fist_mo_jump_dance3_r_land"
>     | "fist_mo_jump_dance3_s_end"
>     | "fist_mo_jump_dance4_b_land"
>     | "fist_mo_jump_dance4_f_land"
>     | "fist_mo_jump_dance4_f_loop"
>     | "fist_mo_jump_dance4_f_start"
>     | "fist_mo_jump_dance4_l_land"
>     | "fist_mo_jump_dance4_l_loop"
>     | "fist_mo_jump_dance4_l_start"
>     | "fist_mo_jump_dance4_r_land"
>     | "fist_mo_jump_dance4_r_start"
>     | "fist_mo_jump_dance_b_land"
>     | "fist_mo_jump_dance_f_land"
>     | "fist_mo_jump_dance_f_loop"
>     | "fist_mo_jump_dance_l_land"
>     | "fist_mo_jump_dance_l_loop"
>     | "fist_mo_jump_dance_l_start"
>     | "fist_mo_jump_dance_r_land"
>     | "fist_mo_jump_dance_r_loop"
>     | "fist_mo_jump_dance_s_end"
>     | "fist_mo_jump_dance_s_loop"
>     | "fist_mo_jump_dance_s_start"
>     | "fist_mo_jump_f_land"
>     | "fist_mo_jump_f_loop"
>     | "fist_mo_jump_f_start"
>     | "fist_mo_jump_l_land"
>     | "fist_mo_jump_l_loop"
>     | "fist_mo_jump_l_start"
>     | "fist_mo_jump_r_loop"
>     | "fist_mo_jump_r_start"
>     | "fist_mo_jump_sprint_f_land"
>     | "fist_mo_jump_sprint_f_loop"
>     | "fist_mo_jump_sprint_f_start"
>     | "fist_mo_jump_sprint_l_land"
>     | "fist_mo_jump_sprint_r_land"
>     | "fist_mo_jump_sprint_r_loop"
>     | "fist_mo_jump_sprint_r_start"
>     | "fist_mo_jump_s_end"
>     | "fist_mo_jump_s_land"
>     | "fist_mo_jump_s_loop"
>     | "fist_mo_jump_s_start"
>     | "fist_mo_jump_walk_b_land"
>     | "fist_mo_jump_walk_f_land"
>     | "fist_mo_jump_walk_l_land"
>     | "fist_mo_jump_walk_r_land"
>     | "fist_mo_ladder_down"
>     | "fist_mo_ladder_down_left"
>     | "fist_mo_ladder_down_right"
>     | "fist_mo_ladder_end"
>     | "fist_mo_ladder_end_80"
>     | "fist_mo_ladder_idle"
>     | "fist_mo_ladder_left"
>     | "fist_mo_ladder_right"
>     | "fist_mo_ladder_up"
>     | "fist_mo_ladder_up_left"
>     | "fist_mo_ladder_up_right"
>     | "fist_mo_mast_down"
>     | "fist_mo_mast_down_left"
>     | "fist_mo_mast_down_right"
>     | "fist_mo_mast_idle"
>     | "fist_mo_mast_left"
>     | "fist_mo_mast_right"
>     | "fist_mo_mast_up"
>     | "fist_mo_mast_up_left"
>     | "fist_mo_mast_up_right"
>     | "fist_mo_normal_runuphill_f"
>     | "fist_mo_normal_run_b"
>     | "fist_mo_normal_run_bl"
>     | "fist_mo_normal_run_br"
>     | "fist_mo_normal_run_f"
>     | "fist_mo_normal_run_fl"
>     | "fist_mo_normal_run_fr"
>     | "fist_mo_normal_run_l"
>     | "fist_mo_normal_run_r"
>     | "fist_mo_normal_walk_b"
>     | "fist_mo_normal_walk_bl"
>     | "fist_mo_normal_walk_br"
>     | "fist_mo_normal_walk_f"
>     | "fist_mo_normal_walk_fl"
>     | "fist_mo_normal_walk_fr"
>     | "fist_mo_normal_walk_l"
>     | "fist_mo_normal_walk_r"
>     | "fist_mo_prope_backward_idle"
>     | "fist_mo_prope_frontward_idle"
>     | "fist_mo_prope_idle"
>     | "fist_mo_prope_leap"
>     | "fist_mo_prope_rand_ub"
>     | "fist_mo_prope_up"
>     | "fist_mo_relaxed_runtoidle_b"
>     | "fist_mo_relaxed_runtoidle_f_step_r"
>     | "fist_mo_relaxed_walktoidle_b"
>     | "fist_mo_relaxed_walktoidle_f_step_l"
>     | "fist_mo_relaxed_walktoidle_f_step_r"
>     | "fist_mo_relaxed_walktoidle_l"
>     | "fist_mo_relaxed_walktoidle_r"
>     | "fist_mo_rope_back_clip"
>     | "fist_mo_rope_clip_idle"
>     | "fist_mo_rope_end"
>     | "fist_mo_rope_front_clip"
>     | "fist_mo_rowing_b"
>     | "fist_mo_rowing_bl"
>     | "fist_mo_rowing_br"
>     | "fist_mo_rowing_f"
>     | "fist_mo_rowing_fl"
>     | "fist_mo_rowing_fr"
>     | "fist_mo_rowing_idle"
>     | "fist_mo_sprint_run_f"
>     | "fist_mo_sprint_run_fl"
>     | "fist_mo_sprint_run_fr"
>     | "fist_mo_sprint_run_l"
>     | "fist_mo_sprint_run_r"
>     | "fist_mo_stealth_run_b"
>     | "fist_mo_stealth_run_bl"
>     | "fist_mo_stealth_run_br"
>     | "fist_mo_stealth_run_f"
>     | "fist_mo_stealth_run_fl"
>     | "fist_mo_stealth_run_fr"
>     | "fist_mo_stealth_run_l"
>     | "fist_mo_stealth_run_r"
>     | "fist_mo_swim_b"
>     | "fist_mo_swim_bl"
>     | "fist_mo_swim_bl_deep"
>     | "fist_mo_swim_br"
>     | "fist_mo_swim_b_deep"
>     | "fist_mo_swim_down"
>     | "fist_mo_swim_f"
>     | "fist_mo_swim_fl"
>     | "fist_mo_swim_fl_deep"
>     | "fist_mo_swim_fr"
>     | "fist_mo_swim_f_deep"
>     | "fist_mo_swim_l_deep"
>     | "fist_mo_swim_r_deep"
>     | "fist_mo_swim_up"
>     | "fist_pos_combat_idle"
>     | "fist_pos_combat_idle_rand_1"
>     | "fist_pos_combat_idle_rand_2"
>     | "fist_pos_gnd_corpse_lastwill_idle"
>     | "fist_pos_gnd_corpse_lastwill_talk"
>     | "fist_pos_gnd_sidesleep_idle"
>     | "fist_pos_hang_criminal_idle"
>     | "fist_pos_hang_criminal_idle_rand_1"
>     | "fist_pos_priest_pray_idle"
>     | "fist_pos_priest_pray_idle_rand_1"
>     | "fist_pos_priest_pray_talk"
>     | "fist_pos_priest_silent_idle"
>     | "fist_pos_priest_silent_idle_rand_1"
>     | "fist_pos_priest_silent_idle_rand_2"
>     | "fist_pos_priest_silent_idle_rand_3"
>     | "fist_pos_priest_silent_idle_rand_4"
>     | "fist_pos_priest_silent_idle_rand_5"
>     | "fist_pos_priest_silent_talk"
>     | "fist_pos_record_idle"
>     | "fist_pos_record_idle_rand_1"
>     | "fist_pos_record_idle_rand_2"
>     | "fist_pos_record_idle_rand_3"
>     | "fist_pos_record_idle_rand_4"
>     | "fist_pos_record_idle_rand_5"
>     | "fist_pos_record_nd_idle"
>     | "fist_pos_sit_chair_armrest_idle"
>     | "fist_pos_sit_chair_armrest_idle_rand_1"
>     | "fist_pos_sit_chair_armrest_talk"
>     | "fist_pos_sit_chair_crossleg_idle"
>     | "fist_pos_sit_chair_crossleg_talk"
>     | "fist_pos_sit_chair_drink_idle"
>     | "fist_pos_sit_chair_drink_idle_rand_1"
>     | "fist_pos_sit_chair_drink_talk"
>     | "fist_pos_sit_chair_eatsuop_idle"
>     | "fist_pos_sit_chair_eatsuop_talk"
>     | "fist_pos_sit_chair_idle"
>     | "fist_pos_sit_chair_idle_rand_1"
>     | "fist_pos_sit_chair_idle_rand_2"
>     | "fist_pos_sit_chair_idle_rand_3"
>     | "fist_pos_sit_chair_oldman_cane_idle"
>     | "fist_pos_sit_chair_oldman_cane_talk"
>     | "fist_pos_sit_chair_pure_idle"
>     | "fist_pos_sit_chair_pure_idle_rand_1"
>     | "fist_pos_sit_chair_pure_talk"
>     | "fist_pos_sit_chair_readbook_idle"
>     | "fist_pos_sit_chair_readbook_talk"
>     | "fist_pos_sit_chair_rest_idle"
>     | "fist_pos_sit_chair_rest_idle_rand_1"
>     | "fist_pos_sit_chair_rest_idle_rand_2"
>     | "fist_pos_sit_chair_rest_idle_rand_3"
>     | "fist_pos_sit_chair_rest_talk"
>     | "fist_pos_sit_chair_sleep_idle"
>     | "fist_pos_sit_chair_sleep_idle_rand_1"
>     | "fist_pos_sit_chair_sleep_idle_rand_2"
>     | "fist_pos_sit_chair_sleep_idle_rand_3"
>     | "fist_pos_sit_chair_talk"
>     | "fist_pos_sit_crouch_idle_rand_1"
>     | "fist_pos_sit_crouch_idle_rand_2"
>     | "fist_pos_sit_crouch_idle_rand_3"
>     | "fist_pos_sit_crouch_idle_rand_4"
>     | "fist_pos_sit_crouch_idle_rand_5"
>     | "fist_pos_sit_crouch_livestock_idle"
>     | "fist_pos_sit_crouch_livestock_idle_rand_1"
>     | "fist_pos_sit_crouch_livestock_idle_rand_2"
>     | "fist_pos_sit_crouch_livestock_talk"
>     | "fist_pos_sit_crouch_talk"
>     | "fist_pos_sit_gnd_drunken_idle"
>     | "fist_pos_sit_gnd_drunken_idle_rand_1"
>     | "fist_pos_sit_gnd_drunken_idle_rand_2"
>     | "fist_pos_sit_gnd_drunken_idle_rand_3"
>     | "fist_pos_sit_gnd_drunken_talk"
>     | "fist_pos_sit_gnd_prisoner_idle"
>     | "fist_pos_sit_gnd_prisoner_talk"
>     | "fist_pos_sit_gnd_wounded_idle"
>     | "fist_pos_sit_gnd_wounded_talk"
>     | "fist_pos_sit_lean_idle"
>     | "fist_pos_sit_lean_idle_rand_1"
>     | "fist_pos_sit_lean_idle_rand_2"
>     | "fist_pos_sit_lean_idle_rand_3"
>     | "fist_pos_sit_lean_idle_rand_4"
>     | "fist_pos_sit_lean_idle_rand_5"
>     | "fist_pos_sit_lean_talk"
>     | "fist_pos_soldier_attention_idle"
>     | "fist_pos_soldier_attention_idle_rand_1"
>     | "fist_pos_soldier_attention_talk"
>     | "fist_pos_stn_afraid_idle"
>     | "fist_pos_stn_afraid_idle_rand_1"
>     | "fist_pos_stn_afraid_idle_rand_2"
>     | "fist_pos_stn_afraid_talk"
>     | "fist_pos_stn_angry_idle"
>     | "fist_pos_stn_angry_idle_rand_1"
>     | "fist_pos_stn_angry_idle_rand_2"
>     | "fist_pos_stn_boring_talk"
>     | "fist_pos_stn_calling_idle"
>     | "fist_pos_stn_calling_idle_rand_1"
>     | "fist_pos_stn_calling_talk"
>     | "fist_pos_stn_cleaning_idle"
>     | "fist_pos_stn_cooking_soup_idle"
>     | "fist_pos_stn_cooking_soup_talk"
>     | "fist_pos_stn_crossarm_idle"
>     | "fist_pos_stn_crossarm_idle_rand_1"
>     | "fist_pos_stn_crossarm_idle_rand_2"
>     | "fist_pos_stn_crossarm_idle_rand_3"
>     | "fist_pos_stn_crossarm_idle_rand_4"
>     | "fist_pos_stn_crossarm_idle_rand_5"
>     | "fist_pos_stn_crossarm_talk"
>     | "fist_pos_stn_crying_idle"
>     | "fist_pos_stn_crying_idle_rand_1"
>     | "fist_pos_stn_crying_talk"
>     | "fist_pos_stn_drink_idle"
>     | "fist_pos_stn_drink_idle_rand_1"
>     | "fist_pos_stn_drink_talk"
>     | "fist_pos_stn_eatsuop_talk"
>     | "fist_pos_stn_fishing_idle"
>     | "fist_pos_stn_fishing_idle_rand_1"
>     | "fist_pos_stn_florist_idle"
>     | "fist_pos_stn_florist_idle_rand_1"
>     | "fist_pos_stn_florist_idle_rand_2"
>     | "fist_pos_stn_florist_talk"
>     | "fist_pos_stn_getherhands_idle_rand_1"
>     | "fist_pos_stn_getherhands_talk"
>     | "fist_pos_stn_guitarist_idle"
>     | "fist_pos_stn_guitarist_talk"
>     | "fist_pos_stn_handsback_idle"
>     | "fist_pos_stn_handsback_idle_rand_1"
>     | "fist_pos_stn_handsback_idle_rand_2"
>     | "fist_pos_stn_handsback_idle_rand_3"
>     | "fist_pos_stn_handsback_talk"
>     | "fist_pos_stn_leanshovel_idle"
>     | "fist_pos_stn_leanshovel_talk"
>     | "fist_pos_stn_liabilities_idle"
>     | "fist_pos_stn_liabilities_idle_rand_1"
>     | "fist_pos_stn_liabilities_talk"
>     | "fist_pos_stn_oldman_cane_idle"
>     | "fist_pos_stn_oldman_cane_idle_rand_1"
>     | "fist_pos_stn_oldman_cane_idle_rand_2"
>     | "fist_pos_stn_oldman_cane_talk"
>     | "fist_pos_stn_onehand_relaxed_idle"
>     | "fist_pos_stn_peep_idle"
>     | "fist_pos_stn_peep_talk"
>     | "fist_pos_stn_pharmacist_idle"
>     | "fist_pos_stn_pharmacist_idle_rand_1"
>     | "fist_pos_stn_pharmacist_idle_rand_2"
>     | "fist_pos_stn_relaxed_a_idle_rand_1"
>     | "fist_pos_stn_relaxed_a_idle_rand_2"
>     | "fist_pos_stn_relaxed_b_idle"
>     | "fist_pos_stn_relaxed_b_idle_rand_1"
>     | "fist_pos_stn_relaxed_b_idle_rand_2"
>     | "fist_pos_stn_relaxed_c_idle_rand_2"
>     | "fist_pos_stn_searching_idle"
>     | "fist_pos_stn_searching_idle_rand_1"
>     | "fist_pos_stn_searching_talk"
>     | "fist_pos_stn_sick_searching_idle"
>     | "fist_pos_stn_sick_searching_idle_rand_1"
>     | "fist_pos_stn_sick_searching_idle_rand_2"
>     | "fist_pos_stn_sick_searching_talk"
>     | "fist_pos_stn_singing_idle"
>     | "fist_pos_stn_soldier_archer_idle"
>     | "fist_pos_stn_soldier_archer_idle_rand_1"
>     | "fist_pos_stn_soldier_archer_idle_rand_2"
>     | "fist_pos_stn_soldier_archer_idle_talk"
>     | "fist_pos_stn_soldier_archer_talk"
>     | "fist_pos_stn_soldier_general_idle"
>     | "fist_pos_stn_soldier_general_talk"
>     | "fist_pos_stn_soldier_guard_idle"
>     | "fist_pos_stn_soldier_guard_talk"
>     | "fist_pos_stn_stumble_idle"
>     | "fist_pos_stn_stumble_talk"
>     | "fist_pos_stn_telescope_talk"
>     | "fist_pos_stn_thinking_talk"
>     | "fist_pos_vendor_idle"
>     | "fist_pos_vendor_idle_rand_1"
>     | "fist_pos_vendor_idle_rand_2"
>     | "fist_pos_vendor_idle_rand_3"
>     | "fist_pos_vendor_idle_rand_4"
>     | "fist_pos_vendor_idle_rand_5"
>     | "fist_gs_ariadance_01"
>     | "fist_gs_ariadance_02"
>     | "fist_gs_arms_command_end"
>     | "fist_gs_arms_command_fail"
>     | "fist_gs_arms_command_loop"
>     | "fist_gs_arms_command_start"
>     | "fist_gs_bboy_hip_hop_move"
>     | "fist_gs_breakdance_ready"
>     | "fist_gs_chairdance"
>     | "fist_gs_cheer"
>     | "fist_gs_chicken_dance"
>     | "fist_gs_dwdance"
>     | "fist_gs_fighting_end"
>     | "fist_gs_fighting_loop"
>     | "fist_gs_fighting_start"
>     | "fist_gs_hipshake_end"
>     | "fist_gs_hipshake_loop"
>     | "fist_gs_hipshake_start"
>     | "fist_gs_hiptap_end"
>     | "fist_gs_hiptap_loop"
>     | "fist_gs_hiptap_start"
>     | "fist_gs_hip_hop_dancing"
>     | "fist_gs_hip_hop_dancing_arm_wave"
>     | "fist_gs_hip_hop_dancing_v02"
>     | "fist_gs_housedance"
>     | "fist_gs_indodance"
>     | "fist_gs_kazatsky"
>     | "fist_gs_molangdance"
>     | "fist_gs_moonwalk"
>     | "fist_gs_moonwalk3_end"
>     | "fist_gs_moonwalk3_loop"
>     | "fist_gs_musical_turn_end"
>     | "fist_gs_musical_turn_loop"
>     | "fist_gs_musical_turn_start"
>     | "fist_gs_polka"
>     | "fist_gs_redhood"
>     | "fist_gs_redhood_wolf"
>     | "fist_gs_robothello_end"
>     | "fist_gs_robothello_loop"
>     | "fist_gs_robothello_start"
>     | "fist_gs_sit_nouhaus_chair_loop"
>     | "fist_gs_sit_nouhaus_chair_start"
>     | "fist_gs_sit_nouhaus_sofa_end"
>     | "fist_gs_sit_nouhaus_sofa_loop"
>     | "fist_gs_sit_nouhaus_sofa_start"
>     | "fist_gs_sleep_cage_end"
>     | "fist_gs_sleep_cage_loop"
>     | "fist_gs_sleep_cage_start"
>     | "fist_gs_sleep_doll_start"
>     | "fist_gs_sleep_molang_end"
>     | "fist_gs_sleep_molang_loop"
>     | "fist_gs_sleep_molang_start"
>     | "fist_gs_step_hip_hop_dance"
>     | "fist_gs_tumbling_b_end"
>     | "fist_gs_tumbling_b_loop"
>     | "fist_gs_tumbling_b_start"
>     | "fist_gs_tumbling_s_end"
>     | "fist_gs_tumbling_s_loop"
>     | "fist_gs_tumbling_s_start"
>     | "fist_gs_twist_dancing"
>     | "fist_gs_voila01_end"
>     | "fist_gs_voila01_start"
>     | "fist_gs_voila02_end"
>     | "fist_gs_voila02_loop"
>     | "fist_gs_voila02_start"
>     | "fist_gs_voila03_end"
>     | "fist_gs_voila03_loop"
>     | "fist_gs_voila03_start"
>     | "horse_ac_gliding_idle"
>     | "horse_ac_gliding_left"
>     | "horse_ac_gliding_right"
>     | "horse_ba_carrot"
>     | "horse_ba_relaxed_idle"
>     | "horse_ba_relaxed_idle_stop"
>     | "horse_co_sk_jousting"
>     | "horse_em_jump_in_place"
>     | "horse_mo_jump_f_land"
>     | "horse_mo_jump_l_land"
>     | "horse_mo_jump_l_start"
>     | "horse_mo_jump_r_land"
>     | "horse_mo_jump_r_start"
>     | "horse_mo_normal_rundownhill"
>     | "horse_mo_normal_runuphill"
>     | "horse_mo_normal_run_b"
>     | "horse_mo_normal_run_f"
>     | "horse_mo_normal_run_f_lturn"
>     | "horse_mo_normal_run_f_rturn"
>     | "horse_mo_normal_run_l"
>     | "horse_mo_normal_run_r"
>     | "horse_mo_normal_sprint_f"
>     | "horse_mo_normal_sprint_f_lturn"
>     | "horse_mo_normal_sprint_f_rturn"
>     | "horse_mo_normal_walk_f"
>     | "horse_mo_normal_walk_fl"
>     | "horse_mo_normal_walk_fr"
>     | "horse_mo_normal_walk_l"
>     | "horse_mo_normal_walk_r"
>     | "horse_mo_relaxed_idletorun_f"
>     | "horse_mo_relaxed_runtoidle_f"
>     | "lion_ba_relaxed_idle"
>     | "lion_mo_jump_f_land"
>     | "lion_mo_jump_f_start"
>     | "lion_mo_jump_l_start"
>     | "lion_mo_jump_r_land"
>     | "lion_mo_jump_r_start"
>     | "lion_mo_normal_run_b"
>     | "lion_mo_normal_run_f"
>     | "lion_mo_normal_run_f_lturn"
>     | "lion_mo_normal_run_f_rturn"
>     | "lion_mo_normal_run_l"
>     | "lion_mo_normal_run_r"
>     | "lion_mo_normal_sprint_f"
>     | "lion_mo_normal_sprint_f_rturn"
>     | "lion_mo_normal_walk_b"
>     | "lion_mo_normal_walk_f"
>     | "lion_mo_normal_walk_fr"
>     | "lion_mo_normal_walk_l"
>     | "lion_mo_normal_walk_r"
>     | "lion_mo_relaxed_idletorun_f"
>     | "lion_mo_relaxed_runtoidle_f"
>     | "loginstage_class_abyssal"
>     | "loginstage_class_abyssal_end"
>     | "loginstage_class_abyssal_idle"
>     | "loginstage_class_assassin"
>     | "loginstage_class_assassin_idle"
>     | "loginstage_class_healer"
>     | "loginstage_class_healer_end"
>     | "loginstage_class_healer_idle"
>     | "loginstage_class_madness"
>     | "loginstage_class_madness_end"
>     | "loginstage_class_melee"
>     | "loginstage_class_melee_end"
>     | "loginstage_class_melee_idle"
>     | "loginstage_class_pleasure"
>     | "loginstage_class_pleasure_end"
>     | "loginstage_class_pleasure_idle"
>     | "loginstage_class_ranger"
>     | "loginstage_class_ranger_end"
>     | "loginstage_class_ranger_idle"
>     | "loginstage_class_sorcerer"
>     | "loginstage_class_sorcerer_end"
>     | "loginstage_class_sorcerer_idle"
>     | "loginstage_tribe_select"
>     | "music_ba_combat_idle"
>     | "music_co_sk_contrabass_cast"
>     | "music_co_sk_contrabass_idle"
>     | "music_co_sk_contrabass_start"
>     | "music_co_sk_drum"
>     | "music_co_sk_drum_cast"
>     | "music_co_sk_drum_launch"
>     | "music_co_sk_drum_launch_2"
>     | "music_co_sk_drum_launch_2_mub"
>     | "music_co_sk_drum_s"
>     | "music_co_sk_drum_start"
>     | "music_co_sk_harp_cast_2"
>     | "music_co_sk_harp_idle_2"
>     | "music_co_sk_lute_cast"
>     | "music_co_sk_lute_cast_2"
>     | "music_co_sk_lute_cast_3"
>     | "music_co_sk_lute_cast_4"
>     | "music_co_sk_lute_cast_immortal"
>     | "music_co_sk_lute_cast_mub"
>     | "music_co_sk_lute_launch"
>     | "music_co_sk_lute_launch_2"
>     | "music_co_sk_lute_launch_2_mub"
>     | "music_co_sk_lute_launch_mub"
>     | "music_co_sk_lute_start"
>     | "music_co_sk_oregol_cast"
>     | "music_co_sk_oregol_start"
>     | "music_co_sk_pipe_cast"
>     | "music_co_sk_pipe_cast_2"
>     | "music_co_sk_pipe_cast_3"
>     | "music_co_sk_pipe_cast_3_mub"
>     | "music_co_sk_pipe_cast_4"
>     | "music_co_sk_pipe_cast_immortal"
>     | "music_co_sk_pipe_launch_2"
>     | "music_co_sk_pipe_launch_2_mub"
>     | "music_co_sk_pipe_launch_mub"
>     | "music_co_sk_pipe_start"
>     | "music_co_sk_sitground_lute_cast"
>     | "music_co_sk_sit_down_cello_cast"
>     | "music_co_sk_sit_down_cello_idle"
>     | "music_co_sk_sit_down_cello_start"
>     | "music_co_sk_sit_down_drum_cast"
>     | "music_co_sk_sit_down_drum_start"
>     | "music_co_sk_sit_down_piano_cast"
>     | "music_co_sk_sit_down_piano_start"
>     | "music_co_sk_string_cast"
>     | "music_co_sk_string_idle"
>     | "music_co_sk_violin_cast"
>     | "music_co_sk_violin_start"
>     | "onehand_ac_holster_side_l"
>     | "onehand_ac_holster_side_l_mub"
>     | "onehand_ac_holster_side_l_ub"
>     | "onehand_ba_combat_idle"
>     | "onehand_ba_combat_idle_rand_1"
>     | "onehand_ba_combat_idle_rand_2"
>     | "onehand_ba_combat_idle_rand_3"
>     | "onehand_ba_combat_idle_rand_4"
>     | "onehand_ba_combat_idle_rand_5"
>     | "onehand_ba_idle_swim"
>     | "onehand_ba_stealth_idle"
>     | "onehand_co_attack_l_blunt"
>     | "onehand_co_attack_l_blunt_2"
>     | "onehand_co_attack_l_blunt_2_mub"
>     | "onehand_co_attack_l_blunt_mub"
>     | "onehand_co_attack_l_pierce"
>     | "onehand_co_attack_l_pierce_2"
>     | "onehand_co_attack_l_pierce_2_mub"
>     | "onehand_co_attack_l_pierce_mub"
>     | "onehand_co_attack_l_slash"
>     | "onehand_co_attack_l_slash_2"
>     | "onehand_co_attack_l_slash_2_mub"
>     | "onehand_co_attack_l_slash_mub"
>     | "onehand_co_attack_r_blunt"
>     | "onehand_co_attack_r_blunt_2"
>     | "onehand_co_attack_r_blunt_mub"
>     | "onehand_co_attack_r_pierce"
>     | "onehand_co_attack_r_pierce_2_mub"
>     | "onehand_co_attack_r_pierce_mub"
>     | "onehand_co_attack_r_slash"
>     | "onehand_co_attack_r_slash_mub"
>     | "onehand_co_horse_attack_l_slash"
>     | "onehand_co_horse_attack_r_slash"
>     | "onehand_co_sk_fastattack_1"
>     | "onehand_co_sk_fastattack_1_mub"
>     | "onehand_co_sk_fastattack_2"
>     | "onehand_co_sk_fastattack_3"
>     | "onehand_co_sk_fastattack_3_mub"
>     | "onehand_co_sk_fastattack_4"
>     | "onehand_co_sk_impregnable"
>     | "onehand_co_sk_impregnable_mub"
>     | "onehand_co_sk_shielddefense"
>     | "onehand_co_sk_shieldpush_mub"
>     | "onehand_co_sk_shieldthrow_launch"
>     | "onehand_co_sk_shieldthrow_launch_mub"
>     | "onehand_co_sk_shieldwield_diff"
>     | "onehand_co_sk_shieldwield_diff_mub"
>     | "onehand_co_sk_shieldwield_mub"
>     | "onehand_co_sk_streakattack_1"
>     | "onehand_co_sk_streakattack_1_mub"
>     | "onehand_co_sk_streakattack_2"
>     | "onehand_co_sk_streakattack_2_mub"
>     | "onehand_co_sk_streakattack_3"
>     | "onehand_co_sk_streakattack_3_diff"
>     | "onehand_co_sk_streakattack_3_diff_mub"
>     | "onehand_co_sk_streakattack_3_mub"
>     | "onehand_co_sk_swim_cast"
>     | "onehand_co_sk_swim_fastattack_1_ub"
>     | "onehand_co_sk_swim_fastattack_2_ub"
>     | "onehand_co_sk_swim_fastattack_3_ub"
>     | "onehand_co_sk_swim_fastattack_4_ub"
>     | "onehand_co_sk_swim_impregnable_ub"
>     | "onehand_co_sk_swim_shieldpush_ub"
>     | "onehand_co_sk_swim_shieldthrow_cast"
>     | "onehand_co_sk_swim_shieldthrow_launch"
>     | "onehand_co_sk_swim_shieldwield_ub"
>     | "onehand_co_sk_swim_streakattack_1_ub"
>     | "onehand_co_sk_swim_streakattack_2_ub"
>     | "onehand_co_sk_swim_streakattack_3_ub"
>     | "onehand_co_sk_swim_throwdagger_ub"
>     | "onehand_co_sk_swim_weapon_blunt_3_cast_ub"
>     | "onehand_co_sk_swim_weapon_blunt_3_launch_ub"
>     | "onehand_co_sk_swim_weapon_blunt_ub"
>     | "onehand_co_sk_swim_weapon_pierce_2_ub"
>     | "onehand_co_sk_swim_weapon_pierce_ub"
>     | "onehand_co_sk_swim_weapon_slash_3_ub"
>     | "onehand_co_sk_swim_weapon_slash_ub"
>     | "onehand_co_sk_throw"
>     | "onehand_co_sk_throwdagger_mub"
>     | "onehand_co_sk_weapon_blunt"
>     | "onehand_co_sk_weapon_blunt_2"
>     | "onehand_co_sk_weapon_blunt_2_diff2"
>     | "onehand_co_sk_weapon_blunt_2_diff2_mub"
>     | "onehand_co_sk_weapon_blunt_2_diff_mub"
>     | "onehand_co_sk_weapon_blunt_2_mub"
>     | "onehand_co_sk_weapon_blunt_3_cast"
>     | "onehand_co_sk_weapon_blunt_3_cast_ub"
>     | "onehand_co_sk_weapon_blunt_differ"
>     | "onehand_co_sk_weapon_blunt_differ_mub"
>     | "onehand_co_sk_weapon_blunt_mub"
>     | "onehand_co_sk_weapon_pierce"
>     | "onehand_co_sk_weapon_pierce_2"
>     | "onehand_co_sk_weapon_pierce_mub"
>     | "onehand_co_sk_weapon_slash"
>     | "onehand_co_sk_weapon_slash_2"
>     | "onehand_co_sk_weapon_slash_2_mub"
>     | "onehand_co_sk_weapon_slash_3"
>     | "onehand_co_sk_weapon_slash_3_mub"
>     | "onehand_co_sk_weapon_slash_differ"
>     | "onehand_co_sk_weapon_slash_differ_mub"
>     | "onehand_co_sk_weapon_slash_mub"
>     | "onehand_co_swim_attack_l_blunt_ub"
>     | "onehand_co_swim_attack_l_pierce_ub"
>     | "onehand_co_swim_attack_l_slash_ub"
>     | "onehand_co_swim_attack_r_pierce_ub"
>     | "onehand_co_swim_attack_r_slash_ub"
>     | "onehand_mo_combat_run_b"
>     | "onehand_mo_combat_run_bl"
>     | "onehand_mo_combat_run_br"
>     | "onehand_mo_combat_run_f"
>     | "onehand_mo_combat_run_fl"
>     | "onehand_mo_combat_run_fr"
>     | "onehand_mo_combat_run_l"
>     | "onehand_mo_combat_run_r"
>     | "onehand_mo_combat_sprint_run_b"
>     | "onehand_mo_combat_sprint_run_bl"
>     | "onehand_mo_combat_sprint_run_br"
>     | "onehand_mo_combat_sprint_run_f"
>     | "onehand_mo_combat_sprint_run_fl"
>     | "onehand_mo_combat_sprint_run_fr"
>     | "onehand_mo_combat_sprint_run_l"
>     | "onehand_mo_combat_sprint_run_r"
>     | "onehand_mo_jump_b_land"
>     | "onehand_mo_jump_b_start"
>     | "onehand_mo_jump_f_land"
>     | "onehand_mo_jump_f_start"
>     | "onehand_mo_jump_l_land"
>     | "onehand_mo_jump_l_start"
>     | "onehand_mo_jump_r_land"
>     | "onehand_mo_jump_r_start"
>     | "onehand_mo_swim_b"
>     | "onehand_mo_swim_bl"
>     | "onehand_mo_swim_br"
>     | "onehand_mo_swim_f"
>     | "onehand_mo_swim_fl"
>     | "onehand_mo_swim_fr"
>     | "onehand_mo_swim_l"
>     | "onehand_mo_swim_r"
>     | "onehand_re_combat_parry"
>     | "onehand_re_combat_parry_mub"
>     | "onehand_re_combat_shieldblock"
>     | "onehand_re_combat_shieldblock_mub"
>     | "onehand_re_dance"
>     | "pangolin_mo_normal_rundownhill"
>     | "pangolin_mo_normal_runuphill"
>     | "pangolin_mo_normal_run_f_lturn"
>     | "pangolin_mo_normal_run_f_rturn"
>     | "pangolin_mo_normal_sprint_f"
>     | "pangolin_mo_relaxed_idletorun_f"
>     | "pangolin_mo_relaxed_runtoidle_f"
>     | "propoise_jetski"
>     | "robot_ba_relaxed_idle"
>     | "robot_ba_relaxed_idle_rand_1"
>     | "robot_mo_jump_f_land"
>     | "robot_mo_jump_f_loop"
>     | "robot_mo_jump_f_start"
>     | "robot_mo_normal_run_b"
>     | "robot_mo_normal_run_f"
>     | "robot_mo_normal_run_f_lturn"
>     | "robot_mo_normal_run_l"
>     | "robot_mo_normal_run_r"
>     | "robot_mo_normal_walk_f"
>     | "robot_mo_relaxed_runtoidle_f"
>     | "seabug_mo_jump_f_land"
>     | "seabug_mo_jump_f_start"
>     | "seabug_mo_normal_run_f"
>     | "seabug_mo_normal_sprint_f"
>     | "seabug_mo_relaxed_runtoidle_f"
>     | "shotgun_ba_combat_idle"
>     | "shotgun_ba_idle_swim"
>     | "shotgun_bow_co_sk_cast_2"
>     | "shotgun_bow_co_sk_cast_3"
>     | "shotgun_bow_co_sk_cast_5"
>     | "shotgun_bow_co_sk_cast_6"
>     | "shotgun_bow_co_sk_cast_7"
>     | "shotgun_bow_co_sk_cast_start"
>     | "shotgun_bow_co_sk_cast_start_2"
>     | "shotgun_bow_co_sk_cast_start_3"
>     | "shotgun_bow_co_sk_cast_start_5"
>     | "shotgun_bow_co_sk_cast_start_6"
>     | "shotgun_bow_co_sk_cast_start_7"
>     | "shotgun_bow_co_sk_high_cast"
>     | "shotgun_bow_co_sk_high_cast_start"
>     | "shotgun_bow_co_sk_high_cast_start_ub"
>     | "shotgun_bow_co_sk_high_cast_ub"
>     | "shotgun_bow_co_sk_high_launch_ub"
>     | "shotgun_bow_co_sk_launch"
>     | "shotgun_bow_co_sk_launch_2"
>     | "shotgun_bow_co_sk_launch_3"
>     | "shotgun_bow_co_sk_launch_5"
>     | "shotgun_bow_co_sk_launch_6"
>     | "shotgun_bow_co_sk_launch_7"
>     | "shotgun_bow_co_sk_swim_cast_2_ub"
>     | "shotgun_bow_co_sk_swim_cast_5_ub"
>     | "shotgun_bow_co_sk_swim_cast_start_2_ub"
>     | "shotgun_bow_co_sk_swim_cast_start_5_ub"
>     | "shotgun_bow_co_sk_swim_launch_2_ub"
>     | "shotgun_bow_co_sk_swim_launch_5_ub"
>     | "shotgun_co_attack"
>     | "shotgun_co_sk_cast_approach"
>     | "shotgun_co_sk_cast_lightning"
>     | "shotgun_co_sk_launch_approach"
>     | "shotgun_co_sk_launch_demolish"
>     | "shotgun_co_sk_launch_demolish_ub"
>     | "shotgun_co_sk_launch_dodge_b"
>     | "shotgun_co_sk_launch_dodge_bl"
>     | "shotgun_co_sk_launch_dodge_br"
>     | "shotgun_co_sk_launch_dodge_f"
>     | "shotgun_co_sk_launch_dodge_fl"
>     | "shotgun_co_sk_launch_dodge_fr"
>     | "shotgun_co_sk_launch_dodge_l"
>     | "shotgun_co_sk_launch_dodge_r"
>     | "shotgun_co_sk_launch_earthquake"
>     | "shotgun_co_sk_launch_earthquake_ub"
>     | "shotgun_co_sk_launch_finish"
>     | "shotgun_co_sk_launch_finish_ub"
>     | "shotgun_co_sk_launch_infection"
>     | "shotgun_co_sk_launch_jumpshot"
>     | "shotgun_co_sk_launch_lightning"
>     | "shotgun_co_sk_launch_notice"
>     | "shotgun_co_sk_launch_notice_ub"
>     | "shotgun_co_sk_launch_reload"
>     | "shotgun_co_sk_launch_return"
>     | "shotgun_co_sk_launch_revenge"
>     | "shotgun_co_sk_launch_revenge_ub"
>     | "shotgun_co_sk_launch_shoot_1"
>     | "shotgun_co_sk_launch_shoot_2"
>     | "shotgun_co_sk_launch_shoot_2_ub"
>     | "shotgun_co_sk_launch_shout"
>     | "shotgun_co_sk_swim_cast_approach_ub"
>     | "shotgun_co_sk_swim_launch_approach_ub"
>     | "shotgun_co_sk_swim_launch_dodge_bl"
>     | "shotgun_co_sk_swim_launch_dodge_br"
>     | "shotgun_co_sk_swim_launch_dodge_fl"
>     | "shotgun_co_sk_swim_launch_earthquake_ub"
>     | "shotgun_co_sk_swim_launch_extensive_ub"
>     | "shotgun_co_sk_swim_launch_finish_ub"
>     | "shotgun_co_sk_swim_launch_lightning_ub"
>     | "shotgun_co_sk_swim_launch_revenge_ub"
>     | "shotgun_mo_combat_runtoidle_b"
>     | "shotgun_mo_combat_runtoidle_f"
>     | "shotgun_mo_combat_runtoidle_l"
>     | "shotgun_mo_combat_runtoidle_r"
>     | "shotgun_mo_combat_run_b"
>     | "shotgun_mo_combat_run_bl"
>     | "shotgun_mo_combat_run_br"
>     | "shotgun_mo_combat_run_f"
>     | "shotgun_mo_combat_run_fl"
>     | "shotgun_mo_combat_run_fr"
>     | "shotgun_mo_combat_run_l"
>     | "shotgun_mo_combat_run_r"
>     | "shotgun_mo_jump_b_land"
>     | "shotgun_mo_jump_f_land"
>     | "shotgun_mo_jump_l_land"
>     | "shotgun_mo_jump_s_end"
>     | "shotgun_mo_swim_b"
>     | "shotgun_mo_swim_bl"
>     | "shotgun_mo_swim_br"
>     | "shotgun_mo_swim_f"
>     | "shotgun_mo_swim_fl"
>     | "shotgun_mo_swim_fr"
>     | "shotgun_mo_swim_l"
>     | "shotgun_mo_swim_r"
>     | "sled_ba_relaxed_idle"
>     | "dead_02"
>     | "dead_swim_loop"
>     | "dead_swim_start"
>     | "standup_nw_back"
>     | "standup_nw_stomach"
>     | "staff_ac_holster_staff_l"
>     | "staff_ac_holster_staff_l_ub"
>     | "staff_co_attack_2"
>     | "staff_co_attack_2_mub"
>     | "staff_co_attack_mub"
>     | "twohand_ac_holster_back_r"
>     | "twohand_ac_holster_back_r_mub"
>     | "twohand_ac_holster_back_r_ub"
>     | "twohand_ac_omizutori"
>     | "twohand_ac_watergun"
>     | "twohand_ba_combat_idle"
>     | "twohand_ba_combat_idle_rand_1"
>     | "twohand_ba_combat_idle_rand_2"
>     | "twohand_ba_combat_idle_rand_3"
>     | "twohand_ba_combat_idle_rand_4"
>     | "twohand_ba_combat_idle_rand_5"
>     | "twohand_ba_idle_swim"
>     | "twohand_co_attack"
>     | "twohand_co_attack_2"
>     | "twohand_co_attack_2_mub"
>     | "twohand_co_attack_mub"
>     | "twohand_co_sk_fastattack_1_mub"
>     | "twohand_co_sk_fastattack_3_mub"
>     | "twohand_co_sk_streakattack_1"
>     | "twohand_co_sk_streakattack_1_mub"
>     | "twohand_co_sk_streakattack_2"
>     | "twohand_co_sk_streakattack_2_mub"
>     | "twohand_co_sk_streakattack_3"
>     | "twohand_co_sk_streakattack_3_mub"
>     | "twohand_co_sk_swim_fastattack_2_ub"
>     | "twohand_co_sk_swim_fastattack_3_ub"
>     | "twohand_co_sk_swim_fastattack_4_ub"
>     | "twohand_co_sk_swim_streakattack_1_ub"
>     | "twohand_co_sk_swim_streakattack_2_ub"
>     | "twohand_co_sk_swim_streakattack_3_ub"
>     | "twohand_co_sk_swim_weapon_blunt_2_ub"
>     | "twohand_co_sk_swim_weapon_blunt_3_cast_ub"
>     | "twohand_co_sk_swim_weapon_blunt_3_launch_ub"
>     | "twohand_co_sk_swim_weapon_blunt_ub"
>     | "twohand_co_sk_swim_weapon_pierce_2_ub"
>     | "twohand_co_sk_swim_weapon_pierce_ub"
>     | "twohand_co_sk_swim_weapon_slash_2_ub"
>     | "twohand_co_sk_swim_weapon_slash_3_ub"
>     | "twohand_co_sk_weapon_blunt"
>     | "twohand_co_sk_weapon_blunt_2"
>     | "twohand_co_sk_weapon_blunt_2_diff"
>     | "twohand_co_sk_weapon_blunt_2_diff2"
>     | "twohand_co_sk_weapon_blunt_2_diff2_mub"
>     | "twohand_co_sk_weapon_blunt_2_diff_mub"
>     | "twohand_co_sk_weapon_blunt_2_mub"
>     | "twohand_co_sk_weapon_blunt_3_cast"
>     | "twohand_co_sk_weapon_blunt_3_launch"
>     | "twohand_co_sk_weapon_blunt_differ"
>     | "twohand_co_sk_weapon_blunt_differ_mub"
>     | "twohand_co_sk_weapon_blunt_mub"
>     | "twohand_co_sk_weapon_pierce_2"
>     | "twohand_co_sk_weapon_pierce_2_mub"
>     | "twohand_co_sk_weapon_pierce_mub"
>     | "twohand_co_sk_weapon_slash"
>     | "twohand_co_sk_weapon_slash_2"
>     | "twohand_co_sk_weapon_slash_2_mub"
>     | "twohand_co_sk_weapon_slash_3"
>     | "twohand_co_sk_weapon_slash_3_mub"
>     | "twohand_co_sk_weapon_slash_differ"
>     | "twohand_co_sk_weapon_slash_differ_mub"
>     | "twohand_co_sk_weapon_slash_mub"
>     | "twohand_mo_combat_runtoidle_b"
>     | "twohand_mo_combat_runtoidle_f"
>     | "twohand_mo_combat_runtoidle_l"
>     | "twohand_mo_combat_runtoidle_r"
>     | "twohand_mo_jump_s_end"
>     | "twohand_mo_jump_walk_b_land"
>     | "twohand_mo_jump_walk_l_land"
>     | "twohand_mo_jump_walk_r_land"
>     | "twohand_mo_normal_walk_fl"
>     | "twohand_mo_normal_walk_fr"
>     | "twohand_mo_normal_walk_r"
>     | "twohand_mo_swim_b"
>     | "twohand_mo_swim_f"
>     | "twohand_mo_swim_fr"
>     | "twohand_mo_swim_l"
>     | "twohand_mo_swim_r"
>     | "twohand_re_combat_critical"
>     | "twohand_re_combat_hit"
>     | "twohand_re_combat_hit_l_mub"
>     | "twohand_re_combat_hit_mub"
>     | "twohand_re_combat_hit_r_mub"
>     | "twohand_re_combat_parry"
>     | "onehand_co_sk_swim_streakattack_1_ub"
>     | "onehand_co_sk_swim_streakattack_2_ub"
>     | "onehand_co_sk_swim_streakattack_3_ub"
>     | "twoswords_co_sk_dashpierce"
>     | "twoswords_co_sk_dashslash"
>     | "twoswords_co_sk_fastattack_1"
>     | "twoswords_co_sk_fastattack_1_mub"
>     | "twoswords_co_sk_fastattack_2"
>     | "twoswords_co_sk_fastattack_2_mub"
>     | "twoswords_co_sk_fastattack_3"
>     | "twoswords_co_sk_fastattack_3_mub"
>     | "twoswords_co_sk_fastattack_4"
>     | "twoswords_co_sk_fastattack_4_mub"
>     | "twoswords_co_sk_hackattack_1"
>     | "twoswords_co_sk_hackattack_2"
>     | "twoswords_co_sk_hackattack_3"
>     | "twoswords_co_sk_hackattack_4"
>     | "twoswords_co_sk_jumpattack"
>     | "twoswords_co_sk_jumpattack_2"
>     | "twoswords_co_sk_piece_1"
>     | "twoswords_co_sk_piece_1_mub"
>     | "twoswords_co_sk_piece_2"
>     | "twoswords_co_sk_piece_3"
>     | "twoswords_co_sk_piece_3_mub"
>     | "twoswords_co_sk_streakattack_1"
>     | "twoswords_co_sk_streakattack_1_mub"
>     | "twoswords_co_sk_streakattack_2"
>     | "twoswords_co_sk_streakattack_3"
>     | "twoswords_co_sk_streakattack_3_mub"
>     | "twoswords_co_sk_swim_dashslash_ub"
>     | "twoswords_co_sk_swim_fastattack_1_ub"
>     | "twoswords_co_sk_swim_fastattack_2_ub"
>     | "twoswords_co_sk_swim_fastattack_4"
>     | "twoswords_co_sk_swim_fastattack_4_ub"
>     | "twoswords_co_sk_swim_hackattack_1_ub"
>     | "twoswords_co_sk_swim_hackattack_2_ub"
>     | "twoswords_co_sk_swim_hackattack_3_ub"
>     | "twoswords_co_sk_swim_hackattack_4_ub"
>     | "twoswords_co_sk_swim_jumpattack_2_ub"
>     | "twoswords_co_sk_swim_jumpattack_ub"
>     | "twoswords_co_sk_swim_leapattack_ub"
>     | "twoswords_co_sk_swim_piece_1_ub"
>     | "twoswords_co_sk_swim_piece_2_ub"
>     | "twoswords_co_sk_swim_piece_3_ub"
>     | "twoswords_co_sk_swim_streakattack_1_ub"
>     | "twoswords_co_sk_swim_streakattack_2_ub"
>     | "twoswords_co_sk_swim_throwdagger_ub"
>     | "twoswords_co_sk_swim_weapon_pierce_ub"
>     | "twoswords_co_sk_swim_weapon_slash_3_ub"
>     | "twoswords_co_sk_swim_weapon_slash_ub"
>     | "twoswords_co_sk_throwdagger"
>     | "twoswords_co_sk_throwdagger_mub"
>     | "twoswords_co_sk_turnslash"
>     | "twoswords_co_sk_weapon_blunt"
>     | "twoswords_co_sk_weapon_blunt_differ"
>     | "twoswords_co_sk_weapon_blunt_differ_mub"
>     | "twoswords_co_sk_weapon_blunt_mub"
>     | "twoswords_co_sk_weapon_pierce"
>     | "twoswords_co_sk_weapon_pierce_mub"
>     | "twoswords_co_sk_weapon_slash"
>     | "twoswords_co_sk_weapon_slash_3"
>     | "twoswords_co_sk_weapon_slash_3_mub"
>     | "twoswords_co_sk_weapon_slash_differ_mub"
>     | "twoswords_co_sk_weapon_slash_mub"
>     | "wildboar_mo_normal_run_f"
>     | "wildboar_mo_normal_sprint_f"
>     | "wildboar_mo_relaxed_idletorun_f"
>     | "wildboar_mo_relaxed_runtoidle_f"
>     | "wyvern_ac_coin_launch"
>     | "wyvern_ac_gliding_idle"
>     | "wyvern_ba_relaxed_idle"
>     | "wyvern_mo_normal_run_f"
> ```

#### Method: SetCustomizingPreviewCloth
```lua
(method) ModelView:SetCustomizingPreviewCloth(index: number)
```
> Sets the custom preview cloth index.

#### Method: SetCustomizingPupilColor
```lua
(method) ModelView:SetCustomizingPupilColor(r: number, g: number, b: number, range: `PR_BOTH`|`PR_LEFT`|`PR_RIGHT`)
```
> Sets the custom pupil color for a specified range.
> 
> @*param* `r` — (min: `0`, max: `255`)
> 
> @*param* `g` — (min: `0`, max: `255`)
> 
> @*param* `b` — (min: `0`, max: `255`)
> 
> ```lua
> -- api/X2CustomizingUnit
> range:
>     | `PR_BOTH`
>     | `PR_LEFT`
>     | `PR_RIGHT`
> ```

#### Method: SetSmile
```lua
(method) ModelView:SetSmile(smile: boolean)
```
> Enables/Disables smiling for the ModelView.
> 
> @*param* `smile` — (default: `false`)

#### Method: SetTextureSize
```lua
(method) ModelView:SetTextureSize(width: number, height: number)
```
> Sets the texture `width` and `height` of the ModelView.

#### Method: SetRotationX
```lua
(method) ModelView:SetRotationX(angle: number)
```
> @*param* `angle` — in degrees. (default: `0`)

#### Method: SetRotation
```lua
(method) ModelView:SetRotation(angle: number)
```
> Sets the rotation `angle` for the ModelView.
> 
> @*param* `angle` — in degrees. (default: `0`)

#### Method: SetModelViewExtent
```lua
(method) ModelView:SetModelViewExtent(width: number, height: number)
```
> Sets the extent `width` and `height` of the ModelView.

#### Method: ShowItem
```lua
(method) ModelView:ShowItem(itemType: number)
  -> success: boolean
  2. initModel: boolean
```
> Shows an item on the model. Some items can overwrite the model.
> 
> @*return* `success`
> 
> @*return* `initModel` — do i need to init the model true or false

#### Method: ToggleCosplayEquipped
```lua
(method) ModelView:ToggleCosplayEquipped(equipped: boolean)
```
> Enables/Disables cosplay `equipped` for the ModelView.
> 
> @*param* `equipped` — (default: `true`)

#### Method: StopAnimation
```lua
(method) ModelView:StopAnimation()
```
> Stops the animation for the ModelView.

#### Method: UpdateDyeColor
```lua
(method) ModelView:UpdateDyeColor(r: number, g: number, b: number)
```
> Updates the dye color for dyeable cosplay items.
> 
> @*param* `r` — (min: `0`, max: `255`)
> 
> @*param* `g` — (min: `0`, max: `255`)
> 
> @*param* `b` — (min: `0`, max: `255`)

#### Method: UnequipItemSlot
```lua
(method) ModelView:UnequipItemSlot(itemSlot: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27))
```
> Unequips an item from the specified slot. `ModelView:ApplyModel` after is required.
> 
> ```lua
> -- api/X2Equipment
> itemSlot:
>     | `ES_ARMS`
>     | `ES_BACK`
>     | `ES_BACKPACK`
>     | `ES_BEARD`
>     | `ES_BODY`
>     | `ES_CHEST`
>     | `ES_COSPLAY`
>     | `ES_COSPLAYLOOKS`
>     | `ES_EAR_1`
>     | `ES_EAR_2`
>     | `ES_FACE`
>     | `ES_FEET`
>     | `ES_FINGER_1`
>     | `ES_FINGER_2`
>     | `ES_GLASSES`
>     | `ES_HAIR`
>     | `ES_HANDS`
>     | `ES_HEAD`
>     | `ES_HORNS`
>     | `ES_INVALID`
>     | `ES_LEGS`
>     | `ES_MAINHAND`
>     | `ES_MUSICAL`
>     | `ES_NECK`
>     | `ES_OFFHAND`
>     | `ES_RACE_COSPLAY`
>     | `ES_RACE_COSPLAYLOOKS`
>     | `ES_RANGED`
>     | `ES_TAIL`
>     | `ES_UNDERPANTS`
>     | `ES_UNDERSHIRT`
>     | `ES_WAIST`
> ```

#### Method: SetCustomizingPupil
```lua
(method) ModelView:SetCustomizingPupil(index: number, range: `PR_BOTH`|`PR_LEFT`|`PR_RIGHT`)
```
> Sets the custom pupil index for a specified range.
> 
> ```lua
> -- api/X2CustomizingUnit
> range:
>     | `PR_BOTH`
>     | `PR_LEFT`
>     | `PR_RIGHT`
> ```

#### Method: SetModelViewCoords
```lua
(method) ModelView:SetModelViewCoords(x: number, y: number, w: number, h: number)
```
> Sets the coords of the ModelView.
> 
> @*param* `x` — origin bottom right
> 
> @*param* `y` — origin bottom right
> 
> @*param* `w` — width of the model
> 
> @*param* `h` — height of the model

#### Method: SetIngameShopCamMode
```lua
(method) ModelView:SetIngameShopCamMode(ingameShop: boolean)
```
> Sets the in-game shop mode for the ModelView.

#### Method: SetCustomizingTail
```lua
(method) ModelView:SetCustomizingTail(index: number)
```
> Sets the custom tail index.

#### Method: SetCustomizingSkinColor
```lua
(method) ModelView:SetCustomizingSkinColor(index: number)
```
> Sets the custom skin color index.

#### Method: SetCustomizingScar
```lua
(method) ModelView:SetCustomizingScar(index: number, x: number, y: number, scale: number, rotate: number, weight: number)
```
> Sets the custom scar parameters.
> 
> @*param* `weight` — (min: `0`, max: `1`)

#### Method: SetModelViewBackground
```lua
(method) ModelView:SetModelViewBackground(path: string, key?: string)
```
> Sets the background of the ModelView. `ModelView:SetDisableColorGrading`
> required to prevent flashing.
> ```lua
> widget:SetModelViewBackground("ui/itemshop.dds", "character_bg")
> widget:SetDisableColorGrading(true)
> ```

#### Method: SetCustomizingTattoo
```lua
(method) ModelView:SetCustomizingTattoo(index: number, weight: number)
```
> Sets the custom tattoo index and weight.
> 
> @*param* `weight` — (min: `0`, max: `1`)

#### Method: SetEquipSlotFromCharacter
```lua
(method) ModelView:SetEquipSlotFromCharacter(index: `ES_ARMS`|`ES_BACKPACK`|`ES_BACK`|`ES_BEARD`|`ES_BODY`...(+27))
```
> Sets the equipment from a character slot to the current model.
> 
> ```lua
> -- api/X2Equipment
> index:
>     | `ES_ARMS`
>     | `ES_BACK`
>     | `ES_BACKPACK`
>     | `ES_BEARD`
>     | `ES_BODY`
>     | `ES_CHEST`
>     | `ES_COSPLAY`
>     | `ES_COSPLAYLOOKS`
>     | `ES_EAR_1`
>     | `ES_EAR_2`
>     | `ES_FACE`
>     | `ES_FEET`
>     | `ES_FINGER_1`
>     | `ES_FINGER_2`
>     | `ES_GLASSES`
>     | `ES_HAIR`
>     | `ES_HANDS`
>     | `ES_HEAD`
>     | `ES_HORNS`
>     | `ES_INVALID`
>     | `ES_LEGS`
>     | `ES_MAINHAND`
>     | `ES_MUSICAL`
>     | `ES_NECK`
>     | `ES_OFFHAND`
>     | `ES_RACE_COSPLAY`
>     | `ES_RACE_COSPLAYLOOKS`
>     | `ES_RANGED`
>     | `ES_TAIL`
>     | `ES_UNDERPANTS`
>     | `ES_UNDERSHIRT`
>     | `ES_WAIST`
> ```

#### Method: SetDisableColorGrading
```lua
(method) ModelView:SetDisableColorGrading(disable: boolean)
```
> Disables color grading to prevent flickering when using
> `ModelView:SetModelViewBackground`.
> 
> @*param* `disable` — (default: `false`)

#### Method: SetFreeze
```lua
(method) ModelView:SetFreeze(isStop: boolean)
```
> Sets `isStop` for the ModelView.

#### Method: SetFov
```lua
(method) ModelView:SetFov(angle: number)
```
> Sets the fov `angle` for the ModelView.
> 
> @*param* `angle` — in degrees (default: `20`)

#### Method: ZoomInOut
```lua
(method) ModelView:ZoomInOut(yAmt: number)
```
> Zooms in/out `yAmt` the model for the ModelView.

#### Method: PayBeautyShop
```lua
(method) ModelView:PayBeautyShop()
```
> Processes payment for the beauty shop.

#### Method: IsFrozen
```lua
(method) ModelView:IsFrozen()
  -> frozen: boolean
```
> Returns a boolean `frozen` indicating if the model is frozen for ModelView.

#### Method: GetCustomEyebrow
```lua
(method) ModelView:GetCustomEyebrow()
  -> number|nil
```
> Retrieves the custom eyebrow index.

#### Method: GetCustomEyebrowColor
```lua
(method) ModelView:GetCustomEyebrowColor()
  -> red: number
  2. green: number
  3. blue: number
```
> Retrieves the custom eyebrow color.
> 
> @*return* `red` — (min: `0`, max: `255`, default: `0`)
> 
> @*return* `green` — (min: `0`, max: `255`, default: `0`)
> 
> @*return* `blue` — (min: `0`, max: `255`, default: `0`)

#### Method: GetCustomDeco
```lua
(method) ModelView:GetCustomDeco()
  -> index: number|nil
  2. weight: number|nil
```
> Retrieves the custom decoration index and weight.
> 
> @*return* `index`
> 
> @*return* `weight` — (min: `0`, max: `1`)

#### Method: GetCustomBodyNormal
```lua
(method) ModelView:GetCustomBodyNormal()
  -> index: number|nil
  2. weight: number|nil
```
> Retrieves the custom body normal index and weight.
> 
> @*return* `index`
> 
> @*return* `weight` — (min: `0`, max: `1`)

#### Method: EquipItem
```lua
(method) ModelView:EquipItem(itemType: number)
```
> Equips the `itemType` on to the model for the ModelView. stops any playing
> animation.

#### Method: GetCustomFaceDiffuse
```lua
(method) ModelView:GetCustomFaceDiffuse()
  -> nil
```
> Retrieves the custom face diffuse index.

#### Method: GetCustomHair
```lua
(method) ModelView:GetCustomHair()
  -> number|table|nil
```
> Retrieves the custom hair data.

#### Method: GetCustomFaceNormal
```lua
(method) ModelView:GetCustomFaceNormal()
  -> index: number|nil
  2. weight: number|nil
```
> Retrieves the custom face normal index and weight.
> 
> @*return* `index`
> 
> @*return* `weight` — (min: `0`, max: `1`)

#### Method: GetCustomHorn
```lua
(method) ModelView:GetCustomHorn()
  -> number|nil
```
> Retrieves the custom horn index.

#### Method: GetCustomHairColor
```lua
(method) ModelView:GetCustomHairColor()
  -> customHairColor: number|CustomHairColor|nil
```
> Retrieves the custom hair color.
> See: [CustomHairColor](../types/classes.md#class-customhaircolor)

#### Method: GetCustomHornColor
```lua
(method) ModelView:GetCustomHornColor()
  -> hornColor: number|nil
```
> Retrieves the custom horn color index.

#### Method: EquipCostume
```lua
(method) ModelView:EquipCostume(itemType: number, itemGrade: `0`|`10`|`11`|`12`|`1`...(+8), r: number, g: number, b: number)
```
> Equips a costume item on the model with specified color.
> 
> @*param* `r` — (min: `0`, max: `255`)
> 
> @*param* `g` — (min: `0`, max: `255`)
> 
> @*param* `b` — (min: `0`, max: `255`)
> 
> ```lua
> itemGrade:
>     | `0` -- NONE
>     | `1` -- BASIC
>     | `2` -- GRAND
>     | `3` -- RARE
>     | `4` -- ARCANE
>     | `5` -- HEROIC
>     | `6` -- UNIQUE
>     | `7` -- CELESTIAL
>     | `8` -- DIVNE
>     | `9` -- EPIC
>     | `10` -- LEGENDARY
>     | `11` -- MYTHIC
>     | `12` -- ETERNAL
> ```

#### Method: ApplyPresetParam
```lua
(method) ModelView:ApplyPresetParam(part: number, index: number)
```
> Applies a preset parameter to a specific part of the model.

#### Method: AddRotationX
```lua
(method) ModelView:AddRotationX(angle: number)
```
> @*param* `angle` — in degrees.

#### Method: AddRotation
```lua
(method) ModelView:AddRotation(angle: number)
```
> Adds rotation `angle` to the ModelView. positive is left negative is right.
> 
> @*param* `angle` — in degrees.

#### Method: AddModelPosZ
```lua
(method) ModelView:AddModelPosZ(offset: number)
```


#### Method: ClearModel
```lua
(method) ModelView:ClearModel()
```
> Clears the model for the ModelView.

#### Method: AdjustCameraPos
```lua
(method) ModelView:AdjustCameraPos(offsetX: number, offsetY: number, offsetZ: number)
```
> Adjusts the cameras position for the ModelView.
> 
> @*param* `offsetX` — center
> 
> @*param* `offsetY` — zoom
> 
> @*param* `offsetZ` — height

#### Method: ApplyCustomizerParamToUnit
```lua
(method) ModelView:ApplyCustomizerParamToUnit()
```
> Applies customizer parameters to the unit in the ModelView.

#### Method: AdjustCameraPosToModel
```lua
(method) ModelView:AdjustCameraPosToModel(offsetY: number, offsetZ: number)
```
> Adjusts the camera position relative to the model in the ModelView.

#### Method: ApplyModelByDyeingItem
```lua
(method) ModelView:ApplyModelByDyeingItem(itemType: number)
```


#### Method: ApplyModel
```lua
(method) ModelView:ApplyModel()
```
> Applies the model to the ModelView.

#### Method: ModifyFaceParamValue
```lua
(method) ModelView:ModifyFaceParamValue(index: number, weight: number)
```
> Modifies the value of a face parameter.
> 
> @*param* `weight` — (min: `0`, max: `1`)

#### Method: GetCustomLipColor
```lua
(method) ModelView:GetCustomLipColor()
  -> red: number
  2. green: number
  3. blue: number
```
> Retrieves the custom lip color.
> 
> @*return* `red` — (min: `0`, max: `255`, default: `0`)
> 
> @*return* `green` — (min: `0`, max: `255`, default: `0`)
> 
> @*return* `blue` — (min: `0`, max: `255`, default: `0`)

#### Method: GetCustomPreviewCloth
```lua
(method) ModelView:GetCustomPreviewCloth()
  -> number|nil
```
> Retrieves the custom preview cloth index.

#### Method: GetSelectedPresetIndex
```lua
(method) ModelView:GetSelectedPresetIndex(part: number)
  -> nil
```
> Retrieves the selected preset index for a specific part.

#### Method: GetTwoToneHairStatus
```lua
(method) ModelView:GetTwoToneHairStatus()
  -> firstWidth: number|nil
  2. secondWidth: number|nil
```
> Retrieves the two-tone hair status.
> 
> @*return* `firstWidth` — Dye Length. (min: `0`, max: `1`)
> 
> @*return* `secondWidth` — Highlights. (min: `0`, max: `1`)

#### Method: GetScarStatus
```lua
(method) ModelView:GetScarStatus()
  -> info: table|nil
```
> Retrieves the scar status of the model.

#### Method: GetRotationX
```lua
(method) ModelView:GetRotationX()
  -> angle: number
```


#### Method: GetRotation
```lua
(method) ModelView:GetRotation()
  -> rotation: number
```
> Returns `rotation` for the ModelView.
> 
> @*return* `rotation` — in degrees. (default: `0`)

#### Method: HasDiffWithClientUnit
```lua
(method) ModelView:HasDiffWithClientUnit()
  -> diffWithClientUnit: boolean
```
> Checks if the model, excluding equipment, differs from the client unit.

#### Method: InitBeautyShop
```lua
(method) ModelView:InitBeautyShop()
```
> Initializes beauty shop mode.

#### Method: Init
```lua
(method) ModelView:Init(unit: "player"|"playerpet"|"playerpet1"|"playerpet2"|"slave"...(+153), createModel: boolean)
  -> unknown: boolean
```
> Initializes the ModelView with a unit and model creation option.
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

#### Method: InitCustomizerControl
```lua
(method) ModelView:InitCustomizerControl()
```
> Initializes customizer controls for the ModelView.

#### Method: InitByModelRef
```lua
(method) ModelView:InitByModelRef(modelRef: number, race: "daru"|"dwarf"|"elf"|"fairy"|"firran"...(+5), gender: "female"|"male"|"none", butlerMode: boolean)
```
> Initializes the ModelView with a model reference, race, gender, and butler
> mode.
> 
> ```lua
> race:
>     | "daru"
>     | "dwarf"
>     | "elf"
>     | "fairy"
>     | "firran"
>     | "harani"
>     | "none"
>     | "nuian"
>     | "returned"
>     | "warborn"
> 
> gender:
>     | "none"
>     | "male"
>     | "female"
> ```

#### Method: GetCustomMakeUp
```lua
(method) ModelView:GetCustomMakeUp()
  -> index: number|nil
  2. weight: number|nil
```
> Retrieves the custom makeup index and weight.
> 
> @*return* `index`
> 
> @*return* `weight` — (min: `0`, max: `1`)

#### Method: GetRace
```lua
(method) ModelView:GetRace()
  -> raceId: `RACE_DARU`|`RACE_DWARF`|`RACE_ELF`|`RACE_FAIRY`|`RACE_FERRE`...(+5)
```
> Returns the `raceId` for the model of the ModelView.
> 
> @*return* `raceId` — (default: `0`)
> 
> ```lua
> -- api/X2Unit
> raceId:
>     | `RACE_DARU` -- 9
>     | `RACE_DWARF` -- 3
>     | `RACE_ELF` -- 4
>     | `RACE_FAIRY` -- 2
>     | `RACE_FERRE` -- 6
>     | `RACE_HARIHARAN` -- 5
>     | `RACE_NONE` -- 0
>     | `RACE_NUIAN` -- 1
>     | `RACE_RETURNED` -- 7
>     | `RACE_WARBORN` -- 8
> ```

#### Method: GetFaceTargetCurValue
```lua
(method) ModelView:GetFaceTargetCurValue(index: number)
  -> faceTargetCurValue: number
```
> Retrieves the current value for a face target parameter.
> 
> @*return* `faceTargetCurValue` — (default: `0`)

#### Method: GetCustomScar
```lua
(method) ModelView:GetCustomScar()
  -> index: number|nil
```
> Retrieves the custom scar index.

#### Method: GetCustomPupilColor
```lua
(method) ModelView:GetCustomPupilColor(range: `PR_BOTH`|`PR_LEFT`|`PR_RIGHT`)
  -> red: number
  2. green: number
  3. blue: number
```
> Retrieves the custom pupil color for a specified eye.
> 
> @*return* `red` — (min: `0`, max: `255`, default: `0`)
> 
> @*return* `green` — (min: `0`, max: `255`, default: `0`)
> 
> @*return* `blue` — (min: `0`, max: `255`, default: `0`)
> 
> ```lua
> -- api/X2CustomizingUnit
> range:
>     | `PR_BOTH`
>     | `PR_LEFT`
>     | `PR_RIGHT`
> ```

#### Method: GetCustomPupil
```lua
(method) ModelView:GetCustomPupil(range: `PR_BOTH`|`PR_LEFT`|`PR_RIGHT`)
  -> index: number|nil
```
> Retrieves the custom pupil index for a given range.
> 
> ```lua
> -- api/X2CustomizingUnit
> range:
>     | `PR_BOTH`
>     | `PR_LEFT`
>     | `PR_RIGHT`
> ```

#### Method: GetGender
```lua
(method) ModelView:GetGender()
  -> genderId: `GENDER_FEMALE`|`GENDER_MALE`|`GENDER_NONE`
```
> Returns `gender` for the ModelView.
> 
> @*return* `genderId` — (default: `0`)
> 
> ```lua
> -- api/X2Unit
> genderId:
>     | `GENDER_FEMALE` -- 2
>     | `GENDER_MALE` -- 1
>     | `GENDER_NONE` -- 0
> ```

#### Method: GetCustomSkinColor
```lua
(method) ModelView:GetCustomSkinColor()
  -> number|nil
```
> Retrieves the custom skin color index.

#### Method: GetCustomTattoo
```lua
(method) ModelView:GetCustomTattoo()
  -> index: number|nil
  2. weight: number|nil
```
> Retrieves the custom tattoo index and weight.
> 
> @*return* `index`
> 
> @*return* `weight` — (min: `0`, max: `1`)

#### Method: GetCustomTail
```lua
(method) ModelView:GetCustomTail()
  -> number|nil
```
> Retrieves the custom tail index.

#### Method: GetCustomizingOddEyeUsable
```lua
(method) ModelView:GetCustomizingOddEyeUsable()
  -> customizingOddEyeUsable: boolean
```
> Checks if odd-eye customization is usable.

#### Method: GetCustomizingDecoColor
```lua
(method) ModelView:GetCustomizingDecoColor()
  -> red: number
  2. green: number
  3. blue: number
```
> Retrieves the custom decoration color.
> 
> @*return* `red` — (min: `0`, max: `255`, default: `0`)
> 
> @*return* `green` — (min: `0`, max: `255`, default: `0`)
> 
> @*return* `blue` — (min: `0`, max: `255`, default: `0`)

#### Method: ZoomInOutBeautyShop
```lua
(method) ModelView:ZoomInOutBeautyShop(amount: `-1`|`0`|`1`|`2`)
```
> Zooms in or out in beauty shop mode.
> 
> @*param* `amount` — (default: `2`)
> 
> ```lua
> widget:ZoomInOutBeautyShop(1) -- Set the default zoom.
> 
> widget:SetHandler("OnWheelUp", function(self)
>   self:ZoomInOutBeautyShop(-1) -- Set how much to change.
> end)
> 
> widget:SetHandler("OnWheelDown", function(self)
>   self:ZoomInOutBeautyShop(1) -- Set how much to change.
> end)
> ```
> 
> ```lua
> amount:
>     | `-1` -- FIRST
>     | `0` -- SECOND
>     | `1` -- THIRD
>     | `2` -- FOURTH
> ```

