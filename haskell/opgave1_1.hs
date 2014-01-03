module Hans where

oppervlakte x = x ^ 2

sum [] = 0
sum (x:xs) = x + Hans.sum xs

product [] = 1
product (x:xs) = x * Hans.product xs
