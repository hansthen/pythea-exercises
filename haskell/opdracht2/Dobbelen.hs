------------------------------------------------------------------------------
-- Uitwerking Opdracht 2 van Functioneel Programmeren: Dobbelspel
-- W.J.T. Then
-- 89464095
-- Versie 1.2 
------------------------------------------------------------------------------
module Dobbelen where
import System.Random 
import System.IO.Unsafe
import Data.List
import Data.Ord
import Data.Char

-- Zo start ik het systeem. Ik tik main in in ghci. 
-- Het is me nog niet gelukt om main automatisch te 
-- starten.
main = do wormen 2

-------------------------------------------------------------------------------
-- Het dobbelen subsysteem
-- ----------------------------------------------------------------------------

-- Mijn "primitive obsession". Ik heb overwogen om hier `data` van te maken
-- maar later in het spel had ik ook de stenen als lijst nodig. Waarsch.
-- kan je `data` ook als Enum gebruiken en hier dan over itereren, maar ik wist
-- niet hoe ik dat mooi voor elkaar kon krijgen. 
-- Ik heb Strings gebruikt ipv Char, omdat dat er mooier uitzag.
stenen = ["1", "2", "3", "4", "5", "W"]
scores = [1, 2, 3, 4, 5, 5]

-- Doe een worp
werp n = do g <- newStdGen
            return (map (stenen !!) (take n $ (randomRs (0, 5) g)))
-- throw n = [diceNames !! (unsafePerformIO (randomRIO(0,5))) | _ <- [1..n]]

-- Doe het dobbel gedeelte van het spel.
dobbel speler minimum = 
  do let tactiek' = tactiek speler
     let hand = []
     putStrLn "------------------------------------------------------"
     putStrLn ("Speler " ++ show (speler + 1) ++ " speelt voor " ++ show minimum)
     eind <- tactiek' hand minimum
     return (score eind)

-- De eerste speler is een mens. De rest wordt door de computer gespeeld.
tactiek speler = if speler == 0 then tactiekMens else tactiekComp

-- Welke stenen kan ik nemen met deze worp en hand?
-- Waarom ik een tuple heb genomen ipv currying weet ik eigenlijk niet.
opties (worp, hand) = [steen | steen <- nub(worp), not(elem steen hand)]

-- Bereken de score voor deze hand
score hand = sum [scores !! (case (elemIndex d stenen) 
                               of Just i -> i)| d <- hand]

-- Zijn we klaar?
klaar hand min = elem "W" hand && (score hand > min)

-- Hulp methode voor de computer. Greed is good.
-- Bepaal de hoogste score en kijk dan met welke keuzes die score gehaald wordt.
-- Geef de voorkeur aan de Worm.
beste worp = if elem "W" best then "W" else head best
  where max = maximum [score (filter (==optie) worp) | optie <- stenen]
        best = [optie | optie <- stenen, score (filter (==optie) worp) == max]

-- Uitwerking van de computer tactiek.
tactiekComp hand min = 
  do worp <- werp (8 - length hand)
     putStrLn  ("worp: " ++ show worp ++ " (" ++ show hand ++ ")")
     if length (opties (worp, hand)) == 0 
     then do
       putStrLn "dood (score is 0)"
       return []
     else do
       -- bepaal de actie voor de computer
       let actie = beste [steen | steen <- worp, elem steen (opties (worp, hand))]
       putStr ("Computer kiest " ++ actie ++ "\n")
       let hand' = hand ++ (filter (== actie) worp)
       if klaar hand' min then do
         putStr ("Computer stopt (score is " ++ show (score hand') ++ ")\n")
         return hand'
       else do
         putStr "\n"
         tactiekComp hand' min

-- Hulp methode voor de mens.
-- Wordt gebruikt om de keuze te kunnen valideren.
vraagSteen worp hand = 
  do putStr "pakken ? "
     actie <- getChar
     putStr "\n"
     if elem [actie] (opties (worp, hand)) 
     then return actie 
     else vraagSteen worp hand

-- De implementatie van de menselijke tactiek
tactiekMens hand min = 
  do worp <- werp (8 - length hand) 
     putStrLn  ("worp: " ++ show worp ++ " (" ++ show hand ++ ")")
     if length (opties (worp, hand)) == 0 
     then do
       putStrLn "dood (score is 0)"
       -- We wachten even totdat de speler gehoord heeft van zijn einde
       -- anders scrollt het zo snel voorbij met de beurt van de 
       -- computer.
       getChar
       return []
     else do
       actie <- vraagSteen worp hand
       let hand' = hand ++ (filter (== [actie]) worp)
       if klaar hand' min 
       then do
         putStr ("doorgaan (score is " ++ show (score hand') ++ ") ? ")
         doorgaan <- getChar
         putStr "\n"
         if doorgaan == 'j' 
         then tactiekMens hand' min 
         else return hand'
       else do
         putStr "\n"
         tactiekMens hand' min

--------------------------------------------------------------------------------------
-- Het overkoepelende wormen spel.
-- -----------------------------------------------------------------------------------
tegels = [21..36]

waarde tegel = (tegel - 20) `div` 4 + 1

-- Ik heb leesgetal gebruikt om testen.
isGetal :: String -> Bool
isGetal [] = True
isGetal (x:xs) = isDigit(x) && isGetal(xs)

leesGetal :: IO Int
leesGetal = do s <- getLine
               if isGetal s then return (read s) else leesGetal

-- Start het spel
wormen n = 
  do let start = ([[] | _ <- [1..n]], [21..36], 0)
     eind <- speel (start)
     let winner = evalueer eind
     x <- putStrLn (show eind)
     y <- putStrLn ("Speler " ++ show (winner+1) ++ " heeft gewonnen!")
     return x

-- ontleend aan: 
-- http://stackoverflow.com/questions/14550458/find-max-element-and-index-of-a-list-in-haskell
maxi xs = snd (maximumBy (comparing fst) (zip xs [0..]))

-- Evalueer de (eind) positie
evalueer (stapels, _, _) = maxi [sum (map waarde stapel) | stapel <- stapels]

-- helper functie om alle elementen te vinden die boven op de stapel liggen
heads [] = []
heads ([]:xs) = heads xs
heads (x:xs) = (head x:heads xs)

-- verdeelt de stapels in die van de spelers links en rechts 
-- van de huidige speler en de stapel van de huidige speler.
splits n stapels = (take n stapels, stapels !! n, drop (n + 1) stapels)

-- voer een beurt uit
speel (stapels, rij, beurt) = 
  do
    let speler = beurt `mod` (length stapels)
    let (rechts, actief, links) = splits speler stapels

    -- voer het dobbelspel uit
    score <- dobbel speler (minimum rij)

    -- is de score exact gelijk aan een beschikbare tegel?
    let exact = elem score rij || elem score (heads links) || elem score (heads rechts)

    -- is de score geldig?
    let geldig = exact || (score > minimum rij)

    -- bepaal de te pakken tegel
    let tegel = if exact then score else
                if geldig then maximum (filter (<score) rij) else
                -1

    putStrLn ("geldig = " ++ show geldig ++ " " ++ show tegel)
    -- als de score overeenkomt met een open tegel van een speler
    -- verwijderen we die van hun stapel.
    -- niet de meest efficiente oplossing, maar hij werkt.
    let links' = if exact then map (filter (/= tegel)) links else links
    let rechts' = if exact then map (filter (/= tegel)) rechts else rechts

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
    -- zou ook in een gecombineerde if kunnen,
    -- maar dat vond ik de leesbaarheid niet ten goede komen
    let actief' = if geldig then (tegel:actief) else
                  if null actief then actief else
                     filter (/= (maximum actief)) actief

    -- voeg de stapels weer samen
    let stapels' = rechts' ++ [actief'] ++ links'
    putStrLn "------------------------------------------------------"
    putStrLn ("rij      " ++ show rij')
    mapM putStrLn [("speler " ++ show n ++ " " ++ show stapel) | 
                     (n, stapel) <- zip [1..] stapels']
 
    -- zijn we klaar?
    if length rij' == 0 
    then return (stapels', rij', beurt + 1)
    else speel (stapels', rij', beurt + 1)

