#lang sicp


;; (A 1 10) -> 1024
;; (A 2 4) -> 65536
;; (A 3 3) -> 65536

;; (f n) = (A 0 n) computes 2n
;; (g n) = (A 1 n) computes 2^n^n^n...(n-1 exp)

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))

