import Parsing
read3 = do x <- item
           item
           y <- item
           return (x, y)

som = do x <- int
         char '+'
         y <- int
         return (x + y)

sequence :: Parser a -> Parser b -> Parser (a,b)
sequence x y = do x' <- x
                  y' <- y
                  return (x', y')

verander :: (a -> b) -> Parser a -> Parser b
verander f x = do x' <- x
                  return (f x')

haakjes :: Parser a -> Parser a
haakjes a = do char '('
               a' <- a
               char ')'
               return a'            

matched :: Char -> Char -> Parser a -> Parser a
matched ch1 ch2 a = do char ch1
                       a' <- a
                       char ch2
                       return a'

optioneel :: a -> Parser a -> Parser a
optioneel v a = a +++ return v

herhaal :: Int -> Parser a -> Parser [a]
herhaal 0 p = return []
herhaal n p = do v <- p
                 vs <- herhaal (n - 1) p
                 return (v:vs)


postcode = do cijfers <- token (herhaal 4 digit)
              letters <- token (herhaal 2 letter)
              return (cijfers ++ [' '] ++ letters)
