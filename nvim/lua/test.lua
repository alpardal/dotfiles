require("functions")

local function check(f) 
  local res = f()

  if res == nil then
    print("nil")
  else
    print("'" .. res .. "'")
  end
end

for file in find_local_vimrcs() do
  print("checking: '" .. file .. "'")
end
