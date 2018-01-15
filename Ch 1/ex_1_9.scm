#lang sicp

;; The first procedure is recursive
;; (+ 4 5)
;; (inc (+ (dec 4) 5))))
;; (inc (+ (3 5))))
;; (inc (inc (+ (dec 3) 5)))
;; ...
;; (inc (inc 7))
;; (inc 8)
;; 9

;; The second procedure is iterative
;; (+ 4 5)
;; (+ (dec 4) (inc 5)))
;; (+ 3 6)
;; (+ (dec 3) (inc 6))
;; ...
;; (+ (dec 1) (inc 8))
;; (+ 0 9)
;; 9