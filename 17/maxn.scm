; Raihan Mahmud
; Lone-SoN
; Foundations in CS
; HW17 -- Biggest?
; 2026-09-30
; time spent: .5 hrs

(define MAX2 ; returns the maximum value between 2 values
  (lambda (a b)
    (/
     (+ (+ a b) (abs (- a b)))
                    2)
    ))

(define MAX3; returns the maximum value between 3 values
  (lambda (a b c)
    (MAX2 (MAX2 a b) c)))

(define MAX4 ; returns the maximum value between 4 values
  (lambda (a b c d)
  (MAX2 (MAX3 a b c) d)))

(define MAX5 ; returns the maximum value between 5 values
  (lambda (a b c d e)
    (MAX2 (MAX4 a b c d) e)))

"Testing MAX2"
(MAX2 0 0) "... Should be 0"
(MAX2 1 3) "... Should be 3"
(MAX2 3 1) "... Should be 3"

"Testing MAX3"
(MAX3 0 0 0) "... Should be 0"
(MAX3 1 1 3) "... Should be 3"
(MAX3 3 3 1) "... Should be 3"

"Testing MAX4"
(MAX4 0 0 0 0) "... Should be 0"
(MAX4 1 1 1 3) "... Should be 3"
(MAX4 3 4 2 1) "... Should be 4"

"Testing MAX5"
(MAX5 0 0 0 0 0) "... Should be 0"
(MAX5 1 1 1 3 1) "... Should be 3"
(MAX5 3 4 -1 2 1) "... Should be 4"
