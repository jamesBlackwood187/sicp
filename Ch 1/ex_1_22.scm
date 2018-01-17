#lang sicp

;; The 3 smallest primes greater than 1000 are 1009, 1013, 1019.
;; The 3 smallest primes greater than 10000 are 10007, 10009, 10037
;; The 3 smallest primes greater than 100000 are 100003, 100019, 100043
;; Note that for each factor of 10, the time to calc prime goes up by
;; about a factor of 3, ~sqrt(n) growth

(define (square x) (* x x))

(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b) (= (remainder b a) 0))

(define (prime? n)
(= n (smallest-divisor n)))

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

(define (search-for-primes n up-bound)
  (define (search-iter n)
    (if (<= n up-bound) (timed-prime-test n))
    (if (<= n up-bound) (search-iter (+ n 2))))
  (search-iter n)
 )
    
        
  