module Dobbelen where
import System.Random 
import System.IO.Unsafe
import Data.List
import Data.Ord

--------------------------------------------------------------------------------------
-- Het dobbelen subsysteem
--
-- -----------------------------------------------------------------------------------

-- TODO: gebruik data voor de dobbel stenen (en speler acties)
stenen = ["1", "2", "3", "4", "5", "W"]
scores = [1, 2, 3, 4, 5, 5]

-- throw n = [diceNames !! (unsafePerformIO (randomRIO(0,5))) | _ <- [1..n]]
werp n = do g <- newStdGen; return (map (stenen !!) (take n $ (randomRs (0, 5) g)))

dobbel speler minimum = do let tactiek' = tactiek speler
                           let hand = []
                           putStrLn ("Speler " ++ show (speler + 1))
                           eind <- tactiek' hand minimum
                           return (score eind)


tactiek speler = if speler == 0 then tactiekMens else tactiekComp

opties (worp, hand) = [steen | steen <- nub(worp), not(elem steen hand)]
score hand = sum [scores !! (case (elemIndex d stenen) of Just i -> i)| d <- hand]
klaar hand min = elem "W" hand && (score hand > min)

tactiekComp hand min = do worp <- werp (8 - length hand)
                          putStrLn  ("worp: " ++ show worp ++ " (" ++ show hand ++ ")")
                          if length (opties (worp, hand)) == 0 then do
                            putStrLn "dood (score is 0)"
                            return []
                          else do
                            -- bepaal de actie voor de computer
                            let actie = beste worp
                            putStr ("Computer kiest " ++ actie ++ "\n")
                            let hand' = hand ++ (filter (== actie) worp)
                            if klaar hand' min then do
                              putStr ("Computer stopt (score is " ++ show (score hand') ++ ")\n")
                              return hand'
                            else do
                              putStr "\n"
                              tactiekComp hand' min

beste worp = if elem "W" best then "W" else head best
                where max = maximum [score (filter (==optie) worp) | optie <- stenen]
                      best = [optie | optie <- stenen, score (filter (==optie) worp) == max]


tactiekMens hand min = do worp <- werp (8 - length hand) 
                          putStrLn  ("worp: " ++ show worp ++ " (" ++ show hand ++ ")")
                          if length (opties (worp, hand)) == 0 then do
                            putStrLn "dood (score is 0)"
                            return []
                          else do
                            putStr "pakken ? "
                            actie <- getChar
                            -- FIXME: we controleren nog niet op geldige input
                            -- dus door een ongeldige waarde in te vullen kunnen
                            -- we een nieuwe worp forceren
                            let hand' = hand ++ (filter (== [actie]) worp)
                            if klaar hand' min then do
                              putStr ("\ndoorgaan (score is " ++ show (score hand') ++ ") ? ")
                              doorgaan <- getChar
                              putStr "\n"
                              if doorgaan == 'j' then tactiekMens hand' min else return hand'
                            else do
                              putStr "\n"
                              tactiekMens hand' min
