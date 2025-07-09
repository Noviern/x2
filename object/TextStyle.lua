---@meta _

ALIGN_BOTTOM = 7 -- object/TextStyle
ALIGN_BOTTOM_LEFT = 6 -- object/TextStyle
ALIGN_BOTTOM_RIGHT = 8 -- object/TextStyle
ALIGN_CENTER = 4 -- object/TextStyle
ALIGN_LEFT = 3 -- object/TextStyle
ALIGN_RIGHT = 5 -- object/TextStyle
ALIGN_TOP = 1 -- object/TextStyle
ALIGN_TOP_LEFT = 0 -- object/TextStyle
ALIGN_TOP_RIGHT = 2 -- object/TextStyle
FTK_GENERAL = 0 -- object/TextStyle
FTK_IMAGETEXT = 2 -- object/TextStyle

---object/TextStyle
---@alias ALIGN
---| `ALIGN_BOTTOM`
---| `ALIGN_BOTTOM_LEFT`
---| `ALIGN_BOTTOM_RIGHT`
---| `ALIGN_CENTER`
---| `ALIGN_LEFT`
---| `ALIGN_RIGHT`
---| `ALIGN_TOP`
---| `ALIGN_TOP_LEFT`
---| `ALIGN_TOP_RIGHT`

---object/TextStyle
---@class TextStyle: Uiobject
---@field GetLineHeight fun(self: self): number
---@field GetTextWidth fun(self: self, text: string): number
---@field SetAlign fun(self: self, align: ALIGN)
---@field SetColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetColorByKey fun(self: self, key: FONT_COLOR_KEY)
---@field SetEllipsis fun(self: self, ellipsis: boolean)
---@field SetFont fun(self: self, fontPath: FONT_PATH, fontSize: FONT_SIZE)
---@field SetFontSize fun(self: self, size: FONT_SIZE)
---@field SetOutline fun(self: self, outline: boolean)
---@field SetShadow fun(self: self, shadow: boolean)
---@field SetSnap fun(self: self, snap: boolean)