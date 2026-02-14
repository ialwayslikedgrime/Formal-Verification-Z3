(declare-sort Person)
(declare-fun C (Person) Bool)
(declare-fun R (Person) Bool)
(declare-fun P (Person) Bool)

(assert (forall ((x Person) (=> (C x) (P x)))))
(declare-const a Perons)
(assert (and (C a) (not R a)))
(assert (not (exists ((x Person) (and (P x) (not R x))))))
(check-sat)

