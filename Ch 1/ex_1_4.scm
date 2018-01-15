#lang sicp

;; exercise 1.4

(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))

;; if b is greater than 0, add to a, otherwise subtract from b
;; hence a plus absolute value of b