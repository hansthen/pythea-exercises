module Caesar where
import Data.Char

let2int c = ord c - ord 'a'
int2let n = chr(ord 'a' + n)

shift n c | isLower c = int2let ((let2int c + n) `mod` 26)
          | otherwise = c

encode n xs = [shift n x | x <- xs]

table = [8.2, 1.5, 2.8, 4.3, 12.7, 2.2, 2.0, 6.1, 7.0, 0.2,
         0.8, 4.0, 2.4, 6.7, 1.9, 0.1, 6.0, 6.3, 9.1, 2.8,
         1.0, 2.4, 0.2, 2.0, 0.1]

percent :: Int -> Int -> Float
percent n m = (fromIntegral n / fromIntegral m)  * 100.0

lowers xs = length[x | x <- xs, isLower x]
count x xs = length[x' | x' <- xs, x == x']

freqs xs = [percent (count x xs) n | x <- ['a' .. 'z']]
           where n = lowers xs
