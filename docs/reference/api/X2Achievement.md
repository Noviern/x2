# X2Achievement
## Globals
**AF_ALL**

`integer`

**AF_COMPLETE**

`integer`

**AF_INVALID**

`integer`

**AF_TRACING**

`integer`

**AF_UNCOMPLETE**

`integer`

**EAK_ACHIEVEMENT**

`integer`

**EAK_ARCHERAGE**

`integer`

**EAK_COLLECTION**

`integer`

**EAK_RACIAL_MISSION**

`integer`

**MAX_TRACING_ACHIEVEMENT**

`integer`

**TADT_ARCHE_PASS**

`integer`

**TADT_EXPEDITION**

`integer`

**TADT_EXPEDITION_PUBLIC**

`integer`

**TADT_FAMILY**

`integer`

**TADT_HERO**

`integer`

**TADT_MAX**

`integer`

**TADT_TODAY**

`integer`

**X2Achievement**

`X2Achievement`

## Aliases
**ACHIEVEMENT_FILTER**

`AF_ALL`|`AF_COMPLETE`|`AF_INVALID`|`AF_TRACING`|`AF_UNCOMPLETE`

```lua
-- api/X2Achievement
-- Achievement Filter
ACHIEVEMENT_FILTER:
    | `AF_ALL`
    | `AF_COMPLETE` -- Doesnt work. Produces the same result as AF_ALL.
    | `AF_INVALID` -- Doesnt work. Produces the same result as AF_ALL.
    | `AF_TRACING`
    | `AF_UNCOMPLETE` -- Doesnt work. Produces the same result as AF_ALL.
```

**ENUM_ACHIEVEMENT_KIND**

`EAK_ACHIEVEMENT`|`EAK_ARCHERAGE`|`EAK_COLLECTION`|`EAK_RACIAL_MISSION`

```lua
-- api/X2Achievement
ENUM_ACHIEVEMENT_KIND:
    | `EAK_ACHIEVEMENT`
    | `EAK_ARCHERAGE`
    | `EAK_COLLECTION`
    | `EAK_RACIAL_MISSION`
```

**TODAY_ACHIEVEMENT_DAILY_TYPE**

`TADT_ARCHE_PASS`|`TADT_EXPEDITION_PUBLIC`|`TADT_EXPEDITION`|`TADT_FAMILY`|`TADT_HERO`...(+2)

```lua
-- api/X2Achievement
TODAY_ACHIEVEMENT_DAILY_TYPE:
    | `TADT_ARCHE_PASS`
    | `TADT_EXPEDITION`
    | `TADT_EXPEDITION_PUBLIC`
    | `TADT_FAMILY`
    | `TADT_HERO`
    | `TADT_MAX`
    | `TADT_TODAY`
```

## Classes
### Class: X2Achievement
#### Method: AddTracingAchievement
```lua
(method) X2Achievement:AddTracingAchievement(achievementKind: `EAK_ACHIEVEMENT`|`EAK_ARCHERAGE`|`EAK_COLLECTION`|`EAK_RACIAL_MISSION`, achievementType: number)
  -> success: boolean
```
> Adds an achievement to the ambitions category under the specified kind.
> 
> @*param* `achievementKind` — The achievement kind.
> 
> @*param* `achievementType` — The achievement type (id) to add.
> 
> @*return* `success` — `true` if the achievement was added successfully, `false` otherwise.
> 
> ```lua
> -- api/X2Achievement
> achievementKind:
>     | `EAK_ACHIEVEMENT`
>     | `EAK_ARCHERAGE`
>     | `EAK_COLLECTION`
>     | `EAK_RACIAL_MISSION`
> ```

#### Method: GetTodayAssignmentInfo
```lua
(method) X2Achievement:GetTodayAssignmentInfo(todayType: `TADT_ARCHE_PASS`|`TADT_EXPEDITION_PUBLIC`|`TADT_EXPEDITION`|`TADT_FAMILY`|`TADT_HERO`...(+2), index: number)
  -> todayAssignmentInfo: TodayAssignmentInfo|nil
```
> Retrieves assignment information for the specified type and index.
> 
> @*param* `todayType` — The type of today’s assignments.
> 
> @*param* `index` — The index of the assignment.
> 
> @*return* `todayAssignmentInfo` — The assignment information, or `nil` if not found.
> 
> ```lua
> -- api/X2Achievement
> todayType:
>     | `TADT_ARCHE_PASS`
>     | `TADT_EXPEDITION`
>     | `TADT_EXPEDITION_PUBLIC`
>     | `TADT_FAMILY`
>     | `TADT_HERO`
>     | `TADT_MAX`
>     | `TADT_TODAY`
> ```
> 
> See: [TodayAssignmentInfo](../types/classes.md#class-todayassignmentinfo)

#### Method: GetTodayAssignmentGoal
```lua
(method) X2Achievement:GetTodayAssignmentGoal()
  -> todayAssignmentGoal: TodayAssignmentGoal[]
```
> Retrieves a table with daily contract completion rewards.
> 
> @*return* `todayAssignmentGoal` — A table of daily contract completion rewards.

#### Method: GetTodayAssignmentCount
```lua
(method) X2Achievement:GetTodayAssignmentCount(todayType: `TADT_ARCHE_PASS`|`TADT_EXPEDITION_PUBLIC`|`TADT_EXPEDITION`|`TADT_FAMILY`|`TADT_HERO`...(+2))
  -> todayAssignmentCount: number
```
> Retrieves the assignment count for the specified today type, defaulting to 7
> if not found.
> 
> @*param* `todayType` — The type of today’s assignments.
> 
> @*return* `todayAssignmentCount` — The number of assignments for the day.
> 
> ```lua
> -- api/X2Achievement
> todayType:
>     | `TADT_ARCHE_PASS`
>     | `TADT_EXPEDITION`
>     | `TADT_EXPEDITION_PUBLIC`
>     | `TADT_FAMILY`
>     | `TADT_HERO`
>     | `TADT_MAX`
>     | `TADT_TODAY`
> ```

#### Method: GetTodayAssignmentInfoForChange
```lua
(method) X2Achievement:GetTodayAssignmentInfoForChange(todayType: `TADT_ARCHE_PASS`|`TADT_EXPEDITION_PUBLIC`|`TADT_EXPEDITION`|`TADT_FAMILY`|`TADT_HERO`...(+2), index: number)
  -> todayAssignmentInfo: TodayAssignmentInfo|nil
```
> Retrieves assignment information for changing the specified type and index.
> 
> @*param* `todayType` — The type of today’s assignments.
> 
> @*param* `index` — The index of the assignment.
> 
> @*return* `todayAssignmentInfo` — The assignment information, or `nil` if not found.
> 
> ```lua
> -- api/X2Achievement
> todayType:
>     | `TADT_ARCHE_PASS`
>     | `TADT_EXPEDITION`
>     | `TADT_EXPEDITION_PUBLIC`
>     | `TADT_FAMILY`
>     | `TADT_HERO`
>     | `TADT_MAX`
>     | `TADT_TODAY`
> ```
> 
> See: [TodayAssignmentInfo](../types/classes.md#class-todayassignmentinfo)

#### Method: GetTodayAssignmentStatus
```lua
(method) X2Achievement:GetTodayAssignmentStatus()
  -> done: number
  2. total: number
```
> Retrieves the completion status of today’s assignments.
> 
> @*return* `done` — The number of completed assignments.
> 
> @*return* `total` — The total completion count.

#### Method: GetTodayAssignmentResetCount
```lua
(method) X2Achievement:GetTodayAssignmentResetCount(todayType: `TADT_ARCHE_PASS`|`TADT_EXPEDITION_PUBLIC`|`TADT_EXPEDITION`|`TADT_FAMILY`|`TADT_HERO`...(+2))
  -> resetCount: number
  2. maxCount: number
```
> Retrieves the reset count and maximum reset count for the specified today
> type.
> 
> @*param* `todayType` — The type of today’s assignments.
> 
> @*return* `resetCount` — The current reset count.
> 
> @*return* `maxCount` — The maximum reset count.
> 
> ```lua
> -- api/X2Achievement
> todayType:
>     | `TADT_ARCHE_PASS`
>     | `TADT_EXPEDITION`
>     | `TADT_EXPEDITION_PUBLIC`
>     | `TADT_FAMILY`
>     | `TADT_HERO`
>     | `TADT_MAX`
>     | `TADT_TODAY`
> ```

#### Method: IsTodayAssignmentQuest
```lua
(method) X2Achievement:IsTodayAssignmentQuest(todayType: `TADT_ARCHE_PASS`|`TADT_EXPEDITION_PUBLIC`|`TADT_EXPEDITION`|`TADT_FAMILY`|`TADT_HERO`...(+2), questType: number)
  -> todayAssignmentQuest: boolean
```
> Checks if the quest ID is in the today’s assignment quests and not already
> complete.
> 
> @*param* `todayType` — The type of today’s assignments.
> 
> @*param* `questType` — The quest type (id) to check.
> 
> @*return* `todayAssignmentQuest` — `true` if the quest is in the list and not complete, `false` otherwise.
> 
> ```lua
> -- api/X2Achievement
> todayType:
>     | `TADT_ARCHE_PASS`
>     | `TADT_EXPEDITION`
>     | `TADT_EXPEDITION_PUBLIC`
>     | `TADT_FAMILY`
>     | `TADT_HERO`
>     | `TADT_MAX`
>     | `TADT_TODAY`
> ```

#### Method: IsTracingAchievement
```lua
(method) X2Achievement:IsTracingAchievement(achievementKind: `EAK_ACHIEVEMENT`|`EAK_ARCHERAGE`|`EAK_COLLECTION`|`EAK_RACIAL_MISSION`, achievementType: number)
  -> tracingAchievement: boolean
```
> Checks if the specified achievement type in the given kind is being traced.
> 
> @*param* `achievementKind` — The achievement kind.
> 
> @*param* `achievementType` — The achievement type (id) to check.
> 
> @*return* `tracingAchievement` — `true` if the achievement is being traced, `false` otherwise.
> 
> ```lua
> -- api/X2Achievement
> achievementKind:
>     | `EAK_ACHIEVEMENT`
>     | `EAK_ARCHERAGE`
>     | `EAK_COLLECTION`
>     | `EAK_RACIAL_MISSION`
> ```

#### Method: GetSubcategoryInfo
```lua
(method) X2Achievement:GetSubcategoryInfo(subCategory: number)
  -> subcategoryInfo: SubcategoryInfo|nil
```
> Retrieves subcategory information if the specified subcategory exists.
> 
> @*param* `subCategory` — The subcategory to query.
> 
> @*return* `subcategoryInfo` — The subcategory information, or `nil` if not found.
> 
> See: [SubcategoryInfo](../types/classes.md#class-subcategoryinfo)

#### Method: GetCategories
```lua
(method) X2Achievement:GetCategories(achievementKind: `EAK_ACHIEVEMENT`|`EAK_ARCHERAGE`|`EAK_COLLECTION`|`EAK_RACIAL_MISSION`)
  -> categories: AchievementCategory[]|AchievementLevelSubCategory[]
```
> Retrieves categories for the specified kind, returning level subcategories
> for EAK_RACIAL_MISSION or regular categories otherwise.
> 
> @*param* `achievementKind` — The achievement kind.
> 
> @*return* `categories` — A table of categories or level subcategories for `EAK_RACIAL_MISSION`, or empty if kind is invalid.
> 
> ```lua
> -- api/X2Achievement
> achievementKind:
>     | `EAK_ACHIEVEMENT`
>     | `EAK_ARCHERAGE`
>     | `EAK_COLLECTION`
>     | `EAK_RACIAL_MISSION`
> ```
> 
> See:
>   * [AchievementCategory](../types/classes.md#class-achievementcategory)
>   * [AchievementLevelSubCategory](../types/classes.md#class-achievementlevelsubcategory)

#### Method: GetAchievementMainList
```lua
(method) X2Achievement:GetAchievementMainList(achievementKind: `EAK_ACHIEVEMENT`|`EAK_ARCHERAGE`|`EAK_COLLECTION`|`EAK_RACIAL_MISSION`, subCategoryType: number, achievementFilter: `AF_ALL`|`AF_COMPLETE`|`AF_INVALID`|`AF_TRACING`|`AF_UNCOMPLETE`)
  -> achievementMainList: number[]
```
> Retrieves a list of achievement types for the specified kind and subcategory
> with the given filter.
> 
> @*param* `achievementKind` — The achievement kind.
> 
> @*param* `subCategoryType` — The subcategory achievement type.
> 
> @*param* `achievementFilter` — The filter to apply.
> 
> @*return* `achievementMainList` — A table of achievement types, or empty if none exist.
> 
> ```lua
> -- api/X2Achievement
> achievementKind:
>     | `EAK_ACHIEVEMENT`
>     | `EAK_ARCHERAGE`
>     | `EAK_COLLECTION`
>     | `EAK_RACIAL_MISSION`
> 
> -- api/X2Achievement
> -- Achievement Filter
> achievementFilter:
>     | `AF_ALL`
>     | `AF_COMPLETE` -- Doesnt work. Produces the same result as AF_ALL.
>     | `AF_INVALID` -- Doesnt work. Produces the same result as AF_ALL.
>     | `AF_TRACING`
>     | `AF_UNCOMPLETE` -- Doesnt work. Produces the same result as AF_ALL.
> ```

#### Method: GetAchievementInfo
```lua
(method) X2Achievement:GetAchievementInfo(achievementType: number)
  -> achievementInfo: AchievementInfo|nil
```
> Retrieves achievement information if the specified type exists.
> 
> @*param* `achievementType` — The achievement type (id) to query.
> 
> @*return* `achievementInfo` — The achievement information, or `nil` if not found.
> 
> See: [AchievementInfo](../types/classes.md#class-achievementinfo)

#### Method: GetCategoryCount
```lua
(method) X2Achievement:GetCategoryCount(achievementKind: `EAK_ACHIEVEMENT`|`EAK_ARCHERAGE`|`EAK_COLLECTION`|`EAK_RACIAL_MISSION`, categoryType: number, subCategoryType: number, achievementFilter: `AF_ALL`|`AF_COMPLETE`|`AF_INVALID`|`AF_TRACING`|`AF_UNCOMPLETE`)
  -> complete: number
  2. total: number
```
> Retrieves the completed and total count for the specified kind, category, and
> subcategory with the given filter.
> 
> @*param* `achievementKind` — The achievement kind.
> 
> @*param* `categoryType` — The category type.
> 
> @*param* `subCategoryType` — The subcategory type.
> 
> @*param* `achievementFilter` — The filter to apply.
> 
> @*return* `complete` — The number of completed achievements.
> 
> @*return* `total` — The total number of achievements.
> 
> ```lua
> -- api/X2Achievement
> achievementKind:
>     | `EAK_ACHIEVEMENT`
>     | `EAK_ARCHERAGE`
>     | `EAK_COLLECTION`
>     | `EAK_RACIAL_MISSION`
> 
> -- api/X2Achievement
> -- Achievement Filter
> achievementFilter:
>     | `AF_ALL`
>     | `AF_COMPLETE` -- Doesnt work. Produces the same result as AF_ALL.
>     | `AF_INVALID` -- Doesnt work. Produces the same result as AF_ALL.
>     | `AF_TRACING`
>     | `AF_UNCOMPLETE` -- Doesnt work. Produces the same result as AF_ALL.
> ```

#### Method: GetAchievementName
```lua
(method) X2Achievement:GetAchievementName(achievementType: number)
  -> achievementName: string
```
> Retrieves the name of the specified achievement type.
> 
> @*param* `achievementType` — The achievement type (id) to query.
> 
> @*return* `achievementName` — The achievement name, or empty string if not found.

#### Method: GetAchievementTracingList
```lua
(method) X2Achievement:GetAchievementTracingList(achievementKind: `EAK_ACHIEVEMENT`|`EAK_ARCHERAGE`|`EAK_COLLECTION`|`EAK_RACIAL_MISSION`)
  -> achievementTracingList: number[]
```
> Retrieves a list of achievement types being traced for the specified kind.
> 
> @*param* `achievementKind` — The achievement kind.
> 
> @*return* `achievementTracingList` — A table of traced main achievement types, or empty if none exist.
> 
> ```lua
> -- api/X2Achievement
> achievementKind:
>     | `EAK_ACHIEVEMENT`
>     | `EAK_ARCHERAGE`
>     | `EAK_COLLECTION`
>     | `EAK_RACIAL_MISSION`
> ```

#### Method: GetAchievementSubList
```lua
(method) X2Achievement:GetAchievementSubList(mainType: number, achievementFilter: `AF_ALL`|`AF_COMPLETE`|`AF_INVALID`|`AF_TRACING`|`AF_UNCOMPLETE`)
  -> achievementSubList: AchievementSubList[]
```
> Retrieves a list of achievement sublists for the specified main type with the
> given filter.
> 
> @*param* `mainType` — The main achievement type.
> 
> @*param* `achievementFilter` — The filter to apply.
> 
> @*return* `achievementSubList` — A table of achievement sublists, or empty if none exist.
> 
> ```lua
> -- api/X2Achievement
> -- Achievement Filter
> achievementFilter:
>     | `AF_ALL`
>     | `AF_COMPLETE` -- Doesnt work. Produces the same result as AF_ALL.
>     | `AF_INVALID` -- Doesnt work. Produces the same result as AF_ALL.
>     | `AF_TRACING`
>     | `AF_UNCOMPLETE` -- Doesnt work. Produces the same result as AF_ALL.
> ```
> 
> See: [AchievementSubList](../types/classes.md#class-achievementsublist)

#### Method: RemoveTracingAchievement
```lua
(method) X2Achievement:RemoveTracingAchievement(achievementKind: `EAK_ACHIEVEMENT`|`EAK_ARCHERAGE`|`EAK_COLLECTION`|`EAK_RACIAL_MISSION`, achievementType: number)
```
> Removes the specified achievement type in the given kind from tracing.
> 
> @*param* `achievementKind` — The achievement kind.
> 
> @*param* `achievementType` — The achievement type (id) to remove.
> 
> ```lua
> -- api/X2Achievement
> achievementKind:
>     | `EAK_ACHIEVEMENT`
>     | `EAK_ARCHERAGE`
>     | `EAK_COLLECTION`
>     | `EAK_RACIAL_MISSION`
> ```

