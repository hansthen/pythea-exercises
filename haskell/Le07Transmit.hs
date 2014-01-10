------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 7: 
--    Higher-order functions
-- 
-- Originele code: 
--    String transmitter example from section 7.6 of Programming in Haskell,
--    Graham Hutton, Cambridge University Press, 2007.
--    http://www.cs.nott.ac.uk/~gmh/book.html
------------------------------------------------------------
module Le07Transmit where

import Data.Char

------------------------------------
-- Base conversion

type Bit =  Int

bin2int :: [Bit] -> Int
bin2int = foldr (\x y -> x + 2*y) 0

int2bin :: Int -> [Bit]
int2bin 0 = []
int2bin n = n `mod` 2 : int2bin (n `div` 2)

------------------------------------
-- Transmission

make8 :: [Bit] -> [Bit]
make8 bits = take 8 (bits ++ repeat 0)

make9 :: [Bit] -> [Bit]
make9 bits = bits ++ [(sum bits) `mod` 2]

encode :: String -> [Bit]
encode = concat . map (make9 . make8 . int2bin . ord)

chop8 :: [Bit] -> [[Bit]]
chop8 []   =  []
chop8 bits = take 8 bits : chop8 (drop 8 bits)

chop9 :: [Bit] -> [[Bit]]
chop9 [] = []
chop9 bits = parity (take 9 bits) : chop9 (drop 9 bits)

parity :: [Bit] -> [Bit]
parity bits = if even (sum bits) then (take 8 bits) else error "Parity error"
 
decode :: [Bit] -> String
decode = map (chr . bin2int) . chop9

transmit :: String -> String
transmit = decode . channel . encode

channel :: [Bit] -> [Bit]
channel = id
