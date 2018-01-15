#lang sicp

;; The current good enough test will not work for very small
;; numbers because the difference between x and guess will
;; be less than the tolerance even when the guess^2 is not close
;; to x.
;;
;; (sqrt 0.000000000010)
;;  0.0312500001065625
;;
;; For large numbers, the machine precision might not be adequate
;; enough to capture differences between large numbers.
;;
;; (sqrt 1000000000000000) doesn't terminate

;; If we change good-enough to, the program should work better
;; (define (good-enough? guess x)
;;   (< ( / (abs (- (square guess) x)) x) 0.001))

(define (square x) (* x x))

(define (improve guess x)
(average guess (/ x guess)))

(define (average x y)
(/ (+ x y) 2))

(define (good-enough? guess x)
  (< ( / (abs (- (square guess) x)) x) 0.001))

(define (sqrt-iter guess x)
(if (good-enough? guess x)
guess
(sqrt-iter (improve guess x) x)))

(define (sqrt x)
(sqrt-iter 1.0 x))
