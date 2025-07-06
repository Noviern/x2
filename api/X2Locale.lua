---@meta _

X2Locale = {} -- api/X2Locale

---Returns the current keyboard layout.
---@return string keyboardLayout
function X2Locale:GetKeyboardLayout() end

---Returns the current locale
---@return string locale this may not be accurate: en_us, fr, de, ko, ja, ru, zh_cn, zh_tw, tw
function X2Locale:GetLocale() end

---Returns the locale index, there must be a locale enum
---@return LocaleIndex
function X2Locale:GetLocaleIndex() end

---Returns a boolean indicating if the localization `category` and `key` exists.
---@param category UI_TEXT
---@param key string can be obtained from ui_texts table in the database.
---@return boolean HasLocalizeUiText
function X2Locale:HasLocalizeUiText(category, key) end

---This may trigger an event
function X2Locale:LocalizeFormatUiText() end

---Returns localized non ui text after replacing placeholders of `text` with the provided arguments.
---@usage
---```
---X2Locale:LocalizeNonUiText("$2 - the $1 ArcheAge Private Server", "first", "Archerage.to")
----- Archerage.to - the first ArcheAge Private Server
---```
---@param text string
---@param ... string this has to match as many as $
---@return string
function X2Locale:LocalizeNonUiText(text, ...) end

---Returns `localizedUiText` for the `category` `key` after replacing placeholders with the provided arguments `...`.
---@usuage
---```
---X2Locale:LocalizeUiText(MONEY_TEXT, "silver", tostring(50)) -- 50 Silver
---```
---@param category UI_TEXT [UI_TEXT](lua://UI_TEXT)
---@param key string can be obtained from ui_texts table in the database.
---@param ... string 
---@return string localizedUiText
function X2Locale:LocalizeUiText(category, key, ...) end

---TODO:
---@param text string
---@return string TextFormatted
function X2Locale:TextFormating(text) end