#lang sicp

(define (exp n base)
  (define (even? n)
    (= (remainder n 2) 0))

  (define (square x) (* x x))
  
  (define (exp-iter exp b a)
    (cond ((= exp 0) a)
          ((even? exp) (exp-iter (/ exp 2) (square b) a))
          (else (exp-iter (- exp 1) b (* a b)))))
  (exp-iter n base 1))
    