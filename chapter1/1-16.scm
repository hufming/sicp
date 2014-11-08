;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 1-16) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;;exercise 1.16
;; new-expt b n: number number->number
;; caluclate the value of b^n
(define (new-expt b n) (expt-iter 1 b n))

(define (expt-iter a b n) 
  (cond
    [(= 0 n) a]
    [(is-even? n) (expt-iter a (* b b) (/ n 2))]
    [else (expt-iter (* a b) b (- n 1))]))

(define (is-even? n) (= 0 (remainder n 2)))

(new-expt 2 3) "shoulde be" 8
(new-expt 2 4) "shoulde be" 16
    