------------------------------------------------------------
-- T01211: Functioneel programmeren 
--    Open Universiteit Nederland 2012
-- 
-- Bouwsteen bij leereenheid 8: 
--    Functional parsers
------------------------------------------------------------
module Le08 where

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