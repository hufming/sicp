;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 1-8) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;;exercise 1.8
(define (cube-root x)  (cube-root-iter 1.0 x))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
     guess
     (cube-root-iter (improve guess x) x)))

(define (good-enough? guess x)
  (<  (abs ( - (* guess guess guess) x)) 0.001))

(define (improve guess x) (/  (+ (/  x  
                                                           (* guess guess)) 
                                                       (* 2 guess) )
                                                  3))
  
     