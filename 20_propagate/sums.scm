; Raihan Mahmud
; Lone-SoN
; Foundations in CS
; HW20 -- Lather, Rinse, Repeat
; 2026-10-05
; time spent: 1.5 hrs

(define getDigit ; returns the nth digit of num
  (lambda (num n)
    (cond
      ((= n 1) (remainder num 10))
      ((> n 1) (getDigit (quotient num 10) (- n 1)))
      )))

"Testing getDigit"
(getDigit 124 1) "... Should be 4"
(getDigit 5 1) "... Should be 5"
(getDigit 124 2) "... Should be 2"

(define sumOdd
  (lambda (N) ; returns the sum of N and the positive odd integers less than N
    (cond ; for odd, and N with N-2, until N is low enough
      ((<= N 0) 0)
      ((= 1 (remainder N 2)) (+ N (sumOdd(- N 2))))
      ((= 0 (remainder N 2)) (sumOdd(- N 1)))
      )))

"Testing sumOdd"
(sumOdd 0) "... Should be 0"
(sumOdd 1) "... Should be 1"
(sumOdd 2) "... Should be 1"
(sumOdd 3) "... Should be 4"
(sumOdd 9) "... Should be 25"
(sumOdd 10) "... Should be 25"

(define sumOddDigits ; takes positive integer n and returns the sum of n’s odd digits
  (lambda (n)
    (cond
      ((= n 0) 0)
      ((= 1 (remainder n 2)) (+ (remainder n 10) (sumOddDigits (quotient n 10))))
      ((= 0 (remainder n 2)) (sumOddDigits(quotient n 10))))
      ))

"Testing sumOddDigits"
(sumOddDigits 0) "... Should be 0"
(sumOddDigits 4) "... Should be 0"
(sumOddDigits 3) "... Should be 3"
(sumOddDigits 1984) "... Should be 10"
(sumOddDigits 492067) "... Should be 16"

(define sumPtoQ ; returns the sum of the integers from p to q, inclusive
  (lambda (p q)
    (cond ;  add p+(p+1)... until p = q
      ((= p q) q)
      ((not (= p q)) (+ p (sumPtoQ (+ p 1) (+ q 0))))
      )))

"Testing sumPtoQ"
(sumPtoQ 0 0) "... Should be 0"
(sumPtoQ 0 3) "... Should be 6"
(sumPtoQ 2 3) "... Should be 5"
(sumPtoQ 3 3) "... Should be 3"
       
