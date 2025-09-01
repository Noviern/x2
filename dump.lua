---@class ctx
---@field max_depth? number|nil
---@field depth? number
---@field seen? table
---@field path? string
---@field indent_size? number
---@field indent_type? string

---@type ctx
local ctx_default = {
  max_depth   = nil,
  depth       = 0,
  seen        = {},
  path        = "",
  indent_size = 2,
  indent_type = " "
}

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
    ctx = ctx_default
  else
    ctx.max_depth   = ctx.max_depth or ctx_default.max_depth
    ctx.depth       = ctx.depth or ctx_default.depth
    ctx.seen        = ctx.seen or ctx_default.seen
    ctx.path        = ctx.path or ctx_default.path
    ctx.indent_size = ctx.indent_size or ctx_default.indent_size
    ctx.indent_type = ctx.indent_type or ctx_default.indent_type
  end

  local tbl_ref = tostring(tbl)
  local lines   = {}
  local indent  = string.rep(ctx.indent_type, ctx.indent_size * ctx.depth)

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
  ctx.seen[tbl_ref] = ctx.path

  for k, v in pairs(tbl) do
    local vt = type(v)
    local line = ""
    local value = ""

    if vt == "table" then
      if ctx.depth == ctx.max_depth then
        value = '"<maximum depth>"'
      elseif next(v) ~= nil then
        local v_ref = tostring(v)
        if ctx.seen[v_ref] then
          value = string.format('"<circular %s %s>"', v_ref, ctx.seen[v_ref])
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
      value = string.format('"<%s>"', tostring(v))
    end

    line = string.format("%s%s = %s", indent, k, value)

    table.insert(lines, line)
  end

  -- remove the current table and its path
  -- if ctx.depth == 0 then
  ctx.seen[tbl_ref] = nil
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
