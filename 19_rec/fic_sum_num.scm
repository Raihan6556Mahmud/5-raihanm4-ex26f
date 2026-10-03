; Raihan Mahmud
; Lone-SoN
; Foundations in CS
; HW19 -- Ever-Shrinking Problems
; 2026-10-02
; time spent: 1.5 hrs

(define fiction ; does a job equivalent to (fact n) except only multiplies every 3rd integer
  (lambda (n)
    ( if (< n 2) 1
      (* n (fiction(- n 3)))
      )))

"Testing fiction"
(fiction 0) "... Should be 1"
(fiction 1) "... Should be 1"
(fiction 2) "... Should be 2"
(fiction 3) "... Should be 3"
(fiction 4) "... Should be 4"
(fiction 5) "... Should be 10"
(fiction 6) "... Should be 18"
(fiction 7) "... Should be 28"
(fiction 8) "... Should be 80"

(define sumDigits ; takes positive integer n and returns the sum of its digits
  (lambda (n)
    (cond
      ((< n 10) n)
      ((> n 10) (+ (remainder  n 10) (sumDigits(quotient n 10))))
      )))

"Testing sumDigits"
(sumDigits 5) "... Should be 5"
(sumDigits 35) "... Should be 8"
(sumDigits 492067) "... Should be 28"



(define numDigits ; takes positive integer n and returns the number of digits in n
  (lambda (n)
    (cond ; divide n by 10 until it is less than 10, adding 1 each time
      ((< n 10) 1)
      ((>= n 10) (+ 1 (numDigits(quotient n 10))))
      )))

"Testing numDigits"
(numDigits 5) "... Should be 1"
(numDigits 35) "... Should be 2"
(numDigits 492067) "... Should be 6"
