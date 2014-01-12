module Worm where
  
import Data.Char
import Data.List
import Data.Ord
import System.IO.Unsafe

tegels = [21..36]

waarde tegel = (tegel - 20) `div` 4 + 1

isGetal :: String -> Bool
isGetal [] = True
isGetal (x:xs) = isDigit(x) && isGetal(xs)

leesGetal :: IO Int
leesGetal = do s <- getLine
               if isGetal s then return (read s) else leesGetal

turn = leesGetal

{-
newtype Spel = S (String -> [(a, String)])

instance Monad Spel where
   return v = P (\inp -> [(v, inp)])
   p >>= f  = P (\inp -> case parse p inp of
                            []         -> []
                            [(v, out)] -> parse (f v) out)
-}

{-
newtype Spel = S([[Int]], [Int], Int)

instance Monad Spel where
    return (stapels, rij, beurt) = S(stapels, rij, beurt)
    s >>= f = S (f p)
-}

{-
beurt spel = if spelKlaar spel' then
                spel'
            else
                beurt spel'
              where
                spel' = speelBeurt spel

-}


beurt spel = do spel' <- speelBeurt spel 
                if spelKlaar spel' then
                   return spel'
                else
                   beurt spel'

-- initialisatie van het spel
setup n = ([[] | _ <- [1..n]], [21..36]::[Int], 0::Int)

-- start het spel
speel n = do final <- beurt (setup n) 
            let winner = evalueer final 
            x <- putStrLn (show final)
            y <- putStrLn ("Speler " ++ show (winner+1) ++ " heeft gewonnen!")
            return 

-- zijn we klaar?
spelKlaar (_, rij, _) = length rij == 0

-- gestolen van stack overflow
-- http://stackoverflow.com/questions/14550458/find-max-element-and-index-of-a-list-in-haskell
maxi xs = snd(maximumBy (comparing fst) (zip xs [0..]))

-- evalueer de (eind) positie
evalueer (stapels, _, _) = maxi [sum (map waarde stapel) | stapel <- stapels]

-- het dobbelspel voor deze ronde (de parameter speler wordt nu niet gebruikt).
dobbel speler = unsafePerformIO leesGetal

-- helper functie om alle elementen te vinden die boven op de stapel liggen
heads [] = []
heads ([]:xs) = heads xs
heads (x:xs) = (head x:heads xs)

-- verdeelt de speler stapels in die van de spelers links en rechts van de huidige speler
splits n stapels = (take n stapels, stapels !! n, drop (n + 1) stapels)

-- voer een beurt uit
-- Om dit om te vormen, moet ik in de buitenste "main" IO gaan gebruiken
-- om een seed te genereren en dit door te geven aan de dobbel routine.
-- maar waarschijnlijk werkt het dan nog steeds niet, omdat dobbel zelf ook
-- IO gebruikt (voor de keuzes van de gebruiker).

speelBeurt (stapels, rij, beurt) = 
  do
    let speler = beurt `mod` (length stapels)
    -- verdeel de stapels in die rechts en links van de speler
    let (left, current, right) = splits speler stapels
    -- voer het dobbelspel uit
    score <- dobbel speler
    -- is de score precies?
    let precies = elem score rij || elem score (heads left) || elem score (heads right)
    -- is de score geldig?
    let geldig = precies || (score > minimum rij)

    let tegel = if precies then score else
                if geldig then maximum (filter (<score) rij) else
                -1

    -- niet de meest efficiente oplossing, maar hij werkt.
    let left' = if precies then map (filter (/= tegel)) left else left
    let right' = if precies then map (filter (/= tegel)) right else right

    let rij' = if geldig then filter (/= tegel) rij else 
               -- Als de stapel van de speler leeg is verandert er niets
               if null current then rij else
               -- Een uitzondering treedt op als de teruggelegde tegel de hoogste tegel in de rij is
               -- geworden: de tegel wordt dan niet uit het spel genomen.
               if maximum rij < maximum current then rij else
               -- Is de stapel niet leeg dan moet de speler de bovenste tegel
               -- terugleggen in de rij en wordt de hoogste tegel in de rij uit het spel genomen.
                 (maximum current:filter (/= (maximum rij)) rij)
      
    let current' = if geldig then (tegel:current) else
                   -- Als de stapel van de speler leeg is verandert er niets
                   if null current then current else
                   -- Een uitzondering treedt op als de teruggelegde tegel de hoogste tegel in de rij is
                   -- geworden: de tegel wordt dan niet uit het spel genomen.
                   if maximum rij < maximum current then current else
                   -- Is de stapel niet leeg dan moet de speler de bovenste tegel
                   -- terugleggen in de rij en wordt de hoogste tegel in de rij uit het spel genomen.
                     filter (/= (maximum current)) current
    let stapels' = left' ++ [current'] ++ right'
    return (stapels', rij', beurt + 1)
