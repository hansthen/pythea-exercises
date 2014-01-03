{-# LANGUAGE NPlusKPatterns #-}
------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 13: 
--    Reasoning about programs
------------------------------------------------------------
module Le13Uitwerking where

import Prelude hiding (replicate, reverse, last, sum)

-- 13.2 Reasoning about Haskell

isZero 0          = True
isZero n | n /= 0 = False

-- 13.4 Induction on numbers

data Nat = Zero | Succ Nat

add Zero     m = m
add (Succ n) m = Succ (add n m)

replicate :: Int -> a -> [a]
replicate 0     _ = []
replicate (n+1) x = x : replicate n x

-- 13.6 Making append vanish

reverse' :: [a] -> [a] -> [a]
reverse' [] ys     = ys
reverse' (x:xs) ys = reverse' xs (x:ys)

reverse :: [a] -> [a]
reverse xs = reverse' xs [] 

data Tree = Leaf Int | Node Tree Tree

flatten' :: Tree -> [Int] -> [Int]
flatten' (Leaf n)   ns = n:ns
flatten' (Node l r) ns = flatten' l (flatten' r ns)

flatten :: Tree -> [Int]
flatten t = flatten' t []

-- Opgave 9
-- naive implementatie met append
rev1 :: [a] -> [a]
rev1 []     = []
rev1 (x:xs) = rev1 xs++ [x]

rev2 :: [a] -> [a]
rev2 xs = reverse' xs []

-- 13.7 Compiler correctness: zie Le13Compiler.hs

------------------------------------------------------------
-- Uitwerking

-- Opgave 1
last :: [a] -> a
last [x]        = x
last (x1:x2:xs) = last (x2:xs)

-- Opgave 2
macht :: Int -> Int -> Int
macht x 0         = 1
macht x n | n > 0 = x * macht x (n-1)

-- Opgave 5
sub :: Nat -> Nat -> Nat
sub Zero     _        = Zero
sub (Succ n) Zero     = Succ n
sub (Succ n) (Succ m) = sub n m

-- Opgave 10
sum' :: Int -> [Int] -> Int
sum' n []    = n
sum' n (x:xs) = sum' (n+x) xs

sum :: [Int] -> Int
sum xs = sum' 0 xs

-- Opgave 11
showTree' :: Tree -> String -> String
showTree' (Leaf n)   s = show n ++ s
showTree' (Node l r) s = '(' : showTree' l (',' : showTree' r (')' : s))

showTree :: Tree -> String
showTree t = showTree' t ""

-- Zelftoets 5
leaves :: Tree -> Int
leaves (Leaf _)   = 1
leaves (Node l r) = leaves l + leaves r

nodes :: Tree -> Int
nodes (Leaf _)   = 0
nodes (Node l r) = 1 + nodes l + nodes r