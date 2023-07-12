#lang simply-scheme

; Exercise 1.2
(/ (+ 5 4 ( - 2 ( - 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))


; Exercise 1.3
(define (sum-of-squares a b)
  (+ (* a a) (* b b)))

(define (sum-of-squares-for-bigger-two a b c)
  (if (> a b)
      (if (> b c)
          (sum-of-squares a b)
          (sum-of-squares a c))
      (if (> a c)
          (sum-of-squares a b)
          (sum-of-squares b c)))
)

(sum-of-squares 2 3)
(sum-of-squares-for-bigger-two 1 2 3)
(sum-of-squares-for-bigger-two 2 3 1)
(sum-of-squares-for-bigger-two 3 2 1)
(sum-of-squares-for-bigger-two 1 3 2)
(sum-of-squares-for-bigger-two 10 2 10)

; Exercise 1.5
;; in applicative order evaluation, the interpreter first tries to resolve the parameters, and thus leads to an infinite loop when evaluating (p)
;; in normal order evaluation the first "fully expand" and then "reduce" the expression in test. Thus, it will first compare the if, (= 0 0), and then will not further evaluate (p)

