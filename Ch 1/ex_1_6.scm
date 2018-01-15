#lang sicp

;; The new-if procedure is not a special form, it will evaluate all
;; all subexpressions. The special form if will only evaluate
;; one of the conditional expressions each turn, but the new-if
;; will never terminate.