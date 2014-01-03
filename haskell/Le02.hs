------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 2: 
--    First steps
------------------------------------------------------------
module LE02 where

import Prelude hiding (last, init)

-- 2.4 Haskell scripts

double x = x + x

quadruple x = double (double x)

factorial n = product [1..n]

average ns = sum ns `div` length ns