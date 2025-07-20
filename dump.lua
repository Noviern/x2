---Dumps a table.
---@param tbl table
---@param depth? number
---@param seen? table
---@param path? string
---@return string var_lines
---@return string func_lines
---@nodiscard
function dump(tbl, depth, seen, path)
  depth = depth or 0
  seen = seen or {}
  path = path or ""

  local vars = {}
  local funcs = {}
  local indent = string.rep("  ", depth)
  local tblref = tostring(tbl)

  seen[tblref] = true

  for k, v in pairs(tbl) do
    local vt = type(v)
    local line

    if vt == "function" then
      if path == "" then
        line = string.format("function %s() end", k)
      else
        line = string.format("function %s:%s() end", path, k)
      end

      table.insert(funcs, line)
    else
      local val = "{}"

      if vt == "table" then
        if next(v) ~= nil then
          local vref = tostring(v)
          if seen[vref] then
            val = string.format('"<circular: %s>"', path)
          else
            local new_depth = depth + 1
            local new_path = path == "" and k or path .. "." .. k
            local sub_vars, sub_funcs = dump(v, new_depth, seen, new_path)

            if sub_vars ~= "" then
              val = string.format("{\n%s,\n%s}", sub_vars, indent)
            end

            if sub_funcs ~= "" then
              table.insert(funcs, sub_funcs)
            end
          end
        end
      elseif vt == "boolean" or vt == "number" then
        val = tostring(v)
      elseif vt == "userdata" then
        val = string.format('"<%s>"', tostring(v))
      else
        val = string.format('"%s"', (string.gsub(v, "\r\n", "\\r\\n")))
      end

      line = string.format("%s%s = %s", indent, k, val)

      table.insert(vars, line)
    end
  end

  seen[tblref] = nil

  table.sort(vars)
  table.sort(funcs)

  local var_lines

  if path ~= "" then
    var_lines = table.concat(vars, ",\n")
  else
    var_lines = table.concat(vars, "\n")
  end

  local func_lines = table.concat(funcs, "\n\n")

  return var_lines, func_lines
end

return dump