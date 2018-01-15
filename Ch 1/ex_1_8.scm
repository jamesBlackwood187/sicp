#lang sicp

;; >(cube-root 27)
;;  3.0000005410641766
;; >(cube-root 64)
;;  4.000017449510739

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x) x)))

(de.fine (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (cube x) (* x x x))

(define (good-enough? guess x)
  (< ( / (abs (- (cube guess) x)) x) 0.0001))

(define (cube-root x) (cube-iter 1.0 x))
