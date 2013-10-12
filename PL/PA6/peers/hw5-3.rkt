
#lang racket

(provide (all-defined-out)) ;; so we can put tests in a second file

;; put your code below


; problem 1
(define (sequence low high stride)
  (letrec ([f (lambda (curr)
             (if (> curr high)
                 null
                 (cons curr (f (+ curr stride)))))])
  (f low)))

; problem 2
(define (string-append-map xs suffix)
  (map (lambda (x) (string-append x suffix)) xs))

; problem 3
(define (list-nth-mod xs n)
  (cond [(< n 0) (error "list-nth-mod: negative number")]
        [(null? xs) (error "list-nth-mod: empty list")]
        [#t (car (list-tail xs (remainder n (length xs))))]))


; problem 4
(define (stream-for-n-steps s n)
  (if (= 0 n)
      null
      (cons (car (s)) (stream-for-n-steps (cdr (s)) (- n 1)))))

; problem 5
(define funny-number-stream
  (letrec ([f (lambda (x)
                (let ([next-rem (remainder x 5)])
                  (cond [(= next-rem 0) (cons (- 0 x) (lambda () (f (+ x 1))))]
                        [#t (cons x (lambda () (f (+ x 1))))])))])
    (lambda () (f 1))))
                                                    
; problem 6
(define dan-then-dog
  (letrec ([f (lambda (x)
                (if (equal? x "dan.jpg") (cons "dan.jpg" (lambda () (f "dog.jpg"))) (cons "dog.jpg" (lambda () (f "dan.jpg")))))])
    (lambda () (f "dan.jpg"))))


; problem 7
(define (stream-add-zero s) 
  (letrec ([f (lambda (s) 
                (cons (cons 0 (car (s))) (lambda () (f (cdr (s))))))])
    (lambda () (f s))))

; problem 8 -- use list-nth-mod
(define (cycle-lists xs ys)
  (letrec ([f (lambda (n)
                (cons 
                 (cons (list-nth-mod xs n) (list-nth-mod ys n)) 
                 (lambda () (f (+ n 1)))))])
    (lambda () (f 0))))
  
; problem 9
(define (vector-assoc v vec)
  (letrec ([f (lambda (pos)
                (cond [(= 0 (- (vector-length vec) pos)) #f]
                      [(and (pair? (vector-ref vec pos)) (equal? (car (vector-ref vec pos)) v)) (vector-ref vec pos)]
                      [#t (f (+ pos 1))]))])
    (f 0)))

; (make-vector n #f) ; create a vector

; problem 10
(define (cached-assoc xs n)
  (let ([cache (make-vector n #f)]
        [pos 0])
    (let ([ f  (lambda (v)
                 (let ([val (vector-assoc v cache)]) ; checks whether v is in the cache
                     (cond [(equal? val #f) 
                            (let ([val-xs (assoc v xs)]) ; checks wheter v is in xs
                                (cond [(equal? val-xs #f) #f] ; not in xs
                                      [#t (begin ; in xs
                                            (vector-set! cache pos val-xs) ; add value to the cache
                                            (set! pos (remainder  (+ 1 pos) n))   ;increment pos
                                            val-xs)] ; not in the cache
                                      ))]
                           [#t val])))])
      f)))

; problem 11
(define-syntax while-less
  (syntax-rules (do)
    [(while-less e1 do e2) 
     (let ([e1_val e1])
       (letrec ([f (lambda () 
                     (if (>= e2 e1_val) #t (f)))])
         (f)))]))

                

