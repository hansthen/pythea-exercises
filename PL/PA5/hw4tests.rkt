#lang racket
(require "hw4.rkt") 

;; A simple library for displaying a 2x3 grid of pictures: used
;; for fun in the tests below (look for "Tests Start Here").

(require (lib "graphics.rkt" "graphics"))

(open-graphics)

(define window-name "Programming Languages, Homework 4")
(define window-width 700)
(define window-height 500)
(define border-size 100)

(define approx-pic-width 200)
(define approx-pic-height 200)
(define pic-grid-width 3)
(define pic-grid-height 2)

(define (open-window)
  (open-viewport window-name window-width window-height))

(define (grid-posn-to-posn grid-posn)
  (when (>= grid-posn (* pic-grid-height pic-grid-width))
    (error "picture grid does not have that many positions"))
  (let ([row (quotient grid-posn pic-grid-width)]
        [col (remainder grid-posn pic-grid-width)])
    (make-posn (+ border-size (* approx-pic-width col))
               (+ border-size (* approx-pic-height row)))))

(define (place-picture window filename grid-posn)
  (let ([posn (grid-posn-to-posn grid-posn)])
    ((clear-solid-rectangle window) posn approx-pic-width approx-pic-height)
    ((draw-pixmap window) filename posn)))

(define (place-repeatedly window pause stream n)
  (when (> n 0)
    (let* ([next (stream)]
           [filename (cdar next)]
           [grid-posn (caar next)]
           [stream (cdr next)])
      (place-picture window filename grid-posn)
      (sleep pause)
      (place-repeatedly window pause stream (- n 1)))))

;; Tests Start Here

; These definitions will work only after you do some of the problems
; so you need to comment them out until you are ready.
; Add more tests as appropriate, of course.

(define nums (sequence 0 5 1))

(define files (string-append-map 
               (list "dan" "dog" "curry" "dog2") 
               ".jpg"))

(define funny-test (stream-for-n-steps funny-number-stream 16))

; a zero-argument function: call (one-visual-test) to open the graphics window, etc.
(define (one-visual-test)
  (place-repeatedly (open-window) 0.5 (cycle-lists nums files) 27))

; similar to previous but uses only two files and one position on the grid
(define (visual-zero-only)
  (place-repeatedly (open-window) 0.5 (stream-add-zero dan-then-dog) 27))

(define nats
  (letrec ([f (lambda (x) (cons x (lambda () (f (+ x 1)))))])
    (lambda () (f 1))))

'"stream for n steps"
(equal? (stream-for-n-steps nats 10) '(1 2 3 4 5 6 7 8 9 10))
(equal? (stream-for-n-steps nats 1) '(1))

'"funny number stream tests"
(equal? (stream-for-n-steps funny-number-stream 10) '(1 2 3 4 -5 6 7 8 9 -10))
(equal? (stream-for-n-steps funny-number-stream 1) '(1))
(equal? (stream-for-n-steps funny-number-stream 0) null )
;'"funny number stream negative number"
;(equal? (stream-for-n-steps funny-number-stream -1) null )

'"dan-then-dog"
(equal? (stream-for-n-steps dan-then-dog 5) '("dan.jpg" "dog.jpg" "dan.jpg" "dog.jpg" "dan.jpg"))

'"add-zero nats"
(equal? (stream-for-n-steps (stream-add-zero nats) 10) 
        '((0 . 1) (0 . 2) (0 . 3) (0 . 4) (0 . 5) (0 . 6) (0 . 7) (0 . 8) (0 . 9) (0 . 10)))

;'"stream-list"
;(equal? (stream-for-n-steps (stream-list (list "a" "b" "c")) 10)
;        '("a" "b" "c" "a" "b" "c" "a" "b" "c" "a"))

;'"zip-stream"
;(equal? (stream-for-n-steps (zip-stream (stream-list (list "a" "b" "c"))
;                                        (stream-list (list "x" "y"))) 10)
;'(("a" . "x") ("b" . "y") ("c" . "x") ("a" . "y") ("b" . "x") ("c" . "y") ("a" . "x") ("b" . "y") ("c" . "x") ("a" . "y")))

'"cycle-lists"
(equal? (stream-for-n-steps (cycle-lists (list 1 2 3) (list "a" "b")) 10)
        '((1 . "a") (2 . "b") (3 . "a") (1 . "b") (2 . "a") (3 . "b") (1 . "a") (2 . "b") (3 . "a") (1 . "b")))

'"vector-assoc"
(equal? (vector-assoc "a" (vector '("a" . 0) '("b" . 1) '("c" . 2))) '("a" . 0))
(vector-assoc "a" (vector '("a" . 0) '("b" . 1) '("c" . 2)))
(equal? (vector-assoc "a" (make-vector 3 '#f)) '#f)

(define cached (cached-assoc (list (cons "a" 10) (cons "b" 11) (cons "c" 12)) 2))

'"cached-assoc"
(equal? (cached "b") '("b" . 11))
(equal? (cached "a") '("a" . 10))
(equal? (cached "c") '("c" . 12))
