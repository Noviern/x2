# Tabbase
## Classes
### Class: Tabbase
#### Method: GetSelectedTab
```lua
(method) Tabbase:GetSelectedTab()
  -> selectedTab: number
```
> Retrieves the index of the currently selected tab in the Tabbase.
> 
> @*return* `selectedTab` — The index of the selected tab. (default: `1`)

#### Method: SelectTab
```lua
(method) Tabbase:SelectTab(idx: number)
```
> Selects the tab at the specified index in the Tabbase.
> 
> @*param* `idx` — The index of the tab to select.

#### Method: SetGap
```lua
(method) Tabbase:SetGap(gap: number)
```
> Sets the gap between tabs in the Tabbase.
> 
> @*param* `gap` — The gap size between tabs. (default: `0`)

#### Method: RemoveTab
```lua
(method) Tabbase:RemoveTab(idx: number)
```
> Removes the tab at the specified index from the Tabbase.
> 
> @*param* `idx` — The index of the tab to remove.

#### Method: RemoveAllTabs
```lua
(method) Tabbase:RemoveAllTabs()
```
> Removes all tabs from the Tabbase.

#### Method: SetOffset
```lua
(method) Tabbase:SetOffset(offset: number)
```
> Sets the offset for the Tabbase.
> 
> @*param* `offset` — The offset value for the tabs. (default: `0`)

