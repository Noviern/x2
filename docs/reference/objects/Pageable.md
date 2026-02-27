# Pageable
## Classes
### Class: Pageable
Extends [Widget](../types/Widget.md#class-widget)

> [Pageable](../types/Pageable.md#class-pageable)
> 
> A `Pageable` widget organizes child widgets across multiple pages. Supports
> adding widgets to specific pages, navigating between pages, and querying the
> current and total number of pages.
> 
#### Method: AddWidgetToPage
```lua
(method) Pageable:AddWidgetToPage(widget: Widget, pageIndex: number)
```
> Adds a widget to the specified page of the Pageable.
> 
> @*param* `widget` — The widget to add.
> 
> @*param* `pageIndex` — The index of the page to add the widget to.
> 
> ```lua
> local page1 = widget:CreateChildWidget("textbox", "page1", 0, true)
> page1:SetText("page1")
> page1:AddAnchor("TOPLEFT", widget, 0, 0)
> page1:AddAnchor("BOTTOMRIGHT", widget, 0, 0)
> 
> widget:AddWidgetToPage(page1, 1)
> ```

#### Method: NextPage
```lua
(method) Pageable:NextPage()
```
> Navigates to the next page of the Pageable.

#### Method: PrevPage
```lua
(method) Pageable:PrevPage()
```
> Navigates to the previous page of the Pageable.

#### Method: SetCurrentPageIndex
```lua
(method) Pageable:SetCurrentPageIndex(num: number)
```
> Sets the current page index of the Pageable.
> 
> @*param* `num` — The page index to set.

#### Method: GetTotalPage
```lua
(method) Pageable:GetTotalPage()
  -> totalPage: number
```
> Retrieves the total number of pages in the Pageable.
> 
> @*return* `totalPage` — The total number of pages.

#### Method: ChangePage
```lua
(method) Pageable:ChangePage(index: number)
```
> Changes the current page of the Pageable to the specified index.
> 
> @*param* `index` — The page index to switch to.

#### Method: GetCurrentPageIndex
```lua
(method) Pageable:GetCurrentPageIndex()
  -> currentPageIndex: number
```
> Retrieves the current page index of the Pageable.
> 
> @*return* `currentPageIndex` — The current page index. (default: `1`, max: `widget:GetTotalPage()`)

#### Method: SetPageCount
```lua
(method) Pageable:SetPageCount(num: number)
```
> Sets the total number of pages for the Pageable. This must be set before
> `Pageable:AddWidgetToPage`.
> 
> @*param* `num` — The number of pages to set.

