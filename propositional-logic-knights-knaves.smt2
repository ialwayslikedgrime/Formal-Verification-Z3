;Knight always say the truth and Knaves always lie
;Bart tells you that Zed is a knight or Rex is a knight. 
;Marge tells you that Zed and Bart are both knights. 
;Rex tells you that Zed is a knave.
;Zed says, “I and Rex are knights.” 

(declare-datatypes () ((I b m r z)))

(declare-fun Knight (I) Bool)
(declare-fun Knave (I) Bool)

(assert (forall ((x I)) (= (Knight x) (not (Knave x)))))

(assert (= (Knight b) (or (Knight z) (Knight r)) ))
(assert (= (Knight m) (and (Knight b) (Knight z)) ))
(assert (= (Knight r) (Knave z)) )
(assert (= (Knight z) (and (Knight z) (Knight r)) ))

(check-sat)
(get-value ((Knight b) (Knight m) (Knight z) (Knight r)))

;uniqueness of solution
(assert (not (and (Knight b) (Knave m) (Knave z) (Knight r))))
(check-sat)


