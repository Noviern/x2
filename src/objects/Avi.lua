---@meta _

---objects/Avi
---@class Avi: Widget
local Avi = {}
---@class avi: Avi

---Sets the AVI file to be used by the widget.
---@param fileName AVI_PATH The path to the AVI file.
---@usage
---```lua
---widget:SetAviName("objects/machinima/avi/ci.avi")
---```
function Avi:SetAviName(fileName) end

---@TODO: without X2Tutorial:GetUiAviTable() i dont know if ill be able to get the values for depth.
---@param depth number
---@usage
---```lua
---widget:SetAviNum(1)
---```
function Avi:SetAviNum(depth) end
