#!/people/galibert/soft/dietools/mschem/mschem

setup("../ym2151.map", "../ym2151.txt", "../ym2151-pins.txt", "../ym2151-pads.txt", 2)
text("../ym2151-schem.txt")

dofile("functions.lua")

--[=[
n = nodes_rect()
print(make_match(n))

nl = match(n, [[
]])

move(nl, 0, 0, [[
]])

route(nl, 0, 0, [[
]])

rename(nl)
]=]--
