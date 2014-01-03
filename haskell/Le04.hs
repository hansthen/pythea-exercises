{-# LANGUAGE NPlusKPatterns #-}
------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 3: 
--    Defining functions
------------------------------------------------------------
module LE04 where

import Prelude hiding 
   ( even, splitAt, recip, abs, signum, not, (&&)
   , fst, snd, null, head, tail, pred, const, (||)
   )

import Data.List
-- opgave 4.3
abc a b c | d >= 0 = nub[(-b + sqrt d) / (2 * a) , (-b - sqrt d) / (2 * a)] 
          | d < 0 = []
    where d = b^2 - 4 * a * c

-- helper ter controle
d a b c = b^2 - 4 * a * c

-- opgave 4.4
min2' x y | x < y = x
          | otherwise = y

min3' x y z | x < y = min2' x z
            | otherwise = min2' y z

-- opgave 4.5
aantalWortels a b c | d > 0 = 2
                    | d < 0 = 0
                    | otherwise = 1
    where d = b ^ 2 - 4 * a * c

-- opgave 4.8
-- fst3::(a,b,c) -> a 
-- snd3::(a,b,c) -> b 
-- thd3::(a,b,c) -> c
fst3 (a,b,c) = a
snd3 (a,b,c) = b
thd3 (a,b,c) = c

-- opgave 4.10
dupliceerEerste::[a] -> [a]
dupliceerEerste (x:xs) = (x:(x:xs))
dupliceerEerste [] = []

-- opgave 4.15
lambda = \(x,y) -> (y,x)

-- Zelftoets
-- Ex 1
halve [] = ([],[])
halve [x,y] = ([x], [y])
halve (x:xs) = ([x]++fst, snd++[last xs])
   where (fst, snd) = halve (init xs)

-- Ex 2
safetail1 xs = if Data.List.null xs then [] else Data.List.tail xs

safetail2 [] = []
safetail2 xs = Data.List.tail xs

safetail3 xs | Data.List.null xs = []
             | otherwise = Data.List.tail xs

-- Ex 4
(||)::Bool->Bool->Bool
(||) x y = if (x == False && y == False) then False else True

 
infixr 3 &&

-- 4.1 New from old

isDigit :: Char -> Bool
isDigit c = c >= '0' && c <= '9'

even :: Integral a => a -> Bool
even n = n `mod` 2 == 0

splitAt :: Int -> [a] -> ([a], [a])
splitAt n xs = (take n xs, drop n xs)

recip :: Fractional a => a -> a
recip n = 1 / n

rechthoekOpp :: Float -> Float -> Float
rechthoekOpp l b = l * b

-- 4.2 Conditional expressions

abs :: Int -> Int 
abs n = if n >= 0 then n else -n

signum :: Int -> Int
signum n = if n < 0 then -1 else
              if n == 0 then 0 else 1

-- 4.3 Guarded equations

abs' n | n <= 0    = n
       | otherwise = -n

signum' :: Int -> Int
signum' n | n < 0     = -1
          | n == 0    = 0
          | otherwise = 1

-- Opgave 4.7
testN :: Int -> String
testN n | n < 10    = "kleiner dan 10"
        | n < 5     = "kleiner dan 5"
        | otherwise = "groot"

-- 4.4 Pattern matching

not :: Bool -> Bool
not False = True
not True  = False

(&&) :: Bool -> Bool -> Bool
True  && b = b
False && _ = False

fst :: (a, b) -> a
fst (x, _) = x

snd :: (a, b) -> b
snd (_, y) = y

test :: [Char] -> Bool
test ['a', _, _] = True
test _           = False

test' :: [Char] -> Bool
test' ('a':_) = True
test' _       = False

null :: [a] -> Bool
null [] = True
null (_:_) = False

head :: [a] -> a
head (x:_) = x

tail :: [a] -> [a]
tail (_:xs) = xs

pred :: Int -> Int
pred 0     = 0
pred (n+1) = n

pred' :: Int -> Int
pred' 0 = 0
pred' n = n- 1

-- 4.5 Lambda expressions

add = \x -> (\y -> x + y)

const :: a -> (b -> a)
const x = \_ -> x

odds :: Int -> [Int]
odds n = map (\x -> x*2+1) [0..n-1]

-- 4.6 Sections

and :: [Bool] -> Bool
and = foldr (&&) True
