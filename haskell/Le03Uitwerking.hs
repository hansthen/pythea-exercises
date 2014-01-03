------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 3: 
--    Types and classes
------------------------------------------------------------
module LE03Uitwerking where

-- 3.2 Basic types

exclOr x y = (x && not y) || (not x && y)

isSpatie c = c == ' '

concatMetSpatie x y = x ++ " " ++ y

-- 3.3 List types

geefEen = head [1..]

-- 3.4 Function types

telOp :: (Int, Int) -> Int
telOp (x, y) = x + y

-- 3.5 Function types

add :: (Int, Int) -> Int
add (x, y) = x + y

zeroto :: Int -> [Int]
zeroto n = [0..n]

-- 3.6 Curried functions

add' :: Int -> (Int -> Int)
add' x y = x + y

mult :: Int -> (Int -> (Int -> Int))
mult x y z = x * y * z

telOpC :: Int -> Int -> Int
telOpC x y = x + y

telTweeOpBij :: Int -> Int
telTweeOpBij y = 2 + y

-- Opgave 3.16
opvolger :: Int -> Int
opvolger = telOpC 1

-- Opgave 3.18
macht :: Int -> Int -> Int
macht g m = g ^ m

------------------------------------------------------------
-- Uitwerking

-- Opgave 3.13
f :: Int -> Int
f x = x * x + 1

-- Opgave 3.14
ongelijk :: Num a => a -> a -> a -> Bool
ongelijk x y z = (x /= y) && (x /= z) && (y /= z)

-- Opgave 3.18
machtTien :: Int -> Int
machtTien = macht 10