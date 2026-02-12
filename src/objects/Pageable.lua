---@meta _

---[Pageable](lua://Pageable)
---
---A `Pageable` widget organizes child widgets across multiple pages. Supports
---adding widgets to specific pages, navigating between pages, and querying the
---current and total number of pages.
---
---@class Pageable: Widget
local Pageable = {}

---Adds a widget to the specified page of the Pageable.
---@param widget Widget The widget to add.
---@param pageIndex number The index of the page to add the widget to.
---@usage
---```lua
---local page1 = widget:CreateChildWidget("textbox", "page1", 0, true)
---page1:SetText("page1")
---page1:AddAnchor("TOPLEFT", widget, 0, 0)
---page1:AddAnchor("BOTTOMRIGHT", widget, 0, 0)
---
---widget:AddWidgetToPage(page1, 1)
---```
function Pageable:AddWidgetToPage(widget, pageIndex) end

---Changes the current page of the Pageable to the specified index.
---@param index number The page index to switch to.
function Pageable:ChangePage(index) end

---Retrieves the current page index of the Pageable.
---@return number currentPageIndex The current page index. (default: `1`, max: `widget:GetTotalPage()`)
---@nodiscard
function Pageable:GetCurrentPageIndex() end

---Retrieves the total number of pages in the Pageable.
---@return number totalPage The total number of pages.
---@nodiscard
function Pageable:GetTotalPage() end

---Navigates to the next page of the Pageable.
function Pageable:NextPage() end

---Navigates to the previous page of the Pageable.
function Pageable:PrevPage() end

---Sets the current page index of the Pageable.
---@param num number The page index to set.
function Pageable:SetCurrentPageIndex(num) end

---Sets the total number of pages for the Pageable. This must be set before
---`Pageable:AddWidgetToPage`.
---@param num number The number of pages to set.
function Pageable:SetPageCount(num) end
