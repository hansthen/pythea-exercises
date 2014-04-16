------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 7: 
--    Higher-order functions
------------------------------------------------------------
module Le07 where

import Prelude hiding 
   ( map, filter, sum, product, or, and, foldr, length, reverse
   , foldl, (.), odd, id, all, any, takeWhile, dropWhile
   , curry, uncurry
   )
   
import Data.Char

-- 7.1 Basic concepts

twice :: (a -> a) -> a -> a
twice f x = f (f x)

-- 7.2 Processing lists

map :: (a -> b) -> [a] -> [b]
map f [] = []
map f (x:xs) = f x : map f xs

filter :: (a -> Bool) -> [a] -> [a]
filter p [] = []
filter p (x:xs) | p x       = x : filter p xs
                | otherwise = filter p xs
                
sumsqreven :: [Int] -> Int
sumsqreven ns = sum (map (^2) (filter even ns))

-- 7.3 The foldr function

sum :: Num a => [a] -> a
sum = foldr (+) 0

product :: Num a => [a] -> a
product = foldr (*) 1

or :: [Bool] -> Bool
or = foldr (||) False

and ::[Bool] -> Bool
and = foldr (&&) True

foldr :: (a -> b -> b) -> b -> [a] -> b
foldr f v []     = v
foldr f v (x:xs) = f x (foldr f v xs)

length :: [a] -> Int
length = foldr (\_ n -> 1+n) 0

reverse :: [a] -> [a]
reverse = foldr snoc []

snoc :: a -> [a] -> [a]
snoc x xs = xs ++ [x]

-- 7.4 The foldl function

suml :: Num a => [a] -> a
suml = sum' 0 -- N.B. gewijzigde naam
 where
   sum' v []     = v
   sum' v (x:xs) = sum' (v+x) xs

foldl :: (a -> b -> a) -> a -> [b] -> a
foldl f v []     = v
foldl f v (x:xs) = foldl f (f v x) xs

-- 7.5 The composition operator

(.) :: (b -> c) -> (a -> b) -> (a -> c)
f . g = \x -> f (g x)

odd :: Int -> Bool
odd = not . even

twice' :: (a -> a) -> a -> a
twice' f = f . f

sumsqreven' :: [Int] -> Int
sumsqreven' = sum . map (^2) . filter even

id :: a -> a
id = \x -> x

compose :: [a -> a] -> (a -> a)
compose = foldr (.) id

-- 7.6 String transmitter: zie Le07Transmit.hs

-- Exercise 7
unfold p h t x | p x       = []
               | otherwise = h x : unfold p h t (t x)