{-# LANGUAGE NPlusKPatterns #-}
------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 6: 
--    Recursive functions
------------------------------------------------------------
module Le06Uitwerking where

import Prelude hiding 
   ( product, length, reverse, (++), zip, drop, even, odd
   , (^), take, last, and, concat, replicate, (!!), elem
   )
import Data.Char

-- 6.1 Basic concepts

factorial :: Int -> Int
factorial 0     = 1
factorial (n+1) = (n+1) * factorial n

times :: Int -> Int -> Int -- N.B. gewijzigde naam
times m 0     = 0 
times m (n+1) = m + (times m n)

-- 6.2 Recursion on lists

product :: Num a => [a] -> a
product []     = 1
product (n:ns) = n * product ns

length :: [a] -> Int
length []     = 0
length (_:xs) = 1 + length xs

reverse :: [a] -> [a]
reverse []     = []
reverse (x:xs) = reverse xs ++ [x]

(++) :: [a] -> [a] -> [a]
[]     ++ ys = ys
(x:xs) ++ ys = x:(xs ++ ys)

insert :: Ord a => a -> [a] -> [a]
insert x []                 = [x]
insert x (y:ys) | x <= y    = x:y:ys
                | otherwise = y:insert x ys
                
isort :: Ord a => [a] -> [a]
isort []     = []
isort (x:xs) = insert x (isort xs)

-- 6.3 Multiple arguments

zip :: [a] -> [b] -> [(a, b)]
zip []     _      = []
zip _      []     = []
zip (x:xs) (y:ys) = (x, y) : zip xs ys

drop :: Int -> [a] -> [a]
drop 0     xs     = xs
drop (n+1) []     = []
drop (n+1) (_:xs) = drop n xs

-- 6.4 Multiple recursion

fibonacci :: Int -> Int
fibonacci 0     = 0 
fibonacci 1     = 1
fibonacci (n+2) = fibonacci n + fibonacci (n+1)

qsort :: Ord a => [a] -> [a]
qsort []     = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
 where
   smaller = [ a | a <- xs, a <= x ]
   larger  = [ b | b <- xs, b > x  ]

-- 6.5 Mutual recursion

even :: Int -> Bool
even 0     = True
even (n+1) = odd n

odd :: Int -> Bool
odd 0     = False
odd (n+1) = even n

evens :: [a] -> [a]
evens []     = []
evens (x:xs) = x : odds xs

odds :: [a] -> [a]
odds []     = [] 
odds (_:xs) = evens xs

-- 6.6 Advice on recursion

laatste' :: [a] -> a
laatste' [x]    = x
laatste' (_:xs) = laatste' xs
laatste' []     = error "Lege lijst in functie laatste'"

------------------------------------------------------------
-- Uitwerking

-- Opgave 1
(^) :: Int -> Int -> Int
m ^ 0     = 1
m ^ (n+1) = m * (m^n)

-- Opgave 3
laatste :: [a] -> a
laatste [x]    = x
laatste (_:xs) = laatste xs

-- Opgave 4
aantalVoorkomens :: Int -> [Int] -> Int
aantalVoorkomens _ [] = 0
aantalVoorkomens n (x:xs)
   | n == x    = 1 + aantalVoorkomens n xs
   | otherwise = aantalVoorkomens n xs

-- Opgave 5
merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) | x <= y    = x : merge xs (y:ys)
                    | otherwise = y : merge (x:xs) ys

-- Opgave 6
halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

msort :: Ord a => [a] -> [a]
msort []  = []
msort [x] = [x]
msort xs  = merge (msort ys) (msort zs)
 where (ys,zs) = halve xs

-- Opgave 8
take :: Int -> [a] -> [a]
take (n+1) (x:xs) = x : take n xs
take _      _     = []

last :: [a] -> a
last [x]    = x
last (_:xs) = last xs

-- Zelftoets 1
and :: [Bool] -> Bool
and []     = True
and (b:bs) = b && and bs

concat :: [[a]] -> [a]
concat []       = []
concat (xs:xss) = xs ++ concat xss

replicate :: Int -> a -> [a]
replicate 0     _ = []
replicate (n+1) x = x : replicate n x

(!!) :: [a] -> Int -> a
(x:_)  !! 0     = x
(_:xs) !! (n+1) = xs !! n

elem :: Eq a => a -> [a] -> Bool
elem x []                 = False
elem x (y:ys) | x == y    = True
              | otherwise = elem x ys

-- Zelftoets 2
indexVan :: Eq a => a -> [a] -> Int
indexVan c []                 = error "Niet in de lijst"
indexVan c (x:xs) | c /= x    = 1 + indexVan c xs
                  | otherwise = 0

-- Zelftoets 3
eerste :: [(a, b)] -> [a]
eerste []         = []
eerste ((u,_):xs) = u : eerste xs

tweede :: [(a, b)] -> [b]
tweede []         = []
tweede ((_,v):xs) = v : tweede xs

lijst2tupels :: [(a, b)] -> ([a], [b])
lijst2tupels xs = (eerste xs, tweede xs)

lijst2tupels' :: [(a, b)] -> ([a], [b])
lijst2tupels' xs = ([ u | (u, _) <- xs ], [ v | (_, v) <- xs ])