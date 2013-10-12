#lang racket

(require "hw5.rkt")

;; simple test case for problem 1 
(racketlist->mupllist (list (int 42) (var "x")))

(mupllist->racketlist (apair (int 42) (apair (var "x") (aunit))))

(eval-under-env (int 10) '())                                          ; 10
(eval-under-env (int -10) '())                                         ; -10
(eval-under-env (add (int 10) (int 10)) '())                           ; 20 
(eval-under-env (ifgreater (int 10) (int 11) (int 1) (int 2)) '())     ; 2
(eval-under-env (ifgreater (int 11) (int 10) (int 1) (int 2)) '())     ; 1
'"apair => (apair (int 10) (int 2))"
(eval-exp (apair (int 10) (add (int 1) (int 1))))                      ; 
'"fst => (int 10)"
(eval-exp (fst (apair (int 10) (add (int 1) (int 1)))))                ; 

'"snd => (int 2)"
(eval-exp (snd (apair (int 10) (add (int 1) (int 1)))))                ; 

'"closure"
(eval-exp (fun "name" "x" (int 1))) 

'"isaunit => (int 0)"
(eval-exp (isaunit (int 10)))
(eval-exp (isaunit (apair (int 10) (aunit))))

'"isaunit => (int 1)"
(eval-under-env (isaunit (aunit)) '())                         
'"isaunit => error"
(eval-exp (isaunit 10))

'"mlet => (int 10)"
(eval-under-env (mlet "x" (int 10) (var "x")) '())                         
'"call => (int 1)"
(eval-under-env (call (fun "name" "x" (int 1)) (int 2)) '())

'"scoping test from Pavel Levin: (int 2)"
(eval-exp 
(mlet "f1"
    (fun "f1" "a"
        (mlet "x" (var "a")
            (fun "f2" "z" (add (var "x") (int 1)))))
    (mlet "f3"
        (fun "f3" "f"
            (mlet "x" (int 1729)
                (call (var "f") (aunit))))
        (call (var "f3") (call (var "f1") (int 1))))))

'"test with var reference (int 2)"
(eval-exp (call (fun "f" "x" (var "x")) (int 2)))

'"test with reference to fun name"
(eval-exp (call (fun "f" "x" (var "f")) (int 2)))

'"ex 3a => 1 then 0"
(eval-exp (ifaunit (aunit) (int 1) (int 0)))                 ; (int 1)
(eval-exp (ifaunit (apair (int 0) (aunit)) (int 1) (int 0))) ; (int 0)

'"ex 3b => 3 then 2"
(eval-exp (mlet* (list (cons "_x" (int 2)) (cons "_y" (int 3))) (var "_y")))
(eval-exp (mlet* (list (cons "_x" (int 2)) (cons "_y" (var "_x"))) (var "_y")))

'"ex 3c => both 1"
(eval-exp (ifeq (int 1) (int 1) (int 1) (int 0))) ; (int 1)
(eval-exp (ifeq (int 1) (int 2) (int 0) (int 1))) ; (int 1)

'"ex 4"
(define map-add1 (call mupl-map (fun "add1" "x" (add (var "x") (int 1)))))
'"call mapp-add1 => (apair (int 2) (apair (int 3) (aunit)))"
(eval-exp (call map-add1 (apair (int 1) (apair (int 2) (aunit)))))


'"provided test => (list (int 10) (int 11) (int 16)"
; a test case that uses problems 1, 2, and 4
; should produce (list (int 10) (int 11) (int 16))
(define test1
  (mupllist->racketlist
   (eval-exp (call (call mupl-mapAddN (int 7))
                   (racketlist->mupllist 
                    (list (int 3) (int 4) (int 9)))))))

test1
