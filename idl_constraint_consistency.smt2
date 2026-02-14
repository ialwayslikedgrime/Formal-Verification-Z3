(declare-const x Int)
(declare-const y Int)
(declare-const z Int)

(assert (or (< (- y x) 5) (<= (- x z) 3)))
(assert (<= z -2))
(assert (<= 2 x))
(assert (<= (- x y) -5))

(check-sat)


