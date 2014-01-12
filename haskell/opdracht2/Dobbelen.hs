module Dobbelen where
import System.Random 
import System.IO.Unsafe
import Data.List
import Data.Ord

diceNames = ["1", "2", "3", "4", "5", "W"]
diceScore = [1, 2, 3, 4, 5, 5]

-- throw n = [diceNames !! (unsafePerformIO (randomRIO(0,5))) | _ <- [1..n]]
throw n = do dice <- [randomRIO(0,5) | _ <- [1..n]]
             return (map (diceNames !!) dice)

type TurnState = ([String], [String])
type Player = TurnState -> Move
type Move = String

initialize = (throw 8, [])

action (dice, current) "q" = (dice, current)
action (dice, current) a | elem a current = (dice, current)

action (dice, current) a = (throw (8 - length new), new) where
  new = current ++ [die | die <- dice, die == a]

allowed (dice, current) = [die | die <- nub(dice), not(elem die current)]

scores dice = [diceScore !! (case (elemIndex d diceNames) of Just i -> i)| d <- dice]
 
score (dice, current) = sum (scores current)

ready (dice, current) = elem "W" current && score (dice, current) > 20

playCompChoice (dice, current) = if length options == 0 then "q" else (snd . maximumBy (comparing fst) $ zip (scores options) options) where
                                           options = allowed (dice, current)

playHumanChoice (dice, current) = do putStrLn ("worp: " ++ show dice ++ " (" ++ show current ++ ")")
                                     putStr "pakken ? "
                                     putStr "\n"
                                     choice <- getChar
                                     return [choice]

