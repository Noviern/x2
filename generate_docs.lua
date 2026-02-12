-- This file is used to convert doc.json generated from LuaLS into markdown.
-- Kind of janky atm but it works.

local json = require("json")

local function read_file(path)
  local file = io.open(path, "r")
  if not file then
    error("Could not open file: " .. path)
  end

  local content = file:read("*a")
  file:close()
  return content
end

local filename = "doc.json"
local json_string = read_file(filename)

local data = json.decode(json_string)

local newdata = {}

local function starts_with(str, prefix)
  return #str >= #prefix and str:sub(1, #prefix) == prefix
end


for _, indentifier in ipairs(data) do
  if indentifier.defines then
    for _, define in ipairs(indentifier.defines) do
      if not starts_with(define.file, "[FOREIGN]") then
        if not newdata[define.file] then
          newdata[define.file] = {}
        end

        if define.type ~= "setmethod" then
          if not newdata[define.file][define.type] then
            newdata[define.file][define.type] = {}
          end

          local thisdata = {
            name    = indentifier.name,
            desc    = define.desc,
            rawdesc = define.rawdesc,
            view    = define.view,
            extends = define.extends,
            data    = indentifier
          }

          if indentifier.fields and #indentifier.fields > 0 then
            if not thisdata.fields then
              thisdata.fields = {}
            end

            for _, field in ipairs(indentifier.fields) do
              if field.file == define.file then
                table.insert(thisdata.fields,
                  {
                    name = field.name,
                    view = field.extends.view,
                    desc = field.desc,
                    file = field.file,
                    type = field.type
                  })
              end
            end
          end

          table.insert(newdata[define.file][define.type], thisdata)
        end
      end
    end
  end
end

for file, filedata in pairs(newdata) do
  local markdown = io.open("docs/reference/" .. string.gsub(file, "%.lua$", ".md"), "w")

  markdown:write("# " .. string.gsub(file, "^.+/(.+)%.lua$", "%1") .. "\n")

  if filedata["setglobal"] then
    markdown:write("## Globals\n")
    for _, indentifier in ipairs(filedata["setglobal"]) do
      -- markdown:write("### " .. indentifier.name .. " {#global-" .. indentifier.name:lower() .. "}\n`" .. indentifier.view .. "`\n\n---\n\n")
      markdown:write("**" .. indentifier.name .. "**\n\n`" .. indentifier.view .. "`\n\n") -- ---\n\n")
    end
  end

  if filedata["doc.alias"] then
    markdown:write("## Aliases\n")
    for _, indentifier in ipairs(filedata["doc.alias"]) do
      if not indentifier.rawdesc then
        print(indentifier.name .. " missing rawdesc")
        indentifier.rawdesc = ""
      end
      -- markdown:write("### " ..  indentifier.name .. "{#alias-" .. indentifier.name:lower() .. "}\n" .. indentifier.view .. "\n" .. indentifier.rawdesc .. "\n\n---\n\n")
      markdown:write("**" .. indentifier.name .. "**\n\n" .. indentifier.view .. "\n\n" .. indentifier.rawdesc .. "\n\n") -- ---\n\n")
    end
  end

  if filedata["doc.class"] then
    markdown:write("## Classes\n")
    for _, indentifier in ipairs(filedata["doc.class"]) do
      markdown:write("### Class: " .. indentifier.name .. "\n")

      if indentifier.extends and indentifier.extends[1].view then
        markdown:write("Extends ")

        for i, extend in ipairs(indentifier.extends) do
          local checkfile = io.open("src/docs/objects/" .. extend.view .. ".md", "r")
          local link = ""

          if checkfile then
            checkfile:close()
            link = "[" .. extend.view .. "](../objects/" .. extend.view .. ".md#class-" .. extend.view:lower() .. ")"
          else
            link = "[" .. extend.view .. "](../types/" .. extend.view .. ".md#class-" .. extend.view:lower() .. ")"
          end


          markdown:write(link)
          if i < #indentifier.extends then
            markdown:write(", ")
          end
        end
        markdown:write("\n\n")
      end

      if indentifier.name ~= indentifier.name:lower() then
        if indentifier.rawdesc then
          local results = {}

          -- Captures everything after lua:// until next space or end of string
          for part in indentifier.rawdesc:gmatch("lua://([^%s%)]+)") do
            table.insert(results, part)
          end

          for k, result in ipairs(results) do
            -- print(result)
            local checkfile = io.open("src/docs/objects/" .. result .. ".md", "r")
            local link = ""

            if checkfile then
              checkfile:close()
              link = "../objects/" .. result .. ".md#class-" .. result:lower()
            else
              link = "../types/" .. result .. ".md#class-" .. result:lower()
            end
            indentifier.rawdesc = indentifier.rawdesc:gsub("lua://" .. result, link)
          end

          indentifier.rawdesc = "> " .. indentifier.rawdesc:gsub("\n", "\n> ")

          markdown:write(indentifier.rawdesc .. "\n")
        end

        if indentifier.fields then
          table.sort(indentifier.fields, function (a, b)
            if a.type == "doc.field" and b.type ~= "doc.field" then
              return true  -- a before b
            elseif a.type ~= "doc.field" and b.type == "doc.field" then
              return false -- b before a
            else
              return false -- keep original order (stable)
            end
          end)

          for _, field in ipairs(indentifier.fields) do
            if not field.desc then
              -- print(field.name .. " missing desc")
              field.desc = ""
            end

            local desc = field.desc:gsub(
              "%[([^%]]+)%]%s*%(%s*file://.-/src/([^%.]+)%.lua.-%)",
              function (name, rel_path)
                return string.format(
                  "[%s](../%s.md#class-%s)",
                  name,
                  rel_path,
                  name:lower()
                )
              end
            )

            desc = desc:gsub("%-%-%-", "")

            if desc ~= "" then
              desc = "> " .. desc:gsub("\n", "\n> ")
            end

            local type = "Field"

            if field.type == "setmethod" then
              type = "Method"
            end
            markdown:write("#### " ..
              type .. ": " .. field.name .. "\n```lua\n" .. field.view .. "\n```\n" .. desc .. "\n\n")
          end
        else
          -- print(indentifier.name .. " missing fields")
        end
      end
    end
  end
  markdown:close()
end
