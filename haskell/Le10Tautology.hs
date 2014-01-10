{-# LANGUAGE NPlusKPatterns #-}
------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 10: 
--    Declaring types and classes
-- 
-- Originele code: 
--    Tautology checker example from section 10.4 of Programming in Haskell,
--    Graham Hutton, Cambridge University Press, 2007.
--    http://www.cs.nott.ac.uk/~gmh/book.html
------------------------------------------------------------
module Le10Tautology where

------------------------------------
-- Tautology checker

data Prop = Const Bool
          | Var Char
          | Not Prop
          | And Prop Prop
          | Or Prop Prop
          | Imply Prop Prop
          | Equiv Prop Prop

type Subst = Assoc Char Bool

type Assoc k v = [(k,v)]

find :: Eq k => k -> Assoc k v -> v
find k t = head [v | (k',v) <- t, k == k']

eval :: Subst -> Prop -> Bool
eval _ (Const b)   = b
eval s (Var x)     = find x s
eval s (Not p)     = not (eval s p)
eval s (And p q)   = eval s p && eval s q
eval s (Imply p q) = eval s p <= eval s q
eval s (Or p q)    = eval s p || eval s q
eval s (Equiv p q) = eval s (Imply p q) && eval s (Imply q p)

vars :: Prop -> [Char]
vars (Const _)   = []
vars (Var x)     = [x]
vars (Not p)     = vars p
vars (And p q)   = vars p ++ vars q
vars (Imply p q) = vars p ++ vars q

bools :: Int -> [[Bool]]
bools 0     = [[]]
bools (n+1) = map (False:) bss ++ map (True:) bss
               where bss = bools n

rmdups :: Eq a => [a] -> [a]
rmdups []     = []
rmdups (x:xs) = x : rmdups (filter (/= x) xs)

substs :: Prop -> [Subst]
substs p = map (zip vs) (bools (length vs))
 where vs = rmdups (vars p)

isTaut :: Prop -> Bool
isTaut p = and [eval s p | s <- substs p]
