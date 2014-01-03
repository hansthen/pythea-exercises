{-# LANGUAGE NPlusKPatterns #-}
------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 11: 
--    Lazy evaluation
------------------------------------------------------------
module Le12 where

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