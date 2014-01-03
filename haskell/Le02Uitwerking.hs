------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 2: 
--    First steps
------------------------------------------------------------
module LE02Uitwerking where

import Prelude hiding (last, init)

-- 2.4 Haskell scripts

double x = x + x

quadruple x = double (double x)

factorial n = product [1..n]

average ns = sum ns `div` length ns

------------------------------------------------------------
-- Uitwerking

-- Opgave 2.11
n = a `div` length xs
 where
   a  = 10
   xs = [1,2,3,4,5]

-- Opgave 2.12
last xs = head (reverse xs)

-- Zelftoets 2
middelste xs = xs !! (length xs `div` 2)

-- Zelftoets 3
init xs = take (length xs - 1) xs