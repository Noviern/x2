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

---Enables or disables animation and looping for the texture of the ImageDrawable. Must be used after `ImageDrawable:SetAnimFrameInfo`.
---@param anim boolean `true` to enable animation, `false` to disable.
---@param loop boolean `true` to enable looping, `false` to disable.
---@usage
---```
---imageDrawable:Animation(true, true)
---```
function ImageDrawable:Animation(anim, loop) end

---Checks if the texture of the ImageDrawable is gray.
---@return boolean grayTexture `true` if the texture is gray, `false` otherwise.
---@nodiscard
---@usage
---```
---local grayTexture = imageDrawable:IsGrayTexture()
---```
function ImageDrawable:IsGrayTexture() end

---Checks if the texture of the ImageDrawable is white.
---@return boolean whiteTexture `true` if the texture is white, `false` otherwise.
---@nodiscard
---@usage
---```
---local whiteTexture = imageDrawable:IsWhiteTexture()
---```
function ImageDrawable:IsWhiteTexture() end

---Sets the animation frame information for the texture of the ImageDrawable.
---@param frameInfo FrameInfo The frame information for the animation.
---@usage
---```
---local imageDrawable = widget:CreateImageDrawable(TEXTURE_PATH.TIMER, "background")
---...
---
---imageDrawable:SetAnimFrameInfo({
---  { x = 0,   y = 0,  w = 61, h = 61, time = 100 },
---  { x = 61,  y = 0,  w = 61, h = 61, time = 100 },
---  { x = 122, y = 0,  w = 61, h = 61, time = 100 },
---  { x = 183, y = 0,  w = 61, h = 61, time = 100 },
---  { x = 0,   y = 61, w = 61, h = 61, time = 100 },
---  { x = 61,  y = 61, w = 61, h = 61, time = 100 },
---  { x = 122, y = 61, w = 61, h = 61, time = 100 },
---  { x = 0,   y = 0,  w = 61, h = 61, time = 500 },
---})
---```
---@see FrameInfo
function ImageDrawable:SetAnimFrameInfo(frameInfo) end

---@TODO: Clarify the purpose and behavior of snap.
---Enables or disables snapping for the ImageDrawable.
---@param snap boolean `true` to enable snapping, `false` to disable.
function ImageDrawable:SetSnap(snap) end

---@TODO: Verify the usage and format of filename. test Game/ui/map/image_map.tga
---Sets a TGA texture for the ImageDrawable.
---@param filename string The path to the TGA texture file.
function ImageDrawable:SetTgaTexture(filename) end

---@TODO: Clarify tiling behavior.
---Enables or disables tiling for the ImageDrawable.
---@param tiling boolean `true` to enable tiling, `false` to disable.
function ImageDrawable:SetTiling(tiling) end

---@TODO: Clarify complexId and isBack usage.
---Sets a UCC texture for the ImageDrawable by UCC ID.
---@param complexId string The UCC ID for the texture.
---@param isBack boolean `true` for background, `false` for foreground.
function ImageDrawable:SetUccTextureByUccId(complexId, isBack) end

---@TODO: Clarify doodadId and isBack usage.
---Sets a UCC texture for the ImageDrawable within a doodad.
---@param doodadId string The doodad ID for the texture.
---@param isBack boolean `true` for background, `false` for foreground.
function ImageDrawable:SetUccTextureInDoodad(doodadId, isBack) end
