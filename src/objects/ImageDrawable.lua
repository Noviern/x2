---@meta _

DAT_LINEAR_ALPHA = 4 -- objects/ImageDrawable DRAWABLE_ANIMATION_TYPE
DAT_LINEAR_SCALE = 2 -- objects/ImageDrawable DRAWABLE_ANIMATION_TYPE
DAT_MOVE = 1         -- objects/ImageDrawable DRAWABLE_ANIMATION_TYPE

---objects/ImageDrawable
---@alias DRAWABLE_ANIMATION_TYPE
---| `DAT_LINEAR_ALPHA`
---| `DAT_LINEAR_SCALE`
---| `DAT_MOVE`

---[ImageDrawable](lua://ImageDrawable)
---
---A `ImageDrawable` is a drawable that displays a texture with optional
---animation. Supports frame-based animation, TGA or UCC textures, tiling,
---pixel snapping, and color checks.
---
---@class ImageDrawable: DrawableDDS
local ImageDrawable = {}

---Enables or disables animation and looping for the texture of the
---`ImageDrawable`. Must be used after `ImageDrawable:SetAnimFrameInfo` to
---render the `ImageDrawable`.
---@param anim boolean `true` to enable animation, `false` to disable. (default: `false`)
---@param loop boolean `true` to enable looping, `false` to disable. (default: `false`)
function ImageDrawable:Animation(anim, loop) end

---Checks if the texture of the `ImageDrawable` is gray.
---@return boolean grayTexture `true` if the texture is gray, `false` otherwise.
---@nodiscard
function ImageDrawable:IsGrayTexture() end

---Checks if the texture of the `ImageDrawable` is white.
---@return boolean whiteTexture `true` if the texture is white, `false` otherwise.
---@nodiscard
function ImageDrawable:IsWhiteTexture() end

---Sets the animation frame information for the texture of the `ImageDrawable`.
---Once animation frame information has been set `ImageDrawable:Animation` is
---required to render the `ImageDrawable`.
---@param frameInfo FrameInfo The frame information for the animation.
---@usage
---```lua
---local imageDrawable = widget:CreateImageDrawable("ui/hud/timer.dds", "background")
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
---imageDrawable:Animation(true, true)
---```
---@see FrameInfo
function ImageDrawable:SetAnimFrameInfo(frameInfo) end

---Enables or disables pixel snapping for the ImageDrawable.
---@param snap boolean `true` to enable snapping, `false` to disable. (default: `true`)
function ImageDrawable:SetSnap(snap) end

---@TODO: Verify the usage and format of filename. this didnt not work Game/ui/map/image_map.tga
---Sets a TGA texture for the ImageDrawable.
---@param filename string The path to the TGA texture file.
---@return boolean success
---@nodiscard
function ImageDrawable:SetTgaTexture(filename) end

---@TODO: Clarify tiling behavior.
---Enables or disables tiling for the ImageDrawable.
---@param tiling boolean `true` to enable tiling, `false` to disable. (default: `false`)
function ImageDrawable:SetTiling(tiling) end

---@TODO: Clarify complexId.
---Sets a UCC texture for the `ImageDrawable` by UCC ID.
---@param complexId string The UCC ID for the texture.
---@param isBack boolean `true` for background, `false` for foreground.
function ImageDrawable:SetUccTextureByUccId(complexId, isBack) end

---@TODO: Clarify doodadId.
---Sets a UCC texture for the `ImageDrawable` within a doodad.
---@param doodadId string The doodad ID for the texture.
---@param isBack boolean `true` for background, `false` for foreground.
function ImageDrawable:SetUccTextureInDoodad(doodadId, isBack) end
