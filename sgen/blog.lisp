; (set mk_pullup_str (fn [id x y o])
;   (string.format (.. "P1=d(v%d, %d %d,\n"
;                       "V%d %d %d,\n"
;                       id x y id (- x 1) (+ y 4))))

(set mk_mosfet (fn [d g s]
                (d g s)))

(set mk_pullup (fn [v n]
                (mk_mosfet v n n)))

(set mk_move_pullup_str (fn [id x y o]
                         (string.format (.. "P%d %d %d,\n"
                                             "V%d %d %d,\n")
                                        id x y id (- x 1) (+ y 4))))

(let [blog (nodes_rect 2950 8550 3300 8200)]
   (let [n (make_match blog)]
       (let [f (io.open "blog-match.txt" "w+")]
         (do
           (print n)
           (f.write f n)
           (f.close f)))
       (let [pullups_left (.. "P0=d(v0, a, a)\n"
                           "P1=d(v1, b, b)\n"
                           "P2=d(v2, c, c)\n"
                           "P3=d(v3, d, d)\n"
                           "P4=d(v4, e, e)\n"
                           "P5=d(v5, f, f)\n"
                           "P6=d(v6, g, g)\n"
                           "P7=d(v7, h, h)\n"
                           "P8=d(v8, i, i)\n"
                           "P9=d(v9, j, j)\n"
                           "V0=vcc(v0)\n"
                           "V1=vcc(v1)\n"
                           "V2=vcc(v2)\n"
                           "V3=vcc(v3)\n"
                           "V4=vcc(v4)\n"
                           "V5=vcc(v5)\n"
                           "V6=vcc(v6)\n"
                           "V7=vcc(v7)\n"
                           "V8=vcc(v8)\n"
                           "V9=vcc(v9)\n")]
            pullups_left)))
