;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 1-4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;;exercise 1.4
(define (sum-of-top2 a b c) ( -  (+ a b c)  (min-of-three a b c)))
(define (min-of-three a b c)
  ( cond
     [(and (< a b) (< a c)) a]
     [(and (< b a) (< b c)) b]
     [(and (< c a) (< c b)) c]))
;;example
;;(sum-of-top2 1 2 3)-->5
;;(sum-of-top2 2 1 3)-->5
;;(sum-of-top2 3 2 1)-->5
(sum-of-top2 1 2 3) "should be" 5
(sum-of-top2 2 1 3) "should be" 5
(sum-of-top2 3 2 1) "should be" 5

