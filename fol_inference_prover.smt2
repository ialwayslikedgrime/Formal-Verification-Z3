(declare-sort Person)
(declare-fun C (Person) Bool)
(declare-fun R (Person) Bool)
(declare-fun P (Person) Bool)

(assert (forall ((x Person)) (=> (C x) (P x))))
(assert (exists ((x Person)) (and (C x) (not (R x)))))
(assert (not (exists ((x Person)) (and (P x) (not (R x))))))
(check-sat)