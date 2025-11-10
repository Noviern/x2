---@meta _

---@class X2Locale
X2Locale = {} -- api/X2Locale

---Retrieves the current keyboard layout.
---@return KEYBOARD_LAYOUT keyboardLayout The current keyboard layout.
---@nodiscard
---@see KEYBOARD_LAYOUT
function X2Locale:GetKeyboardLayout() end

---Retrieves the current locale.
---@return LOCALE_STR locale The current locale.
---@nodiscard
---@see LOCALE_STR
function X2Locale:GetLocale() end

---Retrieves the locale index.
---@return LOCALE_INDEX localeIndex The locale index.
---@nodiscard
---@see LOCALE_INDEX
function X2Locale:GetLocaleIndex() end

---Checks if the specified localization category and key exist.
---@param categoryId UI_TEXT_CATEGORY_ID The UI text category.
---@param key string The key from the database ui_texts table.
---@return boolean localizeUiText `true` if the localization exists, `false` otherwise.
---@nodiscard
---@see UI_TEXT_CATEGORY_ID
function X2Locale:HasLocalizeUiText(categoryId, key) end

---@TODO: Clarify if this triggers an event and how this works.
function X2Locale:LocalizeFormatUiText() end

---Localizes non-UI text after replacing placeholders with provided arguments.
---@param text string The text with placeholders (e.g., $1).
---@param ... string Arguments to replace placeholders (must match number of $).
---@return string localizedText The localized text with placeholders replaced.
---@nodiscard
---@usage
---```lua
---local localizedText = X2Locale:LocalizeNonUiText("$1 - the $1 ArcheAge Private Server", "Archerage.to", "first")
----- Archerage.to - the first ArcheAge Private Server
---```
function X2Locale:LocalizeNonUiText(text, ...) end

---Retrieves localized UI text for the specified category and key, replacing
---placeholders with provided arguments.
---@param category UI_TEXT_CATEGORY_ID The UI text category.
---@param key string The key from the database ui_texts table.
---@param ... string Arguments to replace placeholders (must match number of $).
---@return string localizedUiText The localized UI text.
---@nodiscard
---@see UI_TEXT_CATEGORY_ID
function X2Locale:LocalizeUiText(category, key, ...) end

---Formats the specified text.
---@param text FORMAT_MACRO|string The text to format.
---@return string textFormatted The formatted text.
---@nodiscard
---@see FORMAT_MACRO
function X2Locale:TextFormating(text) end
