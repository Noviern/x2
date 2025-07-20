---@meta _

AP_BOTTOM = 8          -- object/Message
AP_BOTTOMLEFT = 2      -- object/Message
AP_BOTTOMRIGHT = 3     -- object/Message
AP_CENTER = 4          -- object/Message
AP_LEFT = 6            -- object/Message
AP_RIGHT = 7           -- object/Message
AP_TOP = 5             -- object/Message
AP_TOPLEFT = 0         -- object/Message
AP_TOPRIGHT = 1        -- object/Message
CT_ABILITY = 2         -- object/Message
CT_EXPEDITION_NAME = 3 -- object/Message
CT_NAME = 1            -- object/Message
DC_ALWAYS = 0          -- object/Message
DC_SHIFT_KEY_DOWN = 1  -- object/Message

---object/Message
---@enum LINKTYPE
local LINKTYPE = {
  CHARACTER = "character",
  CRAFT     = "craft",
  INVALID   = "invalid",
  ITEM      = "item",
  NONE      = "none",
  QUEST     = "quest",
  RAID      = "raid",
  SQUAD     = "squad",
  URL       = "url",
}

---object/Message
---@class BaseLinkInfo
---@field linkType LINKTYPE

---object/Message
---@class CommonLinkFields
---@field filter number
---@field isOtherWorld boolean
---@field messageTimeStamp number

---object/Message
---@class CharacterLinkInfo : BaseLinkInfo, CommonLinkFields
---@field linkType "character"

---object/Message
---@class CraftLinkInfo : BaseLinkInfo, CommonLinkFields
---@field linkType "craft"
---@field craftType number

---object/Message
---@class InvalidLinkInfo : BaseLinkInfo, CommonLinkFields
---@field linkType "invalid"

---object/Message
---@class ItemLinkInfo : BaseLinkInfo, CommonLinkFields
---@field linkType "item"
---@field itemGrade ITEM_GRADE
---@field itemLinkText string
---@field linkKind number TODO: This is a number but I thought it should be LINKKIND?

---object/Message
---@class NoneLinkInfo : BaseLinkInfo
---@field linkType "none"

---object/Message
---@class QuestLinkInfo : BaseLinkInfo, CommonLinkFields
---@field linkType "quest"
---@field questType number

---object/Message
---@class RaidLinkInfo : BaseLinkInfo, CommonLinkFields
---@field linkType "raid"
---@field createTime string
---@field ownerId string

---object/Message
---@class SquadLinkInfo : BaseLinkInfo, CommonLinkFields
---@field linkType "squad"
---@field battleFieldType number
---@field joinKey string
---@field squadId number
---@field zoneGroupType number

---object/Message
---@class UrlLinkInfo : BaseLinkInfo, CommonLinkFields
---@field linkType "url"
---@field addr string
---@field text string

---object/Message
---@class Message: Widget
---@field style TextStyle
local Message = {}

---Adds a `message` to the Message.
---@param message string
function Message:AddMessage(message) end

---TODO:
---@param message string
---@param visibleTim number in ms
function Message:AddMessageEx(message, visibleTim) end

---TODO:
---@param message string
---@param visibleTime number in ms
function Message:AddMessageExRefresh(message, visibleTime) end

---TODO:
---@param message string
function Message:AddMessageRefresh(message) end

---Changes the default style for the Message.
function Message:ChangeDefaultStyle() end

---Changes the text style of the Message.
function Message:ChangeTextStyle() end

---Clears Message.
function Message:Clear() end

---Returns a boolean `result` indicating if the text under the cursor was copied
---for the Message.
---@return boolean result
---@nodiscard
function Message:CopyTextToClipboard() end

---Enables/Disables `GetLinkInfoOnCursor` for Message.
---@param enable boolean
function Message:EnableItemLink(enable) end

---Returns the `currentLine` for the Message.
---@return number currentLine
---@nodiscard
function Message:GetCurrentLine() end

---Returns `currentScroll` for the Message.
---@return number currentScroll starts at 0.
---@nodiscard
function Message:GetCurrentScroll() end

---Returns `lineSpace` for the Message.
---@return number lineSpace
---@nodiscard
function Message:GetLineSpace() end

---Returns `linkInfo` for the link in the cursor position for the Message.
---@usage
---```
---local info = self:GetLinkInfoOnCursor()
---
---if info.linkType == "item" then
---  ---@cast info ItemLinkInfo
---  local itemInfo = X2Item:InfoFromLink(info.itemLinkText, tostring(info.linkKind))
---end
---```
---@return BaseLinkInfo linkInfo
---@nodiscard
function Message:GetLinkInfoOnCursor() end

---Returns `maxLines` for the Message.
---@return number maxLines
---@nodiscard
function Message:GetMaxLines() end

---Returns `message` with the `messageTimeStamp` for Message.
---@param messageTimeStamp number
---@return string message
---@nodiscard
function Message:GetMessageByTimeStamp(messageTimeStamp) end

---Returns `messageLines` for the Message.
---@return number messageLines
---@nodiscard
function Message:GetMessageLines() end

---Returns `maxLinesPerPage` for the Message.
---@return number maxLinesPerPage
---@nodiscard
function Message:GetPagePerMaxLines() end

---Scrolls down for the Message.
function Message:PageDown() end

---Scrolls up for the Message.
function Message:PageUp() end

---Returns `remainingLines` for the Message.
---@return number remainingLines
---@nodiscard
function Message:RemoveLastMessage() end

---Resets the visible time for the Message.
function Message:ResetVisibleTime() end

---Scrolls down by 1 for the Message.
function Message:ScrollDown() end

---Scrolls to the Bottom of the Message.
function Message:ScrollToBottom() end

---Scrolls to the top of the Message.
function Message:ScrollToTop() end

---Scrolls up by 1 for the Message.
function Message:ScrollUp() end

---Sets the fade duration `seconds` for the Message.
---@param seconds number
function Message:SetFadeDuration(seconds) end

---Sets the inset for the Message.
---@param left number
---@param top number
---@param right number
---@param bottom number
function Message:SetInset(left, top, right, bottom) end

---Sets the line `space` for the Message.
---@param space number
function Message:SetLineSpace(space) end

---TSets the maximum line `count` for the Message.
---@param count number
function Message:SetMaxLines(count) end

---Sets the scroll position `value` for the Message.
---@param value number
function Message:SetScrollPos(value) end

---Sets the time visible `seconds` for the Message.
---@param seconds number
function Message:SetTimeVisible(seconds) end
