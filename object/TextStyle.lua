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
---@class TextStyle: Uiobject
---@field GetLineHeight fun(self: self)
---@field GetTextWidth fun(self: self, text)
---@field SetAlign fun(self: self, align)
---@field SetColor fun(self: self, r: number, g: number, b: number, a: number)
---@field SetColorByKey fun(self: self, key)
---@field SetEllipsis fun(self: self, ellipsis)
---@field SetFont fun(self: self, fontPath, fontSize)
---@field SetFontSize fun(self: self, size)
---@field SetOutline fun(self: self, outline)
---@field SetShadow fun(self: self, shadow)
---@field SetSnap fun(self: self, snap)