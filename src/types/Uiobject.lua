---@meta _

---@class Uiobject
local Uiobject = {}

---Retrieves the ID of the UI object.
---@return string id The UI object's ID.
---@nodiscard
function Uiobject:GetId() end

---@FIXME: May be broken, currently returns nothing.
---@TODO: try this on child widgets
---Retrieves the name of the UI object.
---@return string name
---@nodiscard
function Uiobject:GetName() end

---Retrieves the object type of the UI object.
---@return OBJECT_NAME objectType The UI object's type.
---@nodiscard
---@see OBJECT_NAME
function Uiobject:GetObjectType() end

---@TODO: what would make a UI object invalid?
---Checks if the UI object is valid.
---@return boolean validUiobject `true` if the UI object is valid, `false` otherwise.
---@nodiscard
function Uiobject:IsValidUIObject() end
