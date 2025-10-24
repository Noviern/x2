---@meta _

---@class Uiobject
local Uiobject = {}

---Retrieves the ID of the UI object.
---@return string id The UI object's ID.
---@nodiscard
---@usage
---```lua
---local id = widget:GetId()
---```
function Uiobject:GetId() end

---@FIXME: May be broken, currently returns nothing.
---Retrieves the name of the UI object.
---@return string name
---@nodiscard
---@usage
---```lua
---local name = widget:GetName()
---```
function Uiobject:GetName() end

---Retrieves the object type of the UI object.
---@return OBJECT_NAME objectType The UI object's type.
---@nodiscard
---@usage
---```lua
---local objectType = widget:GetObjectType()
---```
---@see OBJECT_NAME
function Uiobject:GetObjectType() end

---Checks if the UI object is valid.
---@return boolean validUiobject `true` if the UI object is valid, `false` otherwise.
---@nodiscard
---@usage
---```lua
---local validUiobject = widget:IsValidUIObject()
---```
function Uiobject:IsValidUIObject() end
