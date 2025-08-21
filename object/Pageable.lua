---@meta _

AP_BOTTOM = 8          -- object/Pageable
AP_BOTTOMLEFT = 2      -- object/Pageable
AP_BOTTOMRIGHT = 3     -- object/Pageable
AP_CENTER = 4          -- object/Pageable
AP_LEFT = 6            -- object/Pageable
AP_RIGHT = 7           -- object/Pageable
AP_TOP = 5             -- object/Pageable
AP_TOPLEFT = 0         -- object/Pageable
AP_TOPRIGHT = 1        -- object/Pageable
CT_ABILITY = 2         -- object/Pageable
CT_EXPEDITION_NAME = 3 -- object/Pageable
CT_NAME = 1            -- object/Pageable
DC_ALWAYS = 0          -- object/Pageable
DC_SHIFT_KEY_DOWN = 1  -- object/Pageable

---object/Pageable
---@class Pageable: Widget
---@class pageable: Pageable
local Pageable = {}

---Adds a widget to the specified page of the Pageable.
---@param widget Widget The widget to add.
---@param pageIndex number The index of the page to add the widget to.
---@usage
---```
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
---@usage
---```
---widget:ChangePage(2)
---```
function Pageable:ChangePage(index) end

---Retrieves the current page index of the Pageable.
---@return number currentPageIndex The current page index. (default: `1`, max: `widget:GetTotalPage()`)
---@nodiscard
---@usage
---```
---local currentPageIndex = widget:GetCurrentPageIndex()
---```
function Pageable:GetCurrentPageIndex() end

---Retrieves the total number of pages in the Pageable.
---@return number totalPage The total number of pages.
---@nodiscard
---@usage
---```
---local totalPage = widget:GetTotalPage()
---```
function Pageable:GetTotalPage() end

---Navigates to the next page of the Pageable.
---@usage
---```
---widget:NextPage()
---```
function Pageable:NextPage() end

---Navigates to the previous page of the Pageable.
---@usage
---```
---widget:PrevPage()
---```
function Pageable:PrevPage() end

---Sets the current page index of the Pageable.
---@param num number The page index to set.
---@usage
---```
---widget:SetCurrentPageIndex(2)
---```
function Pageable:SetCurrentPageIndex(num) end

---Sets the total number of pages for the Pageable. This must be set before
---`Pageable:AddWidgetToPage`.
---@param num number The number of pages to set.
---@usage
---```
---widget:SetPageCount(2)
---```
function Pageable:SetPageCount(num) end
