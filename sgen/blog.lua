-- This file positions the transistors in the region I analyzed in the
-- blog post here: https://www.wdj-consulting.com/blog/nmos-sample.html

n = nodes_rect(2950, 8550, 3300, 8200)
-- print(make_match(n))

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

move(pullups_left, 0, 0, [[
    P0 3000 8424 ea,
    P1 3000 8410,
    P8 3000 8392,
    P9 3000 8376,
    V0 2999 8428,
    V1 2999 8414,
    V8 2999 8396,
    V9 2999 8380,
]])

rename(pullups_left)
