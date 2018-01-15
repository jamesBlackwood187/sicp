#lang sicp

;; exercise 1.5

(define (p) (p))
(define (test x y)
(if (= x 0) 0 y))

;; using applicative order there will be an infinite loop
;; b/c p will just keep substituting p