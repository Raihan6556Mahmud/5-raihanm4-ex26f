; Raihan Mahmud
; Lone-SoN
; Foundations in CS
; HW18 -- Like a Dream Within a Dream
; 2026-10-1
; time spent: .5 hrs

; n(n-1)!

(define fact ; returns factorial of n
  (lambda (n)
    (cond
      ((< n 0) "undefined")
      ((= n 0) 1)
      ((> n 0) (* n (fact (- n 1)))
      ))))

"Testing fact"
(fact -33) "... Should be undefined"
(fact 0) "... Should be 1"
(fact 1) "... Should be 1"
(fact 2) "... Should be 2"
(fact 3) "... Should be 6"
(fact 4) "... Should be 24"
(fact 5) "... Should be 120"
(fact 6) "... Should be 720"
