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
local Pageable = {}

---TODO:
---Adds a `widget` to the `pageIndex` of Pageable.
---@param widget Widget
---@param pageIndex number
function Pageable:AddWidgetToPage(widget, pageIndex) end

---Changes the page `index` of Pageable.
---@param index number
function Pageable:ChangePage(index) end

---Returns `currentPageIndex` of the Pageable.
---@return number currentPageIndex
function Pageable:GetCurrentPageIndex() end

---Returns `totalPage` of the Pageable.
---@return number totalPage
function Pageable:GetTotalPage() end

---Goes to the next page of the Pageable.
function Pageable:NextPage() end

---Goes to the previous page of the Pageable.
function Pageable:PrevPage() end

---Sets the current page `num` of the Pageable.
---@param num number
function Pageable:SetCurrentPageIndex(num) end

---Sets the page count `num` of the Pageable.
---@param num number
function Pageable:SetPageCount(num) end
