#lang sicp

(define (square x) (* x x))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (square (expmod base (/ exp 2) m)) m))
        (else
         (remainder
          (* base (expmod base (- exp 1) m)) m))))

(define (fermat-test a n)
    (= (expmod a n n) a))

(define (carmichael-test n)
  (define (carm-iter a n)
    (cond ((= a 1) true)
          ((fermat-test a n) (fermat-test (- a 1) n))
          (else false)))
  (carm-iter (- n 1) n))
