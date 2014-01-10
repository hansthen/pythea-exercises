------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 9: 
--    Interactive programs
------------------------------------------------------------
module Le09 where

import Data.Char
-- import System.Random
-- import Le09Life
import System.IO

-- 9.5 Derived primitives (zie Le09Calculator.hs)
--

-- Opgave 9.3

getChar' :: IO Char
getChar' = do x <- getChar
              return x
 
verdubbel :: Char -> Char
verdubbel '0' = '0'
verdubbel '1' = '1'
verdubbel '2' = '2'
verdubbel '3' = '3'
verdubbel _ = '?'

toonDubbel :: IO Char
toonDubbel = do x <- getChar
                putChar x
                return x

isGetal :: String -> Bool
isGetal [] = True
isGetal (x:xs) = isDigit(x) && isGetal(xs)

leesGetal :: IO Int
leesGetal = do s <- getLine
               if isGetal s then return (read s) else leesGetal

toonDubbel' :: IO Int
toonDubbel' = do x <- leesGetal
                 putStr (show x)
                 return x

vraagNaam = do putStr "wat is je naam? "
               naam <- getLine
               return (putStrLn ("Hallo " ++ naam))

tweeNamen = do x1 <- vraagNaam
               x2 <- vraagNaam
               x1
               x2

for [] f = return ()
for (x:xs) f = do f x
                  for xs f

anyM _ [] = return False
anyM f (x:xs) = do result <- f x
                   if result then return True else (anyM f xs)

-- Zelftoets
ioio :: IO (IO a) -> IO a
ioio a = do a' <- a
            a'' <- a'
            return a''

boodschap :: Int -> Int -> String
boodschap x y | x == y = "Gevonden"
boodschap x y | x > y  = "Het getal is groter dan " ++ show y
boodschap x y | otherwise = "Het getal is kleiner dan " ++ show y

raad1 beurt getal = do putStr ("Beurt " ++ show beurt ++ ": ")
                       poging <- leesGetal
                       putStr (boodschap getal poging)
                       putStr "\n"
                       return (getal == poging)

raden getal = do putStr "Welk getal heb ik in gedachten?\n"
                 anyM (\n -> raad1 n getal) [1..]
