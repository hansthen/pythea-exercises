module MyLe6 where

import Prelude hiding
   ( product, reverse, zip, even, odd
   , (^), sum, take, last, and, concat, replicate, (!!), elem
   )
import Data.Char


(^) x 0 = 1
(^) x n = x * (x^(n-1))

and [] = True
and (x:xs) = x && and xs

concat [] = []
concat (x:xs) = x ++ concat xs

replicate 0 a = []
replicate n a = [a] ++ replicate (n - 1) a

(!!) (x:xs) 0 = x
(!!) (x:xs) n = (!!) xs (n - 1) 

elem a []     = False
elem a (x:xs) = if a == x then True else elem a xs

merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) | x <= y    = [x] ++ merge xs (y:ys)
                    | otherwise = [y] ++ merge (x:xs) ys

halves xs = (take n xs, drop n xs)
  where n = length xs `div` 2

msort [] = []
msort [x] = [x]
msort xs = merge (msort left) (msort right)
  where (left, right) = halves xs

sum [] = 0
sum (x:xs) = x + sum xs

take 0 xs = []
take n (x:xs) = [x] ++ take (n - 1) xs

last (x:[]) = x
last (x:xs) = last xs
