;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname bigit_catchup) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Exercise 2.1 [*]

(define zero
  (lambda () '()))

(define is-zero?
  (lambda (numList)
    (if (eq? numList '()) #t
        #f)))

(define successor
  (lambda (numList number-base)
    (cond
      ((is-zero? numList) (list 1))
      ((eq? (car numList) (- number-base 1)) (cons 0 (successor (cdr numList) number-base)))
      (else (cons (+ 1 (car numList)) (cdr numList))))))



(define sample-list (list 15 0 1))
(define sample-list2 (zero))
(define sample-list3 (list 15 15))
(define sample-list4 (list 15 15 1))
;(is-zero? sample-list)
;(is-zero? (zero))

(successor sample-list 16)
(successor sample-list2 16)
(successor sample-list3 16)
(successor sample-list4 16)