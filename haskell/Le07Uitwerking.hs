------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 7: 
--    Higher-order functions
------------------------------------------------------------
module Le07Uitwerking where

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

------------------------------------------------------------
-- Uitwerking

-- Opgave 2
isIn :: Eq a => a -> [a] -> Bool
isIn x xs = or (map (== x) xs)

-- Opgave 3
selecteer :: Ord a => a -> a -> [a] -> [a]
selecteer m n xs = filter p xs
 where p x = x > m && x < n
 
 -- Opgave 5

all :: (a -> Bool) -> [a] -> Bool
all p = and . map p

any :: (a -> Bool) -> [a] -> Bool
any p = or  . map p

takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile _ []                 = []
takeWhile p (x:xs) | p x       = x : takeWhile p xs
                   | otherwise = []

dropWhile :: (a -> Bool) -> [a] -> [a]         
dropWhile _ []                 = []
dropWhile p (x:xs) | p x       = dropWhile p xs
                   | otherwise = x : xs
                   
-- Opgave 7
map' :: (a -> b) -> [a] -> [b]
map' f = foldr (\x xs -> f x : xs) []

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (\x xs -> if p x then x:xs else xs) []

-- Opgave 8
minLijst :: Ord a => [a] -> a
minLijst (x:xs) = foldl min x xs

-- Opgave 10
minLijst' :: Ord a => [a] -> a
minLijst' = foldl1 min

minLijst'' :: Ord a => [a] -> a
minLijst'' = foldr1 min

-- Opgave 11
evenKwadraat :: [Int] -> [Int]
evenKwadraat = compose [map (^2), filter even]

-- Opgave 12
herhaal :: Int -> (a -> a) -> a -> a
herhaal n = compose . replicate n

herhaal' :: Int -> (a -> a) -> a -> a
herhaal' n f | n > 0     = f . herhaal' (n-1) f
             | otherwise = id
             
-- Opgave 13
type Bit = Int

bin2int :: [Bit] -> Int
bin2int bits = sum [ w*b | (w, b) <- zip weights bits ]
 where weights = iterate (*2) 1
 
bin2int' :: [Bit] -> Int
bin2int' = foldr (\x y -> x + 2*y) 0

-- Opgave 15
char2bin :: Char -> [Bit]
char2bin = int2bin . ord

bin2char :: [Bit] -> Char
bin2char = chr . bin2int

int2bin :: Int -> [Bit]
int2bin 0 =  []
int2bin n =  n `mod` 2 : int2bin (n `div` 2)

-- Opgave 17
chop8U :: [a] -> [[a]]
chop8U = unfold null (take 8) (drop 8)

mapU :: (a -> b) -> [a] -> [b]
mapU f = unfold null (f . head) tail

iterateU :: (a -> a) -> a -> [a]
iterateU f = unfold (const False) id f

-- Zelftoets 2
dec2nat :: [Int] -> Int
dec2nat = foldl (\x y -> 10*x + y) 0

machten10 :: Num a => [a] -> [a]
machten10 []     = []
machten10 (x:xs) = x : machten10 (map (*10) xs)

dec2nat' :: [Int] -> Int
dec2nat' = sum . machten10 . reverse

-- Zelftoets 3
combineer :: (b -> c) -> (a -> b) -> [a] -> [c]
combineer f g xs = map f (map g xs)

combineer' :: (b -> c) -> (a -> b) -> [a] -> [c]
combineer' f g = map (f . g)

-- Zelftoets 4
curry :: ((a, b) -> c) -> a -> b -> c
curry f = \x y -> f (x, y)

uncurry :: (a -> b -> c) -> (a, b) -> c
uncurry f = \(x,y) -> f x y

-- Zelftoets 5
encodeP :: String -> [Bit]
encodeP = concat . map (addparity . make8 . int2bin . ord)

decodeP :: [Bit] -> String
decodeP = map (chr . bin2int . checkparity) . chop9

addparity :: [Bit] -> [Bit]
addparity bs = (parity bs) : bs

parity :: [Bit] -> Bit
parity bs | odd (sum bs) = 1
          | otherwise    = 0
          
chop9 :: [Bit] -> [[Bit]]
chop9 []   = []
chop9 bits = take 9 bits : chop9 (drop 9 bits)

checkparity :: [Bit] -> [Bit]
checkparity (b:bs)
   | b == parity bs = bs
   | otherwise      = error "parity mismatch"

transmitP :: String -> String
transmitP = decodeP . channel . encodeP

channelF :: [Bit] -> [Bit]
channelF = tail

transmitF :: String -> String
transmitF = decodeP . channelF . encodeP

make8 :: [Bit] -> [Bit]
make8 bits =  take 8 (bits ++ repeat 0)

channel :: [Bit] -> [Bit]
channel = id