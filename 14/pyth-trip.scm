; Raihan Mahmud
; Lone-SoN
; Foundations in CS
; HW14 -- Some Triples Are More Equal Than Others
; 2026-09-25
; time spent:

(define isPythTriple? ;  Returns true if values are a Pythagorean Triple, order matters
  (lambda (a b c)
    (if
     ;first arg
     (=
      (sqrt
       (+
        (expt a 2) (expt b 2)
        )) c)

     ; second arg
     #t
     
     ; third arg
     #f
     )))

"Testing isPythTriple?:"
(isPythTriple? 3 4 5) "... should be true"

(isPythTriple? 3 4 6) "... should be false"

(isPythTriple? -20 -21 29) "... should be true"

(isPythTriple? 3 3 3) "... should be false"

(isPythTriple? 134 263 984) "... should be false"

(isPythTriple? 7 -24 25) "... should be true"

(isPythTriple? 0.3 0.4 0.5) "... should be true"

 
