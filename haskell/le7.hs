module MyLe7 where

import Prelude
import Data.Char

-- opgave 7.2
isIn::Eq a => a -> [a] -> Bool
isIn x xs = or(Prelude.map (== x) xs)

-- opgave 7.3
selecteer laag hoog xs = Prelude.filter (>=laag) (Prelude.filter (<=hoog) xs)

-- opgave 7.4 (Hutton 7.8.1)
comprehend f p xs = Prelude.map f (Prelude.filter p xs)
 
-- opgave 7.5 (Hutton 7.8.2)
all f xs = foldr (&&) True (Prelude.map f xs)
any f xs = foldr (||) False (Prelude.map f xs) 
takewhile f [] = []
takewhile f (x:xs) = if (f x) then ([x] ++ takewhile f xs) else []
dropwhile f [] = []
dropwhile f (x:xs) = (if (f x) then [] else [x]) ++ dropwhile f xs

-- opgave 7.7 (Hutton 7.8.3)
map f = foldr ((:) . f) []
filter p = foldr (\x y -> if p x then (x:y) else y) []

-- opgave 7.7
minLijst (x:xs) = foldl (\x y -> if x < y then x else y) x xs

-- opgave 7.10
-- minList = foldl1 (\x y -> if x < y then x else y)
-- minLijst'' = foldr1 (\x y -> if x < y then x else y)

-- Hutton 7.8.4
-- dec2int xs = dec2int' (reverse xs)
--  where
--    dec2int' [] = 0
--    dec2int' (x:xs) = (10 * dec2int' xs) + x

-- now using lambda and foldl
-- Is there a way to do this without lambda and function composition?
-- I think not, as function composition requires that the output of one
-- function exactly matches the input of the next function
-- We could of course wrap both functions to accept two args, but then 
-- we would have to use lambda's again.
dec2int = foldl (\x y -> x * 10 + y) 0

-- Opgave 7.11.a
compose = foldr (.) id
evenKwadraat = compose [Prelude.map (^2), Prelude.filter even]

-- Opgave 7.11.b (Hutton 7.8.5)
-- Dit werkt niet omdat de gecomponeerde functies hetzelfde type als domein en bereik moeten hebben.
-- Zie:
-- Prelude> :t compose
-- compose :: [b -> b] -> b -> b
-- Dit is voor sum niet waar [a] -> a

-- Opgave 7.12

herhaal 0 f = id
herhaal n f = f . herhaal (n - 1) f

-- Opgave 7.12.b
-- Het type van deze expressie is Integer -> Integer -> Integer
-- Deze lambda expressie geeft een functie terug die n maal de successor functie aanroept op
-- zijn input parameter.

-- Opgave 7.13
-- De eerste definitie geeft elke bit positie een wegingsfactor en vermenigvuldigt elke bit met zijn eigen wegingsfactor.
-- De tweede definitie maakt gebruik van het feit dat de wegingsfactor van elk element bepaald wordt door het aantal elementen
-- dat erna komt.

int2bin 0 = []
int2bin n = n `mod` 2: int2bin (n `div` 2)

char2bin = int2bin . ord
bin2char = bin2int . chr

-- Opgave 7.17 (Hutton 7.8.7)
let curry f = \x -> \y -> f(x, y)
let uncurry f = \(x,y) -> f x y

-- Zelftoets
-- Hutton 7.8.8



