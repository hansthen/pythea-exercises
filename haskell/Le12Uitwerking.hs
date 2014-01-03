{-# LANGUAGE NPlusKPatterns #-}
------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 11: 
--    Lazy evaluation
------------------------------------------------------------
module Le12Uitwerking where

-- 12.2 Evaluation strategies

fst :: (a, b) -> a
fst (x, y) = x

kwadraat :: Int -> Int
kwadraat x = x*x

mult :: Int -> Int -> Int
mult x = \y -> x*y

mult' :: Int -> Int -> Int
mult' = \x -> \y -> x*y

-- 12.3 Termination

inf :: Int
inf = 1 + inf

-- 12.5 Infinite structures

ones :: [Int]
ones = 1 : ones

-- 12.6 Modular programming

primes :: [Int]
primes = sieve [2..]

sieve :: [Int] -> [Int]
sieve (p:xs) = p : sieve [ x | x <- xs, x `mod` p /= 0 ]

-- 12.7 Strict application

sumwith :: Int -> [Int] -> Int
sumwith v []     = v
sumwith v (x:xs) = (sumwith $! (v+x)) xs

foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl' f v []     = v
foldl' f v (x:xs) = ((foldl' f) $! (f v x)) xs

sumwith2 :: Int -> [Int] -> Int
sumwith2 = foldl' (+)

------------------------------------------------------------
-- Uitwerking

-- Opgave 5
keerPositie :: [Int] -> [Int]
keerPositie ys = [ x*y | (x, y) <- zip [1..] ys ]

-- Opgave 6
machten :: Int -> [Int]
machten n = iterate (*n) 1

eersteMachten :: Int -> Int -> [Int]
eersteMachten i = take i . machten

somEersteMachten :: Int -> Int -> Int
somEersteMachten i = sum . eersteMachten i

-- Opgave 10
volgende :: Double -> Double -> Double
volgende n x = (x + n/x) / 2

-- Opgave 11
herhaal :: (Double -> Double) -> Double -> [Double]
herhaal f x = x : herhaal f (f x)

-- Opgave 12
goedGenoeg :: Double -> [Double] -> Double
goedGenoeg eps (x1:x2:xs)
   | abs (x1-x2) <= eps = x2
   | otherwise          = goedGenoeg eps (x2:xs)

wortel :: Double -> Double -> Double -> Double
wortel x0 eps n = goedGenoeg eps (herhaal (volgende n) x0)

-- Zelftoets 5
fibs :: [Integer]
fibs = 0 : 1 : [ x+y | (x, y) <- zip fibs (tail fibs) ]

-- Zelftoets 6
fib :: Int -> Integer
fib n = fibs !! n

eersteGroterDanDuizend :: Integer
eersteGroterDanDuizend = head (dropWhile (<=1000) fibs)

-- Zelftoets 7
data Tree a = Leaf | Node (Tree a) a (Tree a)
   deriving Show

repeatTree :: a -> Tree a
repeatTree x = Node t x t
   where t = repeatTree x
   
takeTree :: Int -> Tree a -> Tree a
takeTree 0     _            = Leaf
takeTree (n+1) Leaf         = Leaf
takeTree (n+1) (Node l x r) = Node (takeTree n l) x (takeTree n r)

replicateTree :: Int -> a -> Tree a
replicateTree n = takeTree n . repeatTree