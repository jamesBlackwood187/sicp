#lang sicp

;; There is about a 1.5 factor speedup. This differs from 2
;; because we perform an additional 'if' check in 'next'

(define (square x) (* x x))

(define (smallest-divisor n) (find-divisor n 2))

(define (next n)
  (if (= n 2) 3
      (+ n 2)))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))
(define (divides? a b) (= (remainder b a) 0))

(define (timed-prime-test n)
  (newline)
  (display n)
  (define (prime? n)
    (= n (smallest-divisor n)))  (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))
(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))