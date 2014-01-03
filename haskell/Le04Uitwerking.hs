{-# LANGUAGE NPlusKPatterns #-}
------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 3: 
--    Defining functions
------------------------------------------------------------
module LE04Uitwerking where

import Prelude hiding 
   ( even, splitAt, recip, abs, signum, not, (&&)
   , fst, snd, null, head, tail, pred, const, (||)
   )

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

------------------------------------------------------------
-- Uitwerking

-- Opgave 4.1
balkOpp :: Float -> Float -> Float -> Float
balkOpp l b h = 2 * rechthoekOpp l h +
                2 * rechthoekOpp h b +
                2 * rechthoekOpp l b
                
-- Opgave 4.2
min2 :: Int -> Int -> Int
min2 x y = if x<= y then x else y

min3 :: Int -> Int -> Int -> Int
min3 x y z = min2 (min2 x y) z

min3if :: Int -> Int -> Int -> Int
min3if x y z = if x <= y
   then if x <= z then x else z
   else if y <= z then y else z
   
-- Opgave 4.3
abc :: (Float, Float, Float) -> [Float]
abc (a,b,c) = if d < 0
              then []
              else if d == 0
                   then [-b/n]
                   else [(-b-sqrtD)/n,(-b+sqrtD)/n]
 where
   d     = b^2 - 4*a*c
   sqrtD = sqrt d
   n     = 2*a
   
-- Opgave 4.4
min2' :: Int -> Int -> Int
min2' x y | x <= y    = x
          | otherwise = y

min3':: Int -> Int -> Int -> Int
min3' x y z | x <= y    = min2' x z
            | y <= z    = y
            | otherwise = z
            
-- Opgave 4.5
abc' :: Float -> Float -> Float -> [Float]
abc' a b c | d < 0     = []
           | d== 0     = [-b/n]
           | otherwise = [(-b-sqrtD)/n,(-b+sqrtD)/n]
 where
   d     = b^2 - 4*a*c
   sqrtD = sqrt d
   n     = 2*a
   
aantalWortels :: Float -> Float -> Float -> Int
aantalWortels a b c = length (abc' a b c)

aantalWortels':: Float -> Float -> Float -> Int
aantalWortels' a b c | d < 0     = 0
                     | d == 0    = 1
                     | otherwise = 2
 where
   d = b^2 - 4*a*c
   
-- Opgave 4.6
isPositief :: Int -> Bool
isPositief n | n > 0     = True
             | otherwise = False

isPositief' :: Int -> Bool
isPositief' n = n > 0

-- Opgave 4.7
testN' :: Int -> String
testN' n | n < 5     = "kleiner dan 5"
         | n < 10    = "kleiner dan 10"
         | otherwise = "groot"
         
-- Opgave 4.8
fst3 :: (a, b, c) -> a
fst3 (x, _, _) = x

snd3 :: (a, b, c) -> b
snd3 (_ ,y, _) = y

thd3 :: (a, b, c) -> c
thd3 (_, _, z) = z

-- Opgave 4.10
dupliceerEerste :: [a] -> [a]
dupliceerEerste []     = []
dupliceerEerste (x:xs) = x:x:xs

-- Opgave 4.11
decrLinks,decrRechts :: (Int, Int) -> (Int, Int)
decrLinks (x+1, y)  = (x, y)
decrRechts (x, y+1) = (x, y)

-- Opgave 4.12
plakAchterAan :: [[a]] -> [[a]]
plakAchterAan []       = []
plakAchterAan (xs:xss) = xss++[xs]

-- Opgave 4.13
getalNaarString :: Int -> String
getalNaarString 0     = "nul"
getalNaarString 1     = "een"
getalNaarString 2     = "twee"
getalNaarString 3     = "drie"
getalNaarString (n+4) = "Helaas, te groot"

-- Opgave 4.16
consA :: String -> String
consA = ('A':)

consEllo :: Char -> String
consEllo = (:"ello")

-- Zelftoets 1
halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

halve' :: [a] -> ([a],[a])
halve' xs = (take n xs, drop n xs)
 where
   n = length xs `div` 2
   
-- Zelftoets 2
safetail :: [a] -> [a]
safetail xs = if null xs then [] else tail xs

safetail' :: [a] -> [a]
safetail' xs | null xs   = []
             | otherwise = tail xs

safetail'' :: [a] -> [a]
safetail'' [] = []
safetail'' xs = tail xs

safetail''' :: [a] -> [a]
safetail''' []    = []
safetail'''(_:xs) = xs

-- Zelftoets 3
(||) :: Bool -> Bool -> Bool
b || c | b == c    = b
       | otherwise = True
       
-- Zelftoets 4/5
(&&&) :: Bool -> Bool -> Bool -- N.B. gewijzigde naam
a &&& b = if a then b else False

-- Zelftoets 6
mult1 = \x -> (\y -> (\z -> x*y*z))
mult2 = \x -> \y -> \z -> x*y*z
mult3 = \x y z -> x*y*z