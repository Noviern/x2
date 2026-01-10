for name, id in pairs(API) do
  ADDON:ImportAPI(id)
end

for name, id in pairs(OBJECT) do
  ADDON:ImportObject(id)
end
