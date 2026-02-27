# X2Quest
## Globals
**CBK_NORMAL**

`integer`

**CBK_SYSTEM**

`integer`

**CBK_THINK**

`integer`

**DOW_FRIDAY**

`integer`

**DOW_INVALID**

`integer`

**DOW_MONDAY**

`integer`

**DOW_SATURDAY**

`integer`

**DOW_SUNDAY**

`integer`

**DOW_THURSDAY**

`integer`

**DOW_TUESDAY**

`integer`

**DOW_WEDNESDAY**

`integer`

**MAX_CHRONICLE_INFO_ACTIVE_COUNT**

`integer`

**MAX_QUEST_OBJECTIVE**

`integer`

**QCS_COMPLETED**

`integer`

**QSTATFAILED_MAYBE_QUEST_LIST_FULL**

`integer`

**QUEST_MARK_ORDER_DAILY**

`integer`

**QUEST_MARK_ORDER_DAILY_HUNT**

`integer`

**QUEST_MARK_ORDER_LIVELIHOOD**

`integer`

**QUEST_MARK_ORDER_MAIN**

`integer`

**QUEST_MARK_ORDER_NORMAL**

`integer`

**QUEST_MARK_ORDER_SAGA**

`integer`

**QUEST_MARK_ORDER_WEEKLY**

`integer`

**X2Quest**

`X2Quest`

## Aliases
**CHAT_BUBBLE_KIND**

`CBK_NORMAL`|`CBK_SYSTEM`|`CBK_THINK`

```lua
-- api/X2Quest
CHAT_BUBBLE_KIND:
    | `CBK_NORMAL`
    | `CBK_SYSTEM`
    | `CBK_THINK`
```

**DAY_OF_WEEK**

`DOW_FRIDAY`|`DOW_INVALID`|`DOW_MONDAY`|`DOW_SATURDAY`|`DOW_SUNDAY`...(+3)

```lua
-- api/X2Quest
DAY_OF_WEEK:
    | `DOW_FRIDAY`
    | `DOW_INVALID`
    | `DOW_MONDAY`
    | `DOW_SATURDAY`
    | `DOW_SUNDAY`
    | `DOW_THURSDAY`
    | `DOW_TUESDAY`
    | `DOW_WEDNESDAY`
```

**QUEST_MARK_ORDER**

`QUEST_MARK_ORDER_DAILY_HUNT`|`QUEST_MARK_ORDER_DAILY`|`QUEST_MARK_ORDER_LIVELIHOOD`|`QUEST_MARK_ORDER_MAIN`|`QUEST_MARK_ORDER_NORMAL`...(+2)

```lua
-- api/X2Quest
QUEST_MARK_ORDER:
    | `QUEST_MARK_ORDER_DAILY`
    | `QUEST_MARK_ORDER_DAILY_HUNT`
    | `QUEST_MARK_ORDER_LIVELIHOOD`
    | `QUEST_MARK_ORDER_MAIN`
    | `QUEST_MARK_ORDER_NORMAL`
    | `QUEST_MARK_ORDER_SAGA`
    | `QUEST_MARK_ORDER_WEEKLY`
```

## Classes
### Class: X2Quest
#### Method: GetActiveQuestListCount
```lua
(method) X2Quest:GetActiveQuestListCount()
  -> activeQuestListCount: number
```
> Retrieves the count of all active quests, including completed ones.
> 
> @*return* `activeQuestListCount` — The number of active quests.

#### Method: IsCompleted
```lua
(method) X2Quest:IsCompleted(questType: number)
  -> completed: boolean
```
> Checks if the specified quest is completed.
> 
> @*param* `questType` — The quest ID.
> 
> @*return* `completed` — `true` if the quest is completed, `false` otherwise.

#### Method: GetQuestContextMainTitle
```lua
(method) X2Quest:GetQuestContextMainTitle(questType: number)
  -> questContextMainTitle: string
```
> Retrieves the main title for the specified quest.
> 
> @*param* `questType` — The quest ID.
> 
> @*return* `questContextMainTitle` — The quest's main title.

#### Method: GetActiveQuestType
```lua
(method) X2Quest:GetActiveQuestType(idx: number)
  -> activeQuestType: number
```
> Retrieves the quest ID for the specified active quest index.
> 
> @*param* `idx` — The active quest index (not the quest ID).
> 
> @*return* `activeQuestType` — The quest ID.

#### Method: SetTrackingActiveQuest
```lua
(method) X2Quest:SetTrackingActiveQuest(idx: number)
```
> Sets the specified quest as the active tracked quest.
> 
> @*param* `idx` — The quest index or ID to track (type unclear).

