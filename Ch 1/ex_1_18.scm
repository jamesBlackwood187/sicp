#lang sicp

(define (mult a b)
  (define (even? n)
    (= (remainder n 2) 0))

  (define (double x) (+ x x))

  (define (halve x) (/ x 2))

  (define (m-iter a b c)
    (cond ((= b 0) c)
          ((even? b) (m-iter (double a) (halve b) c))
          (else (m-iter a (- b 1) (+ a c)))))
  (m-iter a b 0))
