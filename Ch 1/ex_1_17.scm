#lang sicp

(define (mult a b)
  (define (even? n)
    (= (remainder n 2) 0))

  (define (double x) (+ x x))

  (define (halve x) (/ x 2))

  (cond ((= b 0) 0)
        ((even? b) (double (mult a (halve b))))
        (else (+ a (mult a (- b 1))))))

  