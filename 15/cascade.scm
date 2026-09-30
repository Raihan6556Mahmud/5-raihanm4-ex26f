; Raihan Mahmud
; Lone-SoN
; Foundations in CS
; HW14 -- Some Triples Are More Equal Than Others
; 2026-09-28
; time spent: 0.33 hrs

;A: 90 - 100
;B: 80 - 89.999
;C: 70 - 79.999
;D: 65 - 69.999
;F: -infinity - 64.999

(define gradeConvCascade ; uses cascading conditionals to convert numeric grade g into its letter grade equivalent
  (lambda (g)
    (cond (( and (>= g 90) (<= g 100)) "A")
          (( and (>= g 80) (<= g 89.999)) "B")
          (( and (>= g 70) (<= g 79.999)) "C")
          (( and (>= g 65) (<= g 69.999)) "D")
          (( and (or (>= g 0) (< g 0)) (<= g 64.999)) "F"))))

"Testing gradeConvCascade !!"
(gradeConvCascade 54) "... Should be F"

(gradeConvCascade 95) "... Should be A"

(gradeConvCascade 87.3) "... Should be B"

(gradeConvCascade 64.998) "... Should be F"

(gradeConvCascade 79.921) "... Should be C"

(gradeConvCascade 66.23) "... Should be D"

(gradeConvCascade -1) "... Should be F"
