------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 11: 
--    The countdown problem
------------------------------------------------------------
module Le11Uitwerking where

import Le11Countdown 
   ( Expr(..), Op(..), Result
   , values, eval, interleave, ops, apply
   )

------------------------------------------------------------
-- Uitwerking

-- Opgave 4
choices :: [a] -> [[a]]
choices xs = [ zs | ys <- subs xs, zs <- perms ys ]

-- Opgave 5
removeone :: Eq a => a -> [a] -> [a]
removeone x []                 = []
removeone x (y:ys) | x == y    = ys
                   | otherwise = y : removeone x ys
                   
isChoice :: Eq a => [a] -> [a] -> Bool
isChoice []     _  = True
isChoice (x:xs) ys = elem x ys && isChoice xs (removeone x ys)

solution :: Expr -> [Int] -> Int -> Bool
solution e ns n = isChoice (values e) ns && eval e == [n]

-- Opgave 6
subs :: [a] -> [[a]]
subs = foldr op [[]]
 where
   op x yss = yss ++ map (x:) yss
   
perms :: [a] -> [[a]]
perms = foldr op [[]]
 where
   op x = concat . map (interleave x)
   
-- Opgave 8
split :: [a] -> [([a], [a])]
split xs = [ splitAt i xs | i <- [1..length xs-1] ]

-- Opgave 13
add :: Expr -> Expr -> [Expr]
add l r = [App Add l r, App Add r l]

mul :: Expr -> Expr -> [Expr]
mul l r = [App Mul l r, App Mul r l]

com :: Expr -> [Expr]
com (App Add x y) = [ z | l <- com x, r <- com y, z <- add l r ]
com (App Mul x y) = [ z | l <- com x, r <- com y, z <- mul l r ]
com (App o x y)   = [ App o l r | l <- com x, r <- com y ]
com (Val n)       = [ Val n ]

comLijst :: [Expr] -> [Expr]
comLijst = concat . map com

-- Zelftoets 2
valid :: Op -> Int -> Int -> Bool
valid Add _ _ = True
valid Sub x y = True -- aangepast
valid Mul _ _ = True
valid Div x y = y /= 0 && x `mod` y == 0 -- aangepast

-- Zelftoets 4
valid2 :: Op -> Expr -> Expr -> Bool
valid2 Add (App Add _ _) _ = False
valid2 Mul (App Mul _ _) _ = False
valid2 _   _             _ = True

combine' :: Result -> Result -> [Result]
combine' (l, x) (r, y) = [ (App o l r, apply o x y) | o <- ops
                                                    , valid o x y
                                                    , valid2 o l r ]