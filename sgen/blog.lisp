; (set mk_pullup_str (fn [id x y o])
;   (string.format (.. "P1=d(v%d, %d %d,\n"
;                       "V%d %d %d,\n"
;                       id x y id (- x 1) (+ y 4))))

(set mk_mosfet (fn [d g s]
                (d g s)))

(set mk_pullup (fn [v n]
                (mk_mosfet v n n)))

(set move_pullup->str (fn [id x y o]
                        (string.format (.. "P%d %d %d,\n"
                                           "V%d %d %d,\n")
                                       id x y id (- x 1) (+ y 4))))


(set p_col (fn [start_id x y n o]
             (set iter
               (fn [str i y]
                 (if (>= i (+ start_id n))
                     str
                     :else
                     (iter
                       (.. str (move_pullup->str i x y o))
                       (+ i 1)
                       (- y 15)))))
             (iter "" start_id y)))


;(set roi (list 2950 8550 3300 8200))
;(set roi (list 2986 8450 3040 8290))

(let [blog (nodes_rect 2986 8450 3040 8290)]
   (let [n (make_match blog)]
       (let [f (io.open "blog-match.txt" "w+")]
         (do
           ;(print n)
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

            (do
              (let [x_bias 3050
                    y_bias 0
                    p_match (match blog pullups_left)]
                  (do
                    (move p_match x_bias y_bias
                      (move_pullup->str 2 0 8441 ""))
                    (move p_match x_bias y_bias
                      (p_col 0 0 8424 2 ""))
                    (move p_match x_bias y_bias
                      (p_col 3 0 8392 7 ""))
                    (rename p_match)))))))

;(let [blog (nodes_rect 2950 8550 3300 8200)] (let [row_]))
