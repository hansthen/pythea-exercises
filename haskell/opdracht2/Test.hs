module Mod1 where
import Data.List
import System.Random
y = 13

main = do
    seed  <- newStdGen
    let rs = randomlist 10 seed
    print rs
 
randomlist :: Int -> StdGen -> [Int]
randomlist n = take n . unfoldr (Just . random)

data Steen = Worm | Een | Twee | Drie | Vier | Vijf deriving(Enum, Show)
