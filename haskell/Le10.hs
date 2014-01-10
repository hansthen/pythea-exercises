{-# LANGUAGE NPlusKPatterns #-}
------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 10: 
--    Declaring types and classes
------------------------------------------------------------
module Le10 where

import Prelude hiding (Left, Right, flip)
import Control.Monad

-- Oefeningen
{-
mul :: Nat -> Nat -> Nat
mul 0 _ = 0
mul n x = x `add` mul (n - 1) x
-}

vindAlle :: Eq k => k -> Assoc k v -> [v]
vindAlle k t = [v | (k', v) <- t, k == k']

testGetal :: Int -> Int -> Maybe Int
testGetal a n | 0 < a && a < n = Just a
              | otherwise      = Nothing  
            
-- return :: v -> m v
-- (>>=)  :: m a -> (a -> m b) -> m b

data Option a = None | Some a

instance Monad Option where
  return v  = Some v
  m >>= f   = case m of
                Some v -> f v
                otherwise -> None

instance Show Option a where
  show m = case m of
             Some v -> show v
             otherwise -> show "nothing"


-- 10.1 Type declarations

type Pos = (Int, Int)

type Assoc k v = [(k, v)]

find :: Eq k => k -> Assoc k v -> v
find k t = head [ v | (k', v) <- t, k == k' ]

-- 10.2 Data declarations

data Move = Left | Right | Up | Down

move :: Move -> Pos -> Pos
move Left  (x, y) = (x-1, y)
move Right (x, y) = (x+1, y)
move Up    (x, y) = (x, y-1)
move Down  (x, y) = (x, y+1)

moves :: [Move] -> Pos -> Pos
moves []     p = p
moves (m:ms) p = moves ms (move m p)

flip :: Move -> Move
flip Left  = Right
flip Right = Left
flip Up    = Down
flip Down  = Up

data Shape = Circle Float | Rect Float Float 
   deriving (Show, Eq, Ord)

square :: Float -> Shape
square n = Rect n n 

area :: Shape -> Float
area (Circle r) = pi * r^2
area (Rect x y) = x*y

safediv :: Int -> Int -> Maybe Int
safediv _ 0 = Nothing
safediv m n = Just (m `div` n)

safehead :: [a] -> Maybe a
safehead [] = Nothing
safehead xs = Just (head xs)

-- 10.3 Recursive types

data Nat = Zero | Succ Nat

nat2int :: Nat -> Int
nat2int Zero     = 0
nat2int (Succ n) = 1 + nat2int n

int2nat :: Int -> Nat
in2nat 0      = Zero
int2nat (n+1) = Succ (int2nat n)

add :: Nat -> Nat -> Nat
add Zero     n = n
add (Succ m) n = Succ (add m n)

data List a = Nil | Cons a (List a)

len :: List a -> Int
len Nil         = 0
len (Cons _ xs) = 1 + len xs

data Tree = Leaf Int | Node Tree Int Tree

t :: Tree
t = Node (Node (Leaf 1) 3 (Leaf 4)) 5 (Node (Leaf 6) 7 (Leaf 9))

occurs :: Int -> Tree -> Bool
occurs m (Leaf n)     = m == n
occurs m (Node l n r) = m == n || if m < n then (occurs m l) else (occurs m r)

{-
occurs m (Node l n r) = case compare m n of
                               LT -> occurs m l
                               EQ -> True
                               GT -> occurs m r
-}

flatten :: Tree -> [Int]
flatten (Leaf n)     = [n]
flatten (Node l n r) = flatten l ++ [n] ++ flatten r

search :: Int -> Tree -> Bool -- N.B. gewijzigde naam (occurs voor een zoekboom)
search m (Leaf n)     = m == n
search m (Node l n r) 
   | m == n    = True
   | m < n     = search m l
   | otherwise = search m r

-- 10.4 Tautology checker: zie Le10Tautology.hs

-- 10.5 Abstract machine: zie Le10Machine.hs

-- 10.6 Class and instance declarations
--    Voor het Shape datatype zijn Show, Eq en Ord instanties afgeleid.

-- N.B. in het werkboek heet onderstaand datatype Tree
data Boom a = Blad | Knoop (Boom a) a (Boom a)
   deriving Show

instance Eq a => Eq (Boom a) where
   Blad             == Blad             = True
   Blad             == Knoop _ _ _      = False
   Knoop _ _ _      == Blad             = False
   Knoop lt1 x1 rt1 == Knoop lt2 x2 rt2 = 
      x1 == x2 && lt1 == lt2 && rt1 == rt2
