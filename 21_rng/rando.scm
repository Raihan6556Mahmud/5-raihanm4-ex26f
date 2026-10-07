; Raihan Mahmud
; Lone-SoN
; Foundations in CS
; HW21 -- RNG
; 2026-10-06
; time spent: 0.5 hrs

(define randOnRange ; takes non-negative integers a and b, and returns, with equal probability, an integer on the range
  (lambda (a b)
   (+ a
      (random (- b a)))
    ))

"Testing randOnRange"
(randOnRange 3 4) "... Should be 3"
(randOnRange 3 5) "... Should be [3, 4) with equal chances"
(randOnRange 7 12) "... Should be [7, 12) with equal chances"

(define numDigits ; takes positive integer n and returns the number of digits in n
  (lambda (N)
    (cond ; divide N by 10 until it is less than 10, adding 1 each time
      ((< N 10) 1)
      ((>= N 10) (+ 1 (numDigits(quotient N 10))))
      )))

(define getDigit ; returns the nth digit of num
  (lambda (numb n)
    (cond
      ((= n 1) (remainder numb 10))
      ((> n 1) (getDigit (quotient numb 10) (- n 1)))
      )))

(define getRandDigit;  returns a random digit from num
  (lambda (num)
    (getDigit num (+ 1
                     (random (numDigits num))))
    ))

"Testing getRandDigit"
(getRandDigit 124) "... Should be 1|2|4"
(getRandDigit 5) "... Should be 5"
(getRandDigit 1234567890) ".. Should be 0|1|2|3|4|5|6|7|8|9"
      
