
#lang racket

(provide (all-defined-out)) ;; so we can put tests in a second file

;; put your code below
; problem 1

(define (sequence low high stride)
  (if (> low high)
      null
      (cons low (sequence(+ low stride) high stride))))

; problem 2
(define (string-append-map xs suffix)
  (map (lambda (x) (string-append x suffix)) xs))


 ; problem 3
(define (list-nth-mod xs n)
  (cond [(< n 0) (error "list-nth-mod: negative number")]
        [(null? xs) (error "list-nth-mod: empty list")]
        [#t (car (list-tail xs (remainder n (length xs))))] ))

; problem 4
(define (stream-for-n-steps s n)
  (if (<= n 0)
      null
      (cons (car (s)) (stream-for-n-steps (cdr(s)) (- n 1)))))


; problem 5

(define funny-number-stream  
  (letrec ([f (lambda (x) 
                (cons (if (= (remainder x 5) 0) (- x) x)(lambda () (f (+ x 1)))))])
    (lambda () (f 1))))

; problem 6

(define dan-then-dog
  (letrec ([dan(lambda (x) (cons x (lambda () (dog "dog.jpg"))))]
           [dog(lambda (x) (cons x (lambda () (dan "dan.jpg"))))])
    (lambda () (dan "dan.jpg"))))

; problem 7

(define (stream-add-zero s)
  (letrec ([f (lambda (s) 
  (cons (cons 0 (car (s))) (lambda () (f (cdr (s))))))])
    (lambda () (f s))))

; problem 8
(define (cycle-lists xs ys)
     (letrec ([f (lambda (xs ys) 
                (cons (cons (car xs) (car ys))  (lambda () (f (append (cdr xs) (cons (car xs) null)) (append (cdr ys) (cons (car ys) null))))))])
    (lambda () (f xs ys))))

  ; problem 9 
 (define (vector-assoc v vec)
   (letrec ([f (lambda (v vec n)
               (cond [(= n (vector-length vec)) #f]
                     [(equal? (pair? (vector-ref vec n)) #f) (f v vec (+ n 1))]
                     [(equal? (car(vector-ref vec n)) v) (vector-ref vec n)]
                     [#t (f v vec (+ n 1))]))])
     (f v vec 0))) 
                     
            
