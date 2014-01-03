------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 9: 
--    Interactive programs
------------------------------------------------------------
module Le09Uitwerking where

import Data.Char
import System.Random
import Le09Life

-- 9.5 Derived primitives (zie Le09Calculator.hs)

------------------------------------------------------------
-- Uitwerking

-- Opgave 9.3
verdubbel :: Char -> Char
verdubbel c | n >= 0 && n <= 4 = chr (n*2 + ord '0')
            | otherwise        = '?'
 where
   n = ord c - ord '0'

-- Opgave 9.4
isGetal :: String -> Bool
isGetal s = not (null s) && all isDigit s

leesGetal :: IO Int
leesGetal = do s <- getLine
               if isGetal s then return (read s) else leesGetal

toonDubbel :: IO ()
toonDubbel = do n <- leesGetal
                putStrLn (show (n* 2))

-- Opgave 9.5
vraagNaam :: IO (IO ())
vraagNaam = do putStr "Wat is je naam? "
               naam <- getLine
               return (putStrLn ("Hallo "++ naam))

tweeNamen :: IO ()
tweeNamen = do welkom1 <- vraagNaam
               welkom2 <- vraagNaam
               welkom1
               welkom2

-- Opgave 9.6
for :: [a] -> (a -> IO ()) -> IO ()
for []     _ = return ()
for (x:xs) f = do f x
                  for xs f

for' :: [a] -> (a -> IO ()) -> IO ()
for' xs f = seqn [ f x | x <- xs ]

-- Opgave 9.7
showCell :: Board -> Pos -> Char
showCell b p | isAlive b p = 'X'
             | otherwise   = '.'

showRow :: Board -> Int -> String
showRow b y = [ showCell b (x, y) | x <- [1..width] ]

showBoard :: Board -> String
showBoard b = unlines [ showRow b y | y <- [1..height] ]

clearBoard :: String
clearBoard = replicate (width*(height+1)) '\BS'

play :: Board -> IO ()
play b = do putStr (showBoard b)
            wait 5000
            putStr clearBoard
            play (nextgen b)

-- Zelftoets 2
ioio :: IO (IO a) -> IO a
ioio x = do y <- x
            z <- y
            return z

-- Zelftoets 3
boodschap :: Int -> Int -> String
boodschap x y
   | x == y = "Gevonden!"
   | x < y  = "Het getal is kleiner dan " ++ show y
   | x > y  = "Het getal is groter dan "  ++ show y

poging :: Int -> Int -> IO Bool
poging x y = do putStrLn (boodschap x y)
                return (x == y)

beurt :: Int -> Int -> IO ()
beurt n x = do putStr ("Beurt "++ show n++ ": ")
               y  <- leesGetal
               ok <- poging x y
               if ok then return () else beurt (n+1) x

raden :: Int -> IO ()
raden x = do putStrLn "Welk getal heb ik in gedachten?"
             beurt 1 x

main :: IO ()
main = getal >>= raden

getal :: IO Int
getal = randomRIO (1, 10)