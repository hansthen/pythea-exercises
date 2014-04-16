codeer :: Eq a => [a] -> [(Int, a)]
codeer [] = []
codeer (x:xs) =  (n, x) : codeer (tail)
                 where (n, tail) = rl 0 (x:xs) 

rl n [] = (n, [])
rl n (x:x':xs) =  if x == x' 
                  then rl (n + 1) (x':xs)
                  else (n + 1, (x':xs))
rl n x = (n + 1, [])

decodeer = foldr op leeg
           where op = \(n, x) tail -> take n (repeat x) ++ tail
                 leeg = []

data Boom a = Leeg | Blad a | Knoop (Boom a) (Boom a)
naarLijst x = case x of 
                Blad n -> [n]
                Leeg -> []
                Knoop a b -> naarLijst a ++ naarLijst b
