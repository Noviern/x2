---@meta _

---@class Uiobject
local Uiobject = {}

---Returns the `id` of the Uiobject.
---@return string id
---@nodiscard
function Uiobject:GetId() end

---TODO: This may be broken. Currently returns nothing.
function Uiobject:GetName() end

---Returns the `objectType` of the Uiobject.
---@return string objectType
---@nodiscard
function Uiobject:GetObjectType() end

---Returns a boolean indicating if the Uiobject is a `validUiobject`.
---@return boolean validUiobject
---@nodiscard
function Uiobject:IsValidUIObject() end
