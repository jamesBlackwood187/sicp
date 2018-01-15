#lang sicp

;; p is applied 5 times for sine 12.15. The growth is O(log n)
;; because every step divides the input by 3. This continual
;; division will yield ~log n steps for large n

(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
    angle
    (p (sine (/ angle 3.0)))))