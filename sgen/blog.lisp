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

; Get a row of transistors in a ROM plus corresponding pullups.
; Order of transistors not guaranteed.
(set row_str
  (fn [row_n n_trans]
    (set iter
      (fn [str curr_n]
        (if (>= curr_n n_trans)
          str
          :else
          (iter
            (.. str (mk_str curr_n))
            (+ 1 curr_n)))))

    (set mk_str
      (fn [curr_n]
        (let [trans_id (string.format "D%d_%d" row_n curr_n)
              node_str (string.format "t(p%d, d%d_%d, g%d_%d)"
                                      row_n row_n curr_n row_n curr_n)
              gnd_id (string.format "G%d_%d=gnd(g%d_%d)" row_n curr_n row_n curr_n)]
          (.. trans_id "=" node_str " " gnd_id "\n"))))

    (let [pullup_str (string.format
                       "P_l%d=d(v%d, p%d, p%d) V%d=vcc(v%d)\n"
                        row_n row_n row_n row_n row_n row_n)]
          ; term_str (string.format
          ;            "T%d=t(p%d, t_%d, gt%d) GT%d=gnd(gt%d)\n \
          ;            P_b%d=d(vpb%d, t_%d, t_%d) VPb%d=vcc(vpb%d)\n"
          ;            row_n row_n row_n row_n row_n row_n)]
      (.. (iter pullup_str 0) ""))))

;(print (row_str 0 4))

(let [blog (nodes_rect 2950 8550 3300 8200)
      n (make_match blog)]
     (let [f (io.open "blog-match.txt" "w+")]
       (do
         ;(print n)
         (f.write f n)
         (f.close f)))
     (let [pullups_left  (.. (row_str 0 5) (row_str 1 5))]

          (do
            (print pullups_left)
            (let [x_bias 3050
                  y_bias 0
                  p_match (match blog pullups_left)]
                (do
                  (print p_match)
                  ; (move p_match x_bias y_bias
                  ;   (move_pullup->str 2 0 8441 ""))
                  ; (move p_match x_bias y_bias
                  ;   (p_col 0 0 8424 2 ""))
                  ; (move p_match x_bias y_bias
                  ;   (p_col 3 0 8392 7 ""))
                  (rename p_match))))))


; (let [row0 (nodes_rect 3040 8450 3200 8435)]
;   (let [p_match (make_match row0)]
;     ;(match row0 ())
;     (print p_match)))

;(let [blog (nodes_rect 2950 8550 3300 8200)] (let [row_]))
