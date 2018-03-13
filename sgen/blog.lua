-- This file positions the transistors in the region I analyzed in the
-- blog post here: https://www.wdj-consulting.com/blog/nmos-sample.html

--n = nodes_rect(2950, 8550, 3300, 8200)

n = nodes_rect(2986, 8450, 3040, 8290)

f = assert(io.open("blog-match.txt", "w+"))
f:write(make_match(n))
f:close()

-- nl = match(n, make_match(n))
-- rename(nl)
-- print(make_match(n))

-- This didn't work as expected...
-- route(nl, 0, 0, [[
--     n8 3000 8400 3020 8370 3050 8300 3100 8400
-- ]])

-- pr = nodes_rect()
pullups_left = match(n, [[
    P0=d(v0, a, a)
    P1=d(v1, b, b)
    P2=d(v2, c, c)
    P3=d(v3, d, d)
    P4=d(v4, e, e)
    P5=d(v5, f, f)
    P6=d(v6, g, g)
    P7=d(v7, h, h)
    P8=d(v8, i, i)
    P9=d(v9, j, j)
    V0=vcc(v0)
    V1=vcc(v1)
    V2=vcc(v2)
    V3=vcc(v3)
    V4=vcc(v4)
    V5=vcc(v5)
    V6=vcc(v6)
    V7=vcc(v7)
    V8=vcc(v8)
    V9=vcc(v9)
]])

-- Format a Pullup and corresponding voltage symbol to be moved.
function move_p(id, x, y, o)
    return string.format(
    [[P%d %d %d,
V%d %d %d,
]], id, x, y,
    id, x - 1, y + 4)
end

-- Format a column of pullups
function p_col(start_id, x, y, n, o)
    local p_str = ""
    local i

    for i = start_id,(start_id + n - 1) do
        p_str = p_str .. move_p(i, x, y, o)
        y = y - 15
    end

    return p_str
end

move(pullups_left, 3050, 0, move_p(2, 0, 8441, [[]]))
move(pullups_left, 3050, 0, p_col(0, 0, 8424, 2, [[]]))
move(pullups_left, 3050, 0, p_col(3, 0, 8392, 7, [[]]))

rename(pullups_left)
