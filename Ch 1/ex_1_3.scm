#lang sicp

;; ex 1.3

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-of-squares-two-largest x y z)
  (cond ((and (>= x y) (>= z y)) (sum-of-squares x z))
        ((and (>= x y) (<= z y)) (sum-of-squares x y))
        ((and (<= x y) (>= z x)) (sum-of-squares y z))))
        