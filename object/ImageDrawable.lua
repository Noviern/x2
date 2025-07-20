---@meta _

AP_BOTTOM = 8        -- object/ImageDrawable
AP_BOTTOMLEFT = 2    -- object/ImageDrawable
AP_BOTTOMRIGHT = 3   -- object/ImageDrawable
AP_CENTER = 4        -- object/ImageDrawable
AP_LEFT = 6          -- object/ImageDrawable
AP_RIGHT = 7         -- object/ImageDrawable
AP_TOP = 5           -- object/ImageDrawable
AP_TOPLEFT = 0       -- object/ImageDrawable
AP_TOPRIGHT = 1      -- object/ImageDrawable
DAT_LINEAR_ALPHA = 4 -- object/ImageDrawable
DAT_LINEAR_SCALE = 2 -- object/ImageDrawable
DAT_MOVE = 1         -- object/ImageDrawable

---object/ImageDrawable
---@class ImageDrawable: DrawableDDS
local ImageDrawable = {}

---Enables/Disables animation `anim` and `loop` for the texture of
---ImageDrawable. This should be used after `ImageDrawable:SetAnimFrameInfo`
---has been populated.
---@param anim boolean
---@param loop boolean
function ImageDrawable:Animation(anim, loop) end

---Returns a boolean `grayTexture` indicating if the texture is gray for the
---ImageDrawable.
---@return boolean grayTexture
---@nodiscard
function ImageDrawable:IsGrayTexture() end

---Returns a boolean `whiteTexture` indicating if the texture is white for the
---ImageDrawable.
---@return boolean whiteTexture
---@nodiscard
function ImageDrawable:IsWhiteTexture() end

---Sets the animation `frameInfo` for the texture of the ImageDrawable.
---@param frameInfo FrameInfo
function ImageDrawable:SetAnimFrameInfo(frameInfo) end

---TODO:
---Enables/Disables `snap` for the ImageDrawable.
---@param snap boolean
function ImageDrawable:SetSnap(snap) end

---TODO:
---@param filename string
function ImageDrawable:SetTgaTexture(filename) end

---TODO:
---@param tiling boolean
function ImageDrawable:SetTiling(tiling) end

---TODO:
---@param complexId any
---@param isBack boolean
function ImageDrawable:SetUccTextureByUccId(complexId, isBack) end

---TODO:
---@param doodadId any
---@param isBack boolean
function ImageDrawable:SetUccTextureInDoodad(doodadId, isBack) end
