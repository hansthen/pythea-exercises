------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 8: 
--    Functional parsers
------------------------------------------------------------
module Le08Uitwerking where

import Le08Parsing

-- 8.4 Sequencing

som :: Parser Int
som = int >>= somHulp

somHulp :: Int -> Parser Int
somHulp x = int >>= \y -> return (x + y)

somDo :: Parser Int
somDo = do x <- int
           y <- int
           return (x+y)

------------------------------------------------------------
-- Uitwerking

-- de type definitie zoals in het tekstboek
type TypeParser a = String -> [(a, String)]

-- Opgave 5
item' :: TypeParser Char
item' []     = []
item' (x:xs) = [(x, xs)]

-- Opgave 7
som' :: Parser Int
som' = do x  <- int
          op <- item
          y  <- int
          if op == '+' then return (x+y) else failure

-- Opgave 8
sequentie :: Parser a -> Parser b -> Parser (a,b)
sequentie p q = do x <- p
                   y <- q
                   return (x, y)

-- Opgave 9
verander :: (a -> b) -> Parser a -> Parser b
verander f p = do x <- p
                  return (f x)

-- Opgave 14
haakjes :: Parser a -> Parser a
haakjes p = do char '('
               v <- p
               char ')'
               return v
               
accolades :: Parser a -> Parser a
accolades p = do char '{'
                 v <- p
                 char '}'
                 return v
                 
tussen :: Char -> Char -> Parser a -> Parser a
tussen begin eind p = do char begin
                         v <- p
                         char eind
                         return v

haakjesT   = tussen '(' ')'
accoladesT = tussen '{' '}'

-- Opgave 15
nat :: Parser Int
nat = verander read (many1 digit)

-- Zelftoets 1
optioneel :: a -> Parser a -> Parser a
optioneel v p = p +++ return v

-- Zelftoets 2
herhaal :: Int -> Parser a -> Parser [a]
herhaal 0 p = return []
herhaal n p = do x <- p
                 xs <- herhaal (n-1) p
                 return (x:xs)
                 
-- Zelftoets 3
postcode :: Parser String
postcode = do xs <- herhaal 4 digit
              space
              ys <- herhaal 2 upper
              return (xs++ " " ++ ys)