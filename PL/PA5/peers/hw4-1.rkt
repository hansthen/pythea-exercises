#lang racket

(provide (all-defined-out))

; 1
(define (sequence low high stride)
	(if (> low high)
		null
		(cons low (sequence (+ low stride) high stride))
	)
)

; 2
(define (string-append-map xs suffix)
	(map (lambda (str) (string-append str suffix)) xs))

; 3
(define (list-nth-mod xs n)
	(cond 
		[(< n 0) (error "list-nth-mod: negative number")]
		[(null? xs) (error "list-nth-mod: empty list")]
		[#t (car (list-tail xs (remainder n (length xs))))]
	)
)

; 4
(define (stream-for-n-steps s n)
	(if (= n 0)
		null
		(cons (car (s)) (stream-for-n-steps (cdr (s)) (- n 1)))
	)
)

; 5
(define (funny-number-stream)
	(define (f x)
		(cons 
			(if (= 0 (remainder x 5)) (- x) x) 
			(lambda () (f (+ x 1)))
		)
	)
	(f 1)
)

; 6
(define (dan-then-dog)
	(cons "dan.jpg" (lambda () (cons "dog.jpg" (lambda () (dan-then-dog)))))
)

; 7
(define (stream-add-zero s)
	(define (f s)
		(cons
			(cons 0 (car (s))) 
			(lambda () (f (cdr (s))))
		)
	)
	(lambda () (f s))
)

; 8
(define (cycle-lists xs ys)
	(define (helper n)
		(cons
			(cons (list-nth-mod xs n) (list-nth-mod ys n))
			(lambda () (helper (+ n 1)))
		)
	)
	(lambda () (helper 0))
)

; 9
(define (vector-assoc v vec)
	(define (helper n)
		(if (> n (- (vector-length vec) 1)) 
			#f
			(let ([ith (vector-ref vec n)])
				(if (and (pair? ith) (equal? (car ith) v)) ith (helper (+ n 1)))
			)
		)
	)
	(helper 0)
)

; 10
(define (cached-assoc xs n)
	(let ([memo (make-vector n #f)] [next 0])
		(lambda (v)
			(let ([tmp (vector-assoc v memo)])
				(if (equal? tmp #f)
					(let ([el (assoc v xs)])
						(if (equal? el #f)
							#f
							(begin 
								(vector-set! memo next el) 
								(set! next (remainder (+ next 1) n)) 
								el)
						)
					)
					tmp
				)
			)
		)
	)
)

; 11
(define-syntax while-less
	(syntax-rules (do)
		[(while-less e1 do e2)
			(let ([end e1] [body e2])
				(define (helper x)
					(if (< x end)
						(helper e2)
						#t
					)
				)
				(helper body)
			)
		]
	)
)
