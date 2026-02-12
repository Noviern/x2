---@meta _

---[Avi](lua://Avi)
---
---A `Avi` widget plays AVI (Audio Video Interleave) video files, commonly used
---for cutscenes, tutorial sequences, animated intros, or other in-game video
---content.
---
---@class Avi: Widget
local Avi = {}

---Sets the AVI file to be used by the widget.
---@param fileName AVI_PATH The path to the AVI file.
function Avi:SetAviName(fileName) end

---@FIXME: without X2Tutorial:GetUiAviTable() i dont know if ill be able to get the values for depth.
---@param depth number
function Avi:SetAviNum(depth) end
