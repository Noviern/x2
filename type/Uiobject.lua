---@meta _

---@class Uiobject
local Uiobject = {}

---Retrieves the ID of the UI object.
---@return string id The UI object's ID.
---@nodiscard
---@usage
---```
---local id = widget:GetId()
---```
function Uiobject:GetId() end

---@TODO: May be broken, currently returns nothing.
---Retrieves the name of the UI object.
---@return string name
---@nodiscard
---@usage
---```
---local name = widget:GetName()
---```
function Uiobject:GetName() end

---Retrieves the object type of the UI object.
---@return OBJECT_NAME objectType The UI object's type.
---@nodiscard
---@usage
---```
---local objectType = widget:GetObjectType()
---```
---@see OBJECT_NAME
function Uiobject:GetObjectType() end

---@TODO: In what condition would this ever return false?
---Checks if the UI object is valid.
---@return boolean validUiobject `true` if the UI object is valid, `false` otherwise.
---@nodiscard
---@usage
---```
---local validUiobject = widget:IsValidUIObject()
---```
function Uiobject:IsValidUIObject() end
