module Worm where
  
import Data.Char
import Data.List
import Data.Ord
import System.IO.Unsafe

-- om te testen gebruik ik leesGetal als dobbelen
-- Het dobbelspel voor deze ronde.
import Dobbelen (dobbel)
-- dobbel speler minimum = leesGetal

tegels = [21..36]

waarde tegel = (tegel - 20) `div` 4 + 1

isGetal :: String -> Bool
isGetal [] = True
isGetal (x:xs) = isDigit(x) && isGetal(xs)

leesGetal :: IO Int
leesGetal = do s <- getLine
               if isGetal s then return (read s) else leesGetal

-- Start het spel
wormen n = do let start = ([[] | _ <- [1..n]], [21..36], 0)
              eind <- speel (start)
              let winner = evalueer eind
              x <- putStrLn (show eind)
              y <- putStrLn ("Speler " ++ show (winner+1) ++ " heeft gewonnen!")
              return x

-- gestolen van stack overflow
-- http://stackoverflow.com/questions/14550458/find-max-element-and-index-of-a-list-in-haskell
maxi xs = snd (maximumBy (comparing fst) (zip xs [0..]))

-- Evalueer de (eind) positie
evalueer (stapels, _, _) = maxi [sum (map waarde stapel) | stapel <- stapels]

-- helper functie om alle elementen te vinden die boven op de stapel liggen
heads [] = []
heads ([]:xs) = heads xs
heads (x:xs) = (head x:heads xs)

-- verdeelt de speler stapels in die van de spelers links en rechts van de huidige speler
splits n stapels = (take n stapels, stapels !! n, drop (n + 1) stapels)

-- voer een beurt uit
speel (stapels, rij, beurt) = 
  do
    let speler = beurt `mod` (length stapels)
    -- verdeel de stapels in die van de spelers rechts en links van de speler
    -- en de stapel van de actieve speler
    let (links, actief, rechts) = splits speler stapels

    -- voer het dobbelspel uit
    score <- dobbel speler (minimum rij)

    -- is de score precies?
    let precies = elem score rij || elem score (heads links) || elem score (heads rechts)

    -- is de score geldig?
    let geldig = precies || (score > minimum rij)

    let tegel = if precies then score else
                if geldig then maximum (filter (<score) rij) else
                -1

    -- als de score overeenkomt met een open tegel van een speler
    -- verwijderen we die van hun stapel.
    -- niet de meest efficiente oplossing, maar hij werkt.
    let links' = if precies then map (filter (/= tegel)) links else links
    let rechts' = if precies then map (filter (/= tegel)) rechts else rechts

    let rij' = if geldig then filter (/= tegel) rij else 
               -- Als de stapel van de speler leeg is verandert er niets
               if null actief then rij else
               -- Een uitzondering treedt op als de teruggelegde tegel 
               -- de hoogste tegel in de rij is geworden:
               -- de tegel wordt dan niet uit het spel genomen.
               if maximum rij < maximum actief then rij else
               -- Is de stapel niet leeg dan moet de speler de bovenste tegel
               -- terugleggen in de rij en wordt de hoogste tegel in de rij 
               -- uit het spel genomen.
                 (maximum actief:filter (/= (maximum rij)) rij)
      
    -- analoog aan het samenstellen van rij'
    let actief' = if geldig then (tegel:actief) else
                   if null actief then actief else
                   if maximum rij < maximum actief then actief else
                     filter (/= (maximum actief)) actief

    -- voeg de stapels weer samen
    let stapels' = links' ++ [actief'] ++ rechts'
 
    -- zijn we klaar?
    if length rij' == 0 then return (stapels', rij', beurt + 1)
      else speel (stapels', rij', beurt + 1)

