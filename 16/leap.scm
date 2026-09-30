; Raihan Mahmud
; Lone-SoN
; Foundations in CS
; HW16 -- Decision Tree as Development & Debugging Tool
; 2026-09-29
; time spent: 1.5 hrs

(define isLeapYr ; returns true if a year is a leap year
  (lambda (a)
    (cond
      ((= (remainder a 400) 0) #t)
      ((= (remainder a 100) 0) #f)
      ((= (remainder a 4) 0) #t)
      ((not(= (remainder a 4) 0)) #f)
          )))

"Testing isLeapYr"
(isLeapYr 2000) "... Should be true"
(isLeapYr 2004) "... Should be true"
(isLeapYr 2008) "... Should be true"
(isLeapYr 2009) "... Should be false"
(isLeapYr 2100) "... Should be flase"
(isLeapYr 2104) "... Should be true"
(isLeapYr 2200) "... Should be false"
(isLeapYr 2300) "... Should be false"
(isLeapYr 2400) "... Should be true"


(define daysInMonth ; takes numeric inputs and returns the number of days in the month specified
  (lambda (a y)
    (cond
      ((or (= a 1) (= a 3) (= a 5) (= a 7) (= a 8) (= a 10) (= a 12)) "31")
      ((or (= a 4) (= a 6) (= a 9) (= a 11)) "30")
      ((and (= a 2) (isLeapYr y)) "29")
      ((= a 2) "28"))))

"Testing daysInMonth"
(daysInMonth 1 2010) "... Should be 31"
(daysInMonth 2 2011) "... Should be 28"
(daysInMonth 2 2000) "... Should be 29"
(daysInMonth 4 2011) "... Should be 30"
