(declare-const B Bool)
(declare-const D Bool)
(declare-const R Bool)
(declare-const Z Bool)

(assert (= B (or (and R D) (and (not R) (not D)))))
(assert (= D (not Z)))
(assert (= R (not B)))
(assert (= Z (and R (not D))))

(check-sat)
(get-model)
