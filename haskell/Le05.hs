------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 5: 
--    List comprehensions
------------------------------------------------------------
module Le05 where

import Prelude hiding (concat, length, replicate)
import Data.Char

-- 5.1 Generators

concat :: [[a]] -> [a]
concat xss = [ x | xs <- xss, x <- xs ]

firsts :: [(a, b)] -> [a]
firsts ps = [ x | (x, _) <- ps ]

length :: [a] -> Int
length xs = sum [ 1 | _ <- xs ]

-- 5.2 Guards

factors :: Int -> [Int]
factors n = [ x | x <- [1..n], n `mod` x == 0 ]

prime :: Int -> Bool
prime n = factors n == [1, n]

primes :: Int -> [Int]
primes n = [ x | x <- [2..n], prime x ]

find :: Eq a => a -> [(a, b)] -> [b]
find k t = [ v | (k', v) <- t, k == k' ]

isEvenEnGroterDanDrie :: [Int] -> [Int]
isEvenEnGroterDanDrie xs = [ x | x <- xs, even x, x > 3 ]

-- 5.3 The zip function

pairs :: [a] -> [(a, a)]
pairs xs = zip xs (tail xs)

sorted :: Ord a => [a] -> Bool
sorted xs = and [ x <= y | (x, y) <- pairs xs ]

positions :: Eq a => a -> [a] -> [Int]
positions x xs = [ i | (x', i) <- zip xs [0..n], x == x' ]
 where n = length xs - 1
 
-- 5.4 String comprehensions

lowers :: String -> Int
lowers xs = length [ x | x <- xs, isLower x ]

count :: Char -> String -> Int
count x xs = length [ x' | x' <- xs, x == x' ]

-- 5.5 The Caesar cipher: zie Le05Cipher.hs