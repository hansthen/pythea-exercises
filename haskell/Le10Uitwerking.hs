{-# LANGUAGE NPlusKPatterns #-}
------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 10: 
--    Declaring types and classes
------------------------------------------------------------
module Le10Uitwerking where

import Prelude hiding (Left, Right, flip)

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
occurs m (Node l n r) = m == n || occurs m l || occurs m r

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

------------------------------------------------------------
-- Uitwerking

-- Opgave 2
vindAlle :: Eq k => k -> Assoc k v -> [v]
vindAlle sleutel lijst = [ w | (s, w) <- lijst, s == sleutel ]

-- Opgave 5
data ShapeP a = CircleP a | RectP a a

areaP :: Floating a => ShapeP a -> a
areaP (CircleP r) = pi * r^2
areaP (RectP x y) = x*y

-- Opgave 6
testGetal :: Int -> Int -> Maybe Int
testGetal n x | x > 0 && x < n = Just x
              | otherwise      = Nothing
              
-- Opgave 9
list2datalist :: [a] -> List a
list2datalist []     = Nil
list2datalist (x:xs) = Cons x (list2datalist xs)

datalist2list :: List a -> [a]
datalist2list Nil         = []
datalist2list (Cons x xs) = x : datalist2list xs

-- Opgave 10
data Operator = Plus | Maal
data Ontleedboom = LeafO Int | NodeO Ontleedboom Operator Ontleedboom

waarde :: Ontleedboom
waarde = NodeO (NodeO (LeafO 2) Maal (LeafO 3)) Plus (LeafO 4)

-- Opgave 17
searchC :: Int -> Tree -> Bool -- N.B. gewijzigde naam (occurs voor een zoekboom)
searchC m (Leaf n)     = m == n
searchC m (Node l n r) = case compare m n of
                            LT -> searchC m l
                            EQ -> True
                            GT -> searchC m r
                            
-- Opgave 18
instance Eq a => Eq (List a) where
   Nil       == Nil       = True
   Nil       == _         = False
   _         == Nil       = False
   Cons x xs == Cons y ys = x == y && xs == ys
   
-- Zelftoets 1
mult :: Nat -> Nat -> Nat
mult m Zero     = Zero
mult m (Succ n) = add m (mult m n)

getal2 = Succ (Succ Zero)
getal3 = Succ (Succ (Succ Zero))

-- Zelftoets 2
data Tree3 = Leaf3 Int | Node3 Tree3 Tree3 -- N.B. gewijzigde naam

leaves :: Tree3 -> Int
leaves (Leaf3 _)   = 1
leaves (Node3 l r) = leaves l + leaves r

balanced :: Tree3 -> Bool
balanced (Leaf3 _)   = True
balanced (Node3 l r) = abs (leaves l - leaves r) <= 1
                       && balanced l && balanced r

-- Zelftoets 3
data Punt a = Pt a a
   deriving (Show,Eq)

data Lijnstuk a = Lst (Punt a) (Punt a)
   deriving Show
   
instance Eq a => Eq (Lijnstuk a) where
   Lst p1 p2 == Lst p3 p4 = ((p1 == p3) && (p2 == p4))
                         || ((p1 == p4) && (p2 == p3))