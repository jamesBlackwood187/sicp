#lang sicp

;; Recursive
(define (f-tree n)
  (cond ((< n 3) n)
        (else (+ (f-tree (- n 1))
                 (* 2 (f-tree (- n 2)))
                 (* 3 (f-tree (- n 3)))))))

;; Iterative
(define (f-iter n)
 (f-it 2 1 0 n))

(define (f-it a b c count)
  (if (= count 0)
      c
      (f-it (+ a (* 2 b) (* 3 c)) a b (- count 1))))