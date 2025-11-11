---@class ctx
---@field maxDepth? number|nil
---@field depth? number
---@field seen? table
---@field path? string
---@field indentSize? number
---@field indentType? string

---@type ctx
local ctxDefault = {
  maxDepth   = nil,
  depth      = 0,
  seen       = {},
  path       = "",
  indentSize = 2,
  indentType = " "
}

local funcUser = {}

---Dumps a table.
---@param tbl table
---@param ctx? ctx
---@return string output
---@nodiscard
function dump(tbl, ctx)
  if type(tbl) ~= "table" then
    return "tbl value passed in was not a table."
  end

  if ctx ~= nil and type(ctx) ~= "table" then
    return "ctx value passed in was not a table."
  end

  if ctx == nil then
    ctx = ctxDefault
  else
    ctx.maxDepth   = ctx.maxDepth or ctxDefault.maxDepth
    ctx.depth      = ctx.depth or ctxDefault.depth
    ctx.seen       = ctx.seen or ctxDefault.seen
    ctx.path       = ctx.path or ctxDefault.path
    ctx.indentSize = ctx.indentSize or ctxDefault.indentSize
    ctx.indentType = ctx.indentType or ctxDefault.indentType
  end

  local tblRef = tostring(tbl)
  local lines  = {}
  local indent = string.rep(ctx.indentType, ctx.indentSize * ctx.depth)

  -- populate tbl with its metatable functions
  if tbl.__index ~= nil then
    local mt = getmetatable(tbl)

    for k, v in pairs(mt) do
      if k ~= "__index" then
        tbl[k] = v
      end
    end
  end

  -- save the current table and its path
  ctx.seen[tblRef] = ctx.path

  for k, v in pairs(tbl) do
    if k ~= "__this" then
      local vt = type(v)
      local line = ""
      local value = ""

      if vt == "table" then
        if ctx.depth == ctx.maxDepth then
          value = '"<maximum depth>"'
        elseif next(v) ~= nil then
          local vRef = tostring(v)
          if ctx.seen[vRef] then
            value = string.format('"<circular %s %s>"', vRef, ctx.seen[vRef])
          else
            -- save current depth and path
            local depth = ctx.depth
            local path  = ctx.path

            -- update current depth and path
            ctx.depth   = depth + 1
            ctx.path    = path == "" and k or path .. "." .. k

            value       = string.format("{\n%s\n%s}", dump(v, ctx), indent)

            -- restore current depth and path
            ctx.depth   = depth
            ctx.path    = path
          end
        else
          value = "{}"
        end
      elseif vt == "boolean" or vt == "number" then
        value = tostring(v)
      elseif vt == "string" then
        value = string.format('"%s"', v:gsub("\r", "\\r"):gsub("\n", "\\n"))
      else
        if not funcUser[v] then
          funcUser[v] = ctx.path
        end

        value = '"<' .. tostring(v):match("([a-z]+): ") .. " " .. funcUser[v] .. '>"'
      end

      line = string.format("%s%s = %s", indent, k, value)

      table.insert(lines, line)
    end
  end

  -- remove the current table and its path
  -- if ctx.depth == 0 then
  ctx.seen[tblRef] = nil
  -- end

  table.sort(lines)
  local output

  if ctx.depth > 0 then
    output = table.concat(lines, ",\n") .. ","
  else
    output = table.concat(lines, "\n")
  end

  return output
end
