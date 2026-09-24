; Raihan Mahmud
; Alone
; Foundations in CS
; HW13 -- True|False
; 2026-09-24
; time spent: .5 hrs

(define XOR ; returns the exclusive OR value of 2 inputs
  (lambda (a b)
    (and (or a b) (not (and a b)))))

"Testing XOR"
(XOR #f #t)
(XOR #t #t)

(define BIC ; returns true if both inputs are equal, false otherwise
  (lambda (a b)
    (not (XOR a b))))

"Testing BIC"
(BIC #f #f)
(BIC #t #f)

(define XOR3 ; returns the exclusive OR value of 3 inputs 
  (lambda (a b c)
    (XOR a (XOR b c))))

"Testing XOR3"
(XOR3 #f #f #t)
(XOR3 #f #t #t)
(XOR3 #t #f #t)
(XOR3 #t #t #t)


(define XNOR3 ; returns the exclusive NOT value of 3 inputs (my fav logic gate)
  (lambda (a b c)
    (not(XOR a (XOR b c)))))

"Testing XNOR3"
(XNOR3 #f #f #t)
(XNOR3 #f #t #t)
(XNOR3 #t #f #t)
(XNOR3 #t #t #t)
