#lang sicp

;; With the remainder operation occuring outside the fast-exp,
;; we can end up computing squares of large numbers, whereas in the
;; original implementation the remainder operation inside the procedure
;; keeps the numbers we square small. In practice, the results
;; will be the same, but the new approach is computationally expensive.
