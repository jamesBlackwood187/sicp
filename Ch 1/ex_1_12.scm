#lang sicp

(define (pascal row column)
  (if (or (= column row) (= column 0)) 1
      (+ (pascal (- row 1) (- column 1))
      (pascal (- row 1) column))))
