#lang racket
(provide (all-defined-out)) ;; so we can put tests in a second file

;; put your code below

;; ex 1
(define (sequence lo hi stride)
  (if (> lo hi) 
     null 
     (cons lo (sequence (+ lo stride) hi stride))))

;; ex 2
(define (string-append-map xs suffix)
  (map (lambda (x) (string-append x suffix)) xs))

;; ex 3
(define (list-nth-mod xs n)
  (if (< n 0) (error "list-nth-mod: negative number") null)
  (if (empty? xs) (error "list-nth-mod: empty list") null)
  (list-ref xs (remainder n (length xs))))

;; ex 4
(define (stream-for-n-steps s n)
  (if (> 1 n)
     null
     (cons (car (s)) 
           (stream-for-n-steps (cdr (s)) (- n 1)))))
;; ex 5
(define funny-number-stream
  (letrec ([f (lambda (x) (cons (if (= (remainder x 5) 0) (- x) x)
                                (lambda () (f (+ x 1)))))])
    (lambda () (f 1))))

;; ex 6
(define dan-then-dog
  (letrec ([f (lambda (x) (cons (if (= (remainder x 2) 0) "dan.jpg" "dog.jpg")
                                (lambda () (f (+ x 1)))))])
    (lambda () (f 0))))

;; ex 7
(define (stream-add-zero s)
  (let ([pair (s)])
    (lambda () (cons 
                 (cons 0 (car pair)) 
                 (stream-add-zero (cdr pair))))))

;; ex 8 (helper function 1)
(define (stream-list xs)
  (letrec ([f (lambda (n) (cons (list-nth-mod xs n) 
                                (lambda () (f (+ n 1)))))])
    (lambda () (f 0))))

;; ex 8 (helper function 2)
(define (zip-stream s1 s2)
  (let ([pair1 (s1)]
        [pair2 (s2)])
    (lambda () (cons (cons (car pair1) 
                           (car pair2)) 
                     (zip-stream (cdr pair1) 
                                 (cdr pair2))))))

;; ex 8 (wrap helper functions together)
(define (cycle-lists xs ys) (zip-stream (stream-list xs) (stream-list ys)))

;; ex 9
(define (vector-assoc value vector) 
   (letrec ([compare (lambda(value vector n) 
      (if (= n (vector-length vector))
          #f
          (if (and (cons? (vector-ref vector n))
                   (equal? value (car (vector-ref vector n))))
                     (vector-ref vector n)
                     (compare value vector (+ n 1)))))])
   (compare value vector 0)))

;; ex 10
(define (cached-assoc xs n) 
  (let ([cache (make-vector n '#f)]
        [cache-pointer 0])
      (lambda (v) 
        (let ([result (vector-assoc v cache)])
          (if result                           ;; if it is the cache
              result                           ;; simply return the result
              (let ([result (assoc v xs)])     ;; else get it from the list
                (if result                     ;; and put it in the cache
                  (begin 
                    (vector-set! cache cache-pointer result)
                    (set! cache-pointer (remainder (+ cache-pointer 1) n))
                    result)
                  '#f)))))))

